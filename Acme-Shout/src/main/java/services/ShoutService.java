
package services;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.Assert;

import repositories.ShoutRepository;
import security.LoginService;
import security.UserAccount;
import domain.Shout;

@Service
@Transactional
public class ShoutService {

	// Managed repository -----------------------------------------------------

	@Autowired
	private ShoutRepository	shoutRepository;


	// Constructors -----------------------------------------------------------

	public ShoutService() {
		super();
	}

	// Simple CRUD methods ----------------------------------------------------

	public Collection<Shout> findAll() {
		Collection<Shout> result;

		result = this.shoutRepository.findAll();
		Assert.notNull(result);

		return result;
	}

	public Shout create() {
		Shout result = null;
		UserAccount userAccount;
		String username;

		userAccount = LoginService.getPrincipal();
		username = userAccount.getUsername();

		result = new Shout();
		result.setUsername(username);
		result.setLink("");
		result.setText("");

		return result;
	}

	public void save(final Shout shout) {
		this.shoutRepository.save(shout);

	}
}
