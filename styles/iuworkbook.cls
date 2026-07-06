% styles/iuworkbook.cls
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{iuworkbook}[2026/07/06 IU Advanced Workbook Class]

\LoadClass[11pt,a4paper]{article}

% ---------- Page layout ----------
\RequirePackage[a4paper,margin=2cm]{geometry}

% ---------- Fonts: XeLaTeX/LuaLaTeX ----------
\RequirePackage{fontspec}
\setmainfont{Arial}

% ---------- Language ----------
\RequirePackage[english]{babel}
\RequirePackage{csquotes}

% ---------- Spacing ----------
\RequirePackage{setspace}
\onehalfspacing

\RequirePackage{ragged2e}
\justifying

\setlength{\parindent}{0pt}
\setlength{\parskip}{6pt}

% ---------- Headings ----------
\RequirePackage{titlesec}

\titleformat{\section}
  {\bfseries\fontsize{16}{19}\selectfont}
  {\thesection}{1em}{}

\titleformat{\subsection}
  {\bfseries\fontsize{14}{17}\selectfont}
  {\thesubsection}{1em}{}

\titleformat{\subsubsection}
  {\bfseries\fontsize{11}{14}\selectfont}
  {\thesubsubsection}{1em}{}

\titlespacing*{\section}{0pt}{12pt}{12pt}
\titlespacing*{\subsection}{0pt}{12pt}{6pt}
\titlespacing*{\subsubsection}{0pt}{12pt}{6pt}

% ---------- Page numbers ----------
\RequirePackage{fancyhdr}

\pagestyle{fancy}
\fancyhf{}
\fancyfoot[C]{\thepage}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}

% ---------- Table of contents ----------
\RequirePackage{tocloft}

\renewcommand{\cftsecfont}{\bfseries}
\renewcommand{\cftsecpagefont}{\bfseries}

\renewcommand{\cftsubsecfont}{}
\renewcommand{\cftsubsecpagefont}{}

\renewcommand{\cftsubsubsecfont}{}
\renewcommand{\cftsubsubsecpagefont}{}

% ---------- Lists ----------
\RequirePackage{enumitem}

\setlist{
  topsep=3pt,
  itemsep=3pt,
  parsep=0pt
}

% ---------- Figures and tables ----------
\RequirePackage{graphicx}
\RequirePackage{booktabs}
\RequirePackage{tabularx}
\RequirePackage{caption}

\captionsetup{
  font=small,
  labelfont=bf,
  justification=raggedright,
  singlelinecheck=false
}

% ---------- APA bibliography ----------
\RequirePackage[
  backend=biber,
  style=apa,
  sorting=nyt
]{biblatex}

\DeclareLanguageMapping{english}{english-apa}

\AtBeginBibliography{
  \small
  \justifying
}

% ---------- Math ----------
\RequirePackage{amsmath}
\RequirePackage{amssymb}

% ---------- Hyperlinks ----------
\RequirePackage[hidelinks]{hyperref}

% ---------- Cross references ----------
\RequirePackage[nameinlink,noabbrev]{cleveref}

% ---------- IU helper commands ----------
\newcommand{\frontmatterIU}{
  \pagenumbering{Roman}
}

\newcommand{\mainmatterIU}{
  \clearpage
  \pagenumbering{arabic}
}

\newcommand{\iuTitlePage}[9]{
  \begin{titlepage}
  \thispagestyle{empty}
  \centering

  \vspace*{1.5cm}

  {\Large IU International University of Applied Sciences\par}

  \vspace{1.5cm}

  {\Large #1\par}

  \vspace{1cm}

  {\large #2\par}

  \vspace{0.5cm}

  {\large Degree programme: #3\par}

  \vspace{2cm}

  {\LARGE\bfseries #4\par}

  \vfill

  {\large #5\par}
  \vspace{0.3cm}
  {\large Matriculation Number: #6\par}
  \vspace{0.3cm}
  {\large Supervisor/Tutor: #7\par}
  \vspace{0.3cm}
  {\large Submission date: #8\par}

  \vspace{1cm}

  {\small #9\par}

  \end{titlepage}

  \setcounter{page}{2}
}

% ---------- Workbook task command ----------
\newcommand{\workbooktask}[2]{
  \section{#1}
  #2
}

% ---------- End ----------
\endinput