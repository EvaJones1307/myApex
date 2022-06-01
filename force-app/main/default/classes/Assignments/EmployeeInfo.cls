public class EmployeeInfo {
    public static string showInfo(integer empNumber) {
        string nameEmp = ' ';
        Map<integer, string> employeeMap = new map<integer, string>();
        employeeMap.put(001, 'Eva Jones');
        employeeMap.put(002, 'Linda Nora');
        employeeMap.put(003, 'Sarah Beck');

        if (employeeMap.containsKey(empNumber)) {
            nameEmp = employeeMap.get(empNumber);
            
        } else {
            nameEmp = 'Enter a valid Employee ID number';
        }
        return nameEmp;

    }
}
