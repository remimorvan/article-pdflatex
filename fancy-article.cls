\NeedsTeXFormat{LaTeX2e}
\RequirePackage{etoolbox}
\ProvidesClass{fancy-article}[06/07/2023]


\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass[a4,10pt]{article}

% ---------------------------
% Margins and header / footer
% ---------------------------


\RequirePackage{geometry}
\RequirePackage{fancyhdr}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}

\fancypagestyle{plain}{%
  \fancyhead{}
  \fancyfoot{}
}

\geometry{
  left=3.8cm,
  right=3.8cm,
  bottom=3.8cm,
  top=3.8cm,
  footskip=1.75cm
}
\pagestyle{fancy}
\fancyhf{}
\fancyfoot[C]{\thepage}

% Footnotes

\usepackage[hang,flushmargin]{footmisc}
\setlength{\footnotemargin}{.7em}

% -----------------
% Title \& sections
% -----------------


\RequirePackage{titling}

\RequirePackage[noblocks]{authblk}
\renewcommand\Authfont{\normalsize\normalfont}
\renewcommand\Affilfont{\small\scshape}
\setlength{\affilsep}{.2em}

\pretitle{\begin{center}\Large\scshape}
\posttitle{\par\end{center}}

\preauthor{\begin{center}%
\normalsize%
\begin{tabular}[t]{c}}
\postauthor{\end{tabular}\par\end{center}}

\predate{\begin{center}\small}
\postdate{\par\end{center}\vspace{1em}}
\setlength{\droptitle}{-60pt}


\RequirePackage{titlesec}
\titleformat{\section}
  {\normalfont\large\scshape\centering}{\thesection.}{1em}{}
\titleformat{\subsection}
  {\normalfont\normalsize\scshape\centering}{\thesubsection.}{1em}{}

\titlespacing*{\section}{0pt}{*4}{*3}
\titlespacing*{\subsection}{0pt}{*4}{*3}

\RequirePackage{abstract}
\renewcommand{\abstractnamefont}{\normalfont\normalsize\scshape\centering}

% Figures and tables

\RequirePackage{caption}
\captionsetup{labelfont=sc, textfont=it}

\usepackage{chngcntr}
\counterwithin{table}{section}
\counterwithin{figure}{section}

% Math

\RequirePackage{amsmath}
\RequirePackage{amssymb}

\RequirePackage{stmaryrd}
\newrobustcmd{\lBrack}{\llbracket}
\newrobustcmd{\rBrack}{\rrbracket}
\renewrobustcmd{\emptyset}{\varnothing}


% ----------------
% Babel & Theorems
% ----------------


% \RequirePackage{amsthm}

% \newtheoremstyle{fancystyle}
%   {}               %space above
%   {}               %space below
%   {\itshape}                      %bodyfont
%   {0pt}                      %indent
%   {\bfseries}             %headfont
%   {.}                      %punctuation
%   {.5em}                 %space after head
%   {\thmname{#1}\thmnumber{ #2}\thmnote{: #3}}
% \theoremstyle{fancystyle}


\RequirePackage[british]{babel}
\RequirePackage{hyperref}
\RequirePackage{cleveref}

\usepackage{amsthm, thmtools, thm-restate}

\declaretheoremstyle[bodyfont=\normalfont]{noitalics}
\declaretheorem[name=Theorem, refname={theorem,theorems}, numberwithin=section, style=noitalics]{theorem}
\declaretheorem[name=Proposition, refname={proposition,propositions}, sibling=theorem, style=noitalics]{proposition}
\declaretheorem[name=Property, refname={property,propertys}, sibling=theorem, style=noitalics]{property}
\declaretheorem[name=Definition, refname={definition,definitions}, sibling=theorem, style=noitalics]{definition}
\declaretheorem[name=Corollary, refname={corollary,corollaries}, sibling=theorem, style=noitalics]{corollary}
\declaretheorem[name=Conjecture, refname={conjecture,conjectures}, sibling=theorem, style=noitalics]{conjecture}
\declaretheorem[name=Question, refname={question,questions}, sibling=theorem, style=noitalics]{question}
\declaretheorem[name=Lemma, refname={lemma,lemmata}, sibling=theorem, style=noitalics]{lemma}
\declaretheorem[name=Example, refname={example,examples}, sibling=theorem, style=noitalics]{example}
\declaretheorem[name=Remark, refname={remark,remarks}, sibling=theorem, style=noitalics]{remark}
\declaretheorem[name=Fact, refname={fact,facts}, sibling=theorem, style=noitalics]{fact}
\declaretheorem[name=Claim, refname={claim,claims}, sibling=theorem, style=noitalics]{claim}

% ---------------
% ---- Fonts ----
% ---------------

\RequirePackage[T1]{fontenc}

\RequirePackage[sc, osf]{mathpazo}
% \RequirePackage[euler-digits, small]{eulervm}
\AtBeginDocument{
  \DeclareSymbolFont{AMSb}{U}{msb}{m}{n}
  \DeclareSymbolFontAlphabet{\mathbb}{AMSb}
}

\linespread{1.12}
\RequirePackage[indent=1em]{parskip}

% -------------
% --- Other ---
% -------------

\RequirePackage{enumitem}
\setlist{noitemsep,nosep}
\setlist[itemize]{label={\raisebox{0.25ex}{\tiny$\bullet$}}}

\RequirePackage{adforn}

\newcommand{\newcase}[1]{%
  \addvspace{\baselineskip}\par\adfsmallleafright\; \textbf{#1}%
}
\newcommand{\newsubcase}[1]{%
  \addvspace{\baselineskip}\par\adfsmallleafright\adfsmallleafright\; \emph{#1}%
}
\newcommand{\comment}[1]{%
  \textcolor{Viridian Green}{#1}%
}
\newcommand{\alert}[1]{%
  \textcolor{Ruby Red}{#1}%
}

\RequirePackage{graphicx}
\RequirePackage{multirow}
\RequirePackage{booktabs}

\renewcommand{\S}{\adfS}