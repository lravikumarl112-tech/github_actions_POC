
const http = require("http");

const PORT = 3000;

const server = http.createServer((req, res) => {
    res.writeHead(200, {
        "Content-Type": "application/json"
    });

    const response = {
        message: "Hello from GitHub Actions POC!",
        application: "Node.js Sample Application",
        status: "success"
    };

    res.end(JSON.stringify(response));
});

server.listen(PORT, "0.0.0.0", () => {
    console.log(`Application running on port ${PORT}`);
});

