package edu.abcp.controller.cp;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.abcp.service.PostService;




@Controller
public class AutoCompleteController {
	private static final Logger logger = LoggerFactory.getLogger("controller");
	
	
	@Autowired
	private  PostService postService;
	
	
	
	
	@RequestMapping(value = "/search11", method =RequestMethod.GET,headers="accept=application/json")
	public @ResponseBody List<String> get(@RequestParam("term") String term ) {
		
		System.out.println("term "+term);
		
		String search=term+"%";
		List<String> l1=this.postService.searchBysubcategory(search);
		
	for(String l:l1)
	{
		System.out.println("l "+l);
	}
		
		return l1;
	}
	
	
	
	
	
	@RequestMapping(value="aa", method=RequestMethod.GET,headers="accept=application/json")
	public @ResponseBody List<String> insert_user(@RequestParam("term") String term){
		 
		System.out.println("term "+term);
		   List<String> l1=new ArrayList<String>();
		   l1.add("ab");
		   l1.add("aab");
		   l1.add("acb");
		   l1.add("adb");
	        return l1;
		}
	
	@RequestMapping(value="/s", method=RequestMethod.GET)
	public String load(){
		 
		
	        return "a";
		}


}
