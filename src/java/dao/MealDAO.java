/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dto.Meal;
import java.util.ArrayList;
import dto.Meal;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import mylib.MyLib;

/**
 *
 * @author trung
 */
public class MealDAO implements CRUD<Meal>{

    /**
     * This function is used to create a meal in the database
     *
     * @param meal meal object to push to the database
     * @return an integer value representing the result of the operation
     */
    @Override
    public int create(Meal meal) {
        int rs = 0;
        Connection cn = null;
        PreparedStatement pst = null;
        try {
            cn = MyLib.makeConnection();
            if (cn != null) {
                cn.setAutoCommit(false);
                String sql = "INSERT INTO [dbo].[Meal] ([Id], [MCate], [Name], [Type], [Recipe], [Price], [Status]) VALUES (?, ?, ?, ?, ?, ?, ?)";

                pst = cn.prepareStatement(sql);
                pst.setInt(1, meal.getId());
                pst.setString(2, meal.getMcate());
                pst.setString(3, meal.getName());
                pst.setString(4, meal.getType());
                pst.setString(5, meal.getRecipe());
                pst.setFloat(6, meal.getPrice());
                pst.setInt(7, meal.getStatus());
                rs = pst.executeUpdate();
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

    /**
     * This function is used to read a meal from the database by id
     *
     * @param id the id of the meal to read
     * @return the meal object
     */
    @Override
    public Meal read(int id) {
        Meal meal = null;
        Connection cn = null;
        PreparedStatement pst = null;

        try {
            cn = MyLib.makeConnection();
            if (cn != null) {
                cn.setAutoCommit(false);
                String sql = "SELECT [MCate], [Name], [Type], [Recipe], [Price], [Status] FROM [dbo].[Meal] WHERE [Id] = ?";
                pst = cn.prepareStatement(sql);
                pst.setInt(1, id);
                ResultSet rs = pst.executeQuery();
                if (rs != null) {
                    while (rs.next()) {
                        String mcate = rs.getString("MCate");
                        String name = rs.getString("Name");
                        String type = rs.getString("Type");
                        String recipe = rs.getString("Recipe");
                        float price = rs.getFloat("Price");
                        int status = rs.getInt("Status");

                        meal = new Meal(id, mcate, name, type, recipe, price, status);
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
        return meal;
    }

    /**
     * This function is used to update a meal in the database
     *
     * @param meal the meal object with updated information
     * @return an integer value representing the result of the operation
     */
    @Override
    public int update(Meal meal) {
        int rs = 0;
        Connection cn = null;
        PreparedStatement pst = null;

        try {
            cn = MyLib.makeConnection();
            if (cn != null) {
                cn.setAutoCommit(false);
                String sql = "UPDATE [dbo].[Meal] SET [MCate] = ?, [Name] = ?, [Type] = ?, [Recipe] = ?, [Price] = ?, [Status] = ? WHERE [Id] = ?";
                pst = cn.prepareStatement(sql);
                pst.setString(1, meal.getMcate());
                pst.setString(2, meal.getName());
                pst.setString(3, meal.getType());
                pst.setString(4, meal.getRecipe());
                pst.setFloat(5, meal.getPrice());
                pst.setInt(6, meal.getStatus());
                pst.setInt(7, meal.getId());
                rs = pst.executeUpdate();
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
                    cn.setAutoCommit(true); // Return to default AutoCommit state
                    cn.close();
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
        return rs;
    }

    /**
     * This function is used to delete (deactivate) a meal in the database
     *
     * @param meal the meal object to delete (deactivate)
     * @return an integer value representing the result of the operation
     */
    @Override
    public int delete(Meal meal) {
        int rs = 0;
        Connection cn = null;
        PreparedStatement pst = null;
        try {
            cn = MyLib.makeConnection();
            if (cn != null) {
                cn.setAutoCommit(false);

                String sql = "UPDATE [dbo].[Meal] SET [Status] = ? WHERE [Id] = ?";
                pst = cn.prepareStatement(sql);
                pst.setInt(1, 0);
                pst.setInt(2, meal.getId());
                rs = pst.executeUpdate();
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
                    cn.setAutoCommit(true); // Return to default AutoCommit state
                    cn.close();
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
        return rs;
    }

    /**
     * This function is used to get all meals from the database
     *
     * @return a list of meal objects
     */
    public ArrayList<Meal> getMeals() {
        ArrayList<Meal> list = new ArrayList<>();
        Connection cn = null;
        PreparedStatement pst = null;
        ResultSet rs = null;

        try {
            cn = MyLib.makeConnection();
            if (cn != null) {
                String sql = "SELECT [Id], [MCate], [Name], [Type], [Recipe], [Price], [Status] FROM [dbo].[Meal]";
                pst = cn.prepareStatement(sql);
                rs = pst.executeQuery();
                while (rs.next()) {
                    int id = rs.getInt("Id");
                    String mcate = rs.getString("MCate");
                    String name = rs.getString("Name");
                    String type = rs.getString("Type");
                    String recipe = rs.getString("Recipe");
                    float price = rs.getFloat("Price");
                    int status = rs.getInt("Status");
                    list.add(new Meal(id, mcate, name, type, recipe, price, status));
                }
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
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
        return list;
    }

    /**
     * This function is used to get a meal from the database by name
     *
     * @param name the name of the meal to get
     * @return the meal object
     */
    public Meal getMealByName(String name) {
        Meal meal = null;
        Connection cn = null;
        PreparedStatement pst = null;
        ResultSet rs = null;

        try {
            cn = MyLib.makeConnection();
            if (cn != null) {
                String sql = "SELECT [Id], [MCate], [Type], [Recipe], [Price], [Status] FROM [dbo].[Meal] WHERE [Name] = ?";
                pst = cn.prepareStatement(sql);
                pst.setString(1, name);
                rs = pst.executeQuery();
                if (rs.next()) {
                    int id = rs.getInt("Id");
                    String mcate = rs.getString("MCate");
                    String type = rs.getString("Type");
                    String recipe = rs.getString("Recipe");
                    float price = rs.getFloat("Price");
                    int status = rs.getInt("Status");
                    meal = new Meal(id, mcate, name, type, recipe, price, status);
                }
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
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
        return meal;
    }

    /**
     * This function is used to check if a meal is active
     *
     * @param meal the meal object to check
     * @return true if the meal is active, false otherwise
     */
    public boolean checkMeal(Meal meal) {
        return meal.getStatus() == 1;
    }

}
