package org.spring.catbienvivian.Enum;

public enum TrueFalseEnum {
	TRUE(1),
	FALSE(0);
	
	
	private int is;

	TrueFalseEnum(int is) {
		this.is = is;
	}

	public int toInt() {
		return is;
	}
}
