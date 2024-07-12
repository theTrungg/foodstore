/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dto.WeeklyPlan;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import mylib.MyLib;

/**
 *
 * @author trung
 */
public class WeeklyPlanDAO {
        public int create(WeeklyPlan plan) {
        int rs = 0;
        Connection cn = null;
        PreparedStatement pst = null;
        try {
            cn = MyLib.makeConnection();
            if (cn != null) {
                cn.setAutoCommit(false);

                cn.commit(); // Commit the transaction 
            }
        } catch (Exception ex) {
            ex.printStackTrace();
            if (cn != null) {
                try {
                    cn.rollback(); // Rollback the transaction if there is an error
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        } finally {
            try {
                if (pst != null) {
                    pst.close();
                }
                if (cn != null) {
                    cn.setAutoCommit(true);
                    cn.close();
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
        return rs;
    }
}
