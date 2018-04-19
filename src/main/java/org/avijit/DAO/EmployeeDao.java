package org.avijit.DAO;


import org.avijit.Domain.Employee;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.validation.Valid;
import java.util.List;


@Component
@Transactional
public class EmployeeDao {


    @PersistenceContext
    EntityManager em;

    public void saveEmployee(Employee employee) {

        em.persist(employee);
    }

    public boolean isAuthenticate(String userName, String password) {
        List<Employee> list = em.createQuery("FROM " + Employee.class.getName() + " WHERE userName=:userName and password=:password", Employee.class)
                .setParameter("userName", userName).setParameter("password", password)
                .getResultList();

        if (!list.isEmpty())
            return true;
        else
            return false;
    }

    public boolean isExist(String userName) {

        List<Employee> list = (List<Employee>) em.createQuery("FROM " + Employee.class.getName() + " WHERE userName=:userName").setParameter("userName", userName).getResultList();

        if (!list.isEmpty()) {
            return true;
        } else {
            return false;
        }

    }

    public List<Employee> getAllMembers() {
        List<Employee> list = (List<Employee>) em.createQuery("FROM " + Employee.class.getName()).getResultList();
        return list;
    }

    public void deleteMember(String userName) {

        Employee employee = (Employee) em.createQuery("FROM " + Employee.class.getName() + " WHERE userName=:userName").setParameter("userName", userName).getSingleResult();
        System.out.println(employee);
        em.remove(employee);

    }

    public Employee getEmployee(String userName) {
        Employee employee = (Employee) em.createQuery("FROM " + Employee.class.getName() + " WHERE userName=:userName").setParameter("userName", userName).getSingleResult();
        return employee;
    }

    public void update(Employee employee) {
        em.persist(employee);
    }
}
