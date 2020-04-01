package mushtaq.entity;

public class Khachhang {
	private int id;
	private String tenkhachhang;
	private String sdt;
	private String diachi;
	private String tentaikhoan;
	private String matkhau;

	public Khachhang() {
		super();
	}

	public Khachhang(String tenkhachhang, String sdt, String diachi, String tentaikhoan, String matkhau) {
		super();
		this.tenkhachhang = tenkhachhang;
		this.sdt = sdt;
		this.diachi = diachi;
		this.tentaikhoan = tentaikhoan;
		this.matkhau = matkhau;
	}

	public Khachhang(int id, String tenkhachhang, String sdt, String diachi, String tentaikhoan, String matkhau) {
		this.id = id;
		this.tenkhachhang = tenkhachhang;
		this.sdt = sdt;
		this.diachi = diachi;
		this.tentaikhoan = tentaikhoan;
		this.matkhau = matkhau;
	}

	@Override
	public String toString() {
		return "khachhang [id=" + id + ", tenkhachhang=" + tenkhachhang + ", sdt=" + sdt + ", diachi=" + diachi
				+ ", tentaikhoan=" + tentaikhoan + ", matkhau=" + matkhau + "]";
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTenkhachhang() {
		return tenkhachhang;
	}

	public void setTenkhachhang(String tenkhachhang) {
		this.tenkhachhang = tenkhachhang;
	}

	public String getSdt() {
		return sdt;
	}

	public void setSdt(String sdt) {
		this.sdt = sdt;
	}

	public String getDiachi() {
		return diachi;
	}

	public void setDiachi(String diachi) {
		this.diachi = diachi;
	}

	public String getTentaikhoan() {
		return tentaikhoan;
	}

	public void setTentaikhoan(String tentaikhoan) {
		this.tentaikhoan = tentaikhoan;
	}

	public String getMatkhau() {
		return matkhau;
	}

	public void setMatkhau(String matkhau) {
		this.matkhau = matkhau;
	}

}
