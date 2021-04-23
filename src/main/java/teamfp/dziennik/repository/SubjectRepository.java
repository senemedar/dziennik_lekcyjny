package teamfp.dziennik.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import teamfp.dziennik.model.Subject;

public interface SubjectRepository extends JpaRepository<Subject, Long> {

}
