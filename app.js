const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
    res.send('Welcome to Web App Jira Demo!');
});

app.listen(port, () => {
    console.log(`Server running at http://localhost:${port}`);
});
<<<<<<< HEAD

=======
>>>>>>> e4111b0a5a80eff30d5f2cb04532d68de0a8277f
