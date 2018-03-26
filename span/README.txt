
-------------------             SPAN  1.6        --------------------------
------------------- A Security Protocol ANimator --------------------------

                              (For AVISPA)

includes:

- SPAN: a Security Protocol Animator for Avispa. This tool permits to simulate
  the execution of protocols specified in HLPSL and in CAS+.

- a graphical interface to use with AVISPA verification tools for
  cryptographic protocols and SPAN.

See file manual.pdf for the documentation on SPAN and CAS_manual.pdf for
documentation on the CAS+ language.


Depending on availability on different architectures, the packages
also include binary versions of tools from AVISPA: 
- hlpsl2if : a translator from HLPSL language to Intermediate Format 
- OFMC, ATSE, SATMC, TA4SP : verification tools for cryptographic
  protocols from the AVISPA project

(see http://www.avispa-project.org)


---------------------------------------------------------------------------
SPAN: Copyright (C) 2006-2009 Yann Glouche, Thomas Genet, Olivier Heen, 
      		    	      Erwan Houssay and Ronan Saillard.

The CAS+ Parser includes source code from the CASRUL tool
CASRUL: Copyright (C) 2001 Florent Jacquemard, Michael Rusinowitch and
      		    	   Laurent Vigneron.

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU Library General Public License version 2, as
published by the Free Software Foundation.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

Those programs are distributed under the GNU LGPL. 
See the enclosed file COPYING and LGPL


Last modification 9/07/13
---------------------------------------------------------------------------
- Thanks to Antoine Turbin, SPAN is now runnable on 64 bits
  architectures for Ubuntu, Fedora and MacOS. We managed to recompile
  Cl-ATSE and OFMC for those architectures. However, SATMC and TA4SP
  are not available for 64 bits linux. Note that we had to tweak the
  output of OFMC 2012 so that it remains compatible with SPAN... Thus
  it looks like OFMC 2009 but it is really OFMC 2012 :-)

---------------------------------------------------------------------------
Changes from 1.5 to 1.6

- Adding the CAS+ format support. CAS+ is a light evolution of the CASRUL
  Language developped by F. Jacquemard, M. Rusinowitch and L. Vigneron. CAS+ is
  an Alice-Bob language for fast and simple specification of security protocols.
  CAS+ is CASRUL with "avispa-like" authentication goals and protected
  channels. CAS+ has Dolev-Yao channels "->", read-only channels "~>" and read
  and write protected channels "=>". See testsuite/CAS_Protocols/ for examples.
  Span also permits to produce HLSPL from CAS+.

- Fixed versions of cl-atse for linux and windows.

- Fixed link to satmc_2.0 for linux and mac intel distributions. satmc_3.0
  should be coming soon even for windows...
  
- When possible, taking options of verification tools into account for attack 
  reconstruction 

- Fixed bug in the intruder knowledge management function.

- Fixed bugs on the attack simulation functionnality.


---------------------------------------------------------------------------

Changes from 1.4 to 1.5

- Added an 'Attack simulation' button. If an attack is found then its animation
  is automatically built into the animator (in intruder mode). This works only
  with ofmc and cl-atse outputs.

- Role names have been added on top of the generated MSC.

- Fixed bug on the linux version that was rejecting 'exp' functions. Due to
  bad 'hlpsl2if' translater sources.

---------------------------------------------------------------------------

Corrections from 1.3 to 1.4

- Fixed bugs: 

  - 'new()' weird behavior
  - repetitions of events in trace files (.trc)
  - 'RCV(N)' was sometimes successful even if N was not known by the role!
  - preconditions on sets like 'in(X',Set)' were not handled in the right way
  - '--help' text :-)

---------------------------------------------------------------------------

Corrections from 1.2 to 1.3

- Fixed the bad behavior on directory names containing spaces.
  OK except for TA4SP... but it seems to be a bug in the tool itself.

- Another (last?) correction on the usage of Mathieu Turuani unification.
  The remaining bug was preventing some transitions with messages 
  built on more than two components separated by "." of being correctly handled.
  Now it should be ok.

- Silent transitions --|> are not well supported by SPAN.  The reason is that
  using such "spontaneous transitions" it is possible to have a HLPSL text of
  the form:

  State=1 --|> State':=2 

  where no message is received or sent... this is difficult to display/trigger 
  in our interface where animation is guided by the messages you choose 
  to send... We did not mention that before, sorry. 

- There remain some bugs on initialization of sets but they are due to bad IF
  generation from the HLSPL, this is not due to SPAN but to hlpsl translator.

---------------------------------------------------------------------------

Changes and corrections from 1.1 to 1.2

- Corrected bug: bad usage of Mathieu Turuani's unification.

- Corrected bugs: several animation bugs

---------------------------------------------------------------------------

Changes and corrections from 1.0 to 1.1

- Corrected bug: bad semantic for '='.
- Corrected bug: in intruder mode, keys in scrypt can be exp or xors and should
  be unified using Mathieu Turuani's matching algorithm. That is ok now.
- Corrected bug: xor left or right member can be deduced if the other part is in
  intruder's knowledge. 

- In variable monitoring, content of a variable at step (i) is displayed ABOVE
  the transition (i). So as to avoid to have irrelevant dummy value of step 0
  and also to be abble to display values of variable at the final step of the
  protocol.

- Default mode is no message emissions
- It is possible to change the size of the font and it is saved from one session
  to another.


---------------------------------------------------------------------------

(Compiled and tested with Ocaml 4.01:  http://caml.inria.fr/ocaml/)


In the next sections we successively give:
- Prerequisites for running SPAN
- Running instructions
- Compilation instructions (if necessary)


* PREREQUISITES:

The SPAN library is distributed in four different forms: source,
Windows, Linux, and MacOS binary files. SPAN needs Tcl/Tk but it is 
likely to be already installed on your system:

  - Tck/Tk 8.5 for Linux


  - Tcl/Tk 8.5 and (a running) Xfree for MacOS. Under MacOS, Xfree is generally
  installed with the Xcode tools. 

  - Tcl/Tk 8.3 for WINDOWS.
  (http://prdownloads.sourceforge.net/tcl/tcl832.exe for instance)


* RUNNING SPAN:

  - For Linux and MacOs users:

  Before running SPAN you have to set two environment variables. Let
  /usr/bob/span be the directory where you extracted SPAN:

    setenv SPAN /usr/bob/span                  (csh shell) or
    export SPAN=/usr/bob/span                  (bash shell)

    and

    setenv AVISPA_PACKAGE /usr/bob/span        (csh shell) or
    export AVISPA_PACKAGE=/usr/bob/span        (bash shell)

  However, if AVISPA is already correctly installed, the better
  solution is to keep the initial value of this variable and use your
  installed version of AVISPA.

  Finally, to run SPAN, in a terminal window, set the current
  directory to the directory where you extracted all the files
  (/usr/bob/span in our example) and execute SPAN: 

    ./span

  then refer to the reference manual 'manual.pdf'


  - For Windows users, two environment variables are to be set up.  After
  installing Tcl/Tk 8.3, your Tcl/Tk library must be in the Path variable of
  your system. To find its location simply search for the file tk83.dll on your
  system. Then, if it is in the directory (say):

    C:\Program Files\Tcl\bin

  and let 

    C:\SPAN

  be the directory where you extracted SPAN. Now, to set up the variables:

    * under windows XP, right-click on 'My computer', then click on the
      'Advanced' tab, click on the 'environment variables' button. Add the new
      user variables

      SPAN   and set it to   C:\SPAN
      Path   and set it to   %Path%;C:\PROGRA~1\Tcl\bin

  
      Add two new environment variables (or update, check that the directory of
      Tcl/Tk has been added to the PATH and that the SPAN variable has the
      correct value. Then, click on OK. SPAN should be ready to run.

    * under windows 2000, those variable declarations have to be added to the
      autoexec.bat file in the following way:

      set PATH= %PATH%;C:\PROGRA~1\Tcl\bin
      set SPAN= C:\SPAN


* COMPILATION INSTRUCTION:

  + Tcl/Tk 8.5 for Linux and Tcl/Tk 8.5 for MacOS. To check if your installation of
    Ocaml and Tcl/Tk works, simply search for the labltk binary on
    your system and execute it in command line window: it should start
    an Ocaml interpreter with Tcl/Tk support.  If this does not work,
    check your Ocaml installation first or recompile Ocaml from the
    sources so that Tcl/Tk is taken into account.
    Before recompiling it, make sure that Ocaml will find the Tcl/Tk libraries by using 
    the "./configure" of Ocaml.

  + Tcl/Tk 8.3 and Cygwin for WINDOWS.

  + Ocaml 4.01 or greater is necessary for compile source distribution of SPAN.

  Decompress the archive : the directory "span" is created.  Set the
  environment variables (see 'RUNNING SPAN' part). Then, in the span
  directory, compile SPAN:

  make install           

  Run the graphical interface with the command "./span". See the reference	
  manual for other details.   
   
  If things go wrong during compilation, try to perform a 'make depend', 'make
  clean' and 'make install' sequence. In the directory containing the source
  files of SPAN, typing:

   'make clean'			cleans all the *.cmi, *.cmo, *.cmx, *.mli
   				files generated by a  compilation 
   				in byte code or in native code of SPAN.
   
   'make depend' 		reinspect dependencies between files 
				(file Makefile.dep must exist 
				in the directory)

   'make doc' 			generate a caml doc
   			

-> Windows users (Cygwin is necessary). The entire source distribution can be
   compiled with any complete installation of Ocaml (from 3.09), an installation
   of Make for cygwin (version<3.81), gcc, the Tcl/Tk header files (should be
   installed when executing the self-extracting archive of tcl832.exe) and the
   compilation scripts 'Makefile' included in the source distribution. If your
   Ocaml installation is not complete you will need at least:

   - labltk ocaml library.
   - ocamldep : needed if extending the source and recompiling.
   - ocamlc : needed if compiling in byte code.
   - ocamlopt: needed if compiling in native code.
   - ocamldoc : needed if generating a caml doc.
   - Cygwin : to use the 'make' command like in a UNIX system. 
   
   You will also need to copy tcl83.lib and tk83.lib in the directory
   c:\tcl\lib  (create it if it does not exists. It should be possible
   to avoid this step using a LIB environment variable, but it does not
   work on my system). The tcl83.lib and tk83.lib can be found in the 
   subdirectory lib of your tcl installation.

   Then, compiling in a Cygwin Command Window is easy:

   In the directory where you extracted the archive, you can compile
   span using

   make install         (make installbytecode if ocamlopt not installed)

-----------------------------------------------------------------------

Bug Report: Please report comments, improvements and bugs to
Thomas.Genet@irisa.fr 

Many thanks to all the users of SPAN for reporting bugs or asking for
new features. That is what makes the tool still alive and improving.

-----------------------------------------------------------------------



