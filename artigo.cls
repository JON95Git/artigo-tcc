%%
%% This is file `artigo.cls',
%%
%% Class files for pre-print servers such as BioRXiv
%%
%% Copyright (C) Ricardo Henriques <r.henriques@ucl.ac.uk>
%% 
\typeout{Document Class `HenriquesLab' <18-April-2018>.}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{artigo}
  [2018/04/18 revision by RH]

%% Load base class
\LoadClass[a4paper]{article}

%% define new needed boolean variables
\newif\if@tmptwocolumn  \@tmptwocolumnfalse
\newif\if@times         \@timesfalse

%% Options
\newif\ifbfabstract     \bfabstracttrue
\DeclareOption{rmabstract}{\bfabstractfalse}
\newif\ifbibskip        \bibskipfalse
\newif\ifwatermark        \watermarkfalse
\DeclareOption{watermark}{\watermarktrue}

\DeclareOption{draft}{\PassOptionsToClass{draft}{article}}
\DeclareOption{times}{\@timestrue}
\DeclareOption{twoside}{\@twosidetrue}
\DeclareOption{twocolumn}{\@tmptwocolumntrue}
\DeclareOption{onecolumn}{\@tmptwocolumnfalse}
%\DeclareOption{watermark}{\@displaywatermark}

\ExecuteOptions{times,twoside,twocolumn}
\ProcessOptions

%% and math support and fonts
\RequirePackage{amsmath,amsfonts,amssymb}
\RequirePackage{mathptmx}
\fontfamily{times}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Henriques lab dependencies - Start %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{xcolor}
\RequirePackage{authblk}
\RequirePackage[latin1,utf8]{inputenc}
\RequirePackage[portuguese]{babel}
\RequirePackage{lmodern}
\RequirePackage{siunitx}
\RequirePackage{textgreek}
%\RequirePackage{cleveref}
\RequirePackage{gensymb}
\RequirePackage{textcomp}
\RequirePackage[version=4]{mhchem}
\RequirePackage[scaled]{helvet}
\RequirePackage[T1]{fontenc}
\RequirePackage{lettrine} % For dropped capitals
\RequirePackage[rightcaption]{sidecap} % For sidecaptions
\RequirePackage[misc]{ifsym} % For the \Letter symbol
\RequirePackage{bbding} % For the \Envelope symbol

\RequirePackage[twoside,%
				letterpaper,includeheadfoot,%
				layoutsize={8.125in,10.875in},%
                layouthoffset=0.1875in,%
                layoutvoffset=0.0625in,%
                top=50pt,% 10pt provided by headsep
                left=50pt,%
                right=50pt,%
                bottom=50pt,%
                % left=3cm,%
                % top=3cm,%
                % right=2cm,%
                % bottom=2cm,%
                headheight=0pt,% No Header
                headsep=10pt,%
                footskip=25pt]{geometry}

% \RequirePackage[left=3cm,top=3cm,right=2cm,bottom=2cm]{geometry}                
                
\RequirePackage[labelfont={bf,sf},%
                labelsep=period,%
                figurename=Fig.]{caption}

\DeclareUnicodeCharacter{00B0}{\degree}

%% Hyperlinking
\RequirePackage[colorlinks=false, allcolors=blue]{hyperref}

%% Ref to Sup
\RequirePackage{nameref}
\RequirePackage{cleveref}
\crefname{equation}{Eq. S}{equations}
\crefname{figure}{Fig.}{figures}
\crefname{section}{Sup. Note}{notes}
% \crefname{chapter}{Chapter}{Chapters}
% \crefname{section}{Section}{Sections}
% \crefname{subsection}{Section}{Sections}
% \crefname{subsubsection}{Section}{Sections}
% \crefname{figure}{Figure}{Figures}
% \crefname{table}{Table}{Tables}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Henriques lab dependencies - End %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Fonts

\if@times\RequirePackage{times}\fi

% %% sizes and margins
% \topmargin      -16.0mm
%\oddsidemargin  -11.0mm
%\evensidemargin -11.0mm
%\textwidth        175mm
% \textheight       243mm
\columnsep          12mm
% \headsep          6.3mm
% \headheight        12pt
% \lineskip           1pt
% \normallineskip     1pt
% \def\baselinestretch{1}

% \marginparsep      10pt
% \marginparwidth    20pt
% \marginparpush     25pt

% \partopsep          \z@
% \topsep           1.3ex
% \parsep             \z@
% \itemsep            \z@

% %%
% \abovedisplayskip       0pt plus2pt minus5pt%
% \belowdisplayskip       \abovedisplayskip
% \abovedisplayshortskip  0pt plus3pt%
% \belowdisplayshortskip  0pt plus3pt minus3pt%

% \arraycolsep     5pt
% \tabcolsep       6pt
% \arrayrulewidth .4pt
% \doublerulesep   2pt
% \tabbingsep\labelsep

%% footnotes
% \skip\footins 10pt plus 4pt minus 2pt
% \footnotesep 7pt
% \footskip 10mm
% \skip\@mpfootins = \skip\footins
% \fboxsep = 3pt \fboxrule = .4pt
% \long\def\@makefntext#1{\parindent .8em\indent$^{\@thefnmark}$#1}
% \def\footnoterule{}
\usepackage{float}

\newdimen\@maxsep
\newdimen\@dblmaxsep
%% Definitions for floats
%%
%% Normal Floats                      %% Double Column Floats
\floatsep 12pt plus 2pt minus 2pt     \dblfloatsep 12pt plus 2pt minus 2pt
\textfloatsep 20pt plus 2pt minus 4pt \dbltextfloatsep 20pt plus 2pt minus 4pt
\@maxsep 20pt                         \@dblmaxsep 20pt
\@fptop 0pt plus 1fil                 \@dblfptop 0pt plus 1fil
\@fpsep 8pt plus 2fil                 \@dblfpsep 8pt plus 2fil
\@fpbot 0pt plus 1fil                 \@dblfpbot 0pt plus 1fil
\def\topfraction{1.0}                 \def\dbltopfraction{1.0}
\def\floatpagefraction{0.8}           \def\dblfloatpagefraction{0.8}
\setcounter{topnumber}{2}             \setcounter{dbltopnumber}{4}
\intextsep 12pt plus 2pt minus 2pt
\setcounter{bottomnumber}{2}
\def\bottomfraction{.1}
\setcounter{totalnumber}{4}
\def\textfraction{.1}

\setlength{\belowcaptionskip}{-10pt} % reduces spacing between figure legend and text
\setlength{\abovecaptionskip}{-1pt} % reduces spacing between figure legend and text

\renewcommand{\topfraction}{0.99}
\renewcommand{\floatpagefraction}{0.5}
\renewcommand{\bottomfraction}{0.99}
\renewcommand{\textfraction}{0.01}



% \renewcommand{\thesection}{\Roman{section}} 
% \renewcommand{\thesubsection}{\thesection.\Roman{subsection}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %%
%% Henriques lab parts adapted from PNAS %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\shorttitle}[1]{\def\@shorttitle{#1}}
\newcommand{\leadauthor}[1]{\def\@leadauthor{#1}}
%\newcommand{\headerfont}{\normalfont\sffamily\fontsize{7}{9} \selectfont}
\newcommand{\footerfont}{\normalfont\sffamily\fontsize{7}{9} \selectfont}
\newcommand{\titlefont}{\fontfamily{times}\bfseries\fontsize{22pt}{24pt}\selectfont}
\newcommand{\dropcapfont}{\fontfamily{times}\bfseries\fontsize{26pt}{28pt}\selectfont}
\newcommand{\datesfont}{\normalfont\sffamily\fontsize{7}{8}\selectfont}
\newcommand{\absfont}{\normalfont\sffamily\bfseries\fontsize{8}{11}\selectfont}
\newcommand{\keywordsfont}{\normalfont\rmfamily\fontsize{7}{10}\selectfont}
\newcommand{\copyrightfont}{\normalfont\rmfamily\fontsize{6}{8}\selectfont}

%% Set document color scheme
\definecolor{black50}{gray}{0.5} % 50% black for hrules
\definecolor{color0}{RGB}{0,0,0} % Base
\definecolor{color1}{RGB}{59,90,198} % author email, doi
\definecolor{color2}{RGB}{16,131,16} %

%% Author and affiliation
\setlength{\affilsep}{8.5pt} % 16.5pts between base of author line and base of affil line
\renewcommand\Authfont{\color{color0}\normalfont\sffamily\bfseries\fontsize{9}{11}\selectfont}
\renewcommand\Affilfont{\color{color0}\normalfont\sffamily\fontsize{7}{8}\selectfont}
\makeatletter
\renewcommand\Authands{e}

%% Section/subsection/paragraph set-up
\RequirePackage[explicit]{titlesec}
\renewcommand{\thesubsection}{\Alph{subsection}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%\usepackage[explicit]{titlesec}
%\titleformat{<command>}[<shape>]{<format>}{<label>}{<sep>}{<before>}[<after>]
%\titleformat{\section}[hang]{\normalfont\Large\bfseries}%
%    {\thechapter.}{4pt}%
%        {#1 \arabic{section}.}
% \makeatletter
% \renewcommand\thesection{}
% \renewcommand\thesubsection{\@arabic\c@section.\@arabic\c@subsection}
% \makeatother
% \titleformat{\section}[hang]
%   {\large\sffamily\bfseries}
%   {\thesection.}
%   {0.5em}
%   {#1.}
%   []
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% Tamanho da section
%\titleformat
%  {\section} % command
%  {\Large\sffamily}
%  {}
%  {0em}
%  {}

\renewcommand{\thesection}{\Roman{section}}
%\titleformat{name=\section}
\titleformat{\section}
  {\small\sffamily}
  {\thesection.}
  {1em} %espaço depois da margem
  {#1} %titulo: #1 é ele normal, #1. é ele com um ponto no final


\titleformat{\subsection}[runin]
  {\small\sffamily}
  {\thesubsection.}
  {2em}
  {#1}
  
%\bfseries eh para negrito
\titleformat{\subsubsection}[runin]
  {\sffamily\small\itshape}
  {\thesubsubsection.}
  {1em}
  {#1}
  
  
\titleformat{\paragraph}[runin]
  {\sffamily\small\bfseries}
  {}
  {0em}
  {#1}
  
% nesse caso é: espaço depois da margem, 
\titlespacing*{\section}{5pc}{2ex \@plus1pt \@minus3pt}{2pt}
\titlespacing*{\subsection}{0pc}{2.5ex \@plus3pt \@minus2pt}{2pt}
\titlespacing*{\subsubsection}{0pc}{2ex \@plus2.5pt \@minus1.5pt}{2pt}
\titlespacing*{\paragraph}{0pc}{1.5ex \@plus2pt \@minus1pt}{12pt}

%% Figure caption style
\DeclareCaptionFormat{smallformat}{\normalfont\sffamily\fontsize{7}{9}\selectfont#1#2#3}
\DeclareCaptionFormat{largeformat}{\normalfont\sffamily\fontsize{9}{12}\selectfont#1#2#3}
\captionsetup*{format=smallformat}

% novo comando para fonte de imagem
\newcommand{\source}[1]{\caption*{Source: {#1}} }

% %% Watermark 
% \usepackage[printwatermark]{xwatermark}
% \AtBeginDocument{%
%   \ifwatermark%
%   \newwatermark[allpages,color=gray!20,angle=45,scale=3,xpos=0,ypos=0]{DRAFT}
%   \fi
% }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Henriques lab parts adapted from PNAS - END %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Henriques lab parts to count words - Start %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{verbatim} 

%% You can pass in your own texcount params, e.g. -chinese to turn on Chinese mode, or -char to do a character count instead (which does NOT include spaces!)
%%% http://app.uio.no/ifi/texcount/documentation.html
\newcommand{\detailtexcount}{%
  \immediate\write18{texcount -merge -sum -incbib -dir \jobname.tex > \jobname.wcdetail }%
  \verbatiminput{\jobname.wcdetail}%
}

\newcommand{\quickwordcount}{%
  \immediate\write18{texcount -1 -sum -merge \jobname.tex > \jobname-words.sum }%
  \input{\jobname-words.sum} words%
}

\newcommand{\quickcharcount}{%
  \immediate\write18{texcount -1 -sum -merge -char \jobname.tex > \jobname-chars.sum }%
  \input{\jobname-chars.sum} characters (not including spaces)%
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Henriques lab parts to count words - End %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% marks
\def\markboth#1#2{\def\leftmark{#1}\def\rightmark{#2}}
\def\footernote#1{\markboth{#1}{#1}}

% %% bibliography

\usepackage[num, overcite, alf,abnt-etal-list=0,abnt-etal-cite=3]{abntex2cite}
% \usepackage[alf, abnt-etal-list=0, abnt-etal-cite=3]{abntex2cite}
\citebrackets()
%\RequirePackage{chapterbib}
%\RequirePackage[sectionbib,numbers,sort&compress,merge,round]{natbib}
%\setlength{\bibsep}{0.0pt}

%\bibliographystyle{ieeetr}

%\renewcommand{\bibsection}{} % Remove header
%\renewcommand\bibfont{\normalfont\sffamily\fontsize{8}{10}\selectfont} % set font to be sans serif

%\makeatletter
%\renewcommand\@biblabel[1]{ #1.} % Remove brackets from label
%\def\tagform@#1{\maketag@@@{\bfseries(\ignorespaces#1\unskip\@@italiccorr)}}
%\renewcommand{\eqref}[1]{\textup{{\normalfont Eq.~(\ref{#1}}\normalfont)}}
% \makeatother

%% Title
\def\maketitle{\par
  \begingroup
  \def\thefootnote{} % the \thanks{} mark type is empty
\if@tmptwocolumn
  \twocolumn[\@maketitle]
\else
  \@maketitle
\fi
  \thispagestyle{plain}\@thanks
  \endgroup
  \setcounter{footnote}{0}\let\maketitle\relax\let\@maketitle\relax
  \gdef\@thanks{}\gdef\@author{}\gdef\@title{}\let\thanks\relax
}

\def\@maketitle{\newpage
  \begin{center}
    \vskip0.2em{\Huge\bfseries\@title\par}\vskip1.0em%
    {\lineskip.5em\large\@author\par}
  \end{center}\par\vskip 1.4em}

%% Abstract and keywords
\def\abstract{%\vspace{-.3em}
  \ifbfabstract\small\bfseries\else\footnotesize\fi}

\def\endabstract{\vspace{1.0em}\par\normalsize}

% \def\keywords{%\vspace{-.3em}
% \noindent\ifbfabstract\Affilfont\bfseries\itshape\else\footnotesize\fi  Keywords --- }
% \def\endkeywords{\vspace{0.3em}\par\normalsize}

% \newcommand{\at}{\makeatletter @\makeatother}
% \def\corrauthor{%\vspace{-.3em}
% \noindent\ifbfabstract\Affilfont\bfseries\itshape\else\footnotesize\fi  Correspondence --- }
% \def\endcorrauthor{\vspace{0.3em}\par\normalsize}

\def\keywords{%\vspace{-.3em}
\ifbfabstract\Affilfont\bfseries\else\footnotesize\fi}
\def\endkeywords{\vspace{0.3em}\par\normalsize}

\newcommand{\at}{\makeatletter @\makeatother}
\def\corrauthor{%\vspace{-.3em}
\noindent\ifbfabstract\Affilfont\bfseries\else\footnotesize\fi  Correspondence:\itshape}
\def\endcorrauthor{\vspace{0.3em}\par\normalsize}

\def\acknowledgements{\vspace{1em}
\Affilfont\bfseries ACKNOWLEDGEMENTS\par\mdseries}
\def\endacknowledgements{\vspace{0.3em}\par\normalsize}

\def\contributions{\vspace{.3em}
\Affilfont\bfseries AUTHOR CONTRIBUTIONS\par\mdseries}
\def\endcontributions{\vspace{0.3em}\par\normalsize}

\def\interests{\vspace{.3em}
\Affilfont\bfseries COMPETING FINANCIAL INTERESTS\par\mdseries}
\def\endinterests{\vspace{0.3em}\par\normalsize}

%% environemts
\newdimen\tmpitemindent
\def\QED{\mbox{\rule[0pt]{1.5ex}{1.5ex}}}
\def\proof{\noindent\hspace{2em}{\it Proof: }}
\def\endproof{\hspace*{\fill}~\QED\par\endtrivlist\unskip}
\def\@begintheorem#1#2{\tmpitemindent\itemindent\topsep 0pt\rm\trivlist
    \item[\hskip \labelsep{\indent\it #1\ #2:}]\itemindent\tmpitemindent}
\def\@opargbegintheorem#1#2#3{\tmpitemindent\itemindent\topsep 0pt\rm \trivlist
    \item[\hskip\labelsep{\indent\it #1\ #2\ \rm(#3)}]\itemindent\tmpitemindent}
\def\@endtheorem{\endtrivlist\unskip}

\newtheorem{theorem}{Theorem}
\newtheorem{definition}{Definition}
\newtheorem{corollary}{Corollary}

\twocolumn \sloppy \flushbottom

%% Units
\DeclareSIUnit\molar{\mole\per\cubic\deci\metre}
\DeclareSIUnit\Molar{\textsc{m}}


%% Allows to enter BIOGRAPHY leaving place for picture
%%
\newenvironment{biography}[1]{%
\footnotesize\unitlength 1mm\bigskip\bigskip\bigskip\parskip=0pt\par%
\rule{0pt}{39mm}\vspace{-39mm}\par%   garantees correct page breaking
\noindent\setbox0\hbox{\framebox(25,32){}}%   box containing the frame
\ht0=37mm\count10=\ht0\divide\count10 by\baselineskip%  calculates lines
\global\hangindent29mm\global\hangafter-\count10%
\hskip-28.5mm\setbox0\hbox to 28.5mm {\raise-30.5mm\box0\hss}%
\dp0=0mm\ht0=0mm\box0\noindent\bf#1\rm}{
\par\rm\normalsize}

%% Default rules for including pictures
\RequirePackage{graphicx}
\RequirePackage{color}
\DeclareGraphicsRule{*}{eps}{*}{}

%% Page headers and footers
%%
\RequirePackage{fancyhdr} % Custom headers/footers
\RequirePackage{lastpage} % Number of pages in the document
\pagestyle{fancy}		  % Enables the custom headers/footers

% \def\aBioRXiv{{\footnotesize
%     \footerfont \@leadauthor\ifnum \value{authors} > 1\hspace{2pt}\textit{et al.}\fi\hspace{7pt}|\hspace{7pt}bio\textcolor{red}{R}$\chi$iv\hspace{7pt}|\hspace{7pt}\today\hspace{7pt}|\hspace{7pt}\thepage\textendash\pageref{LastPage}
%   }}

% % \def\bBioRXiv{{\footnotesize
% %     \value {"Projeto de Engenharia  – Engenharia Computação, 2020-2"}

% %   }}
  
% \def\cBioRXiv{{\footnotesize
%     \footerfont bio\textcolor{red}{R}$\chi$iv\hspace{7pt}|\hspace{7pt}\thepage
%   }}
   
% \def\dBioRXiv{{\footnotesize
%     \footerfont \@leadauthor\ifnum \value{authors} > 1\hspace{2pt}\textit{et al.}\fi\hspace{7pt}|\hspace{7pt}\@shorttitle
%   }}

% \def

% \lfoot[\bBioRXiv]{\dBioRXiv}
% \rfoot[\dBioRXiv]{\cBioRXiv}

\rhead[]{\footnotesize\rightmark}
\lhead[\footnotesize\leftmark]{}
\cfoot{}
\renewcommand{\headrulewidth}{0pt}

\fancypagestyle{plain}{
\fancyhf{}
\fancyfoot[LO, RE]{Projeto de Fim de Curso  – Engenharia de Computação, 2021-2}
% \fancyfoot[CE,CO]{\leftmark}
\fancyfoot[LE,RO]{\thepage}
}

\pagestyle{fancy}{
\fancyhf{}
\fancyfoot[LO, LE]{Projeto de Fim de Curso   – Engenharia de Computação, 2021-2}
% \fancyfoot[CE,CO]{\leftmark}
\fancyfoot[RE,RO]{\thepage}
}

\renewcommand{\footrulewidth}{1pt}

\def\sectionmark#1{\relax}

\parindent=20pt

\usepackage{forest}
\definecolor{folderbg}{RGB}{124,166,198}
\definecolor{folderborder}{RGB}{110,144,169}

\def\Size{4pt}
\tikzset{
  folder/.pic={
    \filldraw[draw=folderborder,top color=folderbg!50,bottom color=folderbg]
      (-1.05*\Size,0.2\Size+5pt) rectangle ++(.75*\Size,-0.2\Size-5pt);  
    \filldraw[draw=folderborder,top color=folderbg!50,bottom color=folderbg]
      (-1.15*\Size,-\Size) rectangle (1.15*\Size,\Size);
  }
}

\usepackage{dirtree}
\usepackage{listings}
\usepackage{xcolor}

\definecolor{codegreen}{rgb}{0,0.6,0}
\definecolor{codegray}{rgb}{0.5,0.5,0.5}
\definecolor{codepurple}{rgb}{0.58,0,0.82}
\definecolor{backcolour}{rgb}{0.95,0.95,0.92}

\lstdefinestyle{mystyle}{
    backgroundcolor=\color{backcolour},   
    commentstyle=\color{codegreen},
    keywordstyle=\color{magenta},
    numberstyle=\tiny\color{codegray},
    stringstyle=\color{codepurple},
    basicstyle=\ttfamily\footnotesize,
    breakatwhitespace=false,         
    breaklines=true,                 
    captionpos=b,                    
    keepspaces=true,                 
    numbers=left,                    
    numbersep=5pt,                  
    showspaces=false,                
    showstringspaces=false,
    showtabs=false,                  
    tabsize=2
}
\lstset{style=mystyle}

\renewcommand{\lstlistingname}{Exemplo}
\renewcommand{\lstlistlistingname}{Lista de \lstlistingname s}


\endinput
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% \documentclass[article,11pt,oneside,a4paper,twocolumn]{abntex2}
% \usepackage[left=3cm,top=3cm,right=2cm,bottom=2cm]{geometry}
% \usepackage[alf, abnt-etal-list=0, abnt-etal-cite=3]{abntex2cite}
% \citebrackets()
