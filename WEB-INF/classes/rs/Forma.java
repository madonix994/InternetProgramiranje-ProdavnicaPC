package rs;

public class Forma {
	private int forma_id;
	private String ime, prezime, email, naslov_poruke, poruka;
	public Forma(String ime, String prezime, String email,
			String naslov_poruke, String poruka) {
		super();
		this.ime = ime;
		this.prezime = prezime;
		this.email = email;
		this.naslov_poruke = naslov_poruke;
		this.poruka = poruka;
	}
	public int getForma_id() {
		return forma_id;
	}
	public void setForma_id(int forma_id) {
		this.forma_id = forma_id;
	}
	public String getIme() {
		return ime;
	}
	public void setIme(String ime) {
		this.ime = ime;
	}
	public String getPrezime() {
		return prezime;
	}
	public void setPrezime(String prezime) {
		this.prezime = prezime;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getNaslov_poruke() {
		return naslov_poruke;
	}
	public void setNaslov_poruke(String naslov_poruke) {
		this.naslov_poruke = naslov_poruke;
	}
	public String getPoruka() {
		return poruka;
	}
	public void setPoruka(String poruka) {
		this.poruka = poruka;
	}
	public Forma() {
		super();
		// TODO Auto-generated constructor stub
	}
}
