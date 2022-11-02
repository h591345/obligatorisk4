package model;

import org.springframework.boot.convert.DataSizeUnit;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.regex.Pattern;

@Entity
@Table(schema = "Paamelding")

public class Deltaker {
    @Pattern (regexp = "")
        @Size
    private String fornavn;
    private String etternavn;
    @Id
    @Pattern (regexp = "^\\d{8}$") Message("Mobilnummer må være 8 sifre langt")
    private int mobilnummer;
    private String passord;

    public Deltaker(String fornavn, String etternavn, int mobilnummer, String passord) {

        this.fornavn = fornavn;
        this.etternavn = etternavn;
        this.mobilnummer = mobilnummer;
        this.passord = passord;
    }

    public Deltaker() {

    }



    public void setFornavn(String fornavn) {
        this.fornavn = fornavn;
    }



    public void setEtternavn(String etternavn) {
        this.etternavn = etternavn;
    }



    public void setMobilnummer(int mobilnummer) {
        this.mobilnummer = mobilnummer;
    }



    public void setPassord(String passord) {
        this.passord = passord;
    }
}
