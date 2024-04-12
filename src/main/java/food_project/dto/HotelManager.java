package food_project.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import lombok.Data;

@Data
@Entity
public class HotelManager {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String firstName;
	private String lastName;
	@Column(unique = true)
	private String email;
	private long phone;
	private String password;
	private String confirmpassword;
	
	@ManyToOne
	@JoinColumn
	private Restaurant restaurant;


	public HotelManager() {
		super();
	}


	public HotelManager(String firstName, String lastName, String email, long phone, String password,
			String confirmpassword, Restaurant restaurant) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.phone = phone;
		this.password = password;
		this.confirmpassword = confirmpassword;
		this.restaurant = restaurant;
	}

}
