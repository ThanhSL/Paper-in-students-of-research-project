
\ProvidesClass{TBUJournal}[2023/26/19 V1.0 by thanhpd]
\typeout{-- See the "TBU Journal HOWTO" manual for usage information.}
\typeout{-- thanhpd@utb.edu.vn}
\NeedsTeXFormat{LaTeX2e}


%%This parts handles the options passed to the class.
\PassOptionsToClass{a4paper,11pt,onecolumn}{article}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions
\LoadClass{article}

\RequirePackage[left=3.0cm, right=2.0cm, top=2.0cm, bottom=2.0cm, headheight=0.85cm, footskip=0.85cm, includehead, includefoot]{geometry}
\RequirePackage{authblk}
\RequirePackage{graphicx}
\RequirePackage[utf8]{vietnam}
\RequirePackage[vietnamese,english]{babel}
\RequirePackage[compatibility=false]{caption}
\RequirePackage[labelformat=simple]{subcaption}
\RequirePackage[explicit]{titlesec}
\RequirePackage{setspace}
\RequirePackage{enumitem}
%\RequirePackage[numbers,sort&compress,sectionbib]{natbib}
\RequirePackage[numbers,sort&compress]{natbib}
\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage{etoolbox}
\RequirePackage{abstract}
\usepackage{fancyhdr}
%\usepackage{titling} 
%===========----------------------New commands----------------------===========
\newcommand{\headlinecolor}{\normalcolor}

\addto\captionsenglish{%
%	\titleformat{\chapter}[display]{\bfseries\centering}{\Large Chương \thechapter}{1em}{\Large #1}
	\titleformat{\section}{\bfseries}{\normalsize \thesection.}{0.5em}{\large #1}
	\titleformat{\subsection}{\bfseries\itshape}{\normalsize \thesubsection.}{0.5em}{\normalsize #1}
	\titleformat{\subsubsection}{\itshape}{\normalsize \thesubsubsection}{0.5em}{\normalsize #1}
	\titleformat{\paragraph}{\itshape}{\normalsize \theparagraph}{0.5em}{\normalsize #1}
	\renewcommand{\tablename}{\bfseries \small  Bảng}
	\renewcommand{\figurename}{Hình}
%	\renewcommand{\abstractname}{TÓM TẮT}
	\renewcommand{\abstractname}{}
	\renewcommand{\refname }{\centerline{TÀI LIỆU THAM KHẢO}}
%	\renewcommand{\bibname}{TÀI LIỆU THAM KHẢO}
	\renewcommand{\algorithmcfname}{Thuật toán}
	%\renewcommand{\thesubsubsection}{\alph{subsubsection})}
%	\renewcommand{\thesubsubsection}{\alph{subsubsection})}
	\renewcommand{\theparagraph}{\alph{paragraph})}
	\setcounter{secnumdepth}{4}
}


\newtheorem{definition}{Định nghĩa}[section] %<<<<<<<<<<<<<<<<<<<<<<<<<<< Đang sử dụng
\renewcommand{\theequation}{\arabic{section}.\arabic{equation}}
\newtheorem{theorem}{\bf Định lý}[section]
\newtheorem{lemma}[theorem]{\bf Bổ đề}
\newtheorem{proposition}{\bf Mệnh đề}[section]
\newtheorem{corollary}{\bf Hệ quả}[section]
\newtheorem{example}{\bf Ví dụ}[section]
\newtheorem{remark}{\bf Chú ý}[section]

%%-------------------Format according to the template of TBU--------------------------------
%\titlespacing{command}{left spacing}{before spacing}{after spacing}[right]
\titlespacing\section{0pt}{6pt plus 2pt minus 2pt}{6pt plus 2pt minus 2pt}
\titlespacing\subsection{0pt}{6pt plus 2pt minus 2pt}{6pt plus 2pt minus 2pt}
\titlespacing\subsubsection{0pt}{6pt plus 2pt minus 2pt}{6pt plus 2pt minus 2pt}
\titlespacing\paragraph{0pt}{6pt plus 2pt minus 2pt}{2pt plus 2pt minus 2pt}


%\setlength{\cfttabnumwidth}{-1em} 
%\captionsetup[table]{skip=-0.8\baselineskip, font=small, font=it, justification=centering}			%Định dạng caption table
\captionsetup[table]{skip=-1.5\baselineskip, font=small, font=it, justification=centering}		
\captionsetup[figure]{skip=-0.05\baselineskip, labelfont=bf, font=small, font=it, justification=centering}					%Định dạng caption figure
\captionsetup[subfigure]{labelfont=bf,textfont=small,singlelinecheck=off,justification=centering}
\BeforeBeginEnvironment{tabular}{\vskip 6pt\begin{center}\fontsize{11}{11} \selectfont}							%Font size trong bảng
\AfterEndEnvironment{tabular}{\end{center}\vskip 6pt}
\BeforeBeginEnvironment{figure}{\vskip 6pt}
\AfterEndEnvironment{figure}{\vskip 6pt}


\renewcommand{\baselinestretch}{1.0} 	 			%khoảng cách giữa các dòng trong 1 đoạn
\setlength{\parskip}{0pt plus 2pt minus 2pt}		%khoảng cách trước và sau heading
\setlist{nolistsep}									%khoảng cách trước và sau môi trường itemize
\setlist{nosep}
%\setlength\itemsep{-0.5em}							%khoảng cách trước và sau lệnh \item
\setlength{\parindent}{0.5cm}						%khoảng cách thụt đầu dòng của đoạn
\renewcommand{\theequation}{\arabic{equation}}		%Thiết lập đánh số công thức toán

\renewcommand*{\Authsep}{, }
\renewcommand*{\Authand}{, }
\renewcommand*{\Authands}{, }
\renewcommand*{\Affilfont}{\footnotesize\normalfont\itshape}			%Định dạng ĐƠN VỊ -- %\renewcommand*{\Affilfont}{\normalsize\normalfont}
\renewcommand*{\Authfont}{\bfseries}							%Định dạng TÁC GIẢ
\renewcommand\bibpreamble{\vspace{-1.0\baselineskip}}			%Khoảng cách từ tiêu đề TÀI LIỆU THAM KHẢO tới các tài liệu tham khảo
\renewcommand\thesubfigure{\alph{subfigure})}					%Định dạng subfigure


%\providecommand{\keywords}[1]
%{
%	\small	
%	\textbf{\textbf{Từ khóa:}} \textit{#1}
%	\vskip 1.5em
%}

\providecommand{\keywords}[1]
{
	\small
	\begingroup%
	% count the elements
	\@tempcnta=\z@
	\renewcommand*\do[1]{\advance\@tempcnta\@ne}%
	\docsvlist{#1}%
	\chardef\@listsize\@tempcnta%
	\@tempcnta=\@ne%
	\renewcommand*\do[1]{%
	\ifnum\@tempcnta<\@listsize
	\par
	\texttt{\it ##1} \penalty\z@ \advance\@tempcnta\@ne%
	\else
	
	\unpenalty\texttt{\it ##1}%
	\fi}%
\docsvlist{#1}%
\endgroup%
}

%===------------------------ Đơn vị công tác cùng dòng ---------------------------------
%\makeatletter
%\renewcommand\AB@affilsepx{, \protect\Affilfont}
%\makeatother
\setlength{\affilsep}{3pt} 
\makeatletter
\def\@maketitle{
%	\newpage
%	\null
	\vskip -12pt
	\begin{center}							 %định dạng tiêu đề
		\let \footnote \thanks
		{\large\bfseries \@title \par}
		\vskip 1.5em
	\end{center}
	\begin{flushleft}						%định dạng tác giả
		{\small 
			%		\lineskip .5em
			{\normalsize
			\@author}\\
%			\par
		}
	\end{flushleft}
	\par
%	\vskip 15em
}
\makeatother

%%--------------------------------DỊNH DẠNG-------------------------------------------------
\renewcommand{\abstractnamefont}{\normalfont\fontsize{10}{10}\selectfont\bfseries}
\renewcommand{\abstracttextfont}{\normalfont\fontsize{10}{10}}
\setlength{\abstitleskip}{-3em}
\setlength{\absleftindent}{0em}
\setlength{\absrightindent}{0em}
\setlength{\absparindent}{0mm}
\setlength{\absparsep}{21pt}

\PassOptionsToPackage{hyphens}{url}
%\hypersetup{
%	bookmarks=false,
%	colorlinks=true,        % false: boxed links; true: colored links
%	linkcolor=black,         % color of internal links (change box color with linkbordercolor)
%	citecolor=black,        % color of links to bibliography
%	filecolor=black,      % color of file links
%	urlcolor=black         
%}

%===------------------------ Header trang ---------------------------------

\fancypagestyle{tbuPageStyle}{%
	\fancyhf{}% clear all header and footer fields % removes h/f
	\fancyhead[c]{\small \textbf{TBU Journal of Science}	 \hfill	Vol(No): xx - xx}% Your inst name
	\fancyfoot[l]{http:/tapchi./utb.edu.vn \hfill Email: tapchi@utb..edu.vn}
	\fancyfoot[c]{\thepage}
	%\renewcommand{\headrulewidth}{1pt}
	\renewcommand{\footrulewidth}{1pt}
	%\renewcommand{\headruleskip}{3pt}
	\renewcommand{\footruleskip}{3pt}
}
\fancypagestyle{plain}{%
	\fancyhf{}% clear all header and footer fields % removes h/f
	\fancyhead[c]{\small \textbf{TBU Journal of Science}	 \hfill	Vol(No): xx - xx}% Your inst name
	\fancyfoot[l]{http:/tapchi./utb.edu.vn \hfill Email: tapchi@utb..edu.vn}
	\fancyfoot[c]{\thepage}
	%\renewcommand{\headrulewidth}{1pt}
	\renewcommand{\footrulewidth}{1pt}
	%\renewcommand{\headruleskip}{3pt}
	\renewcommand{\footruleskip}{3pt}
}
