package com.klef.jfsd.springboot.controller;


import java.io.IOException;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.sql.rowset.serial.SerialException;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.Product;
import com.klef.jfsd.springboot.model.Seller;
import com.klef.jfsd.springboot.service.AdminService;
import com.klef.jfsd.springboot.service.CustomerService;
import com.klef.jfsd.springboot.service.ProductService;
import com.klef.jfsd.springboot.service.SellerService;

@Controller
public class ClientController 
{
	@Autowired
	private AdminService adminService;
	@Autowired
	private CustomerService customerService;
	@Autowired
	private SellerService sellerService;
	@Autowired
	private ProductService productService;
	
	@GetMapping("/")
	public String mainhomedemo()
	{
		return "index";
	}
		@GetMapping("/adminlogin")
	public ModelAndView adminlogindemo()
	{
		ModelAndView mv =new ModelAndView("adminlogin");
		return mv;
	}
		
	
	@GetMapping("/login")
	public ModelAndView logindemo()
	{
		ModelAndView mv =new ModelAndView("login");
		return mv;
	}
	//-------------------------------------------------------------------------------------
	@GetMapping("/sellerregistration")
	public ModelAndView sellerregdemo()
	{
		ModelAndView mv =new ModelAndView("sellerregistration", "seller",new Seller());
		return mv;
	}
	
	@PostMapping("/addseller")
	public ModelAndView addsellerdemo(@ModelAttribute("seller") Seller seller )
	{
		sellerService.addseller(seller);
		
		ModelAndView mv =new ModelAndView();
		mv.setViewName("sellerregistration");
		mv.addObject("msg", "seller registered successfully" );
		return mv;
	}
	
	@GetMapping("/sellerlogin")
	public ModelAndView sellerlogindemo()
	{
		ModelAndView mv =new ModelAndView("sellerlogin");
		return mv;
	}
	
	@GetMapping("/sellerhome")
	public ModelAndView sellerhomedemo()
	{
		ModelAndView mv =new ModelAndView("sellerhome");
		return mv;
	}
	
	@PostMapping("/checksellerlogin")
	public ModelAndView checksellerlogindemo(HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView();
		
		String suname=request.getParameter("suname");
		String spwd =request.getParameter("spwd");
	
	    Seller seller=sellerService.checksellerlogin(suname, spwd);
	if(seller!=null)
	{
		mv.setViewName("sellerhome");
	}
	else
	{
		mv.setViewName("sellerlogin");
		mv.addObject("msg","Login failed");
	}
		return mv;
	}
	
	
	
	@GetMapping("/viewallsellers")
	public ModelAndView viewallsellerdemo()
	{
		ModelAndView mv =new ModelAndView("viewallsellers");
		List<Seller> sellerlist=adminService.viewallsellers();
		mv.addObject("sellerlist", sellerlist);
		return mv;
	}
	//---------------------------------------------------------------------------------------------------------------------------
	@GetMapping("/signup")
	public ModelAndView signupdemo()
	{
		ModelAndView mv =new ModelAndView("signup", "customer",new Customer());
		return mv;
	}
	
	
	
	@GetMapping("/adminhome")
	public ModelAndView adminhomedemo()
	{
		ModelAndView mv =new ModelAndView("adminhome");
		return mv;
	}
	
	
	
	
	@PostMapping("/checkadminlogin")
	public ModelAndView checkadminlogindemo(HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView();
		
		String auname=request.getParameter("auname");
		String apwd =request.getParameter("apwd");
		
	Admin admin = adminService.checkadminlogin(auname, apwd);
	
	if(admin!=null)
	{
		mv.setViewName("adminhome");
	}
	else
	{
		mv.setViewName("adminlogin");
		mv.addObject("msg","Login failed");
	}
		return mv;
	}
	
	//-------------------------------------------------------------------------------------------------
	
	@PostMapping("/checkcustomerlogin")
	public ModelAndView checkcustomerlogindemo(HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView();
		
		String cuname=request.getParameter("cuname");
		String cpwd =request.getParameter("cpwd");
	
		Customer customer = customerService.checkcustomerlogin(cuname, cpwd);
	
	if(customer!=null)
	{
		mv.setViewName("index");
	}
	else
	{
		mv.setViewName("login");
		mv.addObject("msg","Login failed");
	}
		return mv;
	}


	
	
	@PostMapping("/addcustomer")
	public ModelAndView addcustomerdemo(@ModelAttribute("customer") Customer customer )
	{
		customerService.addcustomer(customer);
		
		ModelAndView mv =new ModelAndView();
		mv.setViewName("signup");
		mv.addObject("msg", "customer registered successfully" );
		return mv;
	}
	
	
	@GetMapping("/viewallcustomers")
	public ModelAndView viewallcustomerdemo()
	{
		ModelAndView mv =new ModelAndView("viewallcustomers");
		List<Customer> customerlist=adminService.viewallcustomers();
		mv.addObject("customerlist", customerlist);
		return mv;
	}
	
	
	@GetMapping("/deletecustomer")
	public String deletecustomerdemo(@RequestParam("id")int cid)
	{
		adminService.deletecustomer(cid);
		return "redirect:viewallcustomers";
	}
	//--------------------------------------------------------------------------------------------------------------
	@GetMapping("/productregistration")
	public ModelAndView productregistrationdemo()
	{
		ModelAndView mv =new ModelAndView("productregistration", "product",new Product());
		return mv;
		
	}
	
	   @GetMapping("/addproduct")
	   public ModelAndView addproductdemo()
	   {
		   ModelAndView mv = new ModelAndView("productregistration");
			mv.setViewName("productregistration");
			mv.addObject("msg", "product registered successfully" );
			return mv;
		  
	   }
	   @PostMapping("/insertproduct")
	   public String insertproductdemo(HttpServletRequest request,@RequestParam("productimage") MultipartFile file) throws IOException, SerialException, SQLException
	   {
		   String category = request.getParameter("category");
		   String productname = request.getParameter("productname");
		   String designation = request.getParameter("designation");
		   Double cost = Double.valueOf(request.getParameter("cost"));
		   String productlink = request.getParameter("productlink");
		   
			  byte[] bytes = file.getBytes();
			  Blob blob = new javax.sql.rowset.serial.SerialBlob(bytes);
			  
			  Product p = new Product();
			  p.setCategory(category);
			  p.setProductname(productname);
			  p.setDesignation(designation);
			  p.setCost(cost);
			  p.setProductlink(productlink);
			  p.setProductimage(blob);
			  
			  productService.AddProduct(p);
			  
			  return "redirect:addproduct";
	   }
	   
	   @GetMapping("/productimg")
	   public ResponseEntity<byte[]> productimgdemo(@RequestParam("id") int id) throws IOException, SQLException
	   {
	     Product product =  productService.ViewProductByID(id);
	     byte [] imageBytes = null;
	     imageBytes = product.getProductimage().getBytes(1,(int) product.getProductimage().length());

	     return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);
	   }
	
	@GetMapping("/viewallproducts")
    public ModelAndView viewallproductdemo()
    {
	ModelAndView mv =new ModelAndView("viewallproducts");
	List<Product> productlist=sellerService.viewallproducts();
	mv.addObject("productlist", productlist);
	return mv;
    }
	   @PostMapping("/displayproduct")
	   public ModelAndView displayproductdemo(HttpServletRequest request)
	   {
		   int pid=Integer.parseInt(request.getParameter("pid"));
		   Product product=productService.ViewProductByID(pid);
		   ModelAndView mv=new ModelAndView("displayproduct");
		   mv.addObject("product",product);
		   return mv;
	   }
	   

	   @GetMapping("/viewproductbyid")
	public ModelAndView  viewproductbyiddemo()
	{
		   List<Product> productlist=productService.ViewAllProducts();
		   ModelAndView mv=new ModelAndView("viewproductbyid");
		   mv.addObject("productlist",productlist);
		   return mv;
	}
		@GetMapping("/newproducts")
	public ModelAndView newproductsdemo()
		{
			ModelAndView mv =new ModelAndView("newproducts");
			List<Product> productlist=sellerService.newproducts();
			mv.addObject("productlist", productlist);
			return mv;
		 }
	
	   @GetMapping("/deleteproduct")
		public String deleteproductdemo(@RequestParam("id")int pid)
		{
			sellerService.deleteproduct(pid);
			return "redirect:viewallproducts";
		}
	   

}
