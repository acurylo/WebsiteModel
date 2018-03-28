package com.websiteModel.entity;


import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "post")
public class Post {

    @Id
    private Long id;

    @Column(name = "title")
    private String title;

    @Lob
    @Column(name = "content1")
    private String content1;

    @Lob
    @Column(name = "content2")
    private String content2;

    @Lob
    @Column(name = "content3")
    private String content3;

    @Lob
    @Column(name = "content4")
    private String content4;

    @Lob
    @Column(name = "content5")
    private String content5;

    @Lob
    @Column(name = "content6")
    private String content6;

    @Lob
    @Column(name = "content7")
    private String content7;

    @Lob
    @Column(name = "content8")
    private String content8;

    @Column(name = "link")
    private String link;

    @Column(name = "date")
    private Date date;

    @Column(name = "author")
    private String author;

    @Column(name = "editDate")
    private Date editDate;

    @Lob
    @Column(name = "avatarUrl")
    private String avatarUrl;

    public Post() {}

    public Post(String title, String content1, String content2, String content3, String link) {
        this.title = title;
        this.content1 = content1;
        this.content2 = content2;
        this.content3 = content3;
        this.link = link;
    }

    public Long getId() { return id; }

    public String getTitle() { return title; }

    public String getContent1() { return content1; }

    public String getContent2() { return content2; }

    public String getContent3() { return content3; }

    public String getLink() { return link; }

    public void setId(Long id) { this.id = id; }

    public void setTitle(String title) { this.title = title; }

    public void setContent1(String content1) { this.content1 = content1; }

    public void setContent2(String content2) { this.content2 = content2; }

    public void setContent3(String content3) { this.content3 = content3; }

    public void setLink(String link) { this.link = link; }

    public Date getDate() { return date; }

    public void setDate(Date date) { this.date = date; }

    public String getAuthor() { return author; }

    public void setAuthor(String author) { this.author = author; }

    public Date getEditDate() { return editDate; }

    public void setEditDate(Date editDate) { this.editDate = editDate; }

    public String getContent4() { return content4; }

    public void setContent4(String content4) { this.content4 = content4; }

    public String getContent5() { return content5; }

    public void setContent5(String content5) { this.content5 = content5; }

    public String getContent6() { return content6; }

    public void setContent6(String content6) { this.content6 = content6; }

    public String getContent7() { return content7; }

    public void setContent7(String content7) { this.content7 = content7; }

    public String getContent8() { return content8; }

    public void setContent8(String content8) { this.content8 = content8; }

    public String getAvatarUrl() { return avatarUrl; }

    public void setAvatarUrl(String avatarUrl) { this.avatarUrl = avatarUrl; }
}
