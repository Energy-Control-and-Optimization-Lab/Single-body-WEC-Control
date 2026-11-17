# WEC-Sim Control Strategy Evaluation

This repository contains a **WEC-Sim-based simulation framework** to evaluate and compare different control strategies for a **point absorber wave energy converter (WEC)**. The implemented controllers aim to maximize absorbed energy from incident waves by dynamically regulating the PTO (power take-off) system.

---

## 🚀 Overview

The simulation investigates the following control strategy:

- **PI Control**.


---

## 📁 Repository Structure

FIX!

```
.
├── wecSimInputFile.m            # Main configuration file for WEC-Sim
├── ellipsoidST-SMC.slx             # Simulink model containing WEC and controller logic
├── hydroData/
│   └── ellipsoid.h5             # Hydrodynamic coefficients file (from BEM tools)
├── geometry/
│   └── ellipsoid.stl            # STL file for the WEC geometry
├── Results/                     # Simulation outputs (absorbed power, motion, etc.)
```

---

## 📦 Requirements

Ensure the following software/tools are installed:

- MATLAB (R2020a or later)
- Simulink
- [WEC-Sim Toolbox](https://github.com/WEC-Sim/WEC-Sim)
- Hydrodynamic coefficients file (from NEMOH, Capytaine, or WAMIT)

---

## 🛠️ How to Run

### 1. Clone the Repository

```bash
git clone https://github.com/Energy-Control-and-Optimization-Lab/Control-codesign-of-wave-energy-converters.git
cd Control-codesign-of-wave-energy-converters
```

### 2. Set Up WEC-Sim

In MATLAB, add WEC-Sim to your path:

```matlab
addpath('path_to_WEC-Sim')
```

### 3. Configure Simulation

Open and edit `wecSimInputFile.m`:

- Ensure correct paths to `.h5` and `.stl` files
- Choose wave type and characteristics (e.g., JONSWAP spectrum)

### 4. Run the Simulation

```matlab
wecSim
```

Simulation results (heave motion, PTO force, absorbed energy, etc.) will be saved in the `Results/` folder.

---

## 📈 Output Data

- Time series of body motion
- PTO force and displacement
- Instantaneous and total absorbed power
- Plots and data files for comparison across controllers

---



---


---

## 📬 Contact
Arezoo.Hasankhani@unh.edu
