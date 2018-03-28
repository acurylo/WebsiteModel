package com.bluepicks.entity;



import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "track")
public class Track {

    @Id
    private Long id;

    @Lob
    @Column(name = "title")
    private String title;

    @Lob
    @Column(name = "lyrics")
    private String lyrics;

    @Lob
    @Column(name = "description")
    private String description;

    @Lob
    @Column(name = "link")
    private String link;

    @Column(name = "date")
    private Date date;

    @Column(name = "editDate")
    private Date editDate;

    @Column(name = "albumId")
    private Long albumId;

    public Track() {}

    public Track(Long id, String title, String lyrics, String description, String link) {
        this.id = id;
        this.title = title;
        this.lyrics = lyrics;
        this.description = description;
        this.link = link;
    }

    public Long getId() { return id; }

    public void setId(Long id) { this.id = id; }

    public String getTitle() { return title; }

    public void setTitle(String title) { this.title = title; }

    public String getLyrics() { return lyrics; }

    public void setLyrics(String lyrics) { this.lyrics = lyrics; }

    public String getDescription() { return description; }

    public void setDescription(String description) { this.description = description; }

    public String getLink() { return link; }

    public void setLink(String link) { this.link = link; }

    public Date getDate() { return date; }

    public void setDate(Date date) { this.date = date; }

    public Date getEditDate() { return editDate; }

    public void setEditDate(Date editDate) { this.editDate = editDate; }

    public Long getAlbumId() { return albumId; }

    public void setAlbumId(Long albumId) { this.albumId = albumId; }
}
