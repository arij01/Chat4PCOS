fetch('http://localhost:8000/api/test') // Change port to 8000
    .then(response => response.json())
    .then(data => console.log(data))
    .catch(error => console.error('Error:', error));
