package food_project.dto;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;

import lombok.Data;

@Data
@Entity
public class Restaurant {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	private String address;
	private long phone;
	private String email;

	@OneToMany(cascade = CascadeType.ALL, mappedBy = "restaurant")
	private List<FoodItems> fooditems;

	public Restaurant(String name, String address, long phone, String email) {
		super();
		this.name = name;
		this.address = address;
		this.phone = phone;
		this.email = email;
	}

	public Restaurant() {
		super();
	}

}
