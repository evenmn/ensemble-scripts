# Ensemble Scripts for Anemoi

This repository contains scripts for training and running ensemble models within [Anemoi](https://github.com/ecmwf/anemoi-core). It includes configuration files and job scripts compatible with the following components:

- [`anemoi-training`](https://github.com/ecmwf/anemoi-core)
- [`anemoi-inference`](https://github.com/ecmwf/anemoi-inference)
- [`bris-inference`](https://github.com/metno/bris-inference)

> ⚠️ **Note:** Most paths and job scripts are tailored for the **Leonardo supercomputer**, but they can be adapted for similar HPC environments.

---

## Supported Grid Configurations

This repository includes setup for the following grid configurations:

- **ERA5-o96**:  
  Global model trained on ERA5 (~100 km horizontal resolution)

- **ERA5-N320**:  
  Global model trained on ERA5 (~31 km horizontal resolution)

- **ERA5-N320_CERRA-5p5km**:  
  Stretched-grid model with ~5.5 km resolution over Europe, ~31 km elsewhere

- **IFS-N320_MEPS-2p5km**:  
  Stretched-grid model with ~2.5 km resolution over the Nordics, ~31 km elsewhere

---

## Directory Structure

``` bash
src/
├── hardware_leonardo.yaml
├── hardware_lumi.yaml
├── ERA5-N320/
│ ├── anemoi-training/
│ │ ├── config.yaml
│ │ └── jobscript.sh
│ └── bris-inference/
│ ├── config.yaml
│ └── jobscript.sh
├── ERA5-N320_CERRA-5p5km/
│ └── anemoi-training/
│ ├── config.yaml
│ └── jobscript.sh
├── ERA5-o96/
│ ├── anemoi-inference/
│ │ ├── config.yaml
│ │ └── jobscript.sh
│ ├── anemoi-training/
│ │ ├── config.yaml
│ │ └── jobscript.sh
│ └── bris-inference/
│ ├── config.yaml
│ └── jobscript.sh
└── IFS-N320_MEPS-2p5km/
├── anemoi-inference/
│ ├── config.yaml
│ └── jobscript.sh
├── anemoi-training/
│ ├── config.yaml
│ └── jobscript.sh
└── bris-inference/
├── config.yaml
└── jobscript.sh
```

---


## Usage

Each configuration folder contains:

- A YAML configuration file: `config.yaml`
- A SLURM job script: `jobscript.sh`

Before launching any job, **update the paths, user accounts, and resource allocations** in both files.

To submit a job:

```bash
sbatch jobscript.sh
```

## Verified Software Versions (as of 2025-08-07)
These scripts were tested with the following versions:

- `anemoi-training`: commit [b9d7726](https://github.com/ecmwf/anemoi-core/commit/b9d772659679b1d1744c9be6a6602673eb9e6969)
- `anemoi-inference`: commit [0b0db28](https://github.com/ecmwf/anemoi-inference/commit/0b0db285bb049c7133a541cd04b053030163f7aa)
- `bris-inference`: commit [f1b40b1](https://github.com/metno/bris-inference/commit/f1b40b100102d1a6483f79a8aefc4db1b4754366)
