/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

import java.io.Serializable;

/**
 *
 * @author Admin
 */
public class ProductGH implements Serializable{
    private Product sanpham;
    private int quantity;

    public ProductGH() {
    }

    public ProductGH(Product sanpham, int quantity) {
        this.sanpham = sanpham;
        this.quantity = quantity;
    }

    public Product getSanpham() {
        return sanpham;
    }

    public void setSanpham(Product sanpham) {
        this.sanpham = sanpham;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
    
}
