package teamfp.dziennik.model;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.util.Locale;
import java.util.Random;

@NoArgsConstructor
@Getter
@Setter
@Entity
@Inheritance(strategy = InheritanceType.JOINED)
public abstract class User {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String firstName;
    private String lastName;
    private String email;
    private String password;

	public static String generatePassword(int passwordLength) {
		String letters = "abcdefghijklmnopqrstuvw";
		letters += letters.toUpperCase(Locale.ROOT);
		letters += "!@$%&[]";

		StringBuilder pass = new StringBuilder();
		for (int i = 0; i < passwordLength; i++) {
			pass.append(letters.charAt(new Random().nextInt(letters.length())));
		}

		return pass.toString();
	}
}
