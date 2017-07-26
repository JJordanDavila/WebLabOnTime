package org.openxava.LabOnTime.modelo;

import javax.persistence.*;

import org.openxava.annotations.*;

@Entity  // Esto marca la clase Customer como una entidad
@Table(name="persons")
public class Persons {

	@Id 
    @Hidden
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Integer id;

	@Column(length=500) 
	private String names;
	
	@Column(length=500) 
	private String lastnames;
	
	@Column(length=500) 
	private String address;
	
	@Column(length=500) 
	private String phone;
	
	@Column(length=500) 
	private String email;
	
	@Column(length=500) 
	private String documentnumber;
	
	@Column(length=500) 
	private String ruc;
	
	@Column(length=500) 
	private String type;
	
	@Column(length=500) 
	private String bussinessname;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNames() {
		return names;
	}

	public void setNames(String names) {
		this.names = names;
	}

	public String getLastnames() {
		return lastnames;
	}

	public void setLastnames(String lastnames) {
		this.lastnames = lastnames;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getDocumentnumber() {
		return documentnumber;
	}

	public void setDocumentnumber(String documentnumber) {
		this.documentnumber = documentnumber;
	}

	public String getRuc() {
		return ruc;
	}

	public void setRuc(String ruc) {
		this.ruc = ruc;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getBussinessname() {
		return bussinessname;
	}

	public void setBussinessname(String bussinessname) {
		this.bussinessname = bussinessname;
	}
	
	
}
