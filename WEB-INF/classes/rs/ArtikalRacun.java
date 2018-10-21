package rs;

public class ArtikalRacun {
	private int artikal_racun_id, artikal_id_ar, racun_id_r;

	public int getArtikal_racun_id() {
		return artikal_racun_id;
	}

	public void setArtikal_racun_id(int artikal_racun_id) {
		this.artikal_racun_id = artikal_racun_id;
	}

	public int getArtikal_id_ar() {
		return artikal_id_ar;
	}

	public void setArtikal_id_ar(int artikal_id_ar) {
		this.artikal_id_ar = artikal_id_ar;
	}

	public int getRacun_id_r() {
		return racun_id_r;
	}

	public void setRacun_id_r(int racun_id_r) {
		this.racun_id_r = racun_id_r;
	}

	public ArtikalRacun(int artikal_id_ar, int racun_id_r) {
		super();
		this.artikal_id_ar = artikal_id_ar;
		this.racun_id_r = racun_id_r;
	}

	public ArtikalRacun() {
		super();
		// TODO Auto-generated constructor stub
	}
}
