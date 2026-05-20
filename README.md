# BadPatch

## Requirements

For training/learning a new patch, a GPU with 70GB VRAM or more is needed!

## Install

Tested with python 3.10 and python 3.12:

```
cd adverserial_patch
python -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
```

Get the INRIA dataset and unpack in a folder named `dataset/INRIA`.
The code expects subfolders:

```
INRIA
├── test
│   ├── images
│   └── labels
└── train
    ├── images
    └── labels
```

The labels must be in yolo/ultralytics format (one .txt file per image).

## Train

```
python train_advpatch.py --cfg config/cfg.json
```

### Determined

This command will install all dependencies and starts a training:

```
det cmd run --config work_dir=/path/to/BadPatch/adversarial_patch --config resources.resource_pool=hopper --config resources.slots=1 --config environment.image=determinedai/pytorch-cuda:0.38.1 bash ./run.sh
```
