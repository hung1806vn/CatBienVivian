package org.spring.catbienvivian.Enum;

public enum ColorEnum {
	RED(2),
	GREEN(3),
	YELLOW(5),
	BLUE(7),
	BLACK(11),
	WHITE(13);
	
	
	private int color;

	ColorEnum(int color) {
		this.color = color;
	}

	public int color() {
		return color;
	}
}
