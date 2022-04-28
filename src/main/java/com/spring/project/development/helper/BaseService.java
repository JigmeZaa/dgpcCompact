package com.spring.project.development.helper;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.MessageSource;
import org.springframework.core.env.Environment;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * Created by nzepa on 9/14/2020.
 */
public class BaseService {
    @Autowired
    @Qualifier("messageSource")
    private MessageSource messageSource;

    @Autowired
    private Environment env;
    //region connection manager
    protected EntityManager em;

    @PersistenceContext(unitName = "default")
    public void setEm(EntityManager em) {
        this.em = em;
    }


    protected Session getCurrentSession() {
        return em.unwrap(Session.class);
    }

    public Connection getConnection() throws SQLException {
        String url = env.getProperty("spring.datasource.url");
        String username = env.getProperty("spring.datasource.username");
        String password = env.getProperty("spring.datasource.password");
        return DriverManager.getConnection(url, username, password);
    }

    public MessageSource getMessageSource() {
        return messageSource;
    }

    public void setMessageSource(MessageSource messageSource) {
        this.messageSource = messageSource;
    }
    //endregion
}
