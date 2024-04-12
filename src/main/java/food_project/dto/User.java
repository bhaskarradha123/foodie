package food_project.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.Data;

@Data
@Entity
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String firstName;
	private String lastName;
	@Column(unique = true)
	private String email;
	private long phone;
	private String password;
	private String confirm_password;
	private double wallet;

	public User(String firstName, String lastName, String email, long phone, String password, String confirm_password) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.phone = phone;
		this.password = password;
		this.confirm_password = confirm_password;
	}

	public User() {
		super();
	}

	public User(String firstName, String lastName, String email, long phone, String password, String confirm_password,
			double wallet) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.phone = phone;
		this.password = password;
		this.confirm_password = confirm_password;
		this.wallet = wallet;
	}

}
