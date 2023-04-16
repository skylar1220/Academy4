package dao;
// 5
public class SingleToneDemo2p {

	public static void main(String[] args) {

		SingleTone s3 = SingleTone.getInstance();
		System.out.println("s3 id = "+s3.getId());
		

	}
// 이때는 범위가 달라서 0 이나오는 것
	// 같은 범위 = 같은 클래스 파일
}
