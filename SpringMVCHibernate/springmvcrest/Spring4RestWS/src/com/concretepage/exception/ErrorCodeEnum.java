package com.concretepage.exception;

public interface ErrorCodeEnum {
	
	int getErrorCode();
	String getName();
	int getServiceId();
	String getMessageKey();
	String getDefaultMessage();

}