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
import java.sql.Statement;
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
                cn.setAutoCommit(false);
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
    public int update(Account acc) {
        int rs = 0;
        Connection cn = null;
        PreparedStatement pst = null;

        try {
            cn = MyLib.makeConnection();
            if (cn != null) {
                cn.setAutoCommit(false);
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
    public int detele(Account acc) {
        int rs = 0;
        Connection cn = null;
        PreparedStatement pst = null;
        try {
            cn.setAutoCommit(false);
            cn = MyLib.makeConnection();
            if (cn != null) {
                cn.setAutoCommit(false);

                String sql = "UPDATE [dbo].[Account]\n"
                        + "SET [Username] = ?, [Password] = ?, [Status] = ?\n"
                        + "WHERE [Id_acc] = ?";
                pst = cn.prepareStatement(sql);
                pst.setString(1, acc.getName());
                pst.setString(2, acc.getPassword());
                pst.setInt(3, 0);
                pst.setInt(4, acc.getId());
                rs = pst.executeUpdate();
            }
        } catch (Exception ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
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
    public ArrayList<Account> read() {
        ArrayList<Account> list = new ArrayList<>();
        ResultSet rs = null;
        Connection cn = null;
        PreparedStatement pst = null;

        try {
            cn = MyLib.makeConnection();
            if (cn != null) {
                cn.setAutoCommit(false);

                String sql = "Select [Id_acc], [Username], [Password], [Status]\n"
                        + "From [dbo].[Account] ";
                Statement st = cn.createStatement();
                rs = st.executeQuery(sql);
                if (rs.next() && rs != null) {
                    while (rs.next()) {
                        int id = rs.getInt("Id_acc");
                        String name = rs.getString("Username");
                        String password = rs.getString("Password");
                        int status = rs.getInt("Status");

                        Account acc = new Account(id, name, password, status);
                        list.add(acc);
                    }
                }
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
        return list;
    }

    public Account getAccount(String userName) {
        Account acc = null;
        Connection cn = null;
        PreparedStatement pst = null;

        try {
            cn = MyLib.makeConnection();
            if (cn != null) {
                cn.setAutoCommit(false);
                String sql = "Select [Id_acc], [Password], [Status]\n"
                        + "From [dbo].[Account] \n"
                        + "Where [Username] = ?";
                pst = cn.prepareStatement(sql);
                pst.setString(1, userName);
                ResultSet rs = pst.executeQuery();
                if (rs != null) {
                    while (rs.next()) {
                        int id = rs.getInt("Id_acc");
                        String password = rs.getString("Password");
                        int status = rs.getInt("Status");

                        acc = new Account(id, userName, password, status);
                    }
                }
            }
        } catch (Exception ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                if (cn != null) {
                    cn.setAutoCommit(true);
                    cn.close();
                }
                if (pst != null) {
                    pst.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }

        }
        return acc;
    }

    public Account getAccount(String userName, String password) {
        Account acc = null;
        Connection cn = null;
        PreparedStatement pst = null;

        try {
            cn = MyLib.makeConnection();
            if (cn != null) {
                cn.setAutoCommit(false);
                String sql = "Select [Id_acc], [Status]\n"
                        + "From [dbo].[Account] \n"
                        + "Where [Username] = ?  and [Password] = ?";
                pst = cn.prepareStatement(sql);
                pst.setString(1, userName);
                pst.setString(2, password);
                ResultSet rs = pst.executeQuery();
                if (rs != null) {
                    while (rs.next()) {
                        int id = rs.getInt("Id_acc");
                        int status = rs.getInt("Status");

                        acc = new Account(id, userName, password, status);
                    }
                }
            }
        } catch (Exception ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                if (cn != null) {
                    cn.setAutoCommit(true);
                    cn.close();
                }
                if (pst != null) {
                    pst.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }

        }
        return acc;
    }

    public boolean checkAccount(Account acc) {
        boolean flag = false;
        if (acc.getStatus() == 1) {
            flag = true;
        }
        return flag;
    }
}
