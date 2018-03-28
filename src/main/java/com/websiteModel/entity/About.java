package com.websiteModel.entity;


import javax.persistence.*;

@Entity
@Table(name = "about")
public class About {

    @Id
    private Long id;

    @Lob
    @Column(name="title")
    private String title;

    @Lob
    @Column(name="content1")
    private String content1;

    @Lob
    @Column(name="content2")
    private String content2;

    @Lob
    @Column(name="content3")
    private String content3;

    @Lob
    @Column(name="photoUrl1")
    private String photoUrl1;

    @Lob
    @Column(name="photoUrl2")
    private String photoUrl2;

    @Lob
    @Column(name="photoUrl3")
    private String photoUrl3;

    public About() { }

    public About(String photoUrl3, Long id, String content1, String content2, String content3, String photoUrl1, String photoUrl2) {
        this.photoUrl3 = photoUrl3;
        this.id = id;
        this.content1 = content1;
        this.content2 = content2;
        this.content3 = content3;
        this.photoUrl1 = photoUrl1;
        this.photoUrl2 = photoUrl2;
    }

    public Long getId() { return id; }

    public void setId(Long id) { this.id = id; }

    public String getContent1() { return content1; }

    public void setContent1(String content1) { this.content1 = content1; }

    public String getContent2() { return content2; }

    public void setContent2(String content2) { this.content2 = content2; }

    public String getContent3() { return content3; }

    public void setContent3(String content3) { this.content3 = content3; }

    public String getPhotoUrl1() { return photoUrl1; }

    public void setPhotoUrl1(String photoUrl1) { this.photoUrl1 = photoUrl1; }

    public String getPhotoUrl2() { return photoUrl2; }

    public void setPhotoUrl2(String photoUrl2) { this.photoUrl2 = photoUrl2; }

    public String getPhotoUrl3() { return photoUrl3; }

    public void setPhotoUrl3(String photoUrl3) { this.photoUrl3 = photoUrl3; }

    public String getTitle() { return title; }

    public void setTitle(String title) { this.title = title; }
}
