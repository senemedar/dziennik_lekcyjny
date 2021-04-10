package teamfp.dziennik.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import teamfp.dziennik.model.User;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {

}
