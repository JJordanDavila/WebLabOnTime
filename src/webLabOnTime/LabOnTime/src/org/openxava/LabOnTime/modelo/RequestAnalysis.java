package org.openxava.LabOnTime.modelo;

import javax.persistence.*;

import org.openxava.annotations.*;

@Entity  // Esto marca la clase Customer como una entidad
@Table(name="requestAnalysis")
public class RequestAnalysis {

    @Id 
    @Hidden
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Integer id;
    
	@Column(length=500) 
	private String description;
	
	@Column
	private boolean active;
	
    @ManyToOne
    @JoinColumn(
    name = "patients_id", 
    nullable = true,
    foreignKey = @ForeignKey(name = "fk_requestAnalysis_patients1"))
    @DescriptionsList(descriptionProperties = "motive")
    private Patients patients;
    
    @ManyToOne
    @JoinColumn(
    name = "doctors_id", 
    nullable = true,
    foreignKey = @ForeignKey(name = "fk_requestAnalysis_doctors1"))
    @DescriptionsList(descriptionProperties = "speciality")
    private Doctors doctors;
    
    @ManyToOne
    @JoinColumn(
    name = "laboratorys_id", 
    nullable = true,
    foreignKey = @ForeignKey(name = "fk_requestAnalysis_laboratorys1"))
    @DescriptionsList(descriptionProperties = "name")
    private Laboratorys laboratorys;
    
    @ManyToOne
    @JoinColumn(
    name = "laboratoryAnalysis_id", 
    nullable = true,
    foreignKey = @ForeignKey(name = "fk_requestAnalysis_laboratoryAnalysis1"))
    private LaboratoryAnalysis laboratoryAnalysis;
    
	@Column(length=500) 
	private String status;
	
	@Column(length=500) 
	private String observations;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}

	public Patients getPatients() {
		return patients;
	}

	public void setPatients(Patients patients) {
		this.patients = patients;
	}

	public Doctors getDoctors() {
		return doctors;
	}

	public void setDoctors(Doctors doctors) {
		this.doctors = doctors;
	}

	public Laboratorys getLaboratorys() {
		return laboratorys;
	}

	public void setLaboratorys(Laboratorys laboratorys) {
		this.laboratorys = laboratorys;
	}

	public LaboratoryAnalysis getLaboratoryAnalysis() {
		return laboratoryAnalysis;
	}

	public void setLaboratoryAnalysis(LaboratoryAnalysis laboratoryAnalysis) {
		this.laboratoryAnalysis = laboratoryAnalysis;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getObservations() {
		return observations;
	}

	public void setObservations(String observations) {
		this.observations = observations;
	}

	
	

	
	
}
