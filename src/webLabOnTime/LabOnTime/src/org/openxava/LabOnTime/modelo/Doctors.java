package org.openxava.LabOnTime.modelo;

import javax.persistence.*;

import org.openxava.annotations.*;

@Entity  // Esto marca la clase Customer como una entidad
@Table(name="doctors")
public class Doctors {

	@Id 
    @Hidden
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Integer id;
	
    @ManyToOne
    @JoinColumn(
    name = "persons_id", 
    nullable = true,
    foreignKey = @ForeignKey(name = "fk_doctors_persons1"))
    @DescriptionsList(descriptionProperties = "names")
    private Persons persons;
    
	@Column(length=500) 
	private String doctornumber;
	
	@Column(length=500) 
	private String speciality;
	
	@Column
	private boolean active;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Persons getPersons() {
		return persons;
	}

	public void setPersons(Persons persons) {
		this.persons = persons;
	}

	public String getDoctornumber() {
		return doctornumber;
	}

	public void setDoctornumber(String doctornumber) {
		this.doctornumber = doctornumber;
	}

	public String getSpeciality() {
		return speciality;
	}

	public void setSpeciality(String speciality) {
		this.speciality = speciality;
	}

	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}
	
	
}
