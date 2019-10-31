#!/bin/bash
projectNoList="920298859521,469543139069,1036899397729,474431669282,913576004243,549684342835,1022699159546,847232331452,293243853189,823386163792,715723800451,921059312168,250026630584,1049012233104,207966337714,1084218271665,210226376211,247619033744,200844617199,1005138724904,906525635382,968703278060,732698201436,294068418859,826526272646,637637759913,28665553741,846672310731,764050518462,684030693212,548765072365,222745827231,90392707972,138632990813,863862331164,913196628224,715405377368,475591078562,271879635783,1074738554610,403693386019,413691906463,973973351616,253728654072,277415795494,938766054413,579611294876,370154256658,565138617474,1048029676819,854359305353,1053002116313,103351538882,970493490042,428655712534,787240021179,555885843555,1023270976294,961787048191,517112045706,685747396383,640051929293,1002631397178,525579220706,513801382017,754242960330,796498187226,336904347809,326972719365,1036926612028,755943901424,810187247671,757575661973,338882862259,680237371531,343700893360,1042861177943"

Field_Separator=$IFS
# set comma as internal field separator for the string list
IFS=,
for projectNo in $projectNoList; do
    #echo $projectId
    gcloud projects list | grep $projectNo

done
 
IFS=$Field_Separator