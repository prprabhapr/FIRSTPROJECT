package com.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dao.SupplierDAO;
import com.model.Supplier;
@Controller
public class SupplierController {
	@Autowired
	Supplier supplier;
	@Autowired
	private SupplierDAO supplierDAO;
	
	@RequestMapping("/addsup")   //THIS IS FOR ADDING CATEGORY
	public ModelAndView addSupplier()
	{
		return new ModelAndView("addSupplier");
	}
	@ModelAttribute("supplier")       //THIS IS FOR ADDING CATEGORY
	public Supplier createSupplier()
	{
		return new Supplier();
	}
	@RequestMapping(value="/insertSupplier",method=RequestMethod.GET) //THIS IS FOR ADDING CATEGORY INSERTING VALUES INTO DB
	public ModelAndView insertSupplier(@Validated @ModelAttribute("supplier")Supplier supplier,BindingResult result)
	{
			if(result.hasErrors())
		{return new ModelAndView("addSupplier"); }
//		System.out.println(supplier.getId());
//		System.out.println(supplier.getName());
//		System.out.println(supplier.getLocation());
			supplierDAO.saveOrUpdate(supplier);
			List<Supplier> list=supplierDAO.list();
//      System.out.println("two");
			return new ModelAndView("displaySupplier","list",list);
			
  	}
	@RequestMapping("/displaysup")
	public ModelAndView display()
	{
		ModelAndView m1=new ModelAndView("displaySupplier");
		return m1;
	}
	@RequestMapping(value="/manageSupplier",method=RequestMethod.GET)
	public ModelAndView displaySupplier()
    {
		System.out.println("one");
		List<Supplier> list=supplierDAO.list();
		System.out.println("two");
		return new ModelAndView("displaySupplier","list",list);
    }
	@RequestMapping(value="/manage_supplier_edit")
	public ModelAndView  editSupplier(@RequestParam int id,Model model)
	{
		System.out.println("hello hi");
		Supplier supplier=supplierDAO.get(id);
		System.out.println("hello hi1");
		model.addAttribute("supplier",supplier);
		System.out.println("hello hi2");
		return new ModelAndView("updateSupplier","supplier",supplier);
	}
	@RequestMapping(value="updateSup")
	public String updateSupplier(@Valid @ModelAttribute("supplier")Supplier supplier,BindingResult result,Model model)
	{
		
		supplierDAO.updateSupplier(supplier);
			return "forward:/manageSupplier";
	}

	@RequestMapping(value="/manage_supplier_delete")
   public String deleteSupplier(@RequestParam int id)
   {
		supplierDAO.deleteSupplier(id);
		return "forward:/manageSupplier";
   }
	
}


