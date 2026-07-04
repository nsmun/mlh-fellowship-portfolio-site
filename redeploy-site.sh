#!/bin/bash

tmux kill-server 2>/dev/null

cd
cd mlh-fellowship-portfolio-site/

git fetch && git reset origin/main --hard

source venv/bin/activate
pip install -r requirements.txt

tmux new-session -d -s flask-app "flask run --host=0.0.0.0"
