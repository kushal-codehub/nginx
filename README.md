<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Static App with Node.js, Docker, and Nginx</title>
</head>
<body>

  <h1>🚀 Static HTML Application with Node.js, Docker, and Nginx</h1>

  <p>
    This repository demonstrates how to containerize a Node.js application, run multiple containers, 
    and use <strong>Nginx</strong> as a reverse proxy, load balancer, and SSL terminator.
  </p>

  <h2>📌 Steps Implemented</h2>
  <ul>
    <li>Created a <strong>static HTML application</strong>.</li>
    <li>Built a <strong>Node.js backend server</strong> running on <code>port 3000</code>.</li>
    <li>Listed all dependencies (<code>npm</code>, <code>express</code>, <code>path</code>, etc.) in <code>package.json</code>.</li>
    <li>Wrote a <code>Dockerfile</code> to containerize the application.</li>
    <li>Built a Docker image from the application.</li>
    <li>Created a <code>docker-compose.yml</code> file:
      <ul>
        <li>Defined environment variable <code>APP_NAME</code> and used it in <code>server.js</code>.</li>
        <li>Launched <strong>3 containers</strong> using <code>docker compose up --build -d</code>.</li>
      </ul>
    </li>
    <li>Application is accessible on:
      <ul>
        <li><code>http://localhost:3001</code></li>
        <li><code>http://localhost:3002</code></li>
        <li><code>http://localhost:3003</code></li>
      </ul>
    </li>
    <li>Installed <strong>Nginx on Windows</strong>.</li>
    <li>Configured <strong>Nginx</strong> as:
      <ul>
        <li>Reverse Proxy → Forward requests from <code>localhost</code> to backend containers.</li>
        <li>Load Balancer → Distribute traffic across <code>3001/3002/3003</code> backend servers.</li>
        <li>SSL Termination → Handle HTTPS encryption/decryption at the proxy level.</li>
      </ul>
    </li>
    <li>Since we are using <code>localhost</code>, the backend containers are directly accessible at 
        <code>http://localhost:3001</code>, <code>http://localhost:3002</code>, and <code>http://localhost:3003</code>.</li>
  </ul>

  <h2>📂 Files in Repo</h2>
  <ul>
    <li><code>index.html</code> → Static HTML application.</li>
    <li><code>server.js</code> → Node.js backend server.</li>
    <li><code>package.json</code> → Lists dependencies (<code>npm</code>, <code>express</code>, <code>path</code>).</li>
    <li><code>Dockerfile</code> → Instructions to build Docker image.</li>
    <li><code>docker-compose.yml</code> → Defines multiple containers and environment variables.</li>
    <li><code>nginx.conf</code> → Nginx configuration for reverse proxy, load balancing, and SSL termination.</li>
  </ul>

  <h2>⚡ How It Works</h2>
  <ol>
    <li>Node.js app is containerized and scaled to multiple containers.</li>
    <li>Nginx sits in front as a proxy and balances requests among containers.</li>
    <li>Static HTML content and backend server responses are served through Nginx.</li>
  </ol>

</body>
</html>
