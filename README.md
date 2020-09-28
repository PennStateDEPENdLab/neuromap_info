# neuromap_info
This repo contains a script that allows you to get NeuroMAP participants' info using their two-letter initials. 
To use:
1. Clone this repo into your home directory (i.e. open a new terminal session and enter git clone https://github.com/PennStateDEPENdLab/neuromap_info.git)
2. Copy and paste the following into your .profile (assuming you're on a Mac):
alias group="Rscript neuromap_info/pull_info_from_master.R group"
alias id="Rscript neuromap_info/pull_info_from_master.R id"
alias name="Rscript neuromap_info/pull_info_from_master.R id"
alias all="Rscript neuromap_info/pull_info_from_master.R all"
3. Make sure you have our lab's OneDrive folder in your home directory. This script will pull from the master spreadsheet located in this folder.

Once you've completed the steps above, you will be able to get participants' info by opening a new Terminal session and entering one of the following commands:
"group <first two letters of first name> <first two letters of last name>" to get the group the participant screened into (e.g., BPD)
"id <first two letters of first name> <first two letters of last name>" to get the participant's ID
"name <first two letters of first name> <first two letters of last name>" to get the participant's full name
"all <first two letters of first name> <first two letters of last name>" to get all of the above: the group, ID, and name of the participant



