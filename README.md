# neuromap_info
This repo contains a script that allows you to get NeuroMAP participants' info using their two-letter initials. 
To use:
1. Clone this repo into your home directory (i.e. open a new terminal session and enter git clone https://github.com/PennStateDEPENdLab/neuromap_info.git)
2. Copy and paste the following into your .profile (assuming you're on a Mac):
alias sad="Rscript neuromap_info/pull_info_from_master.R sad"
alias no_sad="Rscript neuromap_info/pull_info_from_master.R no_sad"
alias id="Rscript neuromap_info/pull_info_from_master.R id"
alias name="Rscript neuromap_info/pull_info_from_master.R name"
3. Make sure you have our lab's OneDrive folder in your home directory. This script will pull from the master spreadsheet located in this folder.

Once you've completed the steps above, you will be able to get participants' info by opening a new Terminal session and entering one of the following commands.
"id <first two letters of first name> <first two letters of last name>" to get the participant's ID
"name <first two letters of first name> <first two letters of last name>" to get the participant's full name
If you are completing secondary screening, and the participant qualifies for SAD, you can determine their eligibility by entering this command: "sad <first two letters of first name> <first two letters of last name>"
If the participant does not qualify for SAD, determine their eligibility with this command: "no_sad <first two letters of first name> <first two letters of last name>"


