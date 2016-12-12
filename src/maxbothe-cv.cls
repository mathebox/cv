\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{maxbothe-cv}[2015/08/30 v0.1 Max' modified moderncv class]

% Passes and class options to the underlying article class
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{moderncv}}
\ProcessOptions

% Load LaTeX's moderncv class
\LoadClass{moderncv}


\RequirePackage{fontawesome}


% moderncv themes
\moderncvstyle{classic}                            % style options are 'casual' (default), 'classic', 'oldstyle' and 'banking'
\moderncvcolor{blue}                               % color options 'blue' (default), 'orange', 'green', 'red', 'purple', 'grey' and 'black'
%\renewcommand{\familydefault}{\sfdefault}         % to set the default font; use '\sfdefault' for the default sans serif font, '\rmdefault' for the default roman one, or any tex font name
%\nopagenumbers{}                                  % uncomment to suppress automatic page numbering for CVs longer than one page

% adjust the page margins
\usepackage[scale=0.77]{geometry}
%\setlength{\hintscolumnwidth}{3cm}                % if you want to change the width of the column with the dates
%\setlength{\makecvtitlenamewidth}{10cm}           % for the 'classic' style, if you want to force the width allocated to your name and avoid line breaks. be careful though, the length is normally calculated to avoid any overlap with your personal info; use this at your own typographical risks...


% customizations
\renewcommand*{\mobilephonesymbol}{{\Large\faMobile}~}
\renewcommand*{\emailsymbol}{{\faEnvelope}~}
\renewcommand*{\homepagesymbol}{{\faGlobe}~}

\setlength{\hintscolumnwidth}{0.21\textwidth}

\newcommand{\cvexperience}[5]{\cventry{#1}{#2}{#3}{#4}{}{#5}}
\newcommand{\cvproject}[3]{\cventry{#1}{#2}{}{}{}{#3}}
\newcommand{\cvprojectwithsubtitle}[4]{\cventry{#1}{#2}{#3}{}{}{#4}}
\newcommand{\cvpublication}[4]{\cventry{#1}{#2}{}{}{}{#3\\#4}}

\AtEndPreamble{%
    \AtBeginDocument{%
        \ifthenelse{\pageref{lastpage}>1}{ %
            \settowidth{\pagenumberwidth}{\color{color2}\addressfont\itshape\strut\thepage/\pageref{lastpage}}%
            \fancypagestyle{plain}{%
            \fancyfoot[r]{\parbox[t]{\pagenumberwidth}{\color{color2}\pagenumberfont\strut\thepage/\pageref{lastpage}}}}% the parbox is required to ensure alignment with a possible center footer (e.g., as in the casual style)
            \pagestyle{plain}}
            {} %
        } %
      \AtEndDocument{
          \label{lastpage}
          \cfoot{\color{color2}\itshape Last update: \today}
      }
     }  
