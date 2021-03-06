(* ::Package:: *)

(* ::Title:: *)
(*Load Rubi*)


(* ::Subsection:: *)
(*Global variables:*)
(*  RulesDirectory - root directory of Rubi's integration rules*)
(*  ShowSteps - if True, rules are modified so integration steps can be displayed*)


LoadRules[filename_String] :=
  Module[{object},
  object=PrintTemporary["Loading "<>filename<>".m..."];
  Get[RulesDirectory<>filename<>".m"];
  NotebookDelete[object];
  Null]


Clear[Int];
Int::usage="Int [expn, var]";


LoadRules["ShowStep routines"];
LoadRules["Integration utility functions"];


LoadRules["9.1 Integrand simplification rules"];
LoadRules["1.1 Linear products"];
LoadRules["1.2 Quadratic products"];
LoadRules["1.3 Binomial products"];
LoadRules["1.4 Trinomial products"];
LoadRules["1.5 Miscellaneous algebraic functions"];


LoadRules["9.3 Piecewise linear functions"];
LoadRules["2 Exponentials"];
LoadRules["3 Logarithms"];
LoadRules["4.1 Sine"];
LoadRules["4.2 Tangent"];
LoadRules["4.3 Secant"];
LoadRules["4.4 Miscellaneous trig functions"];
LoadRules["5 Inverse trig functions"];
LoadRules["6 Hyperbolic functions"];
LoadRules["7 Inverse hyperbolic functions"];
LoadRules["8 Special functions"];
LoadRules["9.2 Derivative integration rules"];
LoadRules["9.4 Miscellaneous integration rules"];


FixIntRules[];


If[ShowSteps, StepFunction[Int]];


Unprotect[Sinc];
Sinc[u_] := Sin[u]/u;
Protect[Sinc];
