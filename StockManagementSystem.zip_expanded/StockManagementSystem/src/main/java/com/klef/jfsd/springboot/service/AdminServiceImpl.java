package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.Seller;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.CustomerRepository;
import com.klef.jfsd.springboot.repository.SellerRepository;
@Service
public class AdminServiceImpl implements AdminService
{
	@Autowired
	private AdminRepository adminRepository;
	
	@Autowired
	private CustomerRepository customerRepository;
	@Autowired
	private SellerRepository  sellerRepository;
	
	@Override
	public Admin checkadminlogin(String uname, String pwd) 
	{
		return adminRepository.checkadminlogin(uname, pwd);
		
	}

	@Override
	public List<Customer> viewallcustomers() 
	{
		return (List<Customer>) customerRepository.findAll();
	}

	@Override
	public void deletecustomer(int id) 
	{
		customerRepository.deleteById(id);
	}

	@Override
	public List<Seller> viewallsellers() {
		return (List<Seller>) sellerRepository.findAll();
	}

}
