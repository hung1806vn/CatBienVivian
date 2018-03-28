package org.spring.catbienvivian.entity;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ClothesImage database table.
 * 
 */
@Entity
@NamedQuery(name="ClothesImage.findAll", query="SELECT c FROM ClothesImage c")
public class ClothesImage implements Serializable {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="ClothesImgId")
	private int clothesImgId;

	private String url;

	//bi-directional many-to-one association to Clothes
	@ManyToOne
	@JoinColumn(name="ClothesID")
	private Clothes clothes;

	public ClothesImage() {
	}

	public int getClothesImgId() {
		return this.clothesImgId;
	}

	public void setClothesImgId(int clothesImgId) {
		this.clothesImgId = clothesImgId;
	}

	public String getUrl() {
		return this.url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public Clothes getClothes() {
		return this.clothes;
	}

	public void setClothes(Clothes clothes) {
		this.clothes = clothes;
	}

}