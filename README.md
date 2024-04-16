
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

## MATLAB

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

## Simulink


- ### [LAB 1: Basic Simulink Blocks ](Simulink/LAB1)

   - Objective: In this lab,  will gain hands-on experience with fundamental Simulink blocks and learn how to create a simple simulation model.

- ### [LAB 2: Basic Simulink Blocks ](Simulink/LAB2)

   - Objective: By the end of this lab, should be able to create and simulate a simple Simulink model, understand basic Simulink blocks, and connect them to build a functional system.

## Model Based Concept Projects

- ### [Robot Arm Simulation ](Pojects/Robot_Arm_Simulation)

   - Objective: MATLAB app for simulating the motion of a robotic arm. It allows users to input the lengths of two segments of the arm and visualize how the arm moves in response to changes in these lengths.


- ### [AC-DC Converter Simulation and Control for Single-Phase Full-Wave Rectifier Driving a DC Motor](Pojects/AC_DC_Motor_Control_with_Simulink)

   - Objective: The project involves the simulation and control of an AC-DC converter system using Simulink. The system comprises a single-phase full-wave rectifier connected to a DC motor. The AC input is rectified to produce a DC output voltage, which is then used to drive the DC motor.




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

- ## LABS

  - ### [LAB 1: First-Order System Analysis](PID_Controller/LABS/LAB1)

     - Objective: This practical lab is designed to help students or engineers understand and apply the concepts of first-order system analysis. Participants will learn how to model a first-order system, analyze its time response, and observe the effects of different system parameters on its behavior With Arduino UNO .

  - ### [LAB 2: First Order and Second Order Systems Analysis](PID_Controller/LABS/LAB2)

     - Objective: Creating a practical lab to study first-order and second-order systems using MATLAB and Simulink is a great way to gain hands-on experience with control systems.
 
  - ### [LAB 3: Understanding Open vs. Closed-Loop Systems without Controllers](PID_Controller/LABS/LAB3)

     - Objective: To illustrate the distinction between open-loop and closed-loop systems without incorporating controllers using MATLAB and Simulink.

  - ### [LAB 4: Practical Demonstration of P, I, and PI Controllers](PID_Controller/LABS/LAB4)

     - Objective: Utilize a second-order system, such as a mass-spring-damper system, represented by a transfer function G(s) = 1/(s^2 + 10s + 20). This system mimics physical elements like a mass (inertia), spring (elasticity), and damper (damping). The system provides an appropriate platform to analyze the controller behaviors.

  - ### [LAB 5: PID Controller Tuning Using S-Shape Methods](PID_Controller/LABS/LAB5)

     - This lab aims to explore the tuning of a PID controller using S-shape methods to optimize the response of a given control system.System Transfer Function:
The system under consideration has a transfer function represented as: G(s) = 10 / (s+2)(s+5)

- ## Projects
  - ### [Detailed Comprehensive Control System Project](PID_Controller_Projects/Project_1)

      - Objective: This project aims to develop an intricate control system using MATLAB/Simulink, RC circuits, and Arduino. The overarching objective includes the implementation of open-loop and closed-loop control systems, first-order and second-order systems, PID controller design, and parameter tuning. The uniqueness of this project lies in the meticulous design of three second-order systems, representing underdamped, overdamped, and critically damped scenarios, and their real-time implementation using Arduino.
 

  - ### [Satellite Control System Design using MATLAB/Simulink](PID_Controller_Projects/Project_2)

     - Objective: This project aims to design a Simple control system for a satellite using MATLAB/Simulink. It includes the analysis and design of two models: the first model represents a DC motor system, and the second model represents the satellite. The models are analyzed using root locus and Bode plots to estimate system stability and performance. Subsequently, a control system is designed using a PID controller and tested using step response simulation to evaluate its performance in controlling the satellite. The project aims to apply the theoretical concepts acquired in control engineering to improve the performance of the satellite and ensure its stability during operation.you can find a simulation here : https://www.linkedin.com/posts/mohammed-ezzelrgal_satellitecontrol-matlab-simulink-activity-7185815952385601536-rUgd?utm_source=share&utm_medium=member_ios  



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

