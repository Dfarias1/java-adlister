package com.codeup.adlister;

import org.mindrot.jbcrypt.BCrypt;

public class HashTest {

    public static void main(String[] args) {
        String password = "123456";
        String salt = BCrypt.gensalt();
        System.out.println(salt);
        String hash = BCrypt.hashpw(password, salt);
        System.out.println(hash);
        boolean passwordsMatch = BCrypt.checkpw(password, hash);
        System.out.println(passwordsMatch);
    }
}