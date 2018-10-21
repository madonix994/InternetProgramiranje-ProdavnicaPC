package rs;

public class Radnik {
	private int radnik_id, broj_telefona_radnika;
	private String ime_radnika, prezime_radnika, adresa_radnika;
	public int getRadnik_id() {
		return radnik_id;
	}
	public void setRadnik_id(int radnik_id) {
		this.radnik_id = radnik_id;
	}
	public int getBroj_telefona_radnika() {
		return broj_telefona_radnika;
	}
	public void setBroj_telefona_radnika(int broj_telefona_radnika) {
		this.broj_telefona_radnika = broj_telefona_radnika;
	}
	public String getIme_radnika() {
		return ime_radnika;
	}
	public void setIme_radnika(String ime_radnika) {
		this.ime_radnika = ime_radnika;
	}
	public String getPrezime_radnika() {
		return prezime_radnika;
	}
	public void setPrezime_radnika(String prezime_radnika) {
		this.prezime_radnika = prezime_radnika;
	}
	public String getAdresa_radnika() {
		return adresa_radnika;
	}
	public void setAdresa_radnika(String adresa_radnika) {
		this.adresa_radnika = adresa_radnika;
	}
	public Radnik(int broj_telefona_radnika, String ime_radnika,
			String prezime_radnika, String adresa_radnika) {
		super();
		this.broj_telefona_radnika = broj_telefona_radnika;
		this.ime_radnika = ime_radnika;
		this.prezime_radnika = prezime_radnika;
		this.adresa_radnika = adresa_radnika;
	}
	public Radnik() {
		super();
		// TODO Auto-generated constructor stub
	}
}
