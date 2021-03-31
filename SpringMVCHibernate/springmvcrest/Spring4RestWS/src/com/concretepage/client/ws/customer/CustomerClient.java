package com.concretepage.client.ws.customer;

import com.concretepage.client.ws.BaseWebServiceClient;
import com.concretepage.model.Customer;

public interface CustomerClient extends BaseWebServiceClient {
	
	Customer saveCustomer(Customer customer);
	Customer getCustomerByName(String name);
	
}