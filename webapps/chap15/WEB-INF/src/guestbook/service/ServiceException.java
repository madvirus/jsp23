package guestbook.service;

public class ServiceException extends RuntimeException {

	public ServiceException(String message, Exception cause) {
		super(message, cause);
	}

	public ServiceException(String message) {
		super(message);
	}

}