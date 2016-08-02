package com.mnc.express;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("view")
public class ViewController {

	@RequestMapping(value = "/companyOverview/{target}", method = RequestMethod.GET)
	public ModelAndView companyOverview(@PathVariable String target, HttpServletRequest req, 
			HttpSession session, Locale locale) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("companyOverview/"+target);

		setLanguage(req, session, locale);
		return modelAndView;
	}
	
	 @RequestMapping(value = "/service/{target}", method = RequestMethod.GET)
	 public ModelAndView service(@PathVariable String target, HttpServletRequest req,
	 		HttpSession session, Locale locale) {
		 ModelAndView modelAndView = new ModelAndView();
		 modelAndView.setViewName("service/"+target);
		
		 setLanguage(req, session, locale);
		 return modelAndView;
	 }
	
	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public ModelAndView contact(HttpServletRequest req, HttpSession session, Locale locale) {
		setLanguage(req, session, locale);
		return new ModelAndView("contact");
	}
	
	@RequestMapping(value = "/googlemap", method = RequestMethod.GET)
	public ModelAndView googlemap(HttpServletRequest req, HttpSession session) {
		return new ModelAndView("googlemap");
	}

	public void setLanguage(HttpServletRequest req, HttpSession session, Locale locale){
		
		String lang = req.getParameter("lang");
		if(lang != null && lang.length() == 2){
			session.setAttribute("lang",lang);
		}
	}
}
