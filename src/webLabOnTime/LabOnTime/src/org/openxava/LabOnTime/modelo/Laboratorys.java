package org.openxava.LabOnTime.modelo;

import javax.persistence.*;

import org.openxava.annotations.*;

@Entity  // Esto marca la clase Customer como una entidad
@Table(name="laboratorys")
public class Laboratorys {

	 @Id 
	    @Hidden
	    @GeneratedValue(strategy=GenerationType.IDENTITY)
	    @Column(name = "id", nullable = false)
	    private Integer id;
	 
		@Column(length=500) 
		private String name;
		
		@Column(length=500) 
		private String description;

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

		public String getDescription() {
			return description;
		}

		public void setDescription(String description) {
			this.description = description;
		}

		
		
		
}
