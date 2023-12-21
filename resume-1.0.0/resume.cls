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

% 颜色定义
\usepackage[usenames,dvipsnames]{xcolor} 
\definecolor{date}{HTML}{666666} 
\definecolor{primary}{HTML}{2b2b2b} 
\definecolor{headings}{HTML}{6A6A6A}

% Set main fonts
\usepackage{fontspec}
\setmainfont[Color=primary, Path = fonts/source-han-serif/,BoldItalicFont=SourceHanSerifSC-Bold,BoldFont=SourceHanSerifSC-Bold,ItalicFont=SourceHanSerifSC-Bold]{SourceHanSerifSC-Regular}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = fonts/source-han-sans/]{SourceHanSansSC-ExtraLight}

% 最后更新日期
\usepackage[absolute]{textpos}
\usepackage[UKenglish]{isodate}
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}
\newcommand{\lastupdated}{\begin{textblock}{60}(155,5)
\color{date}\fontspec[Path = fonts/source-han-serif/]{SourceHanSerifSC-ExtraLight}\fontsize{8pt}{10pt}\selectfont 
Last Updated on \today
\end{textblock}}

% 续页
\usepackage[absolute]{textpos}
\usepackage[UKenglish]{isodate}
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}
\newcommand{\continue}{\begin{textblock}{60}(155,264)
\color{date}\fontspec[Path = fonts/source-han-serif/]{SourceHanSerifSC-ExtraLight}\fontsize{8pt}{10pt}\selectfont 
Continued On Next Page
\end{textblock}}

% 标题
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

% 定制 \section 命令
\titleformat{\section}
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

\newcommand{\datedsubsection}[2]{%
  \subsection[#1]{#1 \hfill #2}%
}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{
\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}
{\end{itemize}\vspace{-\topsep}}

\RequirePackage{enumitem}
\setlist{noitemsep} % removes spacing from items but leaves space around the whole list
%\setlist{nosep} % removes all vertical spacing within and around the list
\setlist[itemize]{topsep=0.25em, leftmargin=1.5pc}
\setlist[enumerate]{topsep=0.25em, leftmargin=1.5pc}
\RequirePackage[super]{nth}
