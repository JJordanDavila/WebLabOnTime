package org.openxava.LabOnTime.modelo;

import java.util.*;

import javax.persistence.*;

import org.openxava.annotations.*;

@Entity  // Esto marca la clase Customer como una entidad
@Table(name="commentAnalysis")
public class CommentAnalysis {

    @Id 
    @Hidden
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Integer id;
    
    @ManyToOne
    @JoinColumn(
    name = "medicalAnalysis_id", 
    nullable = true,
    foreignKey = @ForeignKey(name = "fk_commentAnalysis_medicalAnalysis1"))
    @DescriptionsList(descriptionProperties = "description")
    private MedicalAnalysis medicalAnalysis;
    
	@Column(length=500) 
	private String description;
	
	@Column(length=500) 
	private String priority;
	@Column
	private Date date;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public MedicalAnalysis getMedicalAnalysis() {
		return medicalAnalysis;
	}
	public void setMedicalAnalysis(MedicalAnalysis medicalAnalysis) {
		this.medicalAnalysis = medicalAnalysis;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getPriority() {
		return priority;
	}
	public void setPriority(String priority) {
		this.priority = priority;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
		
		
}
