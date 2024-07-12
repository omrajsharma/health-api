const express = require('express');

const app = express();

app.get('/health', (req, res) => {
    res.status(200).end('success');
})

app.listen(5000, () => console.log('Application started on port :5000'))