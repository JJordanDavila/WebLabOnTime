package org.openxava.LabOnTime.modelo;

import javax.persistence.*;

import org.openxava.annotations.*;

@Entity  // Esto marca la clase Customer como una entidad
@Table(name="analysis")
public class Analysis {

	   @Id 
	    @Hidden
	    @GeneratedValue(strategy=GenerationType.IDENTITY)
	    @Column(name = "id", nullable = false)
	    private Integer id;
	   
		@Column(length=500) 
		private String name;
		
		@Column
		private boolean active;

		public Integer getId() {
			return id;
		}

		public void setId(Integer id) {
			this.id = id;
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		public boolean isActive() {
			return active;
		}

		public void setActive(boolean active) {
			this.active = active;
		}
		
		
}
