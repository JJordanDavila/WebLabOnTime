package org.openxava.LabOnTime.modelo;

import javax.persistence.*;

import org.openxava.annotations.*;

@Entity  // Esto marca la clase Customer como una entidad
@Table(name="roles")
public class Roles {

	 @Id 
	    @Hidden
	    @GeneratedValue(strategy=GenerationType.IDENTITY)
	    @Column(name = "id", nullable = false)
	    private Integer id;

		@Column(length=500) 
		private String description;
		
		@Column
		private boolean active;

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
		
		
}
