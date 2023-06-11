# Cerradura_Digital
Proyecto final de electrónica digital haciendo uso de una FPGA con Quartus
\documentclass{article}
\usepackage[spanish]{babel}
\usepackage{csquotes}
\usepackage[tablename=Tabla]{caption}

\begin{document}
%\renewcommand\bibname{Referencias}

\title{Labs Digital I}

\begin{center}

\begin{figure}
\centering
\includegraphics[scale=0.2]{ESCUDO.png} 
\end{figure}

\thispagestyle{empty} \vspace*{0cm} \textbf{\Large Laboratorio Electrónica Digital I}\\[1cm]
\textbf{\large Proyecto final: Cerradura digital}\\[1cm]

\small Programas de:\\
\normalsize\textbf{ \\ Ingeniería Eléctrica y Mecatrónica}\\[1cm]
\large\textbf{Felipe Cruz Vásquez \\
Juan Sebastian Perdomo Caicedo\\
Juan Diego Tovar Cárdenas}\\[1.0cm]
\small Profesor:\\
\normalsize\textbf{ \\ Diego Alexander Tibaduiza Burgos}\\[1cm]
\small Materia:\\
\normalsize\textbf{ \\ Electrónica Digital I \\ [1cm]}
Universidad Nacional de Colombia\\
Bogotá D.C. \\
Facultad de Ingeniería\\
2023
\end{center}
\newpage

\section{Planteamiento del problema}
\subsection{Identificación del problema}
La poca seguridad que brindan las cerraduras tradicionales en el acceso a una casa en la ciudad de Bogotá. Las cerraduras tradicionales basan su seguridad en una llave que puede ser robada y duplicada, o la cerradura puede ser forzada y abierta de manera sencilla.

\subsection{Datos respecto al problema}
\begin{itemize}
    \item Más de 6.000 Viviendas fueron robadas en Bogotá. (Infobae, I. (2022, December 31). Más de 6.000 Viviendas Fueron robadas en Bogotá. Retrieved April 30, 2023, from https://www.infobae.com/america/colombia/2022/12/31/mas-de-6000-viviendas-fueron-robadas-en-bogota/).
    \item Aumentan los robos en casas según el informe del Ministerio del Interior. (Ficarazzi, G. (2023, January 27). Aumentan los robos en Casas según el informe del ministerio del interior. Retrieved April 30, 2023, from https://cuadernosdeseguridad.com/2022/12/aumentan-robos-casa/).
    \item Los Robos con fuerza en viviendas aumentan un $22\%$. (Jaenes, M. (2022, December 15). Los Robos con fuerza en viviendas aumentan un $22\%$ ¿Qué hacer en estos casos? Retrieved April 30, 2023, from https://www.lasexta.com/noticias/sociedad/robos-fuerza-viviendas-aumentan-22-que-hacer-estos-casos$_$20221215639b29a04954a50001c5813a.html).
\end{itemize}

\subsection{Analisis PESTAL}
\begin{itemize
