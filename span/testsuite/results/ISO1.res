% PARAMETERS:

	Protocol:			 ISO1
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

% SATE file generated in 0.35 sec...

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

PHASE: INIT

* SUB-PHASE: Preprocess Negations on Goals

  Runtime:				0.0

* SUB-PHASE: Schemes Generation and Translation

  STATISTICS			CLAUSES	RUNTIME(sec)
  Initial Facts:		13	0.0
					------
  Total:				0.0

* SUB-PHASE: Build Graph

  STATISTICS			LAYER	FIXED POINT	RUNTIME(sec)
				0	no		0.02
							------
  Total:						0.02

* SUB-PHASE: Assert Possible Goals Instances

  STATISTICS				RUNTIME(sec)
  Total:				0.0

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

PHASE: LOOP ITERATION 1

* SUB-PHASE: Search for SAT models..

  Find models procedure skipped.

* SUB-PHASE: Build Graph

  STATISTICS			LAYER	FIXED POINT	RUNTIME(sec)
				1	no		0.02
							------
  Total:						0.02

* SUB-PHASE: Assert Possible Goals Instances

  STATISTICS				RUNTIME(sec)
  Total:				0.02

* SUB-PHASE: Schemes Generation and Translation

  STATISTICS			CLAUSES	RUNTIME(sec)
  Goals:			25	0.0
  Refinement Schema:		0	0.0
  User Axioms:			0	0.0
  Ape Schema:			84	0.01
  Explanatory Frame Schema:	124	0.03
  Mutex Schema:			2	0.0
					------
  Total:				0.04

* SUB-PHASE: Update SAT formula

  STATISTICS
  Depth:	2
  Atoms:	105
  Clauses:	248

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

PHASE: LOOP ITERATION 2

* SUB-PHASE: Search for SAT models..

  Found 1 models in 0.0 sec.

* SUB-PHASE: Models into Partial Order Plans (POPs)

  STATISTICS		RUNTIME(sec)
  model2pop 1		0.01
			------
  Total:		0.01

* SUB-PHASE: Partial Order Plans (POPs) validations

  All POPs are trivially valid!

* SUB-PHASE: Attack Printing (POP and user-friendly attack)

  --------------------------------------------------------------------
  pop 1:

  GOALS: [replay_protection_on_na(a,b,nonce(fn(na0,mr(a),3)),4,7),replay_protection_on_na(a,b,nonce(fn(na0,mr(a),3)),7,4)]

  Step 0:	 [step_0(a,b,pka,pks,dummy_nonce,3)]
  Step 1:	 [step_1(b,a,pks,dummy_pk,dummy_nonce,dummy_nonce,4,pka,fn(na0,mr(a),3),ctext),step_1(b,a,pks,dummy_pk,dummy_nonce,dummy_nonce,7,pka,fn(na0,mr(a),3),ctext)]
  --------------------------------------------------------------------
  correspondent attack:

  i       -> (a,3)	:	start
  (a,3)   -> i		:	pka.a.{pka.a}_inv(pks).na0(a,3).b.ctext.{na0(a,3).b.ctext}_inv(pka)
  i       -> (b,4)	:	pka.a.{pka.a}_inv(pks).na0(a,3).b.ctext.{na0(a,3).b.ctext}_inv(pka)
  i       -> (b,7)	:	pka.a.{pka.a}_inv(pks).na0(a,3).b.ctext.{na0(a,3).b.ctext}_inv(pka)
  --------------------------------------------------------------------

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Found POPs are executable!

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

RESULTS

Attacks Found:			true
Stop Condition Reached:		false
Formula statistics:
  Graph Construction Time:	0.04
  Graph Fixed Point Reached:	no
  Graph2SAT Time (sec):		0.04
  Encoding Time (sec):		0.08
  Depth:			2
  Atoms:			105
  Clauses:			248
Solving statistics:
  Total Solving Time (sec):	0.0
  Last Solving Time (sec):	0.0
Abstraction/Refinement statistics:
  Validation Time (sec):	0.0
  Models into POPs Time (sec):	0.01
  Refinement iterations:	0

Total Time:	0.09


