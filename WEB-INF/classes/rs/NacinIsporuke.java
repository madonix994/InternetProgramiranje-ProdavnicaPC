package rs;

public class NacinIsporuke {
	private int nacin_isporuke_id;
	private String naziv_isporuke;
	public int getNacin_isporuke_id() {
		return nacin_isporuke_id;
	}
	public void setNacin_isporuke_id(int nacin_isporuke_id) {
		this.nacin_isporuke_id = nacin_isporuke_id;
	}
	public String getNaziv_isporuke() {
		return naziv_isporuke;
	}
	public void setNaziv_isporuke(String naziv_isporuke) {
		this.naziv_isporuke = naziv_isporuke;
	}
	public NacinIsporuke(String naziv_isporuke) {
		super();
		this.naziv_isporuke = naziv_isporuke;
	}
	public NacinIsporuke() {
		super();
		// TODO Auto-generated constructor stub
	}
}
