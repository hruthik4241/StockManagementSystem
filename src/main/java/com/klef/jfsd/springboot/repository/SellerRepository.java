package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Seller;
@Repository
public interface SellerRepository extends CrudRepository<Seller, Integer>
{
	@Query("select s from Seller s where username=?1 and password=?2")
	public Seller checksellerlogin(String uname,String pwd);
	
}
