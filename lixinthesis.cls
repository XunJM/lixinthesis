\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{lixinthesis}
[2016/9/29 v1.0-beta A thesis templat for lixin undergraduates.]

\LoadClass[12pt,a4paper]{report}
%----------------------------------------------------------------------
%所用到的宏包
\usepackage{xeCJK}
\usepackage{zhnumber}
\usepackage{latexsym}
\usepackage{amsmath}
\usepackage{amssymb}
\usepackage{fancyhdr} 
\usepackage{setspace}
\usepackage[font={rm,normalsize},labelsep=quad]{caption}
\usepackage{titlesec}
\usepackage{titletoc}
\usepackage[numbers,sort&compress,super,square]{natbib}
\usepackage{graphicx}
\usepackage{subfigure}
\usepackage{tikz}
\usetikzlibrary{arrows}
\usepackage{appendix}
\usepackage{pifont}
\usepackage{multirow}
\usepackage{longtable}
\usepackage{lmodern}
\usepackage{cleveref}
%----------------------------------------------------------------------
%这段用于宏包设置注释格式
\usepackage[perpage,stable]{footmisc}
\renewcommand{\thefootnote}{\fnsymbol{footnote}} 
\DefineFNsymbols*{newfootnote}{
	{\ding{172}}{\ding{173}}{\ding{174}}{\ding{175}}{\ding{176}}{\ding{177}}{\ding{178}}{\ding{179}}{\ding{180}}}
\setfnsymbol{newfootnote}
%----------------------------------------------------------------------
%设置页面格式
\usepackage{float}
\parskip=0cm
\usepackage[left=3cm,right=2cm,top=2.5cm,bottom=2.5cm]{geometry}
\setcounter{secnumdepth}{3}
\hfuzz=\maxdimen
\tolerance=10000
\hbadness=10000
\renewcommand{\textfraction}{0.15} 
\renewcommand{\topfraction}{0.85} 
\renewcommand{\bottomfraction}{0.65} 
\renewcommand{\floatpagefraction}{0.60}
%----------------------------------------------------------------------
%设置封面，声明页。
\renewcommand\title[1]{\def\LXAF@value@title{#1}}
\newcommand\engtitle[1]{\def\LXAF@value@engtitle{#1}}
\renewcommand\author[1]{\def\LXAF@value@author{#1}}
\newcommand\advisor[1]{\def\LXAF@value@advisor{#1}}
\newcommand\type[1]{\def\LXAF@value@type{#1}}
\newcommand\grade[1]{\def\LXAF@value@grade{#1}}
\newcommand\major[1]{\def\LXAF@value@major{#1}}
\newcommand\ID[1]{\def\LXAF@value@ID{#1}}
\renewcommand{\today}{\zhdigits{\number\year}年\zhdigits{\number\month}月}
\renewcommand\maketitle{%
	\clearpage
	\thispagestyle{empty}
~
\vspace{-0.81cm}

\begin{figure}[H]
\includegraphics[width=2.52cm]{logo1.jpg}
\end{figure}
\vspace{-0.08cm}
\begin{center}
\includegraphics[width=12.31cm]{logo2.jpg}

\vspace{0.23cm}

{\erhao\rm Shanghai Lixin University of Commerce}

\vspace{0.51cm}

{\xiaochuhao\li  本科生毕业论文}

\vspace{1.51cm}

{\erhao\sf \LXAF@value@title}

\vspace{0.22cm}

{\xiaosanhao\sf \LXAF@value@engtitle}
\end{center}
\vspace{1cm}

\hspace{2.53cm}{\sanhao\kai 学生姓名~~\underline{\makebox[4.52cm]{\LXAF@value@author}}}

\vspace{0.28cm}

\hspace{2.53cm}{\sanhao\kai 指导教师~~\underline{\makebox[4.52cm]{\LXAF@value@advisor}}}

\vspace{0.31cm}

\hspace{2.53cm}{\sanhao\kai 论文类别~~\underline{\makebox[4.52cm]{\LXAF@value@type}}}

\vspace{0.36cm}

\hspace{2.53cm}{\sanhao\kai 年\hspace{1.15cm}级~~\underline{\makebox[4.52cm]{\LXAF@value@grade}}}

\vspace{0.33cm}

\hspace{2.53cm}{\sanhao\kai 专\hspace{1.15cm}业~~\underline{\makebox[4.52cm]{\LXAF@value@major}}}

\vspace{0.32cm}

\hspace{2.53cm}{\sanhao\kai 学\hspace{1.15cm}号~~\underline{\makebox[4.52cm]{\LXAF@value@ID}}}

\vspace{2.06cm}
\begin{center}
{\xiaosanhao\song \today}
\end{center}

\clearpage

\thispagestyle{empty}
\begin{center}
	\hei\xiaosanhao 声明及论文使用的授权
\end{center}
~


{\song\xiaosihao 
	
	本人郑重声明所呈交的论文是我个人在导师的指导下进行的研究工作及取得的研究成果。除了文中特别加以标注和致谢的地方外，论文中不包含其他人已经发表或撰写的研究成果。\\
	
	论文作者签名\qquad \qquad \qquad \qquad \qquad \qquad \qquad  \qquad 年\qquad 月\qquad 日\\
	~\\
	~
	
	
	本人同意上海立信会计学院保留使用学位论文的规定，即：学校有权保留送交论文的复印件，允许论文被查阅和借阅；学校可以上网公布全部内容，可以采用影印、缩印或其他复制手段保存论文。\\
	
	论文作者签名\qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad 年\qquad 月\qquad 日
}

}

\makeatletter
\def\LXAF@value@title{}
\def\LXAF@value@engtitle{}
\def\LXAF@value@author{}
\def\LXAF@value@advisor{}
\def\LXAF@value@type{}
\def\LXAF@value@grade{}
\def\LXAF@value@major{}
\def\LXAF@value@ID{}
%------------------------------------------------------------------------
%定义首行缩进2字符，感谢@Liam Huang
\def\LXAF@CJKChar@size{\hskip \f@size \p@}
\newdimen\LXAF@CJKChar@size@dimen
\settowidth\LXAF@CJKChar@size@dimen{\LXAF@CJKChar@size\CJKglue}
\newcommand{\CJKsetfontspace}{%
	\settowidth\LXAF@CJKChar@size@dimen{\LXAF@CJKChar@size\CJKglue}%
	\ifdim\parindent=0pt%
	\relax%
	\else%
	\parindent2\LXAF@CJKChar@size@dimen%
	\fi%
}
\newcommand{\Eindent}{\CJKsetfontspace\parindent2\LXAF@CJKChar@size@dimen}
\newcommand{\Enoindent}{\parident\z@}
\RequirePackage{indentfirst}
\AtBeginDocument{\Eindent}
\makeatother
%------------------------------------------------------------------------
%设置字体，字号
\setCJKmainfont[BoldFont={simhei.ttf}, ItalicFont={simkai.ttf}]{simsun.ttc}
\setCJKsansfont{simhei.ttf}
\setCJKmonofont{simkai.ttf}
\setCJKfamilyfont{song}{simsun.ttc}
\setCJKfamilyfont{hei}{simhei.ttf}
\setCJKfamilyfont{fs}{simfang.ttf}
\setCJKfamilyfont{kai}{simkai.ttf}
\setCJKfamilyfont{li}{SIMLI.TTF}
\setCJKfamilyfont{hwxw}{STXINWEI.TTF}
\newcommand{\hei}{\CJKfamily{hei}}
\newcommand{\song}{\CJKfamily{song}}
\newcommand{\li}{\CJKfamily{li}}
\newcommand{\kai}{\CJKfamily{kai}}
\newcommand{\fs}{\CJKfamily{fs}}
\newcommand{\hwxw}{\CJKfamily{hwxw}}
%字号设置
\newcommand{\chuhao}{\fontsize{42pt}{\baselineskip}\selectfont}    
%初号
\newcommand{\xiaochuhao}{\fontsize{36pt}{\baselineskip}\selectfont} 
%小初号 
\newcommand{\yihao}{\fontsize{26pt}{\baselineskip}\selectfont}     
%一号
\newcommand{\xiaoyihao}{\fontsize{24pt}{\baselineskip}\selectfont}     
%小一号 
\newcommand{\erhao}{\fontsize{22pt}{\baselineskip}\selectfont}      
%二号
\newcommand{\xiaoerhao}{\fontsize{18pt}{\baselineskip}\selectfont}  
%小二号 
\newcommand{\sanhao}{\fontsize{16pt}{\baselineskip}\selectfont}  
%三号
\newcommand{\xiaosanhao}{\fontsize{15pt}{\baselineskip}\selectfont} 
 %小三号
\newcommand{\sihao}{\fontsize{14pt}{\baselineskip}\selectfont}
%四号 
\newcommand{\xiaosihao}{\fontsize{12pt}{\baselineskip}\selectfont}  
%小四号 
\newcommand{\wuhao}{\fontsize{10.5pt}{\baselineskip}\selectfont}    
%五号
\newcommand{\xiaowuhao}{\fontsize{9pt}{\baselineskip}\selectfont}   
%小五号 
\newcommand{\liuhao}{\fontsize{7.5pt}{\baselineskip}\selectfont}  
%六号  
\newcommand{\qihao}{\fontsize{5.5pt}{\baselineskip}\selectfont}    
%七号
%------------------------------------------------------------------------
% Times New Roman
\setromanfont[BoldFont=timesbd.ttf,ItalicFont=timesi.ttf,BoldItalicFont=timesbi.ttf,]{times.ttf}
% Arial
\setsansfont[BoldFont=arialbd.ttf,ItalicFont=ariali.ttf,BoldItalicFont=arialbi.ttf]{arial.ttf}
% Courier New
\setmonofont[Scale=0.90,BoldFont=courbd.ttf,ItalicFont=couri.ttf,BoldItalicFont=courbi.ttf,Color={0019D4}]{cour.ttf}
\usepackage{microtype}
%------------------------------------------------------------------------
%设置目录页。
\contentsmargin{2.5em}
\titlecontents{chapter}
[0ex]
{\xiaosihao\rm}
{\contentslabel{2ex}}
{\hspace*{-2ex}}
{\titlerule*[1pc]{.}\contentspage}
\titlecontents{section}
[4ex]
{\xiaosihao\rm}
{\contentslabel{4ex}}
{\hspace*{-2ex}}
{\titlerule*[1pc]{.}\contentspage}
\titlecontents{subsection}
[6.7ex]
{\xiaosihao\rm} 
{\contentslabel{5ex}}
{\hspace*{-2ex}}
{\titlerule*[1pc]{.}\contentspage}
\iffalse
\titlecontents{subsubsection}
[10ex]
{\xiaosihao\rm} 
{\contentslabel{6ex}}
{\hspace*{-2ex}}
{\titlerule*[1pc]{.}\contentspage}
\fi
%------------------------------------------------------------------------
%设置章标题，节标题。
\titleclass{\chapter}{straight}
\titleformat{\chapter}{\xiaosanhao\sf\bf}{\xiaosanhao\bf\thechapter.}{0em}{}
\titlespacing{\chapter}{0pt}{14.4pt}{9pt}
\makeatletter
\renewcommand\section{\@startsection {section}{1}{\z@}{8.4pt}{8.4pt}{\sihao\sf\bf}}
\renewcommand\subsection{\@startsection {subsection}{2}{\z@}{7.2pt}{7.2pt}{\xiaosihao\sf\bf}}
\renewcommand\subsubsection{\@startsection {subsubsection}{3}{\z@}{7.2pt}{7.2pt}{\xiaosihao\sf\bf}}
\makeatother
%------------------------------------------------------------------------
%修改为中文
\renewcommand{\contentsname}{\centerline{目录}}
% 将Contents改为目录
\renewcommand{\bibname}{\centerline{参考文献}}
\renewcommand\figurename{\rm\xiaosihao 图}
\renewcommand\tablename{\rm\xiaosihao 表}
\renewcommand{\theequation}{(\thechapter-\arabic{equation})}
\renewcommand{\thefigure}{(\thechapter-\arabic{figure})}
\renewcommand{\thetable}{(\thechapter-\arabic{table})}
\crefname{equtation}{式}{}
\crefname{table}{表}{}
\crefname{figure}{图}{}
\newcommand{\enabstractname}{Abstract}
\newcommand{\cnabstractname}{摘要}
\newenvironment{enabstract}{%
	\par\xiaosihao
	\noindent\mbox{}\hfill{\xiaosanhao\sf\bfseries \enabstractname}\hfill\mbox{}\par
	\vskip 22pt}{\par\vskip 22pt}
\newenvironment{cnabstract}{%
	\par\xiaosihao
	\noindent\mbox{}\hfill{\xiaosanhao\hei \cnabstractname}\hfill\mbox{}\par
	\vskip 22pt}{\par\vskip 22pt}
%------------------------------------------------------------------------
%页眉页码设置
\pagestyle{fancy}
\setlength{\headheight}{15pt}
\lhead{}
\chead{\xiaowuhao\song 上海立信会计学院本科生毕业论文}
\rhead[]
\lfoot{}
\cfoot{\xiaowuhao\rm\thepage}
\rfoot{}
\renewcommand{\headrulewidth}{0.3pt}
%------------------------------------------------------------------------
\endinput