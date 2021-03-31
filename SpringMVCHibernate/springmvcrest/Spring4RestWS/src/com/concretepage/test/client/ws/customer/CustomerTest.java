package com.concretepage.test.client.ws.customer;
import static org.junit.Assert.*;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.concretepage.client.ws.customer.CustomerClient;
import com.concretepage.exception.BaseException;
import com.concretepage.exception.ErrorCodeCustomerEnum;
import com.concretepage.model.Customer;
import com.concretepage.test.client.ws.BaseTestCase;

public class CustomerTest extends BaseTestCase {
	
	private CustomerClient wsClient;
	
	private String custName = "bob111";
	
	@Autowired
	public void setClientService(CustomerClient clientService) {
		wsClient = clientService;
	}
	
	@Test
	public void testGetCustomerByName() {
		
		Customer customer = wsClient.getCustomerByName(custName);
		assertNotNull(customer);
		assertEquals(custName, customer.getName());
		
		
		try {
			customer = wsClient.getCustomerByName("SomeBogusName");
			fail("Expected an exception here");
		}
		catch(BaseException pe) {
			assertEquals(ErrorCodeCustomerEnum.NOT_FOUND.getErrorCode(), 
					pe.getErrorCode().getErrorCode());
		}
	}
	public static void main(String a[]){
		CustomerTest ct= new CustomerTest();
		ct.testGetCustomerByName();
		
	}
	

}