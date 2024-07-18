package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.Seller;

public interface AdminService 
{
	public Admin checkadminlogin(String uname,String pwd);
    public List<Customer>  viewallcustomers();
    public List<Seller>  viewallsellers();
    public void deletecustomer(int id);
}
