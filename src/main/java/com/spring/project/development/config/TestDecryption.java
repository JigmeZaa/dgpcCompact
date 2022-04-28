package com.spring.project.development.config;
//Database usename and password encryption and decription class
public class TestDecryption {

    public static void main(String[] args) {
        MCADataSource mcaDataSource = new MCADataSource();

        String plainText = "zepa";
        String encrypted = mcaDataSource.getEncryptedText(plainText);
        String decrypted = mcaDataSource.getDecryptedText(encrypted);

        System.out.println("Text to encrypt: " + plainText);
        System.out.println("Encrypted text:" + encrypted);
        System.out.println("Decrypted text:" + decrypted);

    }

}