package org.spring.catbienvivian.Enum;

public enum ClothesCategoryEnum {
	SWIMSUIT(2),
	AEROBIC(3),
	CHEERLEADER(5);
	private int clothesCate;

	ClothesCategoryEnum(int clothesCate) {
		this.clothesCate = clothesCate;
	}

	public int clothesCategory() {
		return clothesCate;
	}
}
