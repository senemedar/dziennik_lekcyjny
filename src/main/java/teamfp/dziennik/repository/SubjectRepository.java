package teamfp.dziennik.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import teamfp.dziennik.model.Subject;

import java.util.List;

public interface SubjectRepository extends JpaRepository<Subject, Long> {

//	public List<Subject> getSubjectList(String teacherId);

}
