package dao;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ProductRepository {
	private List<Product> listofProduct = new ArrayList<>();
	public ProductRepository() {
		listofProduct.add(new Product("p001", "iphone", 1000000, "아이폰 최신", "Apple", "SP", 100, "new", "P1234.png"));
		listofProduct.add(new Product("p002", "galexy", 900000, "갤럭시 최신", "Samsung", "SP", 200, "new", "P1235.png"));
		listofProduct.add(new Product("p003", "LG gram", 1500000, "노트북 최신", "LG", "NOTEBOOK", 500, "new", "P1236.png"));
	}
	// 전체상품 조회
	public List<Product> getAllProducts(){
		return listofProduct;
	}
	
	// 상품 아이디로 조회
	public Product getProductById(String productId) {
		for (Product product : listofProduct) {
			if (product.getProductId().equals(productId)) {
				return product;
			}
		}
		return null;
	}
	
	// 상품 추가
	public void addProduct(Product product) {
		listofProduct.add(product);
	}
	
	/*
	 * // 세자리수 콤마 public String makeComma(long number) { String num =
	 * String.valueOf(number);
	 * 
	 * int count = 1; String str = "";
	 * 
	 * for (int i = num.length()-1 ; i > -1 ; i--) { str += num.charAt(i); if (
	 * count % 3 == 0) { if (count/3 != num.length() /3) { str += ","; } } count++;
	 * } return str; }
	 */
}
