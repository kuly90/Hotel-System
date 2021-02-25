package com.chilli.config;

import javax.servlet.FilterRegistration;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;
 
import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.servlet.DispatcherServlet;

/**
 * Config Spring
 *
 * @author Ton That Cu Ly
 * @version 1.0 2021-03-01
 * 
 */
public class SpringWebAppInitializer implements WebApplicationInitializer {
 
  /**
   * config mapping with request Slash "/"
   */
  @Override
  public void onStartup(ServletContext servletContext) throws ServletException {
    AnnotationConfigWebApplicationContext appContext = new AnnotationConfigWebApplicationContext();
    appContext.register(ApplicationContextConfig.class);
 
    ServletRegistration.Dynamic dispatcher = servletContext.addServlet(
        "SpringDispatcher"
        , new DispatcherServlet(appContext));
    dispatcher.setLoadOnStartup(1);
    dispatcher.addMapping("/");
 
    // UtF8 Character Filter.
    FilterRegistration.Dynamic fr = servletContext.addFilter("encodingFilter", CharacterEncodingFilter.class);
 
    fr.setInitParameter("encoding", "UTF-8");
    fr.setInitParameter("forceEncoding", "true");
    fr.addMappingForUrlPatterns(null, true, "/*");
  }

}
