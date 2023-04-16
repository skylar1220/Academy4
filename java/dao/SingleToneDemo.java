package dao;
// 5
public class SingleToneDemo {

	public static void main(String[] args) {

		SingleTone s1 = SingleTone.getInstance();
		s1.setId(100);
		System.out.println("s1 id = "+s1.getId());
		
		SingleTone s2 = SingleTone.getInstance();
		s2.setId(300);
		System.out.printf("s1 id = %d s2 id = %d\n", s1.getId(), s2.getId());
		
		SingleTone s3 = SingleTone.getInstance();
		System.out.println("s3 id = "+s3.getId());
	}
// SingleTone s1 = new singletone();
//	SingleTone s1 = SingleTone.getInstance();
//	위 두개의 차이, 1은 s1이 100으로 2는 s1도 300으로
//	- bean은 동일 객체다
	// scope = request이면 같은 범위이다.
	
	//  자바빈을 만들 때는 그냥 클래스명 만으로 할 ㅜㅅ 있는데
	// 기존 걸 그대로 쓰는 것이 ??@@
}
