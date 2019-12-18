\LoadClass{article}

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{awesomecv}[2014/02/22 Awesome CV class]

\RequirePackage{fontawesome}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage{enumitem}
\RequirePackage{fontenc}
\RequirePackage{setspace}
\RequirePackage{tcolorbox}
\RequirePackage{amsmath}
\RequirePackage{multicol}
\RequirePackage{array}
\RequirePackage{xifthen}
\RequirePackage{longtable}
\RequirePackage[short,nodayofweek]{datetime}

\RequirePackage{enumitem}
\setlist{nolistsep}

\hypersetup{
    colorlinks=false,
    linkcolor=blue,
    filecolor=magenta,
    urlcolor=cyan,
}

\definecolor{base03}{HTML}{002B36}
\definecolor{base02}{HTML}{073642}
\definecolor{base01}{HTML}{586E75}
\definecolor{base00}{HTML}{657B83}
\definecolor{base0}{HTML}{839496}
\definecolor{base1}{HTML}{93A1A1}
\definecolor{base2}{HTML}{EEE8D5}
\definecolor{base3}{HTML}{FDF6E3}
\definecolor{yellow}{HTML}{B58900}
\definecolor{orange}{HTML}{CB4B16}
\definecolor{red}{HTML}{DC322F}
\definecolor{magenta}{HTML}{D33682}
\definecolor{violet}{HTML}{6C71C4}
\definecolor{blue}{HTML}{268BD2}
\definecolor{cyan}{HTML}{2AA198}
\definecolor{green}{HTML}{859900}
\definecolor{darkblue}{HTML}{000080}
\definecolor{sectiondark}{HTML}{020202}
\setlength{\footskip}{70pt}

% \setmainfont{Roboto-Light}

\setmainfont[
 BoldFont={Roboto-Bold},
 ItalicFont={Roboto-Italic},
 BoldItalicFont={Roboto-Bold-Italic}
 ]{Roboto-Light}

\providecommand\faSkype{{\FA\symbol{"F17E}}}
\providecommand\faFlask{{\FA\symbol{"F0C3}}}
\providecommand\faGraduationCap{{\FA\symbol{"F19D}}}
\providecommand\faUniversity{{\FA\symbol{"F19C}}}
\providecommand\faFax{{\FA\symbol{"F1AC}}}
\providecommand\faGoogle{{\FA\symbol{"F1A0}}}
\providecommand\faLanguage{{\FA\symbol{"F1AB}}}
\providecommand\faThumbTack{{\FA\symbol{"F08D}}}

\newtcolorbox{titlebox}{
  nobeforeafter,
  colframe=\maincolor,
  colback=white,
  boxrule=1pt,
  arc=2pt,
  boxsep=0pt,
  leftright skip=1.5cm,
  right=5cm,
  top=.3cm,
  bottom=.3cm,
  tcbox raise base,
  sidebyside,
  righthand width=6cm,
  lower separated=false,
  leftrule=\titleboxleft,
  rightupper=-1cm,
  % width=0.9\linewidth
}

\newcommand{\documentcolor}[1]{
  \newcommand{\maincolor}{#1}
}

\newcommand{\secondcolor}[1]{
  \newcommand{\secondfont}{#1}
}

\newcommand{\thirdcolor}[1]{
  \newcommand{\thirdfont}{#1}
}

\newcommand{\sectioncolor}[1]{
  \newcommand{\sectionfont}{#1}
}

\newcommand{\sectionbegcolor}[1]{
  \newcommand{\sectionbegfont}{#1}
}

\newcommand{\sectionendcolor}[1]{
  \newcommand{\sectionendfont}{#1}
}

\newcommand{\titlethicknessleft}[1]{
  \newcommand{\titleboxleft}{#1}
}

\newcommand{\voiceleftsize}[1]{
  \newcommand{\leftMargin}{#1}
}

\newcommand{\voicerightsize}[1]{
  \newcommand{\rightMargin}{#1}
}

\newcommand{\authorname}[2]{
  \huge\color{\maincolor}#1
  \phantom{~~~}

  \normalsize\phantom{~~~}#2\normalsize\\
}


\newcommand{\qrcode}[1]{
  \includegraphics[width=.35\textwidth]{#1}
}

\newenvironment{showinfo}
{\color{\secondfont}
  \onehalfspacing
  \small
  \begin{tabular}{p{.2cm}p{6cm}}}
  {\end{tabular}}

\newcommand{\birthdate}[1]{
  \faCalendar & #1\\
}

\newcommand{\location}[1]{
  \faLocationArrow & #1\\
}

\newcommand{\mobile}[1]{
  \faMobilePhone & #1\\
}

\newcommand{\phone}[1]{
  \faPhone & #1\\
}

\newcommand{\firstMail}[1]{
  \faEnvelope & #1\\
}

\newcommand{\otherMail}[1]{
  & #1\\
}

\newcommand{\github}[1]{
  \faGithub & #1\\
}

\newcommand{\twitter}[1]{
  \faTwitter & #1\\
}

\newcommand{\skype}[1]{
  \faSkype & #1\\
}

\newcommand{\generic}[2]{
  #1 & #2\\
}

\newcommand{\updated}[1]{
  % \begin{flushright}
    \hspace*{14cm}
    \ifthenelse{\isempty{#1}}
               {\footnotesize\color{\secondfont}last update: \today}
               {\footnotesize\color{\secondfont}last update: #1}
  % \end{flushright}
}

\newcommand{\opensection}[2]{
  \textbf{\Large\color{\sectionendfont}#1~~\color{\sectionbegfont}\StrMid{#2}{1}{3}\color{\sectionendfont}\StrMid{#2}{4}{100}\normalsize}\color{black}
  \hspace{3pt}
  {\color{\sectionendfont}\leavevmode\leaders\hrule height 1pt\hfill\kern\z@}
  % \vspace{-.2cm}
}

\newcommand{\subdescription}[3]{
  \parbox{\rightMargin}{\hspace{.5cm}\large\color{#1}#2~~#3\normalsize} & \\[.1cm]
}

\newenvironment{describesection}
               {\begin{longtable}{>{\raggedleft}p{\leftMargin}p{\rightMargin}}}
               {\end{longtable}}  

\newcommand{\leftside}[1] {
  \footnotesize\color{black}#1\normalsize &
}

\newcommand{\rightsidecomplex}[4] {
 \large\color{\maincolor}#1\color{black}\normalsize\par
 \ifthenelse{\isempty{#2}}
            {}
            {\normalsize\color{\thirdfont}\textsc{#2}
              \ifthenelse{\isempty{#3}}
                         {\par}
                         {\small\color{black}~(#3)\par}}
            \ifthenelse{\isempty{#4}}
                       {}
                       {\color{black}#4}
 \\[.1cm]
}

\newcommand{\rightsideplain}[1]{
 \normalsize\color{black}#1\\[.1cm]
}

\newcommand{\rightsidedoubleplain}[2]{
  \large\color{\maincolor}#1\color{black}\normalsize\par #2\\[.1cm]
}

\newcommand{\rightsidesingle}[4] {
 \large\color{\maincolor}#1\color{black}\normalsize\ifthenelse{\isempty{#2}}
             {}
             {\normalsize,~\color{\thirdfont}\textsc{#2}
               \ifthenelse{\isempty{#3}}
                          {\par}
                          {\small\color{black}(#3)\par}}
             \ifthenelse{\isempty{#4}}
                        {}
                        {\color{black}#4}\\[.1cm]

}

\renewcommand*{\labelitemi}
{\strut\textcolor{\maincolor}{\normalsize\faAngleRight}}

\renewcommand*{\labelitemii}
{\strut\textcolor{\maincolor}{\normalsize\faDoubleAngleRight}}

\renewcommand*{\labelitemiii}
{\strut\textcolor{\maincolor}{\normalsize -}}

% CUSTOM PACKAGES AND SETTINGS
\usepackage{xstring}

%%%%%%%%%%%%
% BIBLATEX %
%%%%%%%%%%%%
\usepackage[style=ieee,maxbibnames=10]{biblatex}
\addbibresource{../publications/publications.bib}

%% emphasize author name when rendering bibliography
% Note: requires: \usepackagage{biblatex}
\newcommand{\emphasizeAuthorName}[1]{%
  \DeclareNameFormat{author}{%
    \ifthenelse{\value{listcount}=1}
    {%
      {\expandafter\ifstrequal\expandafter{\namepartfamily}{#1}{\mkbibbold{\namepartgiveni \namepartfamily}}{\namepartgiveni\addspace \namepartfamily}}
      %
    }{\ifnumless{\value{listcount}}{\value{liststop}}
        {\expandafter\ifstrequal\expandafter{\namepartfamily}{#1}{\mkbibbold{\addcomma\addspace \namepartgiveni\addspace \namepartfamily}}{\addcomma\addspace \namepartgiveni\addspace \namepartfamily}}
        {\expandafter\ifstrequal\expandafter{\namepartfamily}{#1}{\mkbibbold{\addcomma\addspace and \namepartgiveni\addspace \namepartfamily}}{\addcomma\addspace and \namepartgiveni\addspace \namepartfamily}}%
      }
    \ifthenelse{\value{listcount}<\value{liststop}}
    {\addcomma\space}
  }
}
\emphasizeAuthorName{Tsiknakis}

%%%%%%%%%%%%
% GEOMETRY %
%%%%%%%%%%%%
\usepackage{geometry}
\geometry{
  left     =  10mm,
  right    =  10mm,
  bottom   =  23mm,
  top      =  10mm,
  footskip =  10mm
}

\usepackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
\lfoot{{\footnotesize\color{\secondfont}\today}}
\cfoot{{\footnotesize\color{\secondfont}\name}}
\rfoot{{\footnotesize\color{\secondfont}\thepage}}

\documentcolor{sectiondark}
\secondcolor{base01}
\thirdcolor{base01}
\sectioncolor{base02}
\sectionbegcolor{red}
\sectionendcolor{sectiondark}

\titlethicknessleft{2mm}

\voiceleftsize{3cm}
\voicerightsize{12cm}