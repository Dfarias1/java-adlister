package models;

import java.io.Serializable;

public class Album implements Serializable {
    private long id;
    private String artistName;
    private String albumName;
    private int releaseYear;
    private String genre;
    private double sales;

    public Album() {}

    public Album(long id, String artistName, String albumName, int releaseYear, String genre, double sales) {
        this.id = id;
        this.artistName = artistName;
        this.albumName = albumName;
        this.releaseYear = releaseYear;
        this.genre = genre;
        this.sales = sales;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getArtistName() {
        return artistName;
    }

    public void setArtistName(String artistName) {
        this.artistName = artistName;
    }

    public String getAlbumName() {
        return albumName;
    }

    public void setAlbumName(String albumName) {
        this.albumName = albumName;
    }

    public int getReleaseYear() {
        return releaseYear;
    }

    public void setReleaseYear(int releaseYear) {
        this.releaseYear = releaseYear;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public double getSales() {
        return sales;
    }

    public void setSales(double sales) {
        this.sales = sales;
    }
}