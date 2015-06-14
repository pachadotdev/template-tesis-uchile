\ProvidesClass{tesisuchile2}

\LoadClass[letterpaper,10pt, openright]{report}

\usepackage{pdflscape}

\usepackage[protrusion=true,expansion=true]{microtype}
%tipografias personalizadas (marcar si no estan instaladas o va a dar error)
%\usepackage[stdmathitalics=true,math-style=iso,lucidasmallscale=true,romanfamily=bright]{lucimatx}
%\usepackage[mathlf,textlf,minionint,openg]{MinionPro}
%\usepackage[bb=lucida,bbscaled=1,cal=boondoxo]{mathalfa}

%margenes
\headheight 36pt
\usepackage{geometry}
\geometry{verbose,letterpaper,tmargin=20mm,bmargin=20mm,lmargin=20mm,rmargin=35mm}
\parindent 0em
\parskip 2ex

%formulas
\usepackage{amsmath} 
\usepackage{amsthm} 
%\usepackage{amssymb} 

%para tesis en ingles
%\usepackage[applemac]{inputenc}
%\usepackage[english]{babel}
%\selectlanguage{english}

%para tesis en español
\usepackage[utf8]{inputenc}
\usepackage[citestyle=authoryear-comp, bibstyle=numeric-comp, natbib=true, url=false, backend=bibtex8, maxnames=2]{biblatex}
\usepackage{csquotes}
\usepackage[spanish,es-tabla]{babel}
\decimalpoint

%enumeracion
\usepackage{enumerate}

%tablas
\usepackage{multirow}
\usepackage{booktabs}
\usepackage{float}
\restylefloat{table}
\usepackage{siunitx}

%para hacer citas
\usepackage[colorlinks=true, linkcolor=blue, urlcolor=blue, citecolor=blue]{hyperref}
%\usepackage{doi}

%referencias
 \addbibresource{referencias/biblioteca.bib}


 %para insertar codigo R
 \usepackage{listings}
\lstset{
language=R,
basicstyle=\scriptsize\ttfamily,
commentstyle=\ttfamily\color{gray},
numbers=left,
numberstyle=\ttfamily\color{gray}\footnotesize,
stepnumber=1,
numbersep=5pt,
backgroundcolor=\color{white},
showspaces=false,
showstringspaces=false,
showtabs=false,
frame=single,
tabsize=2,
captionpos=b,
breaklines=true,
breakatwhitespace=false,
title=\lstname,
escapeinside={},
keywordstyle={},
morekeywords={}
}

 %apendices
\usepackage[toc]{appendix}

\usepackage{emptypage}

% lista de cosas pendientes
\newif{\if@uchiletesis@showtodolist}
\@uchiletesis@showtodolisttrue
\DeclareOption{notodo}{\@uchiletesis@showtodolistfalse}

%espaciado
\DeclareOption{singlespace}{\gdef\@space{1.0}}%Espacio Simple
\DeclareOption{doublespace}{\gdef\@space{2.0}}%Espacio Doble
\DeclareOption{defaultspace}{\gdef\@space{1.5}}%Espacio y Medio
\ExecuteOptions{defaultspace}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions\relax

% comandos para la portada
\newcommand{\departamento}{\gdef\@departamento}
\newcommand{\facultad}{\gdef\@facultad}
\newcommand{\trabajoygrado}{\gdef\@trabajoygrado}
\newcommand{\trabajoysubgrado}{\gdef\@trabajoysubgrado}
\newcommand{\pais}{\gdef\@pais}
\newcommand{\ciudad}{\gdef\@ciudad}
\newcommand{\yearpub}{\gdef\@year}
\newcommand{\monthpub}{\gdef\@month}
\newcommand{\profguia}{\gdef\@profguia}
\newcommand{\profcoguia}{\gdef\@profcoguia}
\newcommand{\profintuno}{\gdef\@profintuno}
\newcommand{\profintdos}{\gdef\@profintdos}
\newcommand{\profinttres}{\gdef\@profinttres}
\newcommand{\proyecto}{\gdef\@proyecto}
\newcommand{\autoruno}{\gdef\@autoruno}
\newcommand{\autordos}{\gdef\@autordos}
\newcommand{\mailautoruno}{\gdef\@mailautoruno}
\newcommand{\mailautordos}{\gdef\@mailautordos}
\newcommand{\titulo}{\gdef\@titulo}
\newcommand{\subtitulo}{\gdef\@subtitulo}

% configuracion de comentarios y logo

\if@uchiletesis@showtodolist
\usepackage{todonotes}
\else
\usepackage[disable]{todonotes}
\fi

\newcommand{\pacha}[2][Pach\'a]{\todo[size=\scriptsize,linecolor=green!70!white, backgroundcolor=blue!20!white]{\textbf{Comentario [{#1}]}: {#2}}}  

\newcommand{\edgar}[2][Edgar]{\todo[size=\scriptsize,linecolor=green!70!white, backgroundcolor=yellow!20!white]{\textbf{Comentario [{#1}]}: {#2}}}  

\gdef\@logofile{escudo}
\gdef\@logofile{figuras/escudo.pdf}

%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\bibliographyname}{References}

% Definimos el espacio a usar
\renewcommand{\baselinestretch}{\@space}

\usepackage{mVersion} % Paquete para nro de version
%\setVersion{0.3} % VersiÃ³n
\increaseBuild % Comando para subir la versiÃ³n en cada build.

% Portada
\renewcommand{\maketitle}{%
    \thispagestyle{empty}
    \renewcommand{\baselinestretch}{1}
    \begin{center}
    \begin{tabular}{ll}
        \multirow{3}{*}{\includegraphics[height=84pt,width=42pt]{\@logofile}}
        &\\
        &\large{\MakeUppercase{Universidad de Chile}}\\
        &\large{\MakeUppercase{\@facultad}}\\
        &\large{\MakeUppercase{\@departamento}}\\
        &\\
    \end{tabular}
    \end{center}
    \begin{center}
        %\vskip 2.75cm%
        \vfill
            {\Large \bfseries \MakeUppercase{\@titulo}}\\
            {\Large  \bfseries \MakeUppercase{\@subtitulo}}\\
        \vskip 0.75cm%
            {\large \MakeUppercase{\@trabajoygrado}}\\
        \ifx \@trabajoysubgrado \undefined
            \vskip 0.75cm
        \else
                {\large \MakeUppercase{\@trabajoysubgrado}}\\
        \fi
        %\vskip 1.75cm%
        \vfill
            {\large \MakeUppercase{\@autoruno}}\\
        %\vskip 0.8cm%
            %{\large \MakeUppercase{\@autordos}\\ \url{\@mailautordos}}\\
        \vskip 0.75cm%
            \large\MakeUppercase{Profesor Gu\'ia:}\\
            \large\MakeUppercase{\@profguia}\\
                   \ifx \@profcoguia \undefined
        \vskip 0.75cm
        		\else 
            \large\MakeUppercase{Co-Profesor Gu\'ia:}\\
            \large\MakeUppercase{\@profcoguia}\\
            	\fi
            \large\MakeUppercase{Comisi\'on Evaluadora:}\\
            \large\MakeUppercase{\@profintuno}\\
            \ifx \@profintdos \undefined
                \vskip 0.33cm
                \vskip 11pt
            \else
                \large\MakeUppercase{\@profintdos}\\
            \fi
            \ifx \@profinttres \undefined
                \vskip 0.33cm
                \vskip 11pt
            \else
                \large\MakeUppercase{\@profinttres}\\
            \fi
        %\vskip 0.75cm%
        \vfill
                \large\MakeUppercase{\@ciudad{}, \@pais}\\
                \large\MakeUppercase{\@month{} \@year}\\
        \vskip 1cm%
            \ifx \@proyecto \undefined
                {}
            \else
                \begin{footnotesize}
                    \begin{tabular}{c}
                        \hline
                        \\
                        \@proyecto\\
                        \\
                        \hline
                    \end{tabular}
                \end{footnotesize}
            \fi
    \end{center}
    \newpage
}

% Cambiamos section cuando estamos en el prefacio
\let\oldsection=\section
\let\oldthesection=\thesection
\newenvironment{preface}{
        \pagenumbering{roman}
        \pagestyle{plain}
        \renewcommand{\section}[1]{%
            \cleardoublepage
            \phantomsection
            \addcontentsline{toc}{chapter}{##1}
            \chapter*{##1}
        }
}{
        \newpage
        \pagenumbering{arabic}
        \pagestyle{headings}
        \let\section=\oldsection
}
\newenvironment{additional}{
        \renewcommand{\section}[1]{%
            \cleardoublepage
            \phantomsection
            \addcontentsline{toc}{chapter}{##1}
            \chapter*{##1}
        }
}{
        \newpage
        \let\section=\oldsection
}

% Appendix
\renewenvironment{appendix}{
     \phantomsection
       \addcontentsline{toc}{chapter}{Appendix}
    \chapter*{Appendix}
        \setcounter{section}{0}

    \renewcommand{\thesection}{
        \Alph{section}
    }
}{
        \let\thesection=\oldthesection
}

% Determine if the image is too wide for the page.
\makeatletter
\def\ScaleIfNeeded{%
  \ifdim\Gin@nat@width>\linewidth
    \linewidth
  \else
    \Gin@nat@width
  \fi
}
\makeatother

%%%%%%%%%%%%%%%%%

%save the old bibliography
\let\oldbiblio=\bibliography
%redefine the bibliography in order to get the names we want and listed in the index
\renewcommand{\bibliography}[2]{
    %add it to the index
    \cleardoublepage
    \phantomsection
    \addcontentsline{toc}{chapter}{\bibliographyname}
    %change the name to what we want
    \renewcommand{\bibname}{\bibliographyname}
    %call the old bibilo command
    \oldbiblio{#1}{#2}
\newpage
}

% algunos comandos personalizados
\newcommand{\R}{\mathbb{R}}
\newcommand{\Q}{\mathbb{Q}}

