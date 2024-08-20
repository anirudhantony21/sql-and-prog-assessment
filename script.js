fetch('/employees')
    .then(response => response.json())
    .then(employees => {
        const employeeList = document.getElementById('employee-list');
        employees.forEach(employee => {
            const listItem = document.createElement('li');
            listItem.textContent = `${employee.name} (${(link unavailable)})`;
            employeeList.appendChild(listItem);
        });
    });
