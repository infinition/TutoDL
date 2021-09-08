@echo off
setlocal
:atitle
set /P c=Nouveau titre ? ([O/N]?
if /I "%c%" EQU "O" goto :ntitle
if /I "%c%" EQU "N" goto :antitle
:ntitle
set /P title="Choisir un titre : "
mkdir "%title%"
:antitle
set /P c=Nouveau Chapitre ? ([O/N]?
if /I "%c%" EQU "O" goto :ctitle
if /I "%c%" EQU "N" goto :dl
:ctitle
set /P ctitle="Choisir un nom  de Chapitre : "
mkdir "%title%\%ctitle%"
:dl
set /P name="Choisir un nom  pour le fichier : "
set /P link="Entrez le Request URL du manifest.mpd : "
youtube-dl.exe -o "\%title%\%ctitle%\%name%".mp4 "%link%"
set /P c=Changements ? [O/N]?
if /I "%c%" EQU "O" goto :atitle
if /I "%c%" EQU "N" goto :dl

