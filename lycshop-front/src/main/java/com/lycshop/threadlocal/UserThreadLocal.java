package com.lycshop.threadlocal;


import com.lycshop.bean.User;

public class UserThreadLocal {

    private static final ThreadLocal<User> THREAD_LOCAL = new ThreadLocal<User>();

    public static void set(User user) {
        THREAD_LOCAL.set(user);
    }

    public static User get() {
        return THREAD_LOCAL.get();
    }

}