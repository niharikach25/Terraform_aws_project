#!/bin/bash
apt update
apt install -y apache2


cat <<EOF > /var/www/html/index.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>my portfolio</title>
    <style>
    	
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        header {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 1em;
        }

        main {
            padding: 20px;
        }

        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 1em;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>
<body>

    <header>
        <h1>Simple Webpage</h1>
    </header>

    <main>
        <h2>Terraform project server 2</h2>
        <p>This is my first terraform project.</p>
    </main>

    <footer>
        &copy; 2023 Simple Webpage
    </footer>

</body>
</html>

EOF

# Start Apache and enable it on boot
systemctl start apache2
systemctl enable apache2