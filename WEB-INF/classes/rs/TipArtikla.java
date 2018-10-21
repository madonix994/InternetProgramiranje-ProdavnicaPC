package rs;

public class TipArtikla {
	private int tip_artikla_id;
	private String ime_tipa_artikla, opis_tipa_artikla;
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
	public TipArtikla(String ime_tipa_artikla, String opis_tipa_artikla) {
		super();
		this.ime_tipa_artikla = ime_tipa_artikla;
		this.opis_tipa_artikla = opis_tipa_artikla;
	}
	public TipArtikla() {
		super();
		// TODO Auto-generated constructor stub
	}
}
