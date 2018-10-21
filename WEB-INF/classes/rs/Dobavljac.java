package rs;

public class Dobavljac {
	private int dobavljac_id, broj_telefona_dobavljaca;
	private String naziv_dobavljaca, adresa_dobavljaca, grad;
	public int getDobavljac_id() {
		return dobavljac_id;
	}
	public void setDobavljac_id(int dobavljac_id) {
		this.dobavljac_id = dobavljac_id;
	}
	public int getBroj_telefona_dobavljaca() {
		return broj_telefona_dobavljaca;
	}
	public void setBroj_telefona_dobavljaca(int broj_telefona_dobavljaca) {
		this.broj_telefona_dobavljaca = broj_telefona_dobavljaca;
	}
	public String getNaziv_dobavljaca() {
		return naziv_dobavljaca;
	}
	public void setNaziv_dobavljaca(String naziv_dobavljaca) {
		this.naziv_dobavljaca = naziv_dobavljaca;
	}
	public String getAdresa_dobavljaca() {
		return adresa_dobavljaca;
	}
	public void setAdresa_dobavljaca(String adresa_dobavljaca) {
		this.adresa_dobavljaca = adresa_dobavljaca;
	}
	public String getGrad() {
		return grad;
	}
	public void setGrad(String grad) {
		this.grad = grad;
	}
	public Dobavljac(int broj_telefona_dobavljaca, String naziv_dobavljaca,
			String adresa_dobavljaca, String grad) {
		super();
		this.broj_telefona_dobavljaca = broj_telefona_dobavljaca;
		this.naziv_dobavljaca = naziv_dobavljaca;
		this.adresa_dobavljaca = adresa_dobavljaca;
		this.grad = grad;
	}
	public Dobavljac() {
		super();
		// TODO Auto-generated constructor stub
	}
}
