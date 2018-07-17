package com.example;

import java.io.File;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@Configuration
public class MyFileConfig extends WebMvcConfigurerAdapter {

	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
//		registry.addResourceHandler("/temp/**").addResourceLocations("/resources/", "classpath:/other-resources/");
		registry.addResourceHandler("/temp/**").addResourceLocations(new File("D:/temp").toURI().toString());
	}
}
