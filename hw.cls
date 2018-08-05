\ProvidesClass{hw}[2018-04-26 v1.0 Homework]
\NeedsTeXFormat{LaTeX2e}

\usepackage[margin=1in]{geometry} 
\usepackage{amsmath,amsthm,amssymb}
\usepackage{tikz}
\usetikzlibrary{quotes,angles}
\usepackage{esint}
\usepackage[american]{circuitikz}
\usepackage{graphicx}

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