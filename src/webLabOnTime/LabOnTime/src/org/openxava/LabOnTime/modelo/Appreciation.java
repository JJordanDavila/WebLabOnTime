package org.openxava.LabOnTime.modelo;

import java.util.*;

import javax.persistence.*;

import org.openxava.annotations.*;

@Entity  // Esto marca la clase Customer como una entidad
@Table(name="appreciation")
public class Appreciation {

	 @Id 
	    @Hidden
	    @GeneratedValue(strategy=GenerationType.IDENTITY)
	    @Column(name = "id", nullable = false)
	    private Integer id;
	    
	    @ManyToOne
	    @JoinColumn(
	    name = "patients_id", 
	    nullable = true,
	    foreignKey = @ForeignKey(name = "fk_appreciation_patients1"))
	    @DescriptionsList(descriptionProperties = "motive")
	    private Patients patients;
	    
		   @ManyToOne
		    @JoinColumn(
		    name = "laboratorys_id", 
		    nullable = true,
		    foreignKey = @ForeignKey(name = "fk_appreciation_laboratorys1"))
		    @DescriptionsList(descriptionProperties = "name")
		    private Laboratorys laboratorys;
		   
			@Column 
			private int points;
			
			@Column(length=500) 
			private String description;
			
			@Column
			private Date date;

			public Integer getId() {
				return id;
			}

			public void setId(Integer id) {
				this.id = id;
			}

			public Patients getPatients() {
				return patients;
			}

			public void setPatients(Patients patients) {
				this.patients = patients;
			}

			public Laboratorys getLaboratorys() {
				return laboratorys;
			}

			public void setLaboratorys(Laboratorys laboratorys) {
				this.laboratorys = laboratorys;
			}

			public int getPoints() {
				return points;
			}

			public void setPoints(int points) {
				this.points = points;
			}

			public String getDescription() {
				return description;
			}

			public void setDescription(String description) {
				this.description = description;
			}

			public Date getDate() {
				return date;
			}

			public void setDate(Date date) {
				this.date = date;
			}
			
			
			
}
