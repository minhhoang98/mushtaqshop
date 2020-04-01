package mushtaq.entity;

public class Nhacungcap {
	private int id;
	private String tennhacungcap;
	private String diachi;

	public Nhacungcap() {
	}

	public Nhacungcap(String tennhacungcap, String diachi) {
		this.tennhacungcap = tennhacungcap;
		this.diachi = diachi;
	}

	public Nhacungcap(int id, String tennhacungcap, String diachi) {
		this.id = id;
		this.tennhacungcap = tennhacungcap;
		this.diachi = diachi;
	}

	@Override
	public String toString() {
		return "nhacungcap [id=" + id + ", tennhacungcap=" + tennhacungcap + ", diachi=" + diachi + "]";
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTennhacungcap() {
		return tennhacungcap;
	}

	public void setTennhacungcap(String tennhacungcap) {
		this.tennhacungcap = tennhacungcap;
	}

	public String getDiachi() {
		return diachi;
	}

	public void setDiachi(String diachi) {
		this.diachi = diachi;
	}

}
