package rs;

import java.sql.Timestamp;

public class Racun {
	private int racun_id, radnik_id_r, kupac_id_k, nacin_isporuke_id_ni;
	private int ukupna_cena;
	private String status;
	private Timestamp datum_izdavanja;
	public int getRacun_id() {
		return racun_id;
	}
	public void setRacun_id(int racun_id) {
		this.racun_id = racun_id;
	}
	public int getRadnik_id_r() {
		return radnik_id_r;
	}
	public void setRadnik_id_r(int radnik_id_r) {
		this.radnik_id_r = radnik_id_r;
	}
	public int getKupac_id_k() {
		return kupac_id_k;
	}
	public void setKupac_id_k(int kupac_id_k) {
		this.kupac_id_k = kupac_id_k;
	}
	public int getNacin_isporuke_id_ni() {
		return nacin_isporuke_id_ni;
	}
	public void setNacin_isporuke_id_ni(int nacin_isporuke_id_ni) {
		this.nacin_isporuke_id_ni = nacin_isporuke_id_ni;
	}
	public int getUkupna_cena() {
		return ukupna_cena;
	}
	public void setUkupna_cena(int ukupna_cena) {
		this.ukupna_cena = ukupna_cena;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Timestamp getDatum_izdavanja() {
		return datum_izdavanja;
	}
	public void setDatum_izdavanja(Timestamp datum_izdavanja) {
		this.datum_izdavanja = datum_izdavanja;
	}
	public Racun(int radnik_id_r, int kupac_id_k, int nacin_isporuke_id_ni,
			int ukupna_cena, String status, Timestamp datum_izdavanja) {
		super();
		this.radnik_id_r = radnik_id_r;
		this.kupac_id_k = kupac_id_k;
		this.nacin_isporuke_id_ni = nacin_isporuke_id_ni;
		this.ukupna_cena = ukupna_cena;
		this.status = status;
		this.datum_izdavanja = datum_izdavanja;
	}
	public Racun() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Racun [racun_id=" + racun_id + ", radnik_id_r=" + radnik_id_r
				+ ", kupac_id_k=" + kupac_id_k + ", nacin_isporuke_id_ni="
				+ nacin_isporuke_id_ni + ", ukupna_cena=" + ukupna_cena
				+ ", status=" + status + ", datum_izdavanja=" + datum_izdavanja
				+ "]";
	}
	
	
}
