# FCFS Scheduling – GitHub Classroom Assignment

## Task
Write a C program `fcfs.c` that implements FCFS CPU scheduling.

## Requirements
- Read number of processes
- Read PID, arrival time, burst time
- Sort by arrival time
- Compute:
  - Waiting time (WT)
  - Turnaround time (TAT)
  - Average WT and TAT
- Print in EXACT format:

Waiting Time:
P1 WT
...
Turnaround Time:
P1 TAT
...
Average Waiting Time: X.XX
Average Turnaround Time: Y.YY

yaml
Copy code

## Autograding Levels (5 Tests)
| Level | Description | Points | Visible? |
|-------|-------------|--------|----------|
| 1 | Basic | 10 | Yes |
| 2 | Standard | 15 | Yes |
| 3 | Sorting needed | 20 | Yes |
| 4 | Large input | 25 | Hidden |
| 5 | Edge cases | 30 | Hidden |

Total: **100 points**

## Run Locally
gcc fcfs.c -o fcfs
./fcfs < tests/input1.txt

vbnet
Copy code

Submit by pushing to GitHub.
