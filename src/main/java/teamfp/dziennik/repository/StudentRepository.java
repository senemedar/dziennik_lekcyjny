package teamfp.dziennik.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import teamfp.dziennik.model.Student;

@Repository
public interface StudentRepository extends JpaRepository<Student, Long> {

}
