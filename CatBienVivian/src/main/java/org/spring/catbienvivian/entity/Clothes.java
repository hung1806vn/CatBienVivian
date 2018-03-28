package org.spring.catbienvivian.entity;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the Clothes database table.
 * 
 */
@Entity
@NamedQuery(name="Clothes.findAll", query="SELECT c FROM Clothes c")
public class Clothes implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="ClothesID")
	private String clothesID;

	@Column(name="ClothesAge")
	private boolean clothesAge;

	@Column(name="ClothesBranch")
	private String clothesBranch;

	@Column(name="ClothesColor")
	private int clothesColor;

	@Column(name="ClothesDescription")
	private String clothesDescription;

	@Column(name="ClothesGender")
	private boolean clothesGender;

	@Column(name="ClothesName")
	private String clothesName;

	@Column(name="ClothesPrice")
	private double clothesPrice;

	@Column(name="ClothesQuantity")
	private int clothesQuantity;

	@Column(name="ClothesSize")
	private int clothesSize;

	@Column(name="ClothesStatus")
	private boolean clothesStatus;

	@Column(name="ClothesType")
	private int clothesType;

	private String createdDate;

	private boolean isDeleted;

	//bi-directional many-to-one association to ClothesImage
	@OneToMany(mappedBy="clothes")
	private List<ClothesImage> clothesImages;

	public Clothes() {
	}

	public String getClothesID() {
		return this.clothesID;
	}

	public void setClothesID(String clothesID) {
		this.clothesID = clothesID;
	}

	public boolean getClothesAge() {
		return this.clothesAge;
	}

	public void setClothesAge(boolean clothesAge) {
		this.clothesAge = clothesAge;
	}

	public String getClothesBranch() {
		return this.clothesBranch;
	}

	public void setClothesBranch(String clothesBranch) {
		this.clothesBranch = clothesBranch;
	}

	public int getClothesColor() {
		return this.clothesColor;
	}

	public void setClothesColor(int clothesColor) {
		this.clothesColor = clothesColor;
	}

	public String getClothesDescription() {
		return this.clothesDescription;
	}

	public void setClothesDescription(String clothesDescription) {
		this.clothesDescription = clothesDescription;
	}

	public boolean getClothesGender() {
		return this.clothesGender;
	}

	public void setClothesGender(boolean clothesGender) {
		this.clothesGender = clothesGender;
	}

	public String getClothesName() {
		return this.clothesName;
	}

	public void setClothesName(String clothesName) {
		this.clothesName = clothesName;
	}

	public double getClothesPrice() {
		return this.clothesPrice;
	}

	public void setClothesPrice(double clothesPrice) {
		this.clothesPrice = clothesPrice;
	}

	public int getClothesQuantity() {
		return this.clothesQuantity;
	}

	public void setClothesQuantity(int clothesQuantity) {
		this.clothesQuantity = clothesQuantity;
	}

	public int getClothesSize() {
		return this.clothesSize;
	}

	public void setClothesSize(int clothesSize) {
		this.clothesSize = clothesSize;
	}

	public boolean getClothesStatus() {
		return this.clothesStatus;
	}

	public void setClothesStatus(boolean clothesStatus) {
		this.clothesStatus = clothesStatus;
	}

	public int getClothesType() {
		return this.clothesType;
	}

	public void setClothesType(int clothesType) {
		this.clothesType = clothesType;
	}

	public String getCreatedDate() {
		return this.createdDate;
	}

	public void setCreatedDate(String createdDate) {
		this.createdDate = createdDate;
	}

	public boolean getIsDeleted() {
		return this.isDeleted;
	}

	public void setIsDeleted(boolean isDeleted) {
		this.isDeleted = isDeleted;
	}

	public List<ClothesImage> getClothesImages() {
		return this.clothesImages;
	}

	public void setClothesImages(List<ClothesImage> clothesImages) {
		this.clothesImages = clothesImages;
	}

	public ClothesImage addClothesImage(ClothesImage clothesImage) {
		getClothesImages().add(clothesImage);
		clothesImage.setClothes(this);

		return clothesImage;
	}

	public ClothesImage removeClothesImage(ClothesImage clothesImage) {
		getClothesImages().remove(clothesImage);
		clothesImage.setClothes(null);

		return clothesImage;
	}

}