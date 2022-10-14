#! /bin/bash
# shodan
shodan domain $1 | awk '{print $3}' | httpx -silent | nuclei -t ~/nuclei-templates/
