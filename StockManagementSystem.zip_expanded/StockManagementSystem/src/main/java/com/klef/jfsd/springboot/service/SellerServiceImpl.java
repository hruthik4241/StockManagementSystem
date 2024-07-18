package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Product;
import com.klef.jfsd.springboot.model.Seller;
import com.klef.jfsd.springboot.repository.ProductRepository;
import com.klef.jfsd.springboot.repository.SellerRepository;

@Service
public class SellerServiceImpl implements SellerService
{
	@Autowired
	private SellerRepository sellerRepository;
	@Autowired
	private ProductRepository productRepository;

	@Override
	public Seller addseller(Seller seller) 
	{
		return sellerRepository.save(seller);
	}

	@Override
	public Seller checksellerlogin(String uname, String pwd) {
		return sellerRepository.checksellerlogin(uname, pwd); 
	}

	@Override
	public List<Product> viewallproducts() {
		return (List<Product>) productRepository.findAll();
	}

	@Override
	public List<Product> newproducts() {
		return (List<Product>) productRepository.findAll();
		
	}

	@Override
	public void deleteproduct(int id)
	{
		productRepository.deleteById(id);
		
		
	}
	

}
