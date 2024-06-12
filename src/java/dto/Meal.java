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
public class Meal {
    private int id;
    private String mcate;
    private String name;
    private String type;
    private String recipe;
    private float price;
    private int status;

    public Meal() {
    }

    public Meal(int id, String mcate, String name, String type, String recipe, float price, int status) {
        this.id = id;
        this.mcate = mcate;
        this.name = name;
        this.type = type;
        this.recipe = recipe;
        this.price = price;
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMcate() {
        return mcate;
    }

    public void setMcate(String mcate) {
        this.mcate = mcate;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getRecipe() {
        return recipe;
    }

    public void setRecipe(String recipe) {
        this.recipe = recipe;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
    
    
    
}
