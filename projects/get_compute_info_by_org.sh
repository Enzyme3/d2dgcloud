#!/bin/bash

declare -i inc
inc=0

gcloud projects list --limit 5 | while read -r projectLine ; do
    if (( $inc == 0 )) ; then
        ((inc+=1))
        continue
    fi

    projectId=${projectLine:0:32}
    echo $projectId + $inc
    #python get_compute_info_by_project.py $projectId
    ((inc+=1))
    
done