/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

import java.util.HashMap;

/**
 *
 * @author Admin
 */
public class CartProduct extends HashMap {

    // thêm vài giỏ hàng
    public void addProduct(ProductGH p) {
        String id = p.getSanpham().getId();
        if (this.containsKey(id)) {
            int oldQuan = p.getQuantity();
            p.setQuantity(oldQuan+1);
        } else {
            this.put(p.getSanpham().getId(), p);
        }
    }
    // xóa sản phẩm
    public boolean deleteProduct(String code){
        if (this.containsKey(code)) {
            this.remove(code);
            return true;
        } 
        return false;
    }
}

