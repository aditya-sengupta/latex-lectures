\ProvidesClass{lec}[2018-04-25 v1.0 Lecture Notes]
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

\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{graphicx}
\RequirePackage{lipsum}
\RequirePackage{tikz}
\RequirePackage{amsthm}
\RequirePackage{fancyvrb}
\RequirePackage{amssymb}
\RequirePackage{relsize}
\RequirePackage{graphicx}

%
% The following commands set up the lecnum (lecture number)
% counter and make various numbering schemes work relative
% to the lecture number.
%
\newcounter{lecnum}
\renewcommand{\thepage}{\thelecnum-\arabic{page}}
\renewcommand{\thesection}{\thelecnum.\arabic{section}}
\renewcommand{\theequation}{\thelecnum.\arabic{equation}}
\renewcommand{\thefigure}{\thelecnum.\arabic{figure}}
\renewcommand{\thetable}{\thelecnum.\arabic{table}}
\newtheorem{thm}{Theorem}
\def\shrug{\texttt{\raisebox{0.75em}{\char`\_}\char`\\\char`\_\kern-0.5ex(\kern-0.25ex\raisebox{0.25ex}{\rotatebox{45}{\raisebox{-.75ex}"\kern-1.5ex\rotatebox{-90})}}\kern-0.5ex)\kern-0.5ex\char`\_/\raisebox{0.75em}{\char`\_}}}

\def\@course{None}
\newcommand{\setcourse}[1]{\def\@course{#1}}
\newcommand{\show@course}{\@course}

\def\@lecturer{None}
\newcommand{\setlecturer}[1]{\def\@lecturer{#1}}
\newcommand{\show@lecturer}{\@lecturer}

\def\@semester{None}
\newcommand{\setsemester}[1]{\def\@semester{#1}}
\newcommand{\show@semester}{\@semester}

%
% The following macro is used to generate the header.
%
\newcommand{\lecture}[3]{
	\pagestyle{myheadings}
	\thispagestyle{plain}
	\newpage
	\setcounter{section}{0}
	\setcounter{lecnum}{#1}
	\setcounter{page}{1}
	\noindent
	\begin{center}
		\framebox{
			\vbox{\vspace{2mm}
				\hbox to 6.28in { {\bf \show@course
						\hfill \show@semester} }
				\vspace{4mm}
				\hbox to 6.28in { {\Large \hfill Lecture #1: #3  \hfill} }
				\vspace{2mm}
				\hbox to 6.28in { {\it Lecturer: \show@lecturer \hfill #2 \hfill Scribe: Aditya Sengupta} }
				\vspace{2mm}}
		}
	\end{center}
	\markboth{Lecture #1: #2}{Lecture #1: #2}
	
	\ifnum#1=1 {\bf Note}: {\it LaTeX template courtesy of UC Berkeley EECS dept.} \fi
	
	%{\bf Disclaimer}: {\it These notes have not been subjected to the
	%usual scrutiny reserved for formal publications.  They may be distributed
	%outside this class only with the permission of the Instructor.}
	%\vspace*{4mm}
}
%
% Convention for citations is authors' initials followed by the year.
% For example, to cite a paper by Leighton and Maggs you would type
% \cite{LM89}, and to cite a paper by Strassen you would type \cite{S69}.
% (To avoid bibliography problems, for now we redefine the \cite command.)
% Also commands that create a suitable format for the reference list.
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
\def\dmtx(#1, #2, #3, #4){
	$$
	\begin{bmatrix}
	#1 & #2 \\
	#3 & #4
	\end{bmatrix}
	$$
}

\def\tmtx(#1, #2, #3, #4, #5, #6, #7, #8, #9){
	$$
	\begin{bmatrix}
	#1 & #2 & #3 \\
	#4 & #5 & #6 \\
	#7 & #8 & #9
	\end{bmatrix}
	$$
}

\def\tdet(#1, #2, #3, #4, #5, #6, #7, #8, #9){
	$$
	\begin{vmatrix}
	#1 & #2 & #3 \\
	#4 & #5 & #6 \\
	#7 & #8 & #9
	\end{vmatrix}
	$$
}

\def\didmtx{
	\dmtx{1, 0, 0, 1}
}
\def\tidmtx{
	\tmtx(1, 0, 0, 0, 1, 0, 0, 0, 1)
}

\newcommand{\R}{\mathbb{R}}
\newcommand{\N}{\mathbb{N}}
\newcommand{\Z}{\mathbb{Z}}
\newcommand{\Proj}{\mathrm{proj}}
\newcommand{\Perp}{\mathrm{perp}}
\newcommand{\proj}{\mathrm{proj}}
\newcommand{\Span}{\mathrm{span}}
\newcommand{\Null}{\mathrm{null}}
\newcommand{\Rank}{\mathrm{rank}}
\newcommand{\mat}[1]{\begin{bmatrix}#1\end{bmatrix}}
\renewcommand{\det}[1]{\begin{vmatrix}#1\end{vmatrix}}
\newcommand{\ul}[1]{\underline{#1}}
\newcommand{\set}[1]{\left\{{#1}\right\}}
\newcommand{\lst}[1]{\left[{#1}\right]}
\newcommand{\parens}[1]{\left({#1}\right)}
\newcommand{\ang}[1]{\left\langle#1\right\rangle}
\newcommand{\ve}{\varepsilon_0}
\newcommand{\grad}{\nabla}
\renewcommand{\div}{\vec{\grad}}
\newcommand{\pd}{\partial}
\newcommand{\p}[1]{\frac{\pd}{\pd #1}}

\newcommand{\fig}[3]{
	\vspace{#2}
	\begin{center}
		Figure \thelecnum.#1:~#3
	\end{center}
}
% Use these for theorems, lemmas, proofs, etc.
\newtheorem{theorem}{Theorem}[lecnum]
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem{claim}[theorem]{Claim}
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{definition}{Definition}%[section]
\newtheorem{remark}[theorem]{Remark}
%\newenvironment{proof}{{\bf Proof:}}{\hfill\rule{2mm}{2mm}}
% **** IF YOU WANT TO DEFINE ADDITIONAL MACROS FOR YOURSELF, PUT THEM HERE: