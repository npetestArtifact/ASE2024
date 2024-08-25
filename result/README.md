# Result
This repository contains experimental results for NPETest and other tools. 
All experimental results performed by the script files will be stored in this directory.

## Structure

```
.
├── ...                  Some auxilary files for testing provided benchmarks
└── npetest                    Main source code directory
    ├── ...                  CLI command entry point
    └── npetest_result             Core algorithm of SymTuner
            ├── Bears                  CLI command entry point
                 ├── ...
            ├── Defects4J                 KLEE specific implementation of SymTuner
                 ├── ...
            ├── BugSwarm               Logging module
                 ├── ...
            ├── Genesis    Interface for all symbolic executors (e.g., KLEE)
                 ├── ...
            └── NPEX             Core algorithm of SymTuner
                 ├── ...
                 └── ZooKeeper-ef3649f5
                     ├── ...
                     └── 79660...
```
  
