package rs;

public class Artikal {

private int	artikal_id ;
private String	naziv_artikla;
private int	prodajna_cena_artikla;
private int	kolicina_artikla;
private int	tip_artikla_id_ta;
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
@Override
public String toString() {
	return "Artikal [artikal_id=" + artikal_id + ", naziv_artikla="
			+ naziv_artikla + ", prodajna_cena_artikla="
			+ prodajna_cena_artikla + ", kolicina_artikla=" + kolicina_artikla
			+ ", tip_artikla_id_ta=" + tip_artikla_id_ta + "]";
}
public Artikal() {
	super();
	// TODO Auto-generated constructor stub
}
public Artikal(String naziv_artikla, int prodajna_cena_artikla,
		int kolicina_artikla, int tip_artikla_id_ta) {
	super();
	this.naziv_artikla = naziv_artikla;
	this.prodajna_cena_artikla = prodajna_cena_artikla;
	this.kolicina_artikla = kolicina_artikla;
	this.tip_artikla_id_ta = tip_artikla_id_ta;
}
	
	
}
