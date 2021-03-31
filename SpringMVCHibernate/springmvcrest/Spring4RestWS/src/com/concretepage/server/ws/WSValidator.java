package com.concretepage.server.ws;

import com.concretepage.exception.CustomerException;
import com.concretepage.exception.ErrorCodeCustomerEnum;
import com.concretepage.model.Customer;


public class WSValidator {
	
	public void validateString(String param, String paramName) {
		if (param == null || param.isEmpty()) {
			throw new CustomerException(ErrorCodeCustomerEnum.INVALID_PARAMS, 
					paramName + " is required");
		}
	}
	
	
	public void validateLong(Long param, String paramName) {
		if (param == null || param.equals(0L)) {
			throw new CustomerException(ErrorCodeCustomerEnum.INVALID_PARAMS, 
					paramName + " is required");
		}
	}
	
	public void validateCustomer(Customer customer) {
		if (customer == null) {
			throw new CustomerException(ErrorCodeCustomerEnum.INVALID_PARAMS, 
					"Customer is empty");
		}
		if (customer.getName() == null || customer.getName().isEmpty()) {
			throw new CustomerException(ErrorCodeCustomerEnum.INVALID_PARAMS, 
					"Customer name is required");
		}
	}

}