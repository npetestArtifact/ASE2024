# Result
This repository contains experimental results for NPETest and other tools. 
All experimental results performed by the script files will be stored in this directory.

## Structure

'''
.
├── benchmarks                  Some auxilary files for testing provided benchmarks
└── symtuner                    Main source code directory
    ├── bin.py                  CLI command entry point
    ├── klee.py                 KLEE specific implementation of SymTuner
    ├── logger.py               Logging module
    ├── symbolic_executor.py    Interface for all symbolic executors (e.g., KLEE)
    └── symtuner.py             Core algorithm of SymTuner

'''
  
