% PARAMETERS:

	Protocol:			 EKE
	Problem category:		 if

	IF2SATE Version:		 2.0
	Intruder Knowledge As Axioms:	 off
	Weak Type-Flaws (iff newgp):	 off

	Technique:			 New Graphplan-based Encoding
	Min Steps:			 1
	Max Steps:			 -1
	Delta Steps:			 1
	Level Mutex:			 1
	Solver:				 chaff

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% SATE file generated in 0.08 sec...

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

PHASE: INIT

* SUB-PHASE: Preprocess Negations on Goals

  Runtime:				0.0

* SUB-PHASE: Schemes Generation and Translation

  STATISTICS			CLAUSES	RUNTIME(sec)
  Initial Facts:		17	0.0
					------
  Total:				0.0

* SUB-PHASE: Build Graph

  STATISTICS			LAYER	FIXED POINT	RUNTIME(sec)
				0	no		0.01
							------
  Total:						0.01

* SUB-PHASE: Assert Possible Goals Instances

  STATISTICS				RUNTIME(sec)
  Total:				0.0

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

PHASE: LOOP ITERATION 1

* SUB-PHASE: Search for SAT models..

  Find models procedure skipped.

* SUB-PHASE: Build Graph

  STATISTICS			LAYER	FIXED POINT	RUNTIME(sec)
				1	no		0.01
							------
  Total:						0.01

* SUB-PHASE: Assert Possible Goals Instances

  STATISTICS				RUNTIME(sec)
  Total:				0.0

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

PHASE: LOOP ITERATION 2

* SUB-PHASE: Search for SAT models..

  Find models procedure skipped.

* SUB-PHASE: Build Graph

  STATISTICS			LAYER	FIXED POINT	RUNTIME(sec)
				2	no		0.02
							------
  Total:						0.02

* SUB-PHASE: Assert Possible Goals Instances

  STATISTICS				RUNTIME(sec)
  Total:				0.0

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

PHASE: LOOP ITERATION 3

* SUB-PHASE: Search for SAT models..

  Find models procedure skipped.

* SUB-PHASE: Build Graph

  STATISTICS			LAYER	FIXED POINT	RUNTIME(sec)
				3	no		0.04
							------
  Total:						0.04

* SUB-PHASE: Assert Possible Goals Instances

  STATISTICS				RUNTIME(sec)
  Total:				0.0

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

PHASE: LOOP ITERATION 4

* SUB-PHASE: Search for SAT models..

  Find models procedure skipped.

* SUB-PHASE: Build Graph

  STATISTICS			LAYER	FIXED POINT	RUNTIME(sec)
				4	no		0.02
							------
  Total:						0.02

* SUB-PHASE: Assert Possible Goals Instances

  STATISTICS				RUNTIME(sec)
  Total:				0.0

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

PHASE: LOOP ITERATION 5

* SUB-PHASE: Search for SAT models..

  Find models procedure skipped.

* SUB-PHASE: Build Graph

  STATISTICS			LAYER	FIXED POINT	RUNTIME(sec)
				5	no		0.07
							------
  Total:						0.07

* SUB-PHASE: Assert Possible Goals Instances

  STATISTICS				RUNTIME(sec)
  Total:				0.0

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

PHASE: LOOP ITERATION 6

* SUB-PHASE: Search for SAT models..

  Find models procedure skipped.

* SUB-PHASE: Build Graph

  STATISTICS			LAYER	FIXED POINT	RUNTIME(sec)
				6	no		0.04
							------
  Total:						0.04

* SUB-PHASE: Assert Possible Goals Instances

  STATISTICS				RUNTIME(sec)
  Total:				0.0

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

PHASE: LOOP ITERATION 7

* SUB-PHASE: Search for SAT models..

  Find models procedure skipped.

* SUB-PHASE: Build Graph

  STATISTICS			LAYER	FIXED POINT	RUNTIME(sec)
				7	yes		0.01
							------
  Total:						0.01

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Stop condition reached!

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

RESULTS

Attacks Found:			false
Stop Condition Reached:		true
Formula statistics:
  Graph Construction Time:	0.22
  Graph Fixed Point Reached:	7
  Graph2SAT Time (sec):		0.0
  Encoding Time (sec):		0.22
  Depth:			7
  Atoms:			0
  Clauses:			0
Solving statistics:
  Total Solving Time (sec):	0
  Last Solving Time (sec):	0
Abstraction/Refinement statistics:
  Validation Time (sec):	0.0
  Models into POPs Time (sec):	0.0
  Refinement iterations:	0

Total Time:	0.22


