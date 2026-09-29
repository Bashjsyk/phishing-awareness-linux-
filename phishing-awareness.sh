#!/bin/bash

# =========================================================
# Phishing Awareness Simulation Using Linux
# Safe Local Cybersecurity Training Lab
# =========================================================

set -e

LAB_DIR="$HOME/phishing-awareness-lab"
PAGE="$LAB_DIR/index.html"

echo "=============================================="
echo " Phishing Awareness Simulation Lab"
echo "=============================================="

# 1. Create the lab directory
echo "[1/6] Creating lab directory..."
mkdir -p "$LAB_DIR"

# 2. Create a safe local training page
echo "[2/6] Creating awareness webpage..."

cat > "$PAGE" <<'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Security Awareness Training</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            max-width: 600px;
            margin: 60px auto;
            padding: 20px;
        }

        .box {
            border: 1px solid #ccc;
            padding: 25px;
            border-radius: 10px;
        }

        input, button {
            display: block;
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            box-sizing: border-box;
        }

        button {
            cursor: pointer;
        }

        .notice {
            padding: 12px;
            background: #eee;
            margin-bottom: 20px;
        }
    </style>
</head>

<body>

<div class="box">

    <h1>Security Awareness Simulation</h1>

    <div class="notice">
        This is a cybersecurity training exercise.
        Do not enter real passwords or personal information.
    </div>

    <p>
        This page demonstrates how a suspicious login request
        can appear.
    </p>

    <form onsubmit="showTrainingMessage(event)">

        <label>Training Username</label>

        <input
            type="text"
            placeholder="Use a dummy value only"
        >

        <label>Training Password</label>

        <input
            type="password"
            placeholder="Use a dummy value only"
        >

        <button type="submit">
            Simulate Sign In
        </button>

    </form>

    <p id="result"></p>

</div>

<script>

function showTrainingMessage(event) {

    event.preventDefault();

    document.getElementById("result").textContent =
        "Simulation complete: no credentials were collected or transmitted.";

}

</script>

</body>
</html>
EOF

# 3. Create the local web server launcher
echo "[3/6] Preparing local server instructions..."

cat > "$LAB_DIR/run-server.sh" <<'EOF'
#!/bin/bash

cd "$(dirname "$0")"

echo "Training page available at http://127.0.0.1:8000"

python3 -m http.server 8000 --bind 127.0.0.1
EOF

chmod +x "$LAB_DIR/run-server.sh"

# 4. Create a checklist
echo "[4/6] Creating lab checklist..."

cat > "$LAB_DIR/checklist.txt" <<'EOF'
PHISHING AWARENESS LAB CHECKLIST

[ ] Lab directory created
[ ] Training webpage created
[ ] Page opens locally
[ ] Only dummy information is used
[ ] No credentials are stored
[ ] No credentials are transmitted
[ ] Warning signs of phishing are identified
[ ] Simulation completed successfully
EOF

# 5. Display project information
echo "[5/6] Lab files created:"

ls -lh "$LAB_DIR"

# 6. Final information
echo "[6/6] Setup completed."

echo ""
echo "=============================================="
echo " PROJECT COMPLETED SUCCESSFULLY"
echo "=============================================="

echo ""
echo "Start the local training page with:"
echo "$LAB_DIR/run-server.sh"

echo ""
echo "Then open:"
echo "http://127.0.0.1:8000"

echo ""
echo "Important: use dummy information only."

echo "=============================================="
