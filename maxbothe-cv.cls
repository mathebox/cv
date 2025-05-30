\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{maxbothe-cv}[2015/08/30 v0.1 Max' modified moderncv class]

% Passes and class options to the underlying article class
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{moderncv}}
\ProcessOptions

% Load LaTeX's moderncv class
\LoadClass{moderncv}

% moderncv themes
\moderncvstyle{classic}                            % style options are 'casual' (default), 'classic', 'oldstyle' and 'banking'
\moderncvcolor{blue}                               % color options 'blue' (default), 'orange', 'green', 'red', 'purple', 'grey' and 'black'
\moderncvicons{awesome}
%\renewcommand{\familydefault}{\sfdefault}         % to set the default font; use '\sfdefault' for the default sans serif font, '\rmdefault' for the default roman one, or any tex font name
%\nopagenumbers{}                                  % uncomment to suppress automatic page numbering for CVs longer than one page

% adjust the page margins
\usepackage[scale=0.77]{geometry}
\setlength{\hintscolumnwidth}{0.195\textwidth}          % if you want to change the width of the column with the dates
%\setlength{\makecvtitlenamewidth}{10cm}           % for the 'classic' style, if you want to force the width allocated to your name and avoid line breaks. be careful though, the length is normally calculated to avoid any overlap with your personal info; use this at your own typographical risks...


%% customizations
\usepackage{tikz}
\usetikzlibrary{svg.path}
% from https://jpswalsh.github.io/academicons/
\DeclareRobustCommand\researchgatesocialsymbol{%
  \tikz\fill svg[scale=.001ex] {%
    M1194.642 23.429c-93.996 102.282-219.786 266.57-324.426 452.286
    172.852 40.426 300.852 202.716 300.852 364.858 0 239.002-185.636
    349.93-428.998 349.93-125.784 0-226.144-6.356-319.854-6.356-85.504
    0-170.934 0-224.146 2.070v-61.93l80.998-14.856c55.712-10.716
    87.428-36.148
    87.428-168.572v-840.646c0-132.36-31.714-157.93-87.428-168.5l-80.998-15.14v-61.718c57.57
    2.070 157.856 6.29 258.216 6.29 96 0 219.786-4.22
    273.144-6.29v61.718l-111.002 15.14c-57.564 8.36-87.574 36.14-87.574
    168.5v356.286c51.214-4.286 96-4.286 164.432-4.286 130.144-232.5
    253.922-407.566 324.214-488.572 64.138-76.924 162.216-125.93
    285.996-125.93 36.22 0 74.584 6.364 98.004 17.144v55.362c-76.786
    0-153.57 53.424-208.86 113.21zM684.5 548.287c-72.572 0-104.426
    1.93-153.644 6.568v535.362c49.218 4.286 115.214 4.286 172.858 4.286
    179.354 0 285.93-94.004 285.93-264.572
    0-168.572-115.142-281.644-305.144-281.644zM1335.86 1086.859c-2.144
    11.212-4.074 24.284-5.786 39.358-1.784 15.214-2.934 33.068-3.642
    54.14-0.716 20.926-1.002 46.496-1.002 75.784 0 29.432 0.286 54.646
    1.002 75.644 0.71 21.072 1.858 39.146 3.642 54.214 1.712 15.002
    3.642 28.146 5.786 39.358 2.070 11.286 4.784 22.002 8.288 32.498
    18.352 55.5 48.428 97.214 90.5 125.22 41.998 28 93.498 42.064
    154.638 42.064 31.43 0 59.934-3.642 85.218-11.066 25-7.358
    47.426-17.504 67.21-30.5 19.5-12.858 36.36-28 50.286-45.144
    14.284-17.21 25.782-35.57 34.786-55.288 3.496-6.282
    2.502-11.286-3.072-14.782l-77.642-31.926c-6.576-3.504-11.212-1.718-14.862
    5.216-17.422 32.286-32.286 53.496-56.708 68.922-24.714 15.36-47.572
    22.646-85.218 22.646-40.93
    0-59.216-8.14-84.854-26.5-25.432-18-44.076-40.646-55.076-75.14-2.208-6.218-4.214-13.934-6.568-23.004-1.93-9.216-3.504-20.502-4.498-33.712-1.002-13.216-1.93-29.572-2.786-48.86-0.57-19.288-0.856-42.716-0.856-69.858
    0-27.282 0.286-50.71 0.856-69.998 0.856-19.214 1.784-35.57
    2.786-48.786 0.994-13.356 2.568-24.568 4.498-33.858 2.356-8.93
    4.36-16.64 6.568-22.93 11-34.356 26.72-53.138 49.862-68.214
    22.858-15.286 49.138-26.288 90.068-26.288 36.36 0 69.646 10.358
    91.356 26.148 21.504 15.784 39.358 36.638 47.36 65.142 3.504 12.002
    8.002 26.932 11.074 45.216 2.786 18.286 2.786 37.64 2.786 64.352 0
    4.22-2.362 6.364-6.29 6.364h-124.358c-7 0-10.43 3.424-10.43
    10.422v71.286c0 7.072 3.43 10.504 10.43 10.504h228.214c7.146 0
    10.504-3.43 10.504-10.504v-60.928c0-32.286
    0-62.216-3.358-89.93-3.218-27.714-7.57-51.712-13.070-69.208-17.43-54.792-45.070-93.792-87.428-122.858-42.504-29.286-97.288-45.070-156.79-45.070-61.14
    0-112.64 14.066-154.638 41.998-42.072 28.284-72.148 69.786-90.5
    125.286-3.504 10.496-6.218 21.284-8.288 32.57z};}

\newcommand{\cvexperience}[5]{\cventry{#1}{#2}{#3}{#4}{}{#5}}
\newcommand{\cvproject}[3]{\cventry{#1}{#2}{}{}{}{#3}}
\newcommand{\cvprojectwithsubtitle}[4]{\cventry{#1}{#2}{#3}{}{}{#4}}
%\newcommand{\cvpublication}[4]{\cventry{#1}{#2}{}{}{}{#3. #4}}
\newcommand{\cvpublication}[4]{\cventry{#1}{#2}{\small #3. #4}{}{}{}}


\AtEndPreamble{%
    \AtBeginDocument{%
        \ifthenelse{\pageref{lastpage}>1}{ %
            \settowidth{\pagenumberwidth}{\color{color2}\addressfont\itshape\strut\thepage/\pageref{lastpage}}%
            \fancypagestyle{plain}{%
            \fancyfoot[r]{\parbox[t]{\pagenumberwidth}{\color{color2}\pagenumberfont\strut\thepage/\pageref{lastpage}}}}% the parbox is required to ensure alignment with a possible center footer (e.g., as in the casual style)
            \pagestyle{plain}}
            {} %
        } %
%      \AtEndDocument{
%          \label{lastpage}
%          \cfoot{\color{color2}\itshape Last update: \today}
%      }
     }  
