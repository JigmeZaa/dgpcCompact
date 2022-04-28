package com.spring.project.development.config;

import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.web.servlet.LocaleResolver;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;

import java.util.Locale;

@Configuration
public class MessagePropertiesConfiguration {
    @Bean(name="messageSource")
    public MessageSource messageSource(){
        ReloadableResourceBundleMessageSource messageSource =
                new ReloadableResourceBundleMessageSource();
        Locale.setDefault(Locale.UK);
        messageSource.setBasenames(
                "classpath:/properties/userSetupMessage",
                "classpath:/properties/userGroupSetupMessage",
                "classpath:/properties/userActivationMessage"
        );
        messageSource.setCacheSeconds(3600);
        return  messageSource;
    }

    @Bean
    public LocaleResolver localeResolver(){
        SessionLocaleResolver slr = new SessionLocaleResolver();
        slr.setDefaultLocale(Locale.UK);
        return slr;
    }
}
