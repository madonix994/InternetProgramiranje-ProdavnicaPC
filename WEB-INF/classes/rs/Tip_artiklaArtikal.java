package rs;

public class Tip_artiklaArtikal {

	private int	artikal_id ;
	private String	naziv_artikla;
	private int	prodajna_cena_artikla;
	private int	kolicina_artikla;
	private int	tip_artikla_id_ta;
	private int tip_artikla_id;
	private String ime_tipa_artikla;
	private String opis_tipa_artikla;
	public int getArtikal_id() {
		return artikal_id;
	}
	public void setArtikal_id(int artikal_id) {
		this.artikal_id = artikal_id;
	}
	public String getNaziv_artikla() {
		return naziv_artikla;
	}
	public void setNaziv_artikla(String naziv_artikla) {
		this.naziv_artikla = naziv_artikla;
	}
	public int getProdajna_cena_artikla() {
		return prodajna_cena_artikla;
	}
	public void setProdajna_cena_artikla(int prodajna_cena_artikla) {
		this.prodajna_cena_artikla = prodajna_cena_artikla;
	}
	public int getKolicina_artikla() {
		return kolicina_artikla;
	}
	public void setKolicina_artikla(int kolicina_artikla) {
		this.kolicina_artikla = kolicina_artikla;
	}
	public int getTip_artikla_id_ta() {
		return tip_artikla_id_ta;
	}
	public void setTip_artikla_id_ta(int tip_artikla_id_ta) {
		this.tip_artikla_id_ta = tip_artikla_id_ta;
	}
	public int getTip_artikla_id() {
		return tip_artikla_id;
	}
	public void setTip_artikla_id(int tip_artikla_id) {
		this.tip_artikla_id = tip_artikla_id;
	}
	public String getIme_tipa_artikla() {
		return ime_tipa_artikla;
	}
	public void setIme_tipa_artikla(String ime_tipa_artikla) {
		this.ime_tipa_artikla = ime_tipa_artikla;
	}
	public String getOpis_tipa_artikla() {
		return opis_tipa_artikla;
	}
	public void setOpis_tipa_artikla(String opis_tipa_artikla) {
		this.opis_tipa_artikla = opis_tipa_artikla;
	}
	public Tip_artiklaArtikal(String naziv_artikla, int prodajna_cena_artikla,
			int kolicina_artikla, String ime_tipa_artikla,
			String opis_tipa_artikla) {
		super();
		this.naziv_artikla = naziv_artikla;
		this.prodajna_cena_artikla = prodajna_cena_artikla;
		this.kolicina_artikla = kolicina_artikla;
		this.ime_tipa_artikla = ime_tipa_artikla;
		this.opis_tipa_artikla = opis_tipa_artikla;
	}
	public Tip_artiklaArtikal() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Tip_artiklaArtikal [artikal_id=" + artikal_id
				+ ", naziv_artikla=" + naziv_artikla
				+ ", prodajna_cena_artikla=" + prodajna_cena_artikla
				+ ", kolicina_artikla=" + kolicina_artikla
				+ ", tip_artikla_id_ta=" + tip_artikla_id_ta
				+ ", tip_artikla_id=" + tip_artikla_id + ", ime_tipa_artikla="
				+ ime_tipa_artikla + ", opis_tipa_artikla=" + opis_tipa_artikla
				+ "]";
	}
	
	
	
}
