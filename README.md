Phishing Awareness Simulation Using Linux
Project Overview

This project is a safe phishing-awareness simulation created using Linux. It demonstrates how a suspicious login page can appear while ensuring that no real passwords or personal information are collected, stored, or transmitted.

The project runs locally on the computer for cybersecurity training and awareness.

Objectives
Understand basic phishing concepts.
Demonstrate how a suspicious login page may look.
Practice using Linux and Bash scripting.
Learn how to run a local web server.
Identify common phishing warning signs.
Demonstrate safe cybersecurity awareness practices.
Technologies and Tools
Ubuntu Linux
Bash Scripting
HTML
Python 3
Git
GitHub
VirtualBox
Project Files
phishing-awareness-linux/
├── checklist.txt
├── index.html
├── phishing-awareness.sh
└── run-server.sh
File Descriptions

phishing-awareness.sh
Main Bash script used to create and set up the phishing-awareness training environment.

index.html
The local training webpage containing the simulated login form.

run-server.sh
Starts the local Python web server so the training page can be accessed in a browser.

checklist.txt
Contains the project completion checklist.

How to Run the Project

Clone the repository:

git clone git@github.com:Bashjsyk/phishing-awareness-linux-.git

Enter the project directory:

cd phishing-awareness-linux-

Make the main script executable:

chmod +x phishing-awareness.sh

Run the script:

./phishing-awareness.sh

Start the local training server:

./run-server.sh

Open the following address in a browser:

http://127.0.0.1:8000
Security and Safety

This project is designed strictly for cybersecurity awareness and educational purposes.

No real credentials should be entered.
No passwords are collected.
No credentials are stored.
No credentials are transmitted.
The webpage runs locally on 127.0.0.1.
Only dummy information should be used during the simulation.
Expected Result

The training webpage opens locally and demonstrates a simulated login scenario. After submitting the form, the page displays a message confirming that the simulation was completed without collecting or transmitting credentials.

Project Status

Completed ✅

This project demonstrates basic Linux, Bash, HTML, local web-server, and Git/GitHub skills while focusing on safe phishing awareness.
