//package com.spring.project.development.crypto;
//
///**
// * Created by nzepa on 9/26/2020.
// */
//
//import org.apache.commons.dbcp2.BasicDataSource;
//
//import java.sql.Connection;
//import java.sql.SQLException;
//
//public class CustomDataSource extends BasicDataSource {
//
//    public CustomDataSource() {
//        super();
//    }
//
//    @Override
//    public synchronized void setPassword(String encodedPassword) {
//        try {
//            super.setPassword(TrippleDes.decrypt(encodedPassword));
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//    }
//
//    @Override
//    public void setUsername(String username) {
//        try {
//            super.setUsername(TrippleDes.decrypt(username));
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//    }
//
//    @Override
//    public Connection getConnection() throws SQLException {
//        return super.getConnection();
//    }
//}
