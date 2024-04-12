package food_project.dto;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;

import lombok.Data;

@Data
@Entity
public class FoodItems {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	private double price;
	
	@ManyToOne
	@JoinColumn
	private Restaurant restaurant;
	
	public FoodItems(String name, double price) {
		super();
		this.name = name;
		this.price = price;
	}
	

	public FoodItems() {
		super();
	}

}
