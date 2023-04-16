package dao;
// 5
public class SingleTone {
	private static SingleTone instance = null;
	private int id;

	private SingleTone() { 	} // 객체 생성 금지
	
	public static SingleTone getInstance() {	// 자기 자신을 반환하는 
		if (instance == null) {
			instance = new SingleTone();
		}
		return instance;
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
}
