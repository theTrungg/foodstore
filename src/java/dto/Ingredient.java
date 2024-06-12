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
public class Ingredient {

    private String id;
    private String icate;
    private String name;
    private float price;
    private int status;

    public Ingredient() {
    }

    public Ingredient(String id, String icate, String name, float price, int status) {
        this.id = id;
        this.icate = icate;
        this.name = name;
        this.price = price;
        this.status = status;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getIcate() {
        return icate;
    }

    public void setIcate(String icate) {
        this.icate = icate;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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
