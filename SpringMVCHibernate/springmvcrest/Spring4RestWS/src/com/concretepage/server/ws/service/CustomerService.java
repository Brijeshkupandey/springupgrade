package com.concretepage.server.ws.service;

import com.concretepage.exception.CustomerException;
import com.concretepage.model.Customer;


public interface CustomerService {
	
	Customer saveCustomer(Customer customer);
	Customer getCustomerByName(String name) throws CustomerException;
	boolean deleteCustomerByName(String name) throws CustomerException;

}