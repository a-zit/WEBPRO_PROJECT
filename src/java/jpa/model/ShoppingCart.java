/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jpa.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 *
 * @author Pluem
 */
public class ShoppingCart implements Serializable{
    private Map<String,LineItem> cart;

    public ShoppingCart() {
        cart = new HashMap();
    }
    
    public void add(Product p){
        LineItem line = cart.get(p.getProductname());
        if(line == null){
//            String product = Integer.toString(p.getProductid());
            cart.put(p.getProductname(), new LineItem(p));
            System.out.println("test1");
        }else{
            System.out.println("test");
            line.setQuantity(line.getQuantity()+1);
        }
    }
    
    public void remove(Product p){
        String product = Integer.toString(p.getProductid());
        this.remove(product);
    }
    
    public void remove(String productCode){
        cart.remove(productCode);
    }
    
    public double getTotalPrice(){
        double sum = 0;
        Collection<LineItem> lineItems = cart.values();
        for(LineItem lineItem : lineItems){
            sum += lineItem.getTotalPrice();
        }
        return sum;
    }
    
    public int getTotalQuantity(){
        int sum = 0;
        Collection<LineItem> linesItems = cart.values();
        for(LineItem linesItem : linesItems){
            sum += linesItem.quantity;
        }
        return sum;
    }
    
    public List<LineItem> getLineItems(){
        return new ArrayList(cart.values());
    }
}
