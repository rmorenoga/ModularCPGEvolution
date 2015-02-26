# ModularCPGEvolution
Evolution of CPG parameters for a simple modular robot

The main classes are located in the evolutionJEAFParallelRemote and start with "Evolution..."

The main classes call the xml configuration files located in the root folder which configure all the evolution parameters. Evolution is done using JEAF (https://github.com/GII/JEAF/wiki/Java-Evolutionary-Algorithm-Framework).

The "CalculateFitness..." classes in the evolutionJEAFParallelRemote folder should be adjusted to the specific file system being used to open the scenes in the simulator.

For this evolution experiment to work the V-REP simulator (http://www.coppeliarobotics.com/) must be installed on its latest version and enabled to work in the continous remoteAPI mode. All scenes are located in the Modular folder.

The main class should be run using mpj-express (http://mpj-express.org/) in the cluster configuration, with at least one daemon running on the same computer.
