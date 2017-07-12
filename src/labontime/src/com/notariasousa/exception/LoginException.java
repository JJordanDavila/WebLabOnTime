package com.notariasousa.exception;

public class LoginException extends Exception{

	private static final long serialVersionUID = 5106596324784420717L;
	
	public LoginException() {
		super();
	}

	public LoginException(String message, Throwable cause) {
		super(message, cause);
	}

	public LoginException(String message) {
		super(message);
	}

	public LoginException(Throwable cause) {
		super(cause);
	}

}