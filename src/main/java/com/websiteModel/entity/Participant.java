package com.websiteModel.entity;


import javax.persistence.*;

@Entity
@Table(name = "participants")
public class Participant {

    @Id
    private Long id;

    @Lob
    @Column(name = "firstName")
    private String firstName;

    @Lob
    @Column(name = "lastName")
    private String lastName;

    @Lob
    @Column(name = "information1")
    private String information1;

    @Lob
    @Column(name = "information2")
    private String information2;

    @Lob
    @Column(name = "photoUrl")
    private String photoUrl;

    public Participant() { }

    public Participant(Long id, String firstName, String lastName, String information1, String information2, String photoUrl) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.information1 = information1;
        this.information2 = information2;
        this.photoUrl = photoUrl;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) { this.id = id; }

    public String getFirstName() { return firstName; }

    public void setFirstName(String firstName) { this.firstName = firstName; }

    public String getLastName() { return lastName; }

    public void setLastName(String lastName) { this.lastName = lastName; }

    public String getInformation1() { return information1; }

    public void setInformation1(String information1) { this.information1 = information1; }

    public String getInformation2() { return information2; }

    public void setInformation2(String information2) { this.information2 = information2; }

    public String getPhotoUrl() { return photoUrl; }

    public void setPhotoUrl(String photoUrl) { this.photoUrl = photoUrl; }
}
