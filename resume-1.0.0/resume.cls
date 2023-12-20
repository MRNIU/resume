% Intro Options
\ProvidesClass{resume}[2023/12/20 resume class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[hmargin=1.25cm, vmargin=0.75cm]{geometry}
\usepackage[hidelinks]{hyperref}

% Publications
\usepackage{cite}
\renewcommand\refname{\vskip -1.5cm}

% Color definitions
\usepackage[usenames,dvipsnames]{xcolor} 
\definecolor{date}{HTML}{666666} 
\definecolor{primary}{HTML}{2b2b2b} 
\definecolor{headings}{HTML}{6A6A6A}
\definecolor{subheadings}{HTML}{333333}

% Set main fonts
\usepackage{fontspec}
\setmainfont[Color=primary, Path = fonts/source-han-serif/,BoldItalicFont=SourceHanSerifSC-Bold,BoldFont=SourceHanSerifSC-Bold,ItalicFont=SourceHanSerifSC-Bold]{SourceHanSerifSC-Regular}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = fonts/source-han-sans/]{SourceHanSansSC-ExtraLight}

% Date command
\usepackage[absolute]{textpos}
\usepackage[UKenglish]{isodate}
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}
\newcommand{\lastupdated}{\begin{textblock}{60}(155,5)
\color{date}\fontspec[Path = fonts/source-han-serif/]{SourceHanSerifSC-ExtraLight}\fontsize{8pt}{10pt}\selectfont 
Last Updated on \today
\end{textblock}}

\usepackage[absolute]{textpos}
\usepackage[UKenglish]{isodate}
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}
\newcommand{\continue}{\begin{textblock}{60}(155,264)
\color{date}\fontspec[Path = fonts/source-han-serif/]{SourceHanSerifSC-ExtraLight}\fontsize{8pt}{10pt}\selectfont 
Continued on next page
\end{textblock}}

% Name command
\newcommand{\namesection}[4]{
\centering{
\fontsize{30pt}{30pt}
\fontspec[Path = fonts/source-han-serif/]{SourceHanSerifSC-Bold}\selectfont #1
\fontspec[Path = fonts/source-han-serif/]{SourceHanSerifSC-Bold}\selectfont #2
\fontspec[Path = fonts/source-han-serif/]{SourceHanSerifSC-Bold}\selectfont #3
} \\[5pt]
\centering{
\color{headings}
\fontspec[Path = fonts/source-han-serif/]{SourceHanSerifSC-Medium}\fontsize{11pt}{11pt}\selectfont #4}
\noindent\makebox[\linewidth]{\color{headings}\rule{\paperwidth}{0.4pt}}
\vspace{-15pt}
}

% Section seperators 
\usepackage{titlesec}
\titlespacing{\section}{0pt}{0pt}{0pt} 
\titlespacing{\subsection}{0pt}{0pt}{0pt}
\newcommand{\sectionsep}{\vspace{8pt}}

% Headings command
\titleformat{\section}{\color{headings}
\scshape\fontspec[Path = fonts/source-han-serif/]{SourceHanSerifSC-Bold}\fontsize{16pt}{24pt}\selectfont \raggedright}{}{0em}{}

% Subeadings command
\titleformat{\subsection}{
\color{subheadings}\fontspec[Path = fonts/source-han-serif/]{SourceHanSerifSC-Medium}\fontsize{12pt}{12pt}\selectfont\bfseries}{}{0em}{}

\newcommand{\runsubsection}[1]{
\color{subheadings}\fontspec[Path = fonts/source-han-serif/]{SourceHanSerifSC-Medium}\fontsize{12pt}{12pt}\selectfont\bfseries {#1} \normalfont}

% Descriptors command
\newcommand{\descript}[1]{
\color{subheadings}\raggedright\fontspec[Path = fonts/source-han-serif/]{SourceHanSerifSC-Regular}\fontsize{10pt}{10pt}\selectfont {#1 \\} \normalfont}

% Location command
\newcommand{\location}[1]{
\color{headings}\raggedright\fontspec[Path = fonts/source-han-serif/]{SourceHanSerifSC-Regular}\fontsize{10pt}{10pt}\selectfont {#1\\} \normalfont}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{
\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}
{\end{itemize}\vspace{-\topsep}}


% ---------------

% \NeedsTeXFormat{LaTeX2e}
% \ProvidesClass{resume}[2015/05/25 An elegant Résumé class]
% \LoadClass[11pt]{article}

% disable indent globally
\setlength{\parindent}{0pt}
% some general improvements, defines the XeTeX logo
\RequirePackage{xltxtra}
% use xifthen
\RequirePackage{xifthen}
% use fontawesome
% \RequirePackage{fontawesome}
% use xcolor for customizing color
\RequirePackage[usenames,dvipsnames]{xcolor}
% loading fonts
\RequirePackage{fontspec}
% Main document font
% \setmainfont[
%   Path = fonts/Main/ ,
%   Extension = .otf ,
%   UprightFont = *-regular ,
%   BoldFont = *-bold ,
%   ItalicFont = *-italic ,
%   BoldItalicFont = *-bolditalic ,
%   SmallCapsFont = Fontin-SmallCaps
% ]{texgyretermes}

% \RequirePackage[
% 	a4paper,
% 	left=0.7in,
% 	right=0.7in,
% 	top=0.50in,
% 	bottom=0.5in,
% 	nohead
% ]{geometry}

\RequirePackage{titlesec}
\RequirePackage{enumitem}
\setlist{noitemsep} % removes spacing from items but leaves space around the whole list
%\setlist{nosep} % removes all vertical spacing within and around the list
\setlist[itemize]{topsep=0.25em, leftmargin=1.5pc}
\setlist[enumerate]{topsep=0.25em, leftmargin=1.5pc}
\RequirePackage[super]{nth}

\titleformat{\section}         % Customise the \section command 
  {\Large\scshape\raggedright} % Make the \section headers large (\Large),
                               % small capitals (\scshape) and left aligned (\raggedright)
  {}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
  {}                           % Can be used to insert code before the heading
  [\titlerule]                 % Inserts a horizontal line after the heading
\titlespacing*{\section}{0cm}{*1}{*1}

\titleformat{\subsection}
  {\large\raggedright}
  {}{0em}
  {}
\titlespacing*{\subsection}{0cm}{*1}{*0.5}

\newcommand{\datedsection}[2]{%
  \section[#1]{#1 \hfill #2}%
}
\newcommand{\datedsubsection}[2]{%
  \subsection[#1]{#1 \hfill #2}%
}
\newcommand{\datedline}[2]{%
  {\par #1 \hfill #2 \par}%
}

\newcommand{\role}[2]{
  {\par \textit{#1} ~ #2 \par}
  \vspace{0.5ex}
}
