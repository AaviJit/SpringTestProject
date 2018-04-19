package org.avijit.DAO;

import org.avijit.Domain.Employee;
import org.springframework.data.jpa.repository.JpaRepository;


public interface EmployeeRepo extends JpaRepository<Employee,Integer>{

}
