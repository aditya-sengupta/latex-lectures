\ProvidesClass{hw}[2018-08-26 v1.3 Homework]
\NeedsTeXFormat{LaTeX2e}

\DeclareOption*{\InputIfFileExists{\CurrentOption.min}{}{%
		\PassOptionsToClass{\CurrentOption}{article}}}
\ProcessOptions \relax
\LoadClass{article}

\usepackage[margin=1in]{geometry}
\usepackage[utf8]{inputenc}
\usepackage[english]{babel}
\usepackage{lipsum}
\usepackage{amsmath,amsthm,amssymb}
\usepackage{tikz}
\usetikzlibrary{quotes,angles}
\usepackage{esint}
\usepackage[american]{circuitikz}
\usepackage{graphicx}
\usepackage{enumerate,enumitem}
\usepackage{braket}


\newenvironment{theorem}[2][Theorem]{\begin{trivlist}
		\item[\hskip \labelsep {\bfseries #1}\hskip \labelsep {\bfseries #2.}]}{\end{trivlist}}
\newenvironment{lemma}[2][Lemma]{\begin{trivlist}
		\item[\hskip \labelsep {\bfseries #1}\hskip \labelsep {\bfseries #2.}]}{\end{trivlist}}
\newenvironment{exercise}[2][Exercise]{\begin{trivlist}
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

\title{\bf \show@course, Homework \show@hwnum}
\author{Aditya Sengupta}

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
\newcommand{\lst}[1]{\left[{#1}\right]}
\newcommand{\parens}[1]{\left({#1}\right)}
\newcommand{\ang}[1]{\left\langle#1\right\rangle}
\newcommand{\ve}{\varepsilon_0}
\newcommand{\grad}{\nabla}
\renewcommand{\div}{\vec{\grad}}
\newcommand{\pd}{\partial}
\newcommand{\p}[1]{\frac{\pd}{\pd #1}}
\newcommand{\eq}[1]{\begin{align} #1 \end{align}}

\newcounter{probnum}
\newcounter{pn}[probnum] %partnum

\newcommand{\prob}[2]{
	\medskip
	\vspace{1cm}
	\stepcounter{probnum}
	\theprobnum. #1.
	\newline
	\textit{#2}
	\newline
}

\def\sp{ %subpart
	\stepcounter{pn}
	\medskip
	(\alph{pn})
}

\def\spq#1{ %subpart-question
	\sp \textit{#1}
}