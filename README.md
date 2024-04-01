
# Model-Based Development

![1](https://github.com/moezzelrgal/Model_Based_Development/assets/101054811/9ff797f8-ed16-4fc3-8879-a8e410c933b4)


## Overview

This repository is dedicated to my studies and projects related to Model-Based Development (MBD). Model-Based Development is an approach to system development where models serve as the primary artifacts throughout the development process. This README provides an overview of the contents of the repository and guidance on how to navigate through the different components.

## Table of Contents

1. [Introduction to Model-Based Development](#introduction-to-model-based-development)
2. [MATLAB](#MATLAB)
3. [Simulink](#Simulink)
4. [Model Based Concept Projects](#Model-Based-Concept-Projects)
5. [PID Controller](#PID-Controller)
6. [Folder Structure](#folder-structure)
7. [License](#License)
   

## Introduction to Model-Based Development

Model-Based Development (MBD) is a methodology that uses models as the core artifacts in the development process. It involves creating abstract representations of a system and using these models for analysis, design, and implementation. This section provides a brief introduction to MBD and its benefits.

## [MATLAB](MATLAB) 

### LABs

- #### [LAB 1: MATLAB concepts ](MATLAB/LABs/LAB1.m)

   - Objective: This lab exercise will help you practice essential MATLAB concepts, including
creating and manipulating numeric arrays, performing matrix concatenation, and using the
repmat function.

- #### [LAB 2: MATLAB Control Structures - While and Switch ](MATLAB/LABs/LAB2.m)

   - Objective: In this lab, you will practice working with MATLAB's control structures, specifically the while loop and the switch statement.

- #### [LAB 3: MATLAB Basics ](MATLAB/LABs/LAB3.m)

   - Objective: In this practical lab, beginners will learn and practice fundamental MATLAB concepts, including cell arrays, structures, character data, conditional statements (if), for loops, and basic plotting.

- #### [LAB 4: Understanding MATLAB Function Concepts ](MATLAB/LABs/LAB4.m)

   - Objective: In this lab, you will learn and practice fundamental concepts related to MATLAB functions. You will create your own functions, understand function inputs and outputs, and explore common function features.


### Tasks

- #### [Task 1: MATLAB Numeric Types and Array Manipulation](MATLAB/Tasks/Task_1.m)

   - Objective: In this task,  will create a MATLAB program that covers various aspects of MATLAB numeric types, creating numeric arrays, using specialized matrix functions, and matrix concatenation.

## [Simulink](Simulink)


- ### [LAB 1: Basic Simulink Blocks ](Simulink/LAB1)

   - Objective: In this lab,  will gain hands-on experience with fundamental Simulink blocks and learn how to create a simple simulation model.

- ### [LAB 2: Basic Simulink Blocks ](Simulink/LAB2)

   - Objective: By the end of this lab, should be able to create and simulate a simple Simulink model, understand basic Simulink blocks, and connect them to build a functional system.

## Model Based Concept Projects

- ### [Robot Arm Simulation ](Pojects/Robot_Arm_Simulation)

   - Objective: The project involves the simulation and control of an AC-DC converter system using Simulink. The system comprises a single-phase full-wave rectifier connected to a DC motor. The AC input is rectified to produce a DC output voltage, which is then used to drive the DC motor.

- ### [AC-DC Converter Simulation and Control for Single-Phase Full-Wave Rectifier Driving a DC Motor](Pojects/AC_DC_Motor_Control_with_Simulink)

   - Objective: MATLAB app for simulating the motion of a robotic arm. It allows users to input the lengths of two segments of the arm and visualize how the arm moves in response to changes in these lengths.

- ### [Spring-Mass-Damper System Analysis](Pojects/Spring_Mass_Damper)

   - Objective: This project explores the behavior of a Spring-Mass-Damper system using Simulink and MATLAB. The system consists of a mass connected to a spring and damper, and its response is studied under varying mass values. By simulating the system with different mass parameters, we aim to observe how mass affects the displacement of the system over time. The project includes a Simulink model of the system, a MATLAB script for automating simulations and analyzing results, and plots showcasing the system's response for different mass values.

- ### [Simple Pendulum Motion Simulation](Pojects/Simple_Pendulum_Motion_Simulation)

   - Objective: This project focuses on simulating the motion of a simple pendulum using MATLAB/Simulink and generating C code for deployment on ARM Cortex-M hardware platforms. The simulation model is based on the differential equation governing the motion of a simple pendulum, considering parameters such as length and gravitational acceleration. The generated C code efficiently computes the pendulum's motion, providing an execution- and memory-efficient solution suitable for embedded systems.

- ### [RC Circuit Simulation](Pojects/RC_Circuit_Simulation)

   - Objective: This project involves creating a Simulink model to simulate an RC circuit and generating C code from the model for deployment on embedded systems, specifically targeting Atmel AVR hardware.

- ### [Temperature Control System](Pojects/Temperature_Control_System)

   - Objective: project involves the design, simulation, code generation, and deployment of a temperature control system using MATLAB/Simulink. The aim is to create a control system that regulates the temperature of a system based on a given setpoint. code is generated for the Simulink model "Temperature_Control". It represents the implementation of a temperature control system designed in Simulink and optimized for execution and memory efficiency on ARM Cortex-A compatible embedded hardware.

- ### [Automated Irrigation Control System](Pojects/Automated_Irrigation_Control_System)

   - Objective: The project focuses on designing and implementing an automated irrigation control system to optimize water usage in agricultural or garden settings. The system utilizes soil moisture sensors to monitor the moisture level in the soil and activates irrigation when necessary to maintain optimal soil moisture levels. MATLAB/Simulink is used for system modeling, control algorithm design, and code generation. The generated code is then deployed onto an Atmel AVR microcontroller for real-time control and operation.

## PID Controller

- ### [LAB 1: First-Order System Analysis](PID_Controller/LABS/LAB1)

   - Objective: This practical lab is designed to help students or engineers understand and apply the concepts of first-order system analysis. Participants will learn how to model a first-order system, analyze its time response, and observe the effects of different system parameters on its behavior With Arduino UNO .

- ### [LAB 2: First Order and Second Order Systems Analysis](PID_Controller/LABS/LAB2)

   - Objective: Creating a practical lab to study first-order and second-order systems using MATLAB and Simulink is a great way to gain hands-on experience with control systems.

## Folder Structure
- `/LABs`: Contains subdirectories for each individual LAB.
  - `/LAB1`: Details about LAB 1.
- `/Tasks`: Contains subdirectories for each individual Task.
  - `/Task1`: Details about Task 1.
- `/projects`: Contains subdirectories for each individual project.
  - `/project1`: Details about Project 1.
  - `/project2`: Details about Project 2.
- `/docs`: Additional documentation related to the projects or MBD concepts.
- `/scripts`: Any scripts or tools used in the development process.
- `/examples`: Code examples or model files that illustrate specific concepts.

## [License](#License)
MIT License

Copyright (c) [2024] [Mohamed Ezzelrgal]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

