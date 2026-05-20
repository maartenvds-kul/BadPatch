#!/bin/bash


# Install venv
python -m venv /tmp/.venv
source /tmp/.venv/bin/activate
pip uninstall -y opencv-python opencv-python-headless
pip install -r requirements.txt

python train_advpatch.py --cfg config/cfg.json
