package org.openxava.LabOnTime.modelo;

import javax.persistence.*;

import org.openxava.annotations.*;

@Entity  // Esto marca la clase Customer como una entidad
@Table(name="medicalAnalysis")
public class MedicalAnalysis {

	   @Id 
	    @Hidden
	    @GeneratedValue(strategy=GenerationType.IDENTITY)
	    @Column(name = "id", nullable = false)
	    private Integer id;
	   
	   @ManyToOne
	    @JoinColumn(
	    name = "requestAnalysis_id", 
	    nullable = true,
	    foreignKey = @ForeignKey(name = "fk_medicalAnalysis_requestAnalysis1"))
	    @DescriptionsList(descriptionProperties = "description")
	    private RequestAnalysis requestAnalysis;
	   
		@Column(length=500) 
		private String description;
		
		@Column(length=500) 
		private String criticality;
		
		@Column(length=500) 
		private String diagnostic;
		
		@Column(length=500) 
		private String status;

		public Integer getId() {
			return id;
		}

		public void setId(Integer id) {
			this.id = id;
		}

		public RequestAnalysis getRequestAnalysis() {
			return requestAnalysis;
		}

		public void setRequestAnalysis(RequestAnalysis requestAnalysis) {
			this.requestAnalysis = requestAnalysis;
		}

		public String getDescription() {
			return description;
		}

		public void setDescription(String description) {
			this.description = description;
		}

		public String getCriticality() {
			return criticality;
		}

		public void setCriticality(String criticality) {
			this.criticality = criticality;
		}

		public String getDiagnostic() {
			return diagnostic;
		}

		public void setDiagnostic(String diagnostic) {
			this.diagnostic = diagnostic;
		}

		public String getStatus() {
			return status;
		}

		public void setStatus(String status) {
			this.status = status;
		}
		
		
}
