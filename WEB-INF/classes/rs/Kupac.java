package rs;

public class Kupac {

	private int kupac_id;
	private String ime_kupca;
	private String prezime_kupca;
	private String adresa_kupca;
	private String username_kupca;
	private String password_kupca;
	public Kupac(String ime_kupca, String prezime_kupca, String adresa_kupca,
			String username_kupca, String password_kupca) {
		super();
		this.ime_kupca = ime_kupca;
		this.prezime_kupca = prezime_kupca;
		this.adresa_kupca = adresa_kupca;
		this.username_kupca = username_kupca;
		this.password_kupca = password_kupca;
	}
	public int getKupac_id() {
		return kupac_id;
	}
	public void setKupac_id(int kupac_id) {
		this.kupac_id = kupac_id;
	}
	public String getIme_kupca() {
		return ime_kupca;
	}
	public void setIme_kupca(String ime_kupca) {
		this.ime_kupca = ime_kupca;
	}
	public String getPrezime_kupca() {
		return prezime_kupca;
	}
	public void setPrezime_kupca(String prezime_kupca) {
		this.prezime_kupca = prezime_kupca;
	}
	public String getAdresa_kupca() {
		return adresa_kupca;
	}
	public void setAdresa_kupca(String adresa_kupca) {
		this.adresa_kupca = adresa_kupca;
	}
	public String getUsername_kupca() {
		return username_kupca;
	}
	public void setUsername_kupca(String username_kupca) {
		this.username_kupca = username_kupca;
	}
	public String getPassword_kupca() {
		return password_kupca;
	}
	public void setPassword_kupca(String password_kupca) {
		this.password_kupca = password_kupca;
	}
	@Override
	public String toString() {
		return "Kupac [kupac_id=" + kupac_id + ", ime_kupca=" + ime_kupca
				+ ", prezime_kupca=" + prezime_kupca + ", adresa_kupca="
				+ adresa_kupca + ", username_kupca=" + username_kupca
				+ ", password_kupca=" + password_kupca + "]";
	}
	public Kupac() {
		super();
		// TODO Auto-generated constructor stub
	}


	
	
}
