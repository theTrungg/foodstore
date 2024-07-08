
import dao.AccountDAO;
import dao.MealDAO;
import dto.Account;
import dto.Meal;
import java.util.List;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author trung
 */
public class test {

    public static void main(String[] args) {
        MealDAO d = new MealDAO();
        List<Meal> list = d.getMeals();
        
        for (Meal meal : list) {
            System.out.println(meal.toString());;
        }
    }
}
