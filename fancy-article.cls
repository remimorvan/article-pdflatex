\NeedsTeXFormat{LaTeX2e}
\RequirePackage{etoolbox}
\ProvidesClass{fancy-article}[30/03/2022]


\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass[a4paper,10pt]{article}


% ----------------
% ---- Colors ----
% ----------------

% https://coolors.co/001219-005f73-0a9396-94d2bd-e9d8a6-ee9b00-ca6702-bb3e03-ae2012-9b2226

\RequirePackage{xcolor}

\definecolor{Rich Black}{HTML}{001219}
\definecolor{Blue Sapphire}{HTML}{005f73}
\definecolor{Viridian Green}{HTML}{0a9396}
\definecolor{Middle Blue Green}{HTML}{94d2bd}
\definecolor{Medium Champagne}{HTML}{e9d8a6}
\definecolor{Gamboge}{HTML}{ee9b00}
\definecolor{Alloy Orange}{HTML}{ca6702}
\definecolor{Mahogany}{HTML}{bb3e03}
\definecolor{Rufous}{HTML}{ae2012}
\definecolor{Ruby Red}{HTML}{9b2226}

\definecolor{Dark Ruby Red}{HTML}{7c1b1e}
\definecolor{Dark Blue Sapphire}{HTML}{004c5c}
\definecolor{Dark Gamboge}{HTML}{be7c00}



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
  left=3.5cm,
  right=3.5cm,
  bottom=2.5cm,
  top=2.5cm,
  footskip=1cm
}
\pagestyle{fancy}
\fancyhf{}
\fancyfoot[C]{\thepage}


% -----------------
% Title \& sections
% -----------------


\RequirePackage{titling}

\RequirePackage[noblocks]{authblk}
\renewcommand\Authfont{\normalsize\normalfont}
\renewcommand\Affilfont{\small\scshape}

\pretitle{\begin{center}\Large\scshape}
\posttitle{\par\end{center}}

\preauthor{\begin{center}%
\normalsize%
\begin{tabular}[t]{c}}
\postauthor{\end{tabular}\par\end{center}}

\predate{\begin{center}\small}
\postdate{\par\end{center}}
\setlength{\droptitle}{-1cm}


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


\RequirePackage{amsthm}

% \newtheoremstyle{fancystyle}
%   {}               %space above
%   {}               %space below
%   {}                      %bodyfont
%   {0pt}                      %indent
%   {\bfseries}             %headfont
%   {.}                      %punctuation
%   {.5em}                 %space after head
%   {\thmname{#1}\thmnumber{ #2}\thmnote{: #3}}
% \theoremstyle{fancystyle}


\RequirePackage[british]{babel}
\RequirePackage{hyperref}
\RequirePackage{cleveref}


\RequirePackage{thmtools, thm-restate}

\declaretheorem[name=Theorem, numberwithin=section]{theorem}
  \Crefname{theorem}{Theorem}{Theorems}
\declaretheorem[name=Proposition, sibling=theorem]{proposition}
  \Crefname{proposition}{Proposition}{Propositions}
\declaretheorem[name=Property, sibling=theorem]{property}
  \Crefname{property}{Property}{Properties}
\declaretheorem[name=Definition, sibling=theorem]{definition}
  \Crefname{definition}{Definition}{Definitions}
\declaretheorem[name=Corollary, sibling=theorem]{corollary}
  \Crefname{corollary}{Corollary}{Corollaries}
\declaretheorem[name=Conjecture, sibling=theorem]{conjecture}
  \Crefname{conjecture}{Conjecture}{Conjectures}
\declaretheorem[name=Lemma, sibling=theorem]{lemma}
  \Crefname{lemma}{Lemma}{Lemmata}
\declaretheorem[name=Example, sibling=theorem]{example}
  \Crefname{example}{Example}{Examples}
\declaretheorem[name=Remark, sibling=theorem]{remark}
  \Crefname{remark}{Remark}{Remarks}
\declaretheorem[name=Fact, sibling=theorem]{fact}
  \Crefname{fact}{Fact}{Facts}
\declaretheorem[name=Observation, sibling=theorem]{observation}
  \Crefname{observation}{Observation}{Observations}
\declaretheorem[name=Question, sibling=theorem]{question}
  \Crefname{question}{Question}{Questions}
\declaretheorem[name=Claim, sibling=theorem]{claim}
  \Crefname{claim}{Claim}{Claims}
\declaretheorem[name=Subclaim, sibling=theorem]{subclaim}
  \Crefname{subclaim}{Subclaim}{Subclaims}



% ---------------
% ---- Fonts ----
% ---------------

\RequirePackage[T1]{fontenc}

\RequirePackage[sc, osf]{mathpazo}
\RequirePackage[euler-digits, small]{eulervm}
\AtBeginDocument{
  \DeclareSymbolFont{AMSb}{U}{msb}{m}{n}
  \DeclareSymbolFontAlphabet{\mathbb}{AMSb}
}

\linespread{1.08}
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