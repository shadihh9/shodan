#! /bin/bash
a=domin
read a
# shodan
shodan domain $a | awk '{print $3}' | httpx -silent | nuclei -t ~/nuclei-templates/
