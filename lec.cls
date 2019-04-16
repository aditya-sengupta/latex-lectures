% This LaTeX class is adapted from a template for lecture notes for CS267,
% Applications of Parallel Computing, UC Berkeley EECS Department.
\ProvidesClass{lec}[2019-04-16 v2.2 Lecture Notes]
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
\RequirePackage{url}
\RequirePackage{custom}
% to do: separate content dependencies (in 'custom') from format dependencies (here)

\newcounter{lecnum}
\newcounter{labnum}
\newcounter{fignum}[lecnum]


\def\@course{None}
\newcommand{\setcourse}[1]{\def\@course{#1}}
\newcommand{\show@course}{\@course}

\def\@lecturer{None}
\newcommand{\setlecturer}[1]{\def\@lecturer{#1}}
\newcommand{\show@lecturer}{\@lecturer}

\def\@labTA{None}
\newcommand{\setlabTA}[1]{\def\@labTA{#1}}
\newcommand{\show@labTA}{\@labTA}

\def\@semester{None}
\newcommand{\setsemester}[1]{\def\@semester{#1}}
\newcommand{\show@semester}{\@semester}

\setcounter{lecnum}{0}
\setcounter{labnum}{0}

%\makeatletter \let\l@section\l@subsection \makeatother
%\makeatletter \let\l@subsection\l@subsubsection \makeatother
\renewcommand*\l@section{\@dottedtocline{1}{1.5em}{3.0em}}
\setcounter{tocdepth}{1}
\title{Notes for \@course, UC Berkeley \@semester}
\author{Aditya Sengupta}

\newcommand{\lecheader}[6]{
	\pagestyle{myheadings}
	\thispagestyle{plain}
	\newpage
	\setcounter{section}{0}
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
	\markboth{#4 #3: #1}{#4 #3: #1}
	\setcounter{equation}{0}
	\renewcommand{\thepage}{\arabic{page}}
	\renewcommand{\thesection}{#3.\arabic{section}}
	\renewcommand{\theequation}{#3.\arabic{equation}}
	\renewcommand{\thefigure}{#3.\arabic{figure}}
	\renewcommand{\thetable}{#3.\arabic{table}}
	\rhead{#4 \thepage}

	\ifnum#3=1
		{\bf Note}: {\it \LaTeX \ format adapted from template courtesy of UC Berkeley EECS dept.}
	\fi
}

\newcommand{\lecture}[2]{
	\stepcounter{lecnum}
	\lecheader{#1}{#2}{\thelecnum}{Lecture}{Lecturer}{\show@lecturer}
	\addcontentsline{toc}{section}{\protect\textbf{Lecture \thelecnum: #2}}
}

\newcommand{\lab}[2]{
	\stepcounter{labnum}
	\lecheader{#1}{#2}{Lab}{\thelabnum}{Lab Instructor}{\show@labTA}
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
\newtheorem{example}[theorem]{Example}