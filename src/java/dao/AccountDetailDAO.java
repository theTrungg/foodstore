/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dto.AccountDetail;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import mylib.MyLib;

/**
 *
 * @author trung
 */
public class AccountDetailDAO implements CRUD<AccountDetail> {

    @Override
    public int create(AccountDetail object) {
        int rs = 0;
        Connection cn = null;
        PreparedStatement pst = null;
        try {
            cn = MyLib.makeConnection();
            if (cn != null) {
                cn.setAutoCommit(false);
                String sql = "Insert [dbo].[AccountDetail] ([Id_acc], [Fullname], [Gender], [PhoneNumber], [Address], [Email]\n"
                        + "Values (?,?,?,?,?,?)";

                pst = cn.prepareStatement(sql);
                pst.setInt(1, object.getId());
                pst.setNString(2, object.getFullname());
                pst.setNString(3, object.getGender());
                pst.setString(4, object.getPhonenumber());
                pst.setNString(5, object.getAddress());
                pst.setString(6, object.getEmail());
                rs = pst.executeUpdate();
            }
        } catch (Exception ex) {
            ex.printStackTrace();
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

    @Override
    public int update(AccountDetail object) {
        int rs = 0;
        Connection cn = null;
        PreparedStatement pst = null;

        try {
            cn = MyLib.makeConnection();
            if (cn != null) {
                cn.setAutoCommit(false);
                String sql = "Update [dbo].[AccountDetail]\n"
                        + "Set [Fullname] = ?, [Gender] = ?, [PhoneNumber] = ?, [Address] = ?, [Email] = ?\n"
                        + "Where [Id_acc] = ?";
                pst = cn.prepareStatement(sql);
                pst.setNString(1, object.getFullname());
                pst.setString(2, object.getGender());
                pst.setString(3, object.getPhonenumber());
                pst.setString(4, object.getAddress());
                pst.setString(5, object.getEmail());
                pst.setInt(6, object.getId());
                rs = pst.executeUpdate();
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            try {
                if (cn != null) {
                    cn.setAutoCommit(true);
                    cn.close();
                }
                if (pst != null) {
                    pst.close();
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
        return rs;
    }

    @Override
    public int delete(AccountDetail object) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public AccountDetail read(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
