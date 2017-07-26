package org.openxava.LabOnTime.modelo;

import javax.persistence.*;

import org.openxava.annotations.*;

@Entity  // Esto marca la clase Customer como una entidad
@Table(name="laboratoryAnalysis")
public class LaboratoryAnalysis {

	   @Id 
	    @Hidden
	    @GeneratedValue(strategy=GenerationType.IDENTITY)
	    @Column(name = "id", nullable = false)
	    private Integer id;
	   
	   @ManyToOne
	    @JoinColumn(
	    name = "laboratorys_id", 
	    nullable = true,
	    foreignKey = @ForeignKey(name = "fk_laboratoryAnalysis_laboratorys1"))
	    @DescriptionsList(descriptionProperties = "name")
	    private Laboratorys laboratorys;
	   
	   @ManyToOne
	    @JoinColumn(
	    name = "analysis_id", 
	    nullable = true,
	    foreignKey = @ForeignKey(name = "fk_laboratoryAnalysis_analysis1"))
	    @DescriptionsList(descriptionProperties = "name")
	    private Analysis analysis;
	   
		@Column
		private boolean active;

		public Integer getId() {
			return id;
		}

		public void setId(Integer id) {
			this.id = id;
		}

		public Laboratorys getLaboratorys() {
			return laboratorys;
		}

		public void setLaboratorys(Laboratorys laboratorys) {
			this.laboratorys = laboratorys;
		}

		public Analysis getAnalysis() {
			return analysis;
		}

		public void setAnalysis(Analysis analysis) {
			this.analysis = analysis;
		}

		public boolean isActive() {
			return active;
		}

		public void setActive(boolean active) {
			this.active = active;
		}
		
		
}
