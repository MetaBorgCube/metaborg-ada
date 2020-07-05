package Office is
end Office;

with Ada.Strings.Unbounded;
package Office.Locations is
	type Location is new Ada.Strings.Unbounded.Unbounded_String;
end Office.Locations;

limited with Office.Departments; -- types are incomplete
private with Office.Locations; -- only visible in private part
package Office.Employees is
	type Employee is private;
	
	function Dept_Of(Emp : Employee) return access Departments.Department;
	procedure Assign_Dept(Emp : in out Employee;
	Dept : access Departments.Department);
	
	private
		type Employee is
			record
				Dept : access Departments.Department;
				Loc : Locations.Location;
			end record;
end Office.Employees;

limited with Office.Employees;
package Office.Departments is
	type Department is private;
	
	function Manager_Of(Dept : Department) return access Employees.Employee;
	procedure Assign_Manager(Dept : in out Department;
	Mgr : access Employees.Employee);
end Office.Departments;