% This LaTeX class is adapted from a template for lecture notes for CS267,
% Applications of Parallel Computing, UC Berkeley EECS Department.
\ProvidesClass{lec}[2022-11-28 v3.3 Lecture Notes]
\NeedsTeXFormat{LaTeX2e}

\DeclareOption*{\InputIfFileExists{\CurrentOption.min}{}{%
		\PassOptionsToClass{\CurrentOption}{article}}}
\ProcessOptions \relax
\LoadClass{article}

\setlength{\oddsidemargin}{0.25 in}
\setlength{\evensidemargin}{-0.25 in}
\setlength{\topmargin}{-0.6 in}
\setlength{\textwidth}{6.5 in}
\setlength{\textheight}{8.5 in}
\setlength{\headsep}{0.75 in}
\setlength{\parindent}{0 in}
\setlength{\parskip}{0.1 in}

\RequirePackage{lipsum}
\RequirePackage{fancyvrb}
\RequirePackage{fancyhdr}
\RequirePackage{custom}
\RequirePackage{ifthen}
\RequirePackage{newpxtext} % better font i think
% to do: separate content dependencies (in 'custom') from format dependencies (here)

\newcounter{lecnum}
\newcounter{labnum}
\newcounter{disnum}
\newcounter{fignum}[lecnum]
\newboolean{done}
\setboolean{done}{true}

\def\@course{None}
\newcommand{\setcourse}[1]{\def\@course{#1}}
\newcommand{\show@course}{\@course}

\def\@lecturer{None}
\newcommand{\setlecturer}[1]{\def\@lecturer{#1}}
\newcommand{\show@lecturer}{\@lecturer}

\def\@labTA{None}
\newcommand{\setlabTA}[1]{\def\@labTA{#1}}
\newcommand{\show@labTA}{\@labTA}

\def\@GSI{None}
\newcommand{\setGSI}[1]{\def\@GSI{#1}}
\newcommand{\show@GSI}{\@GSI}

\def\@semester{None}
\newcommand{\setsemester}[1]{\def\@semester{#1}}
\newcommand{\show@semester}{\@semester}

\def\@inst{None}
\newcommand{\setinst}[1]{\def\@inst{#1}}
\newcommand{\show@inst}{\@inst}

\setcounter{lecnum}{0}
\setcounter{labnum}{0}
\setcounter{disnum}{0}

%\makeatletter \let\l@section\l@subsection \makeatother
%\makeatletter \let\l@subsection\l@subsubsection \makeatother
\renewcommand*\l@section{\@dottedtocline{1}{1.5em}{3.0em}}
\setcounter{tocdepth}{1}
\title{Notes for \@course\\ \@inst, \@semester}
\author{Aditya Sengupta}

\newcommand{\lecheader}[6]{
	\pagestyle{myheadings}
	\thispagestyle{plain}
	\newpage
	\setcounter{section}{0}
	\setcounter{example}{0}
	\noindent
	\begin{center}
		\framebox{
			\vbox{\vspace{2mm}
				\hbox to 6.28in { {\bf \show@course
						\hfill \show@semester} }
				\vspace{4mm}
				\hbox to 6.28in { {\Large \hfill #4 #3: #2  \hfill} }
				\vspace{2mm}
				\hbox to 6.28in { {\it #5: #6 \hfill #1 \hfill Aditya Sengupta} }
				\vspace{2mm}}
		}
	\end{center}
	\markboth{#4 #3: #2}{#4 #3: #2}
	\setcounter{equation}{0}
	\setcounter{definition}{0}
	\renewcommand{\thepage}{\arabic{page}}
	\renewcommand{\thesection}{#3.\arabic{section}}
	\renewcommand{\theequation}{#3.\arabic{equation}}
	\renewcommand{\thefigure}{#3.\arabic{figure}}
	\renewcommand{\thetable}{#3.\arabic{table}}
	\renewcommand{\thetheorem}{#3.\arabic{theorem}}
	\renewcommand{\thedefinition}{#3.\arabic{definition}}
	\rhead{#4 \thepage}

	\ifnum#3=1
		{\bf Note}: {\it \LaTeX \ format adapted from template for lecture notes from CS 267, Applications of Parallel Computing, UC Berkeley EECS department.}
	\fi
}

\newcommand{\lecture}[3]{
	%\stepcounter{lecnum}
	\lecheader{#2}{#3}{#1}{Lecture}{Lecturer}{\show@lecturer}
	\addcontentsline{toc}{section}{\protect\textbf{Lecture #1: #3}}
	\setcounter{lecnum}{#1}
}

\newcommand{\lab}[3]{
	%\stepcounter{labnum}
	\lecheader{#2}{#3}{#1}{Lab}{Lab Instructor}{\show@labTA}
}

\newcommand{\discussion}[3]{
	%\stepcounter{labnum}
	\lecheader{#2}{#3}{#1}{Discussion}{GSI}{\show@GSI}
}

\newcommand{\skiplab}{
	\stepcounter{labnum}
}

\newcommand{\skiplec}{
	\stepcounter{lecnum}
}

\renewcommand{\cite}[1]{[#1]}
\makeatletter
\renewcommand*\env@matrix[1][*\c@MaxMatrixCols c]{%
	\hskip -\arraycolsep
	\let\@ifnextchar\new@ifnextchar
	\array{#1}}
\makeatother
\def\beginrefs{\begin{list}%
		{[\arabic{equation}]}{\usecounter{equation}
			\setlength{\leftmargin}{2.0truecm}\setlength{\labelsep}{0.4truecm}%
			\setlength{\labelwidth}{1.6truecm}}}
	\def\endrefs{\end{list}}
\def\bibentry#1{\item[\hbox{[#1]}]}

\newtheorem{theorem}{Theorem}[lecnum]
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem{claim}[theorem]{Claim}
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{remark}[theorem]{Remark}
\newtheorem{exercise}[theorem]{Exercise}

% importing the example envt from https://hbfs.wordpress.com/2015/03/17/a-simple-latex-example-environment/

\RequirePackage{calc}
\RequirePackage{tabto}
\RequirePackage{tikz}
\RequirePackage[framemethod=tikz]{mdframed} % for colored backgrounds
\newcommand{\halmos}{$\square$} % makes a box at the end

\newlength{\framedinnerleftmargin}
\newlength{\framedinnertopmargin}
\newlength{\framedreversedinnerleftmargin}
\setlength{\framedinnerleftmargin}{\widthof{Theorem 10.10.10}+2em}
\setlength{\framedreversedinnerleftmargin}{\widthof{Theorem 10.10.10}+1em}
\setlength{\framedinnertopmargin}{1em}

% first argument: label in upper left corner,
% second argument: background color
\newenvironment{boxedtext}[2]{\begin{mdframed}[%
hidealllines=true,%
backgroundcolor=#2,%
innertopmargin=\framedinnertopmargin,%
innerleftmargin=\framedinnerleftmargin,%
innerrightmargin=1em%
]%
\tabto{-\framedreversedinnerleftmargin}\textbf{#1}\tabto*{0em}%
}% begin code
{\hskip 0pt\\\hspace*{\fill}\halmos{}\end{mdframed}\vspace{1em}} % end code

\newenvironment{summary}[0]{\begin{center}\begin{minipage}[c]{\summarywidth}\begin{spacing}{0.9}\footnotesize} % begin code
{\end{spacing}\end{minipage}\end{center}} % end code

\newcounter{example}

\newenvironment{example}[0]
{\refstepcounter{example}\vspace{1em plus 1em}\begin{boxedtext}{Example \thelecnum.\theexample.}{blue!7}}%\setlength{\parskip}{0em}}
{\end{boxedtext}\vspace{-1em plus 1em}}
