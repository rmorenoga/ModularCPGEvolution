# ModularCPGEvolution
Evolution of CPG parameters for a simple modular robot

This has been tested in Ubuntu 14.04 LTS

The main classes are located in the evolutionJEAFParallelRemote and start with "Evolution..."

The main classes call the xml configuration files which configure all the evolution parameters. Evolution is done using JEAF which can be downloaded in https://github.com/GII/JEAF/wiki/Java-Evolutionary-Algorithm-Framework that also uses mpj-express (http://mpj-express.org/) as a way to do multiple evaluations in parallel. 

The "CalculateFitness..." classes in the evolutionJEAFParallelRemote folder should be adjusted to the specific file system being used to open the scenes in the simulator.

Simulation is done using the V-REP simulator (http://www.coppeliarobotics.com/) it must be installed on its latest version and enabled to work in the continous remoteAPI mode. All scenes used are located in the Modular folder. For the parallel evaluation several copies of the simulator should be used, each copy should be in its own folder with the name "Vrepn" wiht n being a number starting from 0 until the number of desired simulators that are going to be run in parallel, inside each folder the files vrep.sh and vrep (the executable) should be renamed to vrepn.sh and vrepn (the executable) and the contents of vrepn.sh should be changed to be able to open the simulator remotely, the file remoteApiConnections.txt should also be modified with the specific port number in descending order, for example for Vrep0 the port number would be 19997, for Vrep1 it would be 19996.. and so on.  For examples of the vrepn.sh and remoteApiConnections.txt files on each case see the V-REP folder.

The main class should be run using mpj-express (http://mpj-express.org/) in the cluster configuration, with at least one daemon running on the same computer.
