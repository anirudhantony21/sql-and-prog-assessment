const express = require('express');
const app = express();
const port = 3000;

app.use(express.json());

app.get('/employees', (req, res) => {
  const employees = [
    { id: 1, name: 'john doe' },
    { id: 2, name: 'jane doe' }
  ];
  res.json(employees);
});

app.get('/employees/:id', (req, res) => {
  const id = (link unavailable);
  const employee = { id: 1, name: 'john doe' };
  res.json(employee);
});

app.post('/employees', (req, res) => {
  const employee = req.body;
  res.json({ message: 'employee created successfully' });
});

app.put('/employees/:id', (req, res) => {
  const id = (link unavailable);
  const employee = req.body;
  res.json({ message: 'employee updated successfully' });
});

app.delete('/employees/:id', (req, res) => {
  const id = (link unavailable);
  res.json({ message: 'employee deleted successfully' });
});

app.listen(port, () => {
  console.log(`api server listening on port ${port}`);
});
