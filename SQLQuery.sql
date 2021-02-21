SELECT max(SALARY) FROM EMPLOYEE


Select DEPARTMENT_ID
	From EMPLOYEE
	Where SALARY = (Select MAX(SALARY) From EMPLOYEE)


Select DEPARTMENT_ID, sum(SALARY) as sum_of_dep
	From EMPLOYEE Group by DEPARTMENT_ID
	Having sum(SALARY) = 
	(Select max(sum_of_dep) 
		From (
			Select DEPARTMENT_ID, sum(SALARY) as sum_of_dep
				From EMPLOYEE Group by DEPARTMENT_ID) newtab)



Select * From EMPLOYEE 
	Where NAME Like 'Ð%í'
