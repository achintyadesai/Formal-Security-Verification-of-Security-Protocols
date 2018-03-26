% PARAMETERS:

	Protocol:			 ISO3
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

% SATE file generated in 1.08 sec...

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

PHASE: INIT

* SUB-PHASE: Preprocess Negations on Goals

  Runtime:				0.0

* SUB-PHASE: Schemes Generation and Translation

  STATISTICS			CLAUSES	RUNTIME(sec)
  Initial Facts:		20	0.0
					------
  Total:				0.0

* SUB-PHASE: Build Graph

  STATISTICS			LAYER	FIXED POINT	RUNTIME(sec)
				0	no		0.03
							------
  Total:						0.03

* SUB-PHASE: Assert Possible Goals Instances

  STATISTICS				RUNTIME(sec)
  Total:				0.0

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

PHASE: LOOP ITERATION 1

* SUB-PHASE: Search for SAT models..

  Find models procedure skipped.

* SUB-PHASE: Build Graph

  STATISTICS			LAYER	FIXED POINT	RUNTIME(sec)
				1	no		0.05
							------
  Total:						0.05

* SUB-PHASE: Assert Possible Goals Instances

  STATISTICS				RUNTIME(sec)
  Total:				0.02

* SUB-PHASE: Schemes Generation and Translation

  STATISTICS			CLAUSES	RUNTIME(sec)
  Goals:			28	0.01
  Refinement Schema:		0	0.0
  User Axioms:			0	0.0
  Ape Schema:			161	0.02
  Explanatory Frame Schema:	239	0.07
  Mutex Schema:			3	0.0
					------
  Total:				0.1

* SUB-PHASE: Update SAT formula

  STATISTICS
  Depth:	2
  Atoms:	193
  Clauses:	451

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

PHASE: LOOP ITERATION 2

* SUB-PHASE: Search for SAT models..

  Found 1 models in 0.0 sec.

* SUB-PHASE: Models into Partial Order Plans (POPs)

  STATISTICS		RUNTIME(sec)
  model2pop 1		0.02
			------
  Total:		0.02

* SUB-PHASE: Partial Order Plans (POPs) validations

  All POPs are trivially valid!

* SUB-PHASE: Attack Printing (POP and user-friendly attack)

  --------------------------------------------------------------------
  pop 1:

  GOALS: [weak_authentication_on_nb(a,b,nonce(fn(na0,mr(b),9)),3)]

  Step 0:	 [step_0(a,b,pka,pks,dummy_nonce,dummy_nonce,dummy_nonce,dummy_nonce,dummy_pk,3),step_0(b,a,pkb,pks,dummy_nonce,dummy_nonce,dummy_nonce,dummy_nonce,dummy_pk,9)]
  Step 1:	 [step_1(a,b,pka,pks,fn(na0,mr(a),3),dummy_nonce,dummy_nonce,dummy_nonce,dummy_pk,3,fn(na0,mr(b),9),ctext1,ctext2,pkb)]
  --------------------------------------------------------------------
  correspondent attack:

  i       -> (a,3)	:	start
  (a,3)   -> i		:	pka.a.{pka.a}_inv(pks).na0(a,3).b.ctext2.{na0(a,3).b.ctext1}_inv(pka)
  i       -> (b,9)	:	start
  (b,9)   -> i		:	pkb.b.{pkb.b}_inv(pks).na0(b,9).a.ctext2.{na0(b,9).a.ctext1}_inv(pkb)
  i       -> (a,3)	:	pkb.b.{pkb.b}_inv(pks).na0(b,9).a.ctext2.{na0(b,9).a.ctext1}_inv(pkb)
  --------------------------------------------------------------------

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Found POPs are executable!

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

RESULTS

Attacks Found:			true
Stop Condition Reached:		false
Formula statistics:
  Graph Construction Time:	0.08
  Graph Fixed Point Reached:	no
  Graph2SAT Time (sec):		0.1
  Encoding Time (sec):		0.18
  Depth:			2
  Atoms:			193
  Clauses:			451
Solving statistics:
  Total Solving Time (sec):	0.0
  Last Solving Time (sec):	0.0
Abstraction/Refinement statistics:
  Validation Time (sec):	0.0
  Models into POPs Time (sec):	0.02
  Refinement iterations:	0

Total Time:	0.199


