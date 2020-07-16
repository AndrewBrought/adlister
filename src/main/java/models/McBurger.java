package models;

import java.io.Serializable;
import java.util.List;

public class McBurger implements Serializable {
    // ************* Class Properties ************** //


    // id
    private long id;
    //burger name (title)
    private String title;
    //price in cents
    private int priceInCents;
    //description of the burger
    private String description;
    //ingredients (List)
    private List<Ingredient> ingredients;

//    *************  CONSTRUCTOR ************ //

//    zero-argument contructor - this is saying this burger equals new burger (no arguments) then we can add what we want afterwards without a null pointer exception.
    public McBurger(){}

    //    *************  GETTERS AND SETTERS ************ //


    public long getId() { return id; }

    public void setId(long id) { this.id = id; }

    public String getTitle() { return title; }

    public void setTitle(String title) { this.title = title; }

    public int getPriceInCents() { return priceInCents; }

    public void setPriceInCents(int priceInCents) { this.priceInCents = priceInCents; }

    public String getDescription() { return description; }

    public void setDescription(String description) { this.description = description; }

    public List<Ingredient> getIngredients() { return ingredients; }

    public void setIngredients(List<Ingredient> ingredients) { this.ingredients = ingredients; }
}
