\ProvidesClass{hw}[2019-02-22 v2.4 Homework]
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
\usepackage[siunitx]{circuitikz}
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

\def\@assntype{None}
\newcommand{\setassntype}[1]{\def\@assntype{#1}}
\newcommand{\show@assntype}{\@assntype}

\def\shrug{\texttt{\raisebox{0.75em}{\char`\_}\char`\\\char`\_\kern-0.5ex(\kern-0.25ex\raisebox{0.25ex}{\rotatebox{45}{\raisebox{-.75ex}"\kern-1.5ex\rotatebox{-90})}}\kern-0.5ex)\kern-0.5ex\char`\_/\raisebox{0.75em}{\char`\_}}}
% credit: Sebastien Whetsel

\setassntype{Homework}

\title{\bf \show@course\\ \show@assntype \ \show@hwnum}
\author{Aditya Sengupta}

\newcommand{\R}{\mathbb{R}}
\newcommand{\N}{\mathbb{N}}
\newcommand{\Z}{\mathbb{Z}}
\newcommand{\C}{\mathbb{C}} 
\newcommand{\Q}{\mathbb{Q}}
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
\renewcommand{\ang}[1]{\left\langle#1\right\rangle}
\newcommand{\ve}{\varepsilon_0}
\newcommand{\grad}{\nabla}
\newcommand{\pd}{\partial}
\newcommand{\del}{\vec{\grad}}
\newcommand{\p}[1]{\frac{\pd}{\pd #1}}
\newcommand{\eq}[1]{\begin{align} #1 \end{align}}
\renewcommand{\eqno}[1]{\begin{align*} #1 \end{align*}}
\newcommand{\overbar}[1]{\mkern 1.5mu\overline{\mkern-1.5mu#1\mkern-1.5mu}\mkern 1.5mu}
% credit: https://tex.stackexchange.com/questions/22100/the-bar-and-overline-commands
\newcommand{\la}{\mathcal{L}}
\newcommand{\pn}[2]{\frac{\pd #1}{\pd #2}}
\def\sr{{\mbox{$\resizebox{.16in}{.08in}{\includegraphics{ScriptR}}$}} \hspace{-.04in}}
\def\brcurs{{\mbox{$\resizebox{.16in}{.08in}{\includegraphics{BoldR}}$}} \hspace{-.04in}}
\def\hrcurs{{\mbox{$\hat \brcurs$}}}
% from David Griffiths' sample

\newcounter{probnum}
\newcounter{ptn}[probnum] %partnum

\newcommand{\prob}[2]{
	\stepcounter{probnum}
	\theprobnum. #1
	\newline
	\textit{#2}
	\newline
}

\newcommand{\probn}[1]{
	\medskip
	\textbf{#1.}
}

\def\sp{ %subpart
	\stepcounter{ptn}
	(\alph{ptn})
}

\def\spq#1{ %subpart-question
	\sp \textit{#1}
}