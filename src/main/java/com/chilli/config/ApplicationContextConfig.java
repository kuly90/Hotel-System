package com.chilli.config;

import java.util.Locale;

import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.web.servlet.LocaleResolver;
import org.springframework.web.servlet.i18n.CookieLocaleResolver;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

/**
 * Config Spring
 *
 * @author Ton That Cu Ly
 * @version 1.0 2021-03-01
 * 
 */
@Configuration
@ComponentScan("com.chilli.*")
public class ApplicationContextConfig {

  /**
   * Config viewResolver
   *
   * @return viewResolver
   * 
   */
  @Bean(name = "viewResolver")
   public InternalResourceViewResolver getViewResolver() {
     InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
 
     viewResolver.setPrefix("/WEB-INF/jsp/");
     viewResolver.setSuffix(".jsp");
 
     return viewResolver;
   }

  /**
   * config language
   *
   * @return messageResource
   * 
   */
  @Bean(name = "messageSource")
  public MessageSource getMessageResource()  {
    ReloadableResourceBundleMessageSource messageResource= new ReloadableResourceBundleMessageSource();
  
    // Read language/messages_xxx.properties file.
    // For example: language/messages_vi.properties
 
    messageResource.setBasename("classpath:language/messages");
    messageResource.setDefaultEncoding("UTF-8");
    return messageResource;
  }

  /**
   * get local language - vietnamese
   *
   * @return resolver
   * 
   */
  @Bean(name = "localeResolver")
  public LocaleResolver getLocaleResolver() {
    CookieLocaleResolver resolver= new CookieLocaleResolver();
    resolver.setDefaultLocale(new Locale("vi"));
    resolver.setCookieDomain("myAppLocaleCookie");
    // 60 minutes

    resolver.setCookieMaxAge(60*60);
    return resolver;
  }
}
