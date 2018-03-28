package org.spring.catbienvivian.Enum;

public enum SizeEnum {
	XXS(2),
	XS(2),
	S(3),
	L(5),
	XL(7),
	XXL(11);
	
	
	private int size;

	SizeEnum(int size) {
		this.size = size;
	}

	public int size() {
		return size;
	}
}
