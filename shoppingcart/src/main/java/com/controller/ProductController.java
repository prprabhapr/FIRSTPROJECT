package com.controller;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;


import com.dao.CategoryDAO;
import com.dao.ProductDAO;
import com.dao.SupplierDAO;
import com.google.gson.Gson;
//import com.google.gson.Gson;
import com.model.Product;


@Controller
public class ProductController 
{

	
	@Autowired
	CategoryDAO categoryDAO;
	@Autowired
	ProductDAO productDAO;
	@Autowired
	SupplierDAO supplierDAO;
	
	
	 @RequestMapping("/newProduct")
	    public ModelAndView newProduct()
	    {
		    ModelAndView mv=new ModelAndView("addProduct");
		    mv.addObject("suppliers",supplierDAO.list());
		    mv.addObject("categories",categoryDAO.list());
	    	return mv;
	    }
   @ModelAttribute("product")
    public Product createProduct()
   {
	   return new Product();}
	@RequestMapping(value="/storeProduct", method = RequestMethod.POST)
	    public String addChairs(HttpServletRequest request,@Valid @ModelAttribute("product")Product product,BindingResult result)
	    {
		            if(result.hasErrors())
           {
        	   return "addProduct";}
		      	String filename=product.getImg().getOriginalFilename();
	        product.setImage(filename);
	        	try{
	        		byte[] bytes=new byte[product.getImg().getInputStream().available()];
	        	    product.getImg().getInputStream().read(bytes);
	        		BufferedInputStream buffer=new BufferedInputStream(product.getImg().getInputStream());
	        		MultipartFile file=product.getImg();
	        		String path=request.getServletContext().getRealPath("/")+"resources/images";
	        		File rootPath=new File(path);
	        		if(!rootPath.exists())
	        			rootPath.mkdirs();
	        		File store=new File(rootPath.getAbsolutePath()+"/"+filename);
	        		System.out.println("Image path :"+path);
	        		OutputStream os=new FileOutputStream(store);
	        		os.write(bytes); }
	        	catch(Exception e){
	        		System.out.println(e.getMessage());
	        	}
	        	productDAO.saveOrUpdate(product);
	        	return "manageProducts";
	        }
	@RequestMapping("/retriveRecords")
	public ModelAndView retriveRecords()
	{  
		ModelAndView mv=new ModelAndView("manageProducts");
		return mv;
	} 
	 @RequestMapping(value="/list",method=RequestMethod.GET,produces="application/json")
	    public @ResponseBody String showList()
	    {
	    	List list=productDAO.list();
	    	Gson x=new Gson();
	    	String json=x.toJson(list);
	    	
	    	return json;
	    }
	 @RequestMapping(value="viewProduct",method=RequestMethod.GET)
	    public ModelAndView viewProduct(@RequestParam int id, @ModelAttribute Product products)
	    {
	    	System.out.println(id+"-------------------");
	    	Product product=productDAO.get(id);
	    	
	    	return new ModelAndView("viewProduct","product",product);
	    	
	    }
	 @RequestMapping(value="editProduct",method=RequestMethod.GET)
	    public ModelAndView editProduct(@RequestParam int id)
	    {
		 ModelAndView mv=new  ModelAndView("editProduct");
		 mv.addObject("suppliers",supplierDAO.list());
		 mv.addObject("categories",categoryDAO.list());
	    Product product=productDAO.get(id);
	    mv.addObject("product",product);
	    return mv;
	    		}
	    
	    @RequestMapping(value="/updateProduct",method=RequestMethod.POST)
	    public ModelAndView updateProduct(HttpServletRequest request,@Valid @ModelAttribute("product")Product product,BindingResult result)
	    {
	    	String filename=product.getImg().getOriginalFilename();
	    	
	    	product.setImage(filename);
	    	System.out.println(product.getId());
	    	System.out.println(product.getName());
	    	System.out.println(product.getPrice());
	    	System.out.println(product.getDescription());
	    	System.out.println(product.getWarranty());
	    	System.out.println(product.getImage());
	    	System.out.println(product.getCategory());
	    	System.out.println(product.getSupplier());
	    	System.out.println(product.getImg());
	  
	    	try
     	{
     		byte[] bytes=new byte[product.getImg().getInputStream().available()];
     		product.getImg().getInputStream().read(bytes);
     		BufferedInputStream buffer=new BufferedInputStream(product.getImg().getInputStream());
     		MultipartFile file=product.getImg();
     		String path=request.getServletContext().getRealPath("/")+"resources/images";
     		File rootPath=new File(path);
     		if(!rootPath.exists())
     			rootPath.mkdirs();
     		File store=new File(rootPath.getAbsolutePath()+"/"+filename);
     		OutputStream os=new FileOutputStream(store);
     		os.write(bytes);
     	}
     	catch(Exception e){
     		System.out.println(e.getMessage());
     	}
     		        
	    	productDAO.updateProduct(product);
	    	
	    	return new ModelAndView("manageProducts");
	    }
	    @RequestMapping("/allProducts")
	    public ModelAndView allProducts()
	    {		 
	    	
	    	ModelAndView mv=new ModelAndView("allProducts");
	    	
	    	return mv;
	    }
	    
	    
	    @RequestMapping("/delete")
	    public ModelAndView deleteProduct(@RequestParam int id)
	    {		 
	    	
	    	productDAO.deleteProduct(id);
	    	ModelAndView mv=new ModelAndView("manageProducts");
	    	
	    	return mv;
	    }
	    
}