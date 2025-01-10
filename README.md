# Prey-Predator-Simulation

This project simulates the interactions between predators and prey within a bounded environment. The simulation is implemented using the Processing environment and consists of multiple classes to manage different aspects of the ecosystem.

Files:

World.pde: Manages the overall simulation world, including the environment and animal interactions.

Prey.pde: Defines the behavior and characteristics of the prey animals.

Predator.pde: Defines the behavior and characteristics of the predator animals.

Animal.pde: A base class for both Prey and Predator, encapsulating shared properties and behaviors.


Additional Classes:

Animal.pde: A base class that defines the general behavior of animals, including movement, reproduction, and boundary constraints.
Simulation.pde: Contains the setup and draw functions to initialize the simulation and manage the display of population statistics.


How to Run the Simulation:

Load all .pde files into a Processing project.
Run the project in Processing to start the simulation.
The simulation initializes with 50 prey and 10 predators.
The population of prey and predators is displayed dynamically. The simulation stops when either the prey or predator population reaches zero.

Key Features:
Dynamic Interaction: Predators hunt prey, and prey attempt to evade predators.
Reproduction: Both predators and prey have a chance to reproduce, maintaining or growing their populations.
Population Tracking: The simulation tracks and displays the number of prey and predators in real-time.

Classes Overview:

World-> Manages the environment and interactions between animals.

Prey-> Defines the specific behavior of prey animals, including movement and evasion.

Predator-> Defines the specific behavior of predator animals, including hunting and energy management.

Animal->A base class for common properties and methods shared by Prey and Predator. Includes methods for movement, reproduction, and boundary management.

Simulation-> Handles the initial setup and the main draw loop. Manages the creation of initial animal populations and the display of population statistics.


How to Extend the Simulation:
Add New Behaviors: Extend the Animal class to introduce new types of animals or behaviors.
Adjust Parameters: Modify reproduction rates, movement speeds, or initial populations to explore different ecological dynamics.
Visual Enhancements: Update the display methods to include more detailed or realistic representations of animals.


