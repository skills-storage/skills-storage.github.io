package com.skillsimprover.usersdb.data;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class User {

    private String userName;
    private String password;
    private Date dob;

    public User() {
        super();
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Date getDob() {
        return dob;
    }

    public String getDobAsStr() {
        DateFormat format = new SimpleDateFormat("dd-MM-yyyy");
        return format.format(dob);
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((userName == null) ? 0 : userName.hashCode());
        return result;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }

        if (obj == null) {
            return false;
        }

        if (getClass() != obj.getClass()) {
            return false;
        }

        User other = (User) obj;
        if (userName == null) {
            if (other.userName != null) {
                return false;
            }
        } else if (!userName.equals(other.userName)) {
            return false;
        }

        return true;
    }

    
    
}
