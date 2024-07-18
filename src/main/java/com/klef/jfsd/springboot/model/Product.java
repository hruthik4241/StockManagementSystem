package com.klef.jfsd.springboot.model;

import java.sql.Blob;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "product_table")
public class Product 
{
	  @Id
	  @GeneratedValue
	  private int id;
	  @Column(nullable = false,length = 100)
	  private String category;
	  @Column(nullable = false,length = 200)
	   private String productname;
	  @Column(nullable = false,length = 200)
	  private double cost ;
	  @Column(nullable = false,length = 200)
	   private String designation;
	  @Column(nullable = false,length = 200)
	  private String productlink;
	  @Column(nullable = false)
	  private Blob productimage;
	@Override
	public String toString() {
		return "Product [id=" + id + ", category=" + category + ", productname=" + productname + ", cost=" + cost
				+ ", designation=" + designation + ", productlink=" + productlink + ", productimage=" + productimage
				+ "]";
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getProductname() {
		return productname;
	}
	public void setProductname(String productname) {
		this.productname = productname;
	}
	public double getCost() {
		return cost;
	}
	public void setCost(double cost) {
		this.cost = cost;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public String getProductlink() {
		return productlink;
	}
	public void setProductlink(String productlink) {
		this.productlink = productlink;
	}
	public Blob getProductimage() {
		return productimage;
	}
	public void setProductimage(Blob productimage) {
		this.productimage = productimage;
	}
}