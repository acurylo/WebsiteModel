package com.bluepicks.entity;


import javax.persistence.*;
import javax.swing.text.StyledEditorKit;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "message")
public class Message {

    @Id
    private Long id;

    @Lob
    @Column(name = "title")
    private String title;

    @Lob
    @Column(name = "message")
    private String message;

    @Lob
    @Column(name = "first_name")
    private String first_name;

    @Lob
    @Column(name = "last_name")
    private String last_name;

    @Lob
    @Column(name = "email")
    private String email;

    @Column(name = "date")
    private Date date;

    @Column(name = "received_by_admin1")
    private Boolean received_by_admin1;

    @Column(name = "received_by_admin2")
    private Boolean received_by_admin2;

    public Message() { }

    public Message(Long id, String title, String message, String first_name, String last_name, String email) {
        this.id = id;
        this.title = title;
        this.message = message;
        this.first_name = first_name;
        this.last_name = last_name;
        this.email = email;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) { this.id = id; }

    public String getTitle() { return title; }

    public void setTitle(String title) { this.title = title; }

    public String getMessage() { return message; }

    public void setMessage(String message) { this.message = message; }

    public String getFirst_name() { return first_name; }

    public void setFirst_name(String first_name) { this.first_name = first_name; }

    public String getLast_name() { return last_name; }

    public void setLast_name(String last_name) { this.last_name = last_name; }

    public String getEmail() { return email; }

    public void setEmail(String email) { this.email = email; }

    public Date getDate() { return date; }

    public void setDate(Date date) { this.date = date; }

    public Boolean getReceived_by_admin1() { return received_by_admin1; }

    public void setReceived_by_admin1(Boolean received_by_admin1) { this.received_by_admin1 = received_by_admin1; }

    public Boolean getReceived_by_admin2() { return received_by_admin2; }

    public void setReceived_by_admin2(Boolean received_by_admin2) { this.received_by_admin2 = received_by_admin2; }
}
