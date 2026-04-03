# Chaotic Neural Network for Pattern Retrieval

This repository implements a **controlled chaotic neural network (CNN)** for associative memory and robust pattern retrieval from noisy inputs. The framework combines nonlinear dynamical systems with neural computation to demonstrate how chaotic dynamics can enhance retrieval performance.

---

## Overview

Chaotic neural networks extend classical recurrent neural models by introducing internal dynamics such as feedback and refractoriness. These dynamics allow the system to:

- Escape local minima
- Explore the state space more effectively
- Improve robustness against noise and perturbations

This project provides a MATLAB implementation of such a model, including learning, simulation, and visualization components.

---

## Features

- Implementation of a fully interconnected chaotic neural network
- Hebbian-type learning for storing patterns
- Retrieval of stored patterns from noisy initial conditions
- Visualization of network evolution over time
- Modular and extensible MATLAB codebase

---

## Repository Structure

- `core/` — core CNN dynamics and update rules  
- `examples/` — experiment scripts and simulations  
- `assets/` — input image patterns  
- `docs/` — theoretical description and notes  
- `util/` — helper functions  

---

## Installation

Clone the repository:

```bash
git clone https://github.com/Roozbeh-Abolpour/cnn-chaotic-retrieval.git
cd cnn-chaotic-retrieval
```

Open MATLAB and add the project to the path if needed:

```matlab
addpath(genpath(pwd));
```

---

## Example Usage

Run the main retrieval experiment:

```matlab
cd examples
learned_pattern_retrieval.m
```

This will:

1. Load stored patterns  
2. Train the chaotic neural network  
3. Initialize with a noisy pattern  
4. Simulate the network dynamics  
5. Display the retrieved pattern  

---

## Model Description

The network consists of:

- Feedback state (captures neuron interactions)
- Refractory state (models neuron fatigue)
- Nonlinear sigmoid activation function

The combination of these components results in **chaotic dynamics**, which helps the network avoid undesired equilibria and improves retrieval capability.

---

## Results

The model demonstrates:

- Convergence to stored patterns under noise
- Dynamic evolution of neuron states
- Sensitivity to parameters controlling chaos

*(Add figures here to visualize retrieval performance)*

---

## Future Work

- Integration with control-theoretic stabilization methods
- Extension to continuous-time models
- Hardware/real-time implementation
- Comparison with modern neural architectures

---

## License

This project is open-source and available for research and educational use.

---

## Author

Roozbeh Abolpour  
Researcher in control systems, optimization, and nonlinear dynamics
