package teamfp.dziennik.model;

import teamfp.dziennik.model.enums.Presence;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.util.Date;

@Entity
public class Attendance {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private Presence presence;
    private Date attendanceDate;

    public Attendance(Long id, Presence presence, Date attendanceDate) {
        this.id = id;
        this.presence = presence;
        this.attendanceDate = attendanceDate;
    }
}
