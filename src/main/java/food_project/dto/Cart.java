package food_project.dto;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import lombok.Data;

@Entity
@Data
public class Cart {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	private double price;
	
	@ManyToOne
	@JoinColumn
	private Restaurant restaurant;

	public Cart(String name, double price) {
		super();
		this.name = name;
		this.price = price;
	}

	public Cart() {
		super();
	}


	public Cart(String name, double price, Restaurant restaurant) {
		super();
		this.name = name;
		this.price = price;
		this.restaurant = restaurant;
	}

	
}
