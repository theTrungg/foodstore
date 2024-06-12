/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dto.Account;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import mylib.MyLib;

/**
 *
 * @author trung
 */
public class AccountDAO implements CRUD<Account> {

    @Override
    public int create(Account acc) {
        int rs = 0;
        Connection cn = null;
        PreparedStatement pst = null;
        try {
            cn = MyLib.makeConnection();
            if (cn != null) {
                String sql = "Insert [dbo].[Account] ([Username], [Password], [Status]) values (?,?,?)";

                pst = cn.prepareStatement(sql);

                pst.setString(1, acc.getName());
                pst.setString(2, acc.getPassword());
                pst.setInt(3, 1);

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
                    cn.close();
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }

        }
        return rs;
    }

    @Override
    public int update(Account acc) {
        int rs = 0;
        Connection cn = null;
        PreparedStatement pst = null;

        try {
            cn = MyLib.makeConnection();
            if (cn != null) {
                String sql = "UPDATE [dbo].[Account]\n"
                        + "SET [Username] = ?, [Password] = ?, [Status] = ?\n"
                        + "WHERE [Id_acc] = ?";
                pst = cn.prepareStatement(sql);
                pst.setString(1, acc.getName());
                pst.setString(2, acc.getPassword());
                pst.setInt(3, acc.getStatus());
                pst.setInt(4, acc.getId());
                rs = pst.executeUpdate();
            }
        } catch (Exception ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                if (cn != null) {
                    cn.close();
                }
                if (pst != null) {
                    pst.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return rs;
    }

    @Override
    public int detele(Account acc) {
        int rs = 0;
        Connection cn = null;
        PreparedStatement pst = null;
        try {
            cn = MyLib.makeConnection();
            String sql = "UPDATE [dbo].[Account]\n"
                    + "SET [Username] = ?, [Password] = ?, [Status] = ?\n"
                    + "WHERE [Id_acc] = ?";
            pst = cn.prepareStatement(sql);
            pst.setString(1, acc.getName());
            pst.setString(2, acc.getPassword());
            pst.setInt(3, 0);
            pst.setInt(4, acc.getId());
            rs = pst.executeUpdate();

        } catch (Exception ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                if (cn != null) {
                    cn.close();
                }
                if (pst != null) {
                    pst.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return rs;
    }

    @Override
    public ArrayList<Account> read() {
        ArrayList<Account> list = new ArrayList<>();
        ResultSet rs = null;
        Connection cn = null;
        PreparedStatement pst = null;
        
        return list;
    }

}
