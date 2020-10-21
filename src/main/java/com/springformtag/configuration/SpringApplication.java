package com.springformtag.configuration;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;

import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;

public class SpringApplication implements WebApplicationInitializer {

	public void onStartup(ServletContext servletContext) throws ServletException {
		// TODO Auto-generated method stub

		AnnotationConfigWebApplicationContext context = new AnnotationConfigWebApplicationContext();
		context.register(Springconfig.class);

		DispatcherServlet dispatcherservlet = new DispatcherServlet(context);
		ServletRegistration.Dynamic servletcustomregister = servletContext.addServlet("dispatcherservlet",
				dispatcherservlet);
		servletcustomregister.setLoadOnStartup(1);
		servletcustomregister.addMapping("/mywebsite.com/*");
	}

}
