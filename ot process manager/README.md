# Assignment10

Create a process management utility


## Authors

- Simranjeet Singh
## TO DO:

Create a process management utility, to find

Top n process by memory
Top n process by cpu
Kill process having least priority
running duration of a process by name or pid
List orphan process if any
List zoombie process if any
Kill process by name or pid
List process that are waiting for the resources


i.e.
./ otProcessManager topProcess 5 memory
./ otProcessManager topProcess 10 cpu
./ otProcessManager killLeastPriorityProcess 
./ otProcessManager RunningDurationProcess <processName>/<processID>
./ otProcessManager listOrphanProcess
./ otProcessManager listZoombieProcess
./ otProcessManager killProcess <processName>/<processID>
./ otProcessManager ListWaitingProcess