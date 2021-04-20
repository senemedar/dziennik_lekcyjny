package teamfp.dziennik.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import teamfp.dziennik.model.Classroom;

@Repository
public interface ClassroomRepository extends JpaRepository<Classroom, Long> {

}
