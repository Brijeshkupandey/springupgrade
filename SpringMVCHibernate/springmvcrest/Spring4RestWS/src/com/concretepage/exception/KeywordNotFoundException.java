package com.concretepage.exception;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;
@ControllerAdvice(annotations=RestController.class)  
@ResponseStatus(value=HttpStatus.NOT_FOUND, reason="There is no data for this id")
public class KeywordNotFoundException extends RuntimeException {
	private static final long serialVersionUID = 1L;
	public KeywordNotFoundException(){
		
	}
	public KeywordNotFoundException(String key){
		super(key+" not available");
	}
} 