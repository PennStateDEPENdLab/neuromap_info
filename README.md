# neuromap_info
This repo contains a script that allows you to get NeuroMAP participants' info using their two-letter initials. 
To use
1. Clone this repo into your home directory (i.e. open a new terminal session and enter , and add the following aliases to your .profile (assuming you're on a Mac):
alias group="Rscript neuromap_info/pull_info_from_master.R group"
alias id="Rscript neuromap_info/pull_info_from_master.R id"
alias name="Rscript neuromap_info/pull_info_from_master.R id"
alias all="Rscript neuromap_info/pull_info_from_master.R all"
