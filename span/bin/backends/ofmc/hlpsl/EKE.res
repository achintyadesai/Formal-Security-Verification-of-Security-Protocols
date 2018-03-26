% PARAMETERS:

	Protocol:			 EKE
	Problem category:		 if

	IF2SATE Version:		 2.0
	Compound types:			 on
	Step compression:		 on
	Intruder Knowledge As Axioms:	 off
	Weak Type-Flaws (iff newgp):	 off

	Technique:			 Graphplan-based Encoding using the EFA schema
	Min Steps:			 1
	Max Steps:			 30
	Delta Steps:			 1
	Level Mutex:			 0
	Solver:				 zchaff

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% SATE file generated in 0.27 sec...

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

PHASE: INIT

* SUB-PHASE: Schemes Generation and Translation

  STATISTICS			CLAUSES	RUNTIME(sec)
  Initial Facts:		17	0.01
					------
  Total:				0.01

* SUB-PHASE: Build Graph

  STATISTICS			LAYER	LEVELED OFF	RUNTIME(sec)
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

  STATISTICS			LAYER	LEVELED OFF	RUNTIME(sec)
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

  STATISTICS			LAYER	LEVELED OFF	RUNTIME(sec)
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

  STATISTICS			LAYER	LEVELED OFF	RUNTIME(sec)
				3	no		0.02
							------
  Total:						0.02

* SUB-PHASE: Assert Possible Goals Instances

  STATISTICS				RUNTIME(sec)
  Total:				0.0

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

PHASE: LOOP ITERATION 4

* SUB-PHASE: Search for SAT models..

  Find models procedure skipped.

* SUB-PHASE: Build Graph

  STATISTICS			LAYER	LEVELED OFF	RUNTIME(sec)
				4	no		0.01
							------
  Total:						0.01

* SUB-PHASE: Assert Possible Goals Instances

  STATISTICS				RUNTIME(sec)
  Total:				0.01

* SUB-PHASE: Schemes Generation and Translation

  STATISTICS			CLAUSES	RUNTIME(sec)
  Goals:			13	0.01
  Refinement Schema:		0	0.0
  User Axioms:			0	0.0
  Ape Schema:			514	0.09
  Explanatory Frame Schema:	572	0.19
					------
  Total:				0.29

* SUB-PHASE: Update SAT formula

  STATISTICS
  Depth:	5
  Atoms:	396
  Clauses:	1116

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

PHASE: LOOP ITERATION 5

* SUB-PHASE: Search for SAT models..

  Found 1 models in 0.007 sec.

* SUB-PHASE: Models into Partial Order Plans (POPs)

  STATISTICS		RUNTIME(sec)
  model2pop 1		0.04
			------
  Total:		0.04

* SUB-PHASE: Partial Order Plans (POPs) validations

  STATISTICS		VALID	RUNTIME(sec)
  POP 1:		true	0.0
				------
  Total:			0.0

* SUB-PHASE: Attack Printing (POP and user-friendly attack)

  --------------------------------------------------------------------
  pop 1:

  GOALS: [authentication_on_nb(a,b,nonce(fn(nb0,mr(a),7)),3)]

  Step 0:	 [sc_step_0_1(a,b,kab,dummy_pk,dummy_nonce,dummy_nonce,dummy_nonce,set_59,3)]
  Step 1:	 [sc_step_3_1(a,b,kab,dummy_nonce,dummy_nonce,dummy_nonce,dummy_pk,set_76,7,fpk(ea,mr(a),3))]
  Step 2:	 [sc_step_1_1(a,b,kab,fpk(ea,mr(a),3),dummy_nonce,dummy_nonce,dummy_nonce,set_59,3,fn(k,mr(a),7))]
  Step 3:	 [sc_step_4_1(a,b,kab,dummy_nonce,dummy_nonce,fn(k,mr(a),7),fpk(ea,mr(a),3),set_76,7,fn(na0,mr(a),3))]
  Step 4:	 [sc_step_2_1(a,b,kab,fpk(ea,mr(a),3),fn(na0,mr(a),3),dummy_nonce,fn(k,mr(a),7),set_59,3,fn(nb0,mr(a),7))]
  --------------------------------------------------------------------
  correspondent attack:

  i       ->    (a,3)    : start
  (a,3)   ->    i        : {ea(a,3)}_kab
  i       ->    (a,7)    : {ea(a,3)}_kab
  (a,7)   ->    i        : {{k(a,7)}_ea(a,3)}_kab
  i       ->    (a,3)    : {{k(a,7)}_ea(a,3)}_kab
  (a,3)   ->    i        : {na0(a,3)}_k(a,7)
  i       ->    (a,7)    : {na0(a,3)}_k(a,7)
  (a,7)   ->    i        : {na0(a,3).nb0(a,7)}_k(a,7)
  i       ->    (a,3)    : {na0(a,3).nb0(a,7)}_k(a,7)
  (a,3)   ->    i        : {nb0(a,7)}_k(a,7)
  --------------------------------------------------------------------

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Found POPs are executable!

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

RESULTS

Attacks Found:			true
Stop Condition Reached:		false
Formula statistics:
  Graph Construction Time:	0.07
  Graph Leveled Off:		no
  Graph2SAT Time (sec):		0.3
  Encoding Time (sec):		0.37
  Depth:			5
  Atoms:			396
  Clauses:			1116
Solving statistics:
  Total Solving Time (sec):	0.007
  Last Solving Time (sec):	0.007
Abstraction/Refinement statistics:
  Validation Time (sec):	0.0
  Models into POPs Time (sec):	0.04
  Refinement iterations:	0

Total Time:	0.417


