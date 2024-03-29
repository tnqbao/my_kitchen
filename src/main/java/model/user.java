package model;

import java.util.Date;
import java.util.UUID;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class User {

    @Id
    @Column(unique = true, nullable = false)
    @GeneratedValue(strategy = GenerationType.AUTO)
    private UUID userId;

    @Column(unique = true)
    private String userName;
    @Column
    private String password;
    @Column
    private String fullName;
    @Column
    private Boolean gender;
    @Column
    private String location;
    @Column
    private String email;
    @Column
    private String phoneNo;
    @Column
    private Date dateOfBirth;
    @Column
    private Date registedDate;

    public UUID getUserId() {
        return userId;
    }

    public void setUserId(UUID userId) {
        this.userId = userId;
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

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public Boolean getGender() {
        return gender;
    }

    public void setGender(Boolean gender) {
        this.gender = gender;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhoneNo() {
        return phoneNo;
    }

    public void setPhoneNo(String phoneNo) {
        this.phoneNo = phoneNo;
    }

    public Date getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(Date dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public Date getRegistedDate() {
        return registedDate;
    }

    public void setRegistedDate(Date registedDate) {
        this.registedDate = registedDate;
    }

    public User() {
    }

    public User(UUID userId, String userName, String password, String fullName, Boolean gender, String location,
            String email, String phoneNo, Date dateOfBirth, Date registedDate) {
        this.userId = userId;
        this.userName = userName;
        this.password = password;
        this.fullName = fullName;
        this.gender = gender;
        this.location = location;
        this.email = email;
        this.phoneNo = phoneNo;
        this.dateOfBirth = dateOfBirth;
        this.registedDate = registedDate;
    }

    public User(UUID userId, String userName, String password, String fullName, Boolean gender, String location,
            Date dateOfBirth) {
        this.userId = userId;
        this.userName = userName;
        this.password = password;
        this.fullName = fullName;
        this.gender = gender;
        this.location = location;
        this.dateOfBirth = dateOfBirth;
    }

    @Override
    public String toString() {
        return "user [userId=" + userId + ", userName=" + userName + ", gender=" + gender + ", registedDate="
                + registedDate + "]";
    }
    
    public String getStringToLink()
    {
    	return "userId=" + this.userId ;
    }
    //good luck
}
