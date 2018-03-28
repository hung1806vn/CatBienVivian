package org.spring.catbienvivian.Enum;

public enum ClothesCategoryEnum {
	SWIMSUIT(2),
	WORKOUTSUIT(3),
	COMESTICSUIT(5);
	private int clothesCate;

	ClothesCategoryEnum(int clothesCate) {
		this.clothesCate = clothesCate;
	}

	public int clothesCategory() {
		return clothesCate;
	}
}
