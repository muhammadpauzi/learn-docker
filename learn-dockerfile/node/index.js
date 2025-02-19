import { createServer } from "node:http";


const server = createServer((req, res) => {
    res.writeHead(200, { "content-type": "application/json" });
    res.end(JSON.stringify({
        message: "OK"
    }));
});

server.listen(3001, "0.0.0.0", () => {
    console.log("running...");
});