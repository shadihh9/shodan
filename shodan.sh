#! /bin/bash
a=domin
# shodan
shodan domain $a | awk '{print $3}' | httpx -silent | nuclei -t /nuclei-templates/