package teamfp.dziennik.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import teamfp.dziennik.model.Parent;

@Repository
public interface ParentRepository extends JpaRepository<Parent, Long> {

}
