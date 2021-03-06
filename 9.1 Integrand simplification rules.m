(* ::Package:: *)

(************************************************************************)
(* This file was generated automatically by the Mathematica front end.  *)
(* It contains Initialization cells from a Notebook file, which         *)
(* typically will have the same name as this file except ending in      *)
(* ".nb" instead of ".m".                                               *)
(*                                                                      *)
(* This file is intended to be loaded into the Mathematica kernel using *)
(* the package loading commands Get or Needs.  Doing so is equivalent   *)
(* to using the Evaluate Initialization Cells menu command in the front *)
(* end.                                                                 *)
(*                                                                      *)
(* DO NOT EDIT THIS FILE.  This entire file is regenerated              *)
(* automatically each time the parent Notebook file is saved in the     *)
(* Mathematica front end.  Any changes you make to this file will be    *)
(* overwritten.                                                         *)
(************************************************************************)



(* ::Code:: *)
(* Int[u_.*(v_+w_)^p_.,x_Symbol] :=
  Int[u*w^p,x] /;
FreeQ[p,x] && ZeroQ[v] *)


(* ::Code:: *)
Int[u_.*(a_+b_.*x_^n_.)^p_.,x_Symbol] :=
  Int[u*(b*x^n)^p,x] /;
FreeQ[{a,b,n,p},x] && ZeroQ[a]


(* ::Code:: *)
Int[u_.*(a_.+b_.*x_^n_.)^p_.,x_Symbol] :=
  Int[u*a^p,x] /;
FreeQ[{a,b,n,p},x] && ZeroQ[b]


(* ::Code:: *)
Int[u_.*(a_+b_.*x_^n_.+c_.*x_^j_.)^p_.,x_Symbol] :=
  Int[u*(b*x^n+c*x^(2*n))^p,x] /;
FreeQ[{a,b,c,n,p},x] && ZeroQ[j-2*n] && ZeroQ[a]


(* ::Code:: *)
Int[u_.*(a_.+b_.*x_^n_.+c_.*x_^j_.)^p_.,x_Symbol] :=
  Int[u*(a+c*x^(2*n))^p,x] /;
FreeQ[{a,b,c,n,p},x] && ZeroQ[j-2*n] && ZeroQ[b]


(* ::Code:: *)
Int[u_.*(a_.+b_.*x_^n_.+c_.*x_^j_.)^p_.,x_Symbol] :=
  Int[u*(a+b*x^n)^p,x] /;
FreeQ[{a,b,c,n,p},x] && ZeroQ[j-2*n] && ZeroQ[c]


(* ::Code:: *)
Int[u_.*(a_.*v_+b_.*v_+w_.)^p_.,x_Symbol] :=
  Int[u*((a+b)*v+w)^p,x] /;
FreeQ[{a,b},x] && Not[FreeQ[v,x]]


(* ::Code:: *)
Int[u_.*Pm_^p_,x_Symbol] :=
  Int[u*Pm^Simplify[p],x] /;
PolyQ[Pm,x] && Not[RationalQ[p]] && FreeQ[p,x] && RationalQ[Simplify[p]]


(* ::Code:: *)
Int[a_,x_Symbol] :=
   a*x /;
FreeQ[a,x]


(* ::Code:: *)
Int[a_*(b_+c_.*x_),x_Symbol] :=
  a*(b+c*x)^2/(2*c) /;
FreeQ[{a,b,c},x]


(* ::Code:: *)
Int[-u_,x_Symbol] :=
  Identity[-1]*Int[u,x]


(* ::Code:: *)
Int[Complex[0,a_]*u_,x_Symbol] :=
  Complex[Identity[0],a]*Int[u,x] /;
FreeQ[a,x] && EqQ[a^2,1]


(* ::Code:: *)
Int[a_*u_,x_Symbol] :=
  a*Int[u,x] /;
FreeQ[a,x] && Not[MatchQ[u, b_*v_ /; FreeQ[b,x]]]


(* ::Code:: *)
If[ShowSteps,

Int[u_,x_Symbol] :=
  ShowStep["","Int[a*u + b*v + \[CenterEllipsis],x]","a*Integrate[u,x] + b*Integrate[v,x] + \[CenterEllipsis]",Hold[
  IntSum[u,x]]] /;
SimplifyFlag && SumQ[u],

Int[u_,x_Symbol] :=
  IntSum[u,x] /;
SumQ[u]]


(* ::Code:: *)
Int[(c_.*x_)^m_.*u_,x_Symbol] :=
  Int[ExpandIntegrand[(c*x)^m*u,x],x] /;
FreeQ[{c,m},x] && SumQ[u] && Not[MatchQ[u,a_+b_.*v_ /; FreeQ[{a,b},x] && InverseFunctionQ[v]]]


(* ::Code:: *)
Int[u_.*v_^m_.*(b_*v_)^n_,x_Symbol] :=
  1/b^m*Int[u*(b*v)^(m+n),x] /;
FreeQ[{b,n},x] && IntegerQ[m]


(* ::Code:: *)
Int[u_.*(a_.*v_)^m_*(b_.*v_)^n_,x_Symbol] :=
  a^(m+1/2)*b^(n-1/2)*Sqrt[b*v]/Sqrt[a*v]*Int[u*v^(m+n),x] /;
FreeQ[{a,b,m},x] && Not[IntegerQ[m]] && PositiveIntegerQ[n+1/2] && IntegerQ[m+n]


(* ::Code:: *)
(* Int[u_.*(a_.*v_)^m_*(b_.*v_)^n_,x_Symbol] :=
  b^(n-1/2)*Sqrt[b*v]/(a^(n-1/2)*Sqrt[a*v])*Int[u*(a*v)^(m+n),x] /;
FreeQ[{a,b,m},x] && Not[IntegerQ[m]] && PositiveIntegerQ[n+1/2] && Not[IntegerQ[m+n]] *)


(* ::Code:: *)
Int[u_.*(a_.*v_)^m_*(b_.*v_)^n_,x_Symbol] :=
  a^(m-1/2)*b^(n+1/2)*Sqrt[a*v]/Sqrt[b*v]*Int[u*v^(m+n),x] /;
FreeQ[{a,b,m},x] && Not[IntegerQ[m]] && NegativeIntegerQ[n-1/2] && IntegerQ[m+n]


(* ::Code:: *)
(* Int[u_.*(a_.*v_)^m_*(b_.*v_)^n_,x_Symbol] :=
  b^(n+1/2)*Sqrt[a*v]/(a^(n+1/2)*Sqrt[b*v])*Int[u*(a*v)^(m+n),x] /;
FreeQ[{a,b,m},x] && Not[IntegerQ[m]] && NegativeIntegerQ[n-1/2] && Not[IntegerQ[m+n]] *)


(* ::Code:: *)
Int[u_.*(a_.*v_)^m_*(b_.*v_)^n_,x_Symbol] :=
  a^(m+n)*(b*v)^n/(a*v)^n*Int[u*v^(m+n),x] /;
FreeQ[{a,b,m,n},x] && Not[IntegerQ[m]] && Not[IntegerQ[n]] && IntegerQ[m+n]


(* ::Code:: *)
Int[u_.*(a_.*v_)^m_*(b_.*v_)^n_,x_Symbol] :=
  b^IntPart[n]*(b*v)^FracPart[n]/(a^IntPart[n]*(a*v)^FracPart[n])*Int[u*(a*v)^(m+n),x] /;
FreeQ[{a,b,m,n},x] && Not[IntegerQ[m]] && Not[IntegerQ[n]] && Not[IntegerQ[m+n]]


(* ::Code:: *)
Int[u_.*(a_+b_.*v_)^m_.*(c_+d_.*v_)^n_.,x_Symbol] :=
  (b/d)^m*Int[u*(c+d*v)^(m+n),x] /;
FreeQ[{a,b,c,d,n},x] && ZeroQ[b*c-a*d] && IntegerQ[m] && (Not[IntegerQ[n]] || SimplerQ[c+d*x,a+b*x])


(* ::Code:: *)
Int[u_.*(a_+b_.*v_)^m_*(c_+d_.*v_)^n_,x_Symbol] :=
  (b/d)^m*Int[u*(c+d*v)^(m+n),x] /;
FreeQ[{a,b,c,d,m,n},x] && ZeroQ[b*c-a*d] && PositiveQ[b/d] && Not[IntegerQ[m] || IntegerQ[n]]


(* ::Code:: *)
Int[u_.*(a_+b_.*v_)^m_*(c_+d_.*v_)^n_,x_Symbol] :=
  (a+b*v)^m/(c+d*v)^m*Int[u*(c+d*v)^(m+n),x] /;
FreeQ[{a,b,c,d,m,n},x] && ZeroQ[b*c-a*d] && Not[IntegerQ[m] || IntegerQ[n] || PositiveQ[b/d]]


(* ::Code:: *)
(* Int[u_.*(a_+b_.*v_)^m_.*(c_+d_.*v_)^m_.,x_Symbol] :=
  Int[u*(a*c+b*d*v^2)^m,x] /;
FreeQ[{a,b,c,d,m},x] && ZeroQ[b*c+a*d] && (IntegerQ[m] || PositiveQ[a] && PositiveQ[c]) && 
  (Not[AlgebraicFunctionQ[u,x]] || Not[MatchQ[v,e_.*x^n_. /; FreeQ[{e,n},x]]]) *)


(* ::Code:: *)
(* Int[u_.*(a_+b_.*v_)^m_*(c_+d_.*v_)^m_,x_Symbol] :=
  (a+b*v)^FracPart[m]*(c+d*v)^FracPart[m]/(a*c+b*d*v^2)^FracPart[m]*Int[u*(a*c+b*d*v^2)^m,x] /;
FreeQ[{a,b,c,d,m},x] && ZeroQ[b*c+a*d] && Not[IntegerQ[m]] && 
  (Not[AlgebraicFunctionQ[u,x]] || Not[MatchQ[v,e_.*x^n_. /; FreeQ[{e,n},x]]]) *)


(* ::Code:: *)
Int[u_.*(a_.*v_)^m_*(b_.*v_+c_.*v_^2),x_Symbol] :=
  1/a*Int[u*(a*v)^(m+1)*(b+c*v),x] /;
FreeQ[{a,b,c},x] && RationalQ[m] && m<=-1


(* ::Code:: *)
Int[u_.*(a_+b_.*v_)^m_*(A_.+B_.*v_+C_.*v_^2),x_Symbol] :=
  1/b^2*Int[u*(a+b*v)^(m+1)*Simp[b*B-a*C+b*C*v,x],x] /;
FreeQ[{a,b,A,B,C},x] && ZeroQ[A*b^2-a*b*B+a^2*C] && RationalQ[m] && m<=-1


(* ::Code:: *)
Int[u_.*(a_+b_.*x_^n_.)^m_.*(c_+d_.*x_^q_.)^p_.,x_Symbol] :=
  (d/a)^p*Int[u*(a+b*x^n)^(m+p)/x^(n*p),x] /;
FreeQ[{a,b,c,d,m,n},x] && ZeroQ[n+q] && IntegerQ[p] && ZeroQ[a*c-b*d] && Not[IntegerQ[m] && NegQ[n]]


(* ::Code:: *)
Int[u_.*(a_+b_.*x_^n_.)^m_.*(c_+d_.*x_^j_)^p_.,x_Symbol] :=
  (-b^2/d)^m*Int[u*(a-b*x^n)^(-m),x] /;
FreeQ[{a,b,c,d,m,n,p},x] && ZeroQ[j-2*n] && ZeroQ[m+p] && ZeroQ[b^2*c+a^2*d] && PositiveQ[a] && NegativeQ[d]


(* ::Code:: *)
Int[u_.*(a_+b_.*x_+c_.*x_^2)^p_.,x_Symbol] :=
  Int[u*Cancel[(b/2+c*x)^(2*p)/c^p],x] /;
FreeQ[{a,b,c},x] && ZeroQ[b^2-4*a*c] && IntegerQ[p]


(* ::Code:: *)
Int[u_.*(a_+b_.*x_^n_+c_.*x_^n2_.)^p_.,x_Symbol] :=
  1/c^p*Int[u*(b/2+c*x^n)^(2*p),x] /;
FreeQ[{a,b,c,n},x] && ZeroQ[n2-2*n] && ZeroQ[b^2-4*a*c] && IntegerQ[p]


(* ::Code:: *)
Int[(d_+e_.*x_)*(a_.+b_.*x_+c_.*x_^2)^p_.,x_Symbol] :=
  d/b*Subst[Int[x^p,x],x,a+b*x+c*x^2] /;
FreeQ[{a,b,c,d,e,p},x] && ZeroQ[2*c*d-b*e]


(* ::Code:: *)
Int[u_.*(a_.*x_^p_.+b_.*x_^q_.)^m_.,x_Symbol] :=
  Int[u*x^(m*p)*(a+b*x^(q-p))^m,x] /;
FreeQ[{a,b,p,q},x] && IntegerQ[m] && PosQ[q-p]


(* ::Code:: *)
Int[u_.*(a_.*x_^p_.+b_.*x_^q_.+c_.*x_^r_.)^m_.,x_Symbol] :=
  Int[u*x^(m*p)*(a+b*x^(q-p)+c*x^(r-p))^m,x] /;
FreeQ[{a,b,c,p,q,r},x] && IntegerQ[m] && PosQ[q-p] && PosQ[r-p]


(* ::Code:: *)
Int[x_^m_./(a_+b_.*x_^n_),x_Symbol] :=
  Log[RemoveContent[a+b*x^n,x]]/(b*n) /;
FreeQ[{a,b,m,n},x] && ZeroQ[m-n+1]


(* ::Code:: *)
Int[x_^m_.*(a_+b_.*x_^n_)^p_,x_Symbol] :=
  (a+b*x^n)^(p+1)/(b*n*(p+1)) /;
FreeQ[{a,b,m,n,p},x] && ZeroQ[m-n+1] && NonzeroQ[p+1]


(* ::Code:: *)
Int[x_^m_.*(a1_+b1_.*x_^n_.)^p_*(a2_+b2_.*x_^n_.)^p_,x_Symbol] :=
  (a1+b1*x^n)^(p+1)*(a2+b2*x^n)^(p+1)/(2*b1*b2*n*(p+1)) /;
FreeQ[{a1,b1,a2,b2,m,n,p},x] && ZeroQ[a2*b1+a1*b2] && ZeroQ[m-2*n+1] && NonzeroQ[p+1]


(* ::Code:: *)
Int[(a_.+b_.*Pm_^n_.)^p_.*Qm_,x_Symbol] :=
  Module[{m=Expon[Pm,x]},
  Coeff[Qm,x,m-1]/(m*Coeff[Pm,x,m])*Subst[Int[(a+b*x^n)^p,x],x,Pm] /;
 Expon[Qm,x]==m-1 && ZeroQ[Coeff[Qm,x,m-1]*D[Pm,x]-m*Coeff[Pm,x,m]*Qm]] /;
FreeQ[{a,b,n,p},x] && PolyQ[Pm,x] && PolyQ[Qm,x]


(* ::Code:: *)
Int[(a_.+b_.*Pm_^n_.+c_.*Pm_^n2_.)^p_.*Qm_,x_Symbol] :=
  Module[{m=Expon[Pm,x]},
  Coeff[Qm,x,m-1]/(m*Coeff[Pm,x,m])*Subst[Int[(a+b*x^n+c*x^(2*n))^p,x],x,Pm] /;
 Expon[Qm,x]==m-1 && ZeroQ[Coeff[Qm,x,m-1]*D[Pm,x]-m*Coeff[Pm,x,m]*Qm]] /;
FreeQ[{a,b,c,n,p},x] && ZeroQ[n2-2*n] && PolyQ[Pm,x] && PolyQ[Qm,x]


(* ::Code:: *)
Int[u_.*Pq_^m_*Qr_^p_,x_Symbol] :=
  Module[{gcd=PolyGCD[Pq,Qr,x]},
  Int[u*gcd^(m+p)*PolynomialQuotient[Pq,gcd,x]^m*PolynomialQuotient[Qr,gcd,x]^p,x] /;
 NonzeroQ[gcd-1]] /;
PositiveIntegerQ[m] && NegativeIntegerQ[p] && PolyQ[Pq,x] && PolyQ[Qr,x]


(* ::Code:: *)
Int[u_.*Pq_*Qr_^p_,x_Symbol] :=
  Module[{gcd=PolyGCD[Pq,Qr,x]},
  Int[u*gcd^(p+1)*PolynomialQuotient[Pq,gcd,x]*PolynomialQuotient[Qr,gcd,x]^p,x] /;
 NonzeroQ[gcd-1]] /;
NegativeIntegerQ[p] && PolyQ[Pq,x] && PolyQ[Qr,x]



