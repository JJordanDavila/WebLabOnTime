package org.openxava.LabOnTime.modelo;

import javax.persistence.*;
import org.openxava.annotations.*;

@Entity  // Esto marca la clase Customer como una entidad
@Table(name="users")
public class Users {

    @Id 
    @Hidden
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Integer id;

	@Column(length=500) 
	private String name;
	
	@Column(length=500) 
	private String password;
	
	@Column
	private boolean active;
	
	
    @ManyToOne
    @JoinColumn(
    name = "roles_id", 
    nullable = true,
    foreignKey = @ForeignKey(name = "fk_users_roles1"))
    @DescriptionsList(descriptionProperties = "description")
    private Roles roles;

    @ManyToOne
    @JoinColumn(
    name = "persons_id", 
    nullable = true,
    foreignKey = @ForeignKey(name = "fk_users_persons1"))
    @DescriptionsList(descriptionProperties = "names")
    private Persons persons;
    
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

	public Roles getRoles() {
		return roles;
	}

	public void setRoles(Roles roles) {
		this.roles = roles;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}

	public Persons getPersons() {
		return persons;
	}

	public void setPersons(Persons persons) {
		this.persons = persons;
	}
	
	
}
