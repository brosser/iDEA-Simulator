## Python Simulator for iDEA
by Fred and Hui Yan

Original repo: https://github.com/maguire/MIPS-Simulator
(credit to user 'maguire')

Forked repo: https://github.com/brosser/MIPS-Simulator
(Simulator for MIPS)

### Description

iDEA-Simulator is a simulator for the iDEA processor architecture, written in Python. 
The simulator runs a given assembly program and outputs simulation logfiles and statistics.

### Justification
* An instruction set simulator to model and accurately predict the behavior of instructions' execution.
* Starts with a MIPS model, and will progressively modify according to the iDEA model (still no idea how).
* Main motivations:
	- to obtain instruction count.
	- to identify hazards / data dependencies.
	- to ensure logical and functional correctness.
	- to analyse opportunity for composite instructions.
* Cycle-accurate simulator is not needed for now. If the simulator doesn't fulfill the requirements above, then we will move on to a cycle-accurate one. 

### Sections of the Simulator
* Assembler
	* Pre-processing: Reads and parses the elf32-bigmips code
	* Analysis: Dependency checks and resolving by nop insertions
	* Code generation: Generates the code for simulator (Instruction Memory and Data Memory).
* Simulator
	* Accepts the asm code generated and emulates the execution of the code instructions.
	* Dumps a log file of instruction pipelines.
	
------

### Usage

`python run-simulator.py [options] <Input ASM> <Sim. Log> <Sim. ASM File> <Preproc. Log> <Memory Dump>`

Example:

`python src/run-simulator.py -v benchmark/toy/median/median-O2.asm`

Only the Assembler Input File is a required input, others are optional (default filenames are used).

The input file uses the format elf32-bigmips.

#### Options

- `--version` Show program's version number and exit.
- `-h, --help` Show help message and exit.
- `-v, --verbose` Print cycle by cycle debug information to simulaton log file.
<<<<<<< HEAD
- `-q, --quiet` Supress simulator output
=======
- `-q --quiet` Use only minimal logging.
- `--pipe <N>` Set number of pipeline stages [5-9, default 5]
>>>>>>> 0448ab028de47d445ef6c3786f480fb3087e9dff
 
#### Output

- `<Simulation Run Log File>` Log file from simulation, showing final register file state, accessed data memory and run statistics
- `<Simulation Assembly File>` The processed Assembly code as input to the simulator
- `<Preprocessing Log File>` Preprocessing logfile, specifying NOP-insertions, branch address recalculations and parse log
- `<Data Memory Dump File>` Pre-simulation data memory dump

#### Automated testing

`./runSimulations.sh`.

Bash script that automatically runs all benchmarks and outputs cycle count.
