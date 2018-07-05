package com.ui.spring;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.scheduling.annotation.AsyncConfigurerSupport;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurationSupport;


@SpringBootApplication
@EnableAsync
@ComponentScan({ "com.ui.*" })
public class App extends AsyncConfigurerSupport
{
	public static final boolean DEBUG = true;
	
	public static void main( String[] args )
    {
        SpringApplication.run(App.class, args);
        System.out.println( "Sistema Iniciou!" );
        
        AbstractApplicationContext context = new ClassPathXmlApplicationContext("Beans.xml");

    }   
	
	
		

}
