/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;

/**
 *
 * @author trung
 */
public class PersonalPlan {
    private int id;
    private int idAcc;
    private String period;
    private int idMeal;

    public PersonalPlan() {
    }

    public PersonalPlan(int id, int idAcc, String period, int idMeal) {
        this.id = id;
        this.idAcc = idAcc;
        this.period = period;
        this.idMeal = idMeal;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdAcc() {
        return idAcc;
    }

    public void setIdAcc(int idAcc) {
        this.idAcc = idAcc;
    }

    public String getPeriod() {
        return period;
    }

    public void setPeriod(String period) {
        this.period = period;
    }

    public int getIdMeal() {
        return idMeal;
    }

    public void setIdMeal(int idMeal) {
        this.idMeal = idMeal;
    }
    
    
}
