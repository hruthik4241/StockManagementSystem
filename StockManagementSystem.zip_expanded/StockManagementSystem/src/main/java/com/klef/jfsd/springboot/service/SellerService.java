package com.klef.jfsd.springboot.service;


import java.util.List;

import com.klef.jfsd.springboot.model.Product;
import com.klef.jfsd.springboot.model.Seller;

public interface SellerService 
{
   public Seller addseller(Seller seller);
   public Seller checksellerlogin(String uname,String pwd);
   public List<Product> viewallproducts();
   public List<Product> newproducts();
   public void deleteproduct(int id);
   
}
