package com.paweljarosz.trac.web.services.validators;

import java.util.Date;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.paweljarosz.trac.data.entities.driver.Driver;
import com.paweljarosz.trac.data.entities.rental.Rental;
import com.paweljarosz.trac.web.services.DriverService;

@Component
public class DriverValidator implements Validator{

	private DriverService driverService;
	private static final int MIN_LENGTH = 1;

	public DriverValidator(){
	}
	public DriverValidator(DriverService driverService){
		this.driverService=driverService;
	}


	@Override
	public boolean supports(Class<?> clazz) {
		return Driver.class.equals(clazz);
	}
	private boolean checkType(Driver c){
		return false;
	}

	@Override
	public void validate(Object obj, Errors errors) {
		Driver driver = (Driver)obj;

		if (driver.getName().length() < MIN_LENGTH) {
			errors.rejectValue("name", "driver.name", "");
		}
		if (driver.getSurname().length() < MIN_LENGTH) {
			errors.rejectValue("surname", "driver.surname", "");
		}
		if (driver.getPersonalIdentificationNumber().length() < MIN_LENGTH) {
			errors.rejectValue("personalIdentificationNumber", "driver.personalIdentificationNumber", "");
		}
		//address
		if (driver.getAddress().getStreet().length() < MIN_LENGTH) {
			errors.rejectValue("address.street", "driver.address.street", "");
		}
		if (driver.getAddress().getNumber().length() < MIN_LENGTH) {
			errors.rejectValue("address.number", "driver.address.number", "");
		}
		if (driver.getAddress().getCity().length() < MIN_LENGTH) {
			errors.rejectValue("address.city", "driver.address.city", "");
		}
		if (driver.getAddress().getPost().length() < MIN_LENGTH) {
			errors.rejectValue("address.post", "driver.address.post", "");
		}
		if (driver.getLicence().getNumber().length() < MIN_LENGTH) {
			errors.rejectValue("licence.number", "driver.licence.number", "");
		}
		if (driver.getLicence().getCategory().length() < MIN_LENGTH) {
			errors.rejectValue("licence.category", "driver.licence.category", "");
		}
	
		if(checkDriverAlreadyExists(driver)){
			errors.rejectValue("personalIdentificationNumber", "driver.id.duplicate", "");
		}
	}
	
	private boolean checkDriverAlreadyExists(Driver driver) {
		try {
			if (driver.getName() == null || driver.getSurname() == null) {
				return false;
			} else {
				Driver d = driverService.findDriverByPersonalIdentificationNumber(driver.getPersonalIdentificationNumber());
				if (d == null) {
					return false;
				}
				return true;
			} 
		} catch (Exception e) {
			return false;
		}
	}

}
