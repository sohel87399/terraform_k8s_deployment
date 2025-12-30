resource "kubernetes_config_map" "nginx_website" {
  metadata {
    name = "nginx-website"
  }

  data = {
    "index.html" = <<EOF
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Terraform K8s App</title>
    <link rel="stylesheet" href="styles.css">
    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@300;600&display=swap" rel="stylesheet">
</head>
<body>
    <div class="container">
        <div class="card">
            <div class="icon">🚀</div>
            <h1>Deployed with Terraform</h1>
            <p>Your Nginx application is successfully running on Kubernetes.</p>
            <div class="status">
                <span class="dot"></span> Running
            </div>
            <footer>
                <p>Infrastructure as Code • Kubernetes • DevOps</p>
            </footer>
        </div>
    </div>
</body>
</html>
EOF

    "styles.css" = <<EOF
:root {
    --bg-color: #0f172a;
    --card-bg: #1e293b;
    --text-color: #f8fafc;
    --accent-color: #38bdf8;
    --secondary-text: #94a3b8;
}

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Outfit', sans-serif;
    background-color: var(--bg-color);
    color: var(--text-color);
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    background: radial-gradient(circle at top right, #1e293b, #0f172a);
}

.container {
    padding: 2rem;
}

.card {
    background-color: var(--card-bg);
    padding: 3rem;
    border-radius: 20px;
    text-align: center;
    box-shadow: 0 20px 25px -5px rgba(0, 0, 0, 0.1), 0 10px 10px -5px rgba(0, 0, 0, 0.04);
    max-width: 400px;
    border: 1px solid rgba(255, 255, 255, 0.1);
    transition: transform 0.3s ease;
}

.card:hover {
    transform: translateY(-5px);
}

.icon {
    font-size: 4rem;
    margin-bottom: 1.5rem;
}

h1 {
    font-weight: 600;
    margin-bottom: 1rem;
    font-size: 1.8rem;
    background: linear-gradient(135deg, #fff, #94a3b8);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
}

p {
    color: var(--secondary-text);
    line-height: 1.6;
    margin-bottom: 2rem;
}

.status {
    display: inline-flex;
    align-items: center;
    gap: 0.5rem;
    background: rgba(56, 189, 248, 0.1);
    padding: 0.5rem 1rem;
    border-radius: 9999px;
    color: var(--accent-color);
    font-weight: 500;
    font-size: 0.9rem;
    margin-bottom: 2rem;
}

.dot {
    width: 8px;
    height: 8px;
    background-color: var(--accent-color);
    border-radius: 50%;
    box-shadow: 0 0 10px var(--accent-color);
}

footer {
    border-top: 1px solid rgba(255, 255, 255, 0.1);
    padding-top: 1.5rem;
}

footer p {
    font-size: 0.75rem;
    margin-bottom: 0;
    text-transform: uppercase;
    letter-spacing: 1px;
    opacity: 0.7;
}
EOF
  }
}
