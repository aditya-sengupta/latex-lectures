\ProvidesClass{hw}[2019-03-08 v3.1 Homework]
\NeedsTeXFormat{LaTeX2e}

\DeclareOption*{\InputIfFileExists{\CurrentOption.min}{}{%
		\PassOptionsToClass{\CurrentOption}{article}}}
\ProcessOptions \relax
\LoadClass{article}

\RequirePackage[margin=1in]{geometry}
\RequirePackage[utf8]{inputenc}
\RequirePackage[english]{babel}
%\RequirePackage{tikz}
%\usetikzlibrary{quotes,angles}
%\RequirePackage{esint}
\RequirePackage{graphicx}
\RequirePackage{custom}
% Other packages are to be included individually in the .tex file; only the ones listed here are necessary for all files.

\newenvironment{theorem}[2][Theorem]{\begin{trivlist}
		\item[\hskip \labelsep {\bfseries #1}\hskip \labelsep {\bfseries #2.}]}{\end{trivlist}}
\newenvironment{lemma}[2][Lemma]{\begin{trivlist}
		\item[\hskip \labelsep {\bfseries #1}\hskip \labelsep {\bfseries #2.}]}{\end{trivlist}}
\newenvironment{exercise}[2][Exercise]{\begin{trivlist}
		\item[\hskip \labelsep {\bfseries #1}\hskip \labelsep {\bfseries #2.}]}{\end{trivlist}}
\newenvironment{example}[2][Example]{\begin{trivlist}
		\item[\hskip \labelsep {\bfseries #1}\hskip \labelsep {\bfseries #2.}]}{\end{trivlist}}
\newenvironment{reflection}[2][Reflection]{\begin{trivlist}
		\item[\hskip \labelsep {\bfseries #1}\hskip \labelsep {\bfseries #2.}]}{\end{trivlist}}
\newenvironment{proposition}[2][Proposition]{\begin{trivlist}
		\item[\hskip \labelsep {\bfseries #1}\hskip \labelsep {\bfseries #2.}]}{\end{trivlist}}
\newenvironment{corollary}[2][Corollary]{\begin{trivlist}
		\item[\hskip \labelsep {\bfseries #1}\hskip \labelsep {\bfseries #2.}]}{\end{trivlist}}

\def\@course{None}
\newcommand{\setcourse}[1]{\def\@course{#1}}
\newcommand{\show@course}{\@course}

\def\@semester{None}
\newcommand{\setsemester}[1]{\def\@semester{#1}}
\newcommand{\show@semester}{\@semester}

\def\@hwnum{None}
\newcommand{\sethwnum}[1]{\def\@hwnum{#1}}
\newcommand{\show@hwnum}{\@hwnum}

\def\@assntype{None}
\newcommand{\setassntype}[1]{\def\@assntype{#1}}
\newcommand{\show@assntype}{\@assntype}

\setassntype{Homework}

\title{\bf \show@course\\ \show@assntype \ \show@hwnum}
\author{Aditya Sengupta}

\newcounter{probnum}
\newcounter{ptn}[probnum] %partnum

\newcommand{\probs}[2]{
	\stepcounter{probnum}
	\theprobnum. #1
	\newline
	\textit{#2}
}

\newcommand{\prob}[1]{
	\stepcounter{probnum}
	\theprobnum. #1
}

\newcommand{\probn}[1]{
	\medskip
	\textbf{#1.}
	\setcounter{ptn}{0}
}

\def\sp{ %subpart
	\stepcounter{ptn}
	(\alph{ptn})
}

\def\spq#1{ %subpart-question
	\sp \textit{#1}
}