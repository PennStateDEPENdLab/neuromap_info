
suppressMessages(library(dplyr))
suppressMessages(library(readxl))
args=commandArgs(trailingOnly=TRUE)

if((nchar(args[2]) != 2)|(nchar(args[3]) != 2)){
  stop("Provide the first two letters of the first and last name")
}

test <- read_excel("~/University\ of\ North\ Carolina\ at\ Chapel\ Hill/DEPENd_Lab\ -\ Documents/NeuroMAP/Study\ Administration/Master\ spreadsheets/NEUROMAP\ Master\ UNC.xlsx", sheet="Tracker")

hit_counter<-0
stop_counter<-0
r <- 0
while(stop_counter <5){
  r <- r + 1
  first <- substr(test$FIRSTNAME[r], start=1, stop=2)
  last <- substr(test$LASTNAME[r], start=1, stop=2)
  if(!is.na(first) & !is.na(last)){
  if(args[2]==first & args[3]==last){
    right_row <- r
    hit_counter <- hit_counter + 1
  }
  }
  if(is.na(test[r,1])){
    stop_counter <- stop_counter + 1
  }
}

if(hit_counter==0){
  print("No participant found. Perhaps you entered the wrong name, or your OneDrive folder needs to be synced with the SharePoint.")
} else if (hit_counter==2){
  print("Multiple participants match those initials. You'll need to find the information manually.")
} else if(hit_counter==1){
  if (args[1]=="sad"){
    if(test$`SCREENING GROUP`[right_row]=="SAD"){
      print("Eligible (unless you are confident it is performance-only SAD)")
    } else if((test$`SCREENING GROUP`[right_row]=="HC") | (test$`SCREENING GROUP`[right_row]=="BPD")){
      print("Not eligible")
    } else {
      print("The master spreadsheet was not properly filled out. You'll need to determine the participant's eligibility manually.")
    }
  }  
  if(args[1]=="no_sad"){
    if(test$`SCREENING GROUP`[right_row]=="SAD"){
      print("Not eligible")
    } else if((test$`SCREENING GROUP`[right_row]=="HC") | (test$`SCREENING GROUP`[right_row]=="BPD")){
      print("Eligible")
    } else {
      print("The master spreadsheet was not properly filled out. You'll need to determine the participant's eligibility manually.")
    }
  } else if (args[1]=="id"){
    print(test$ID[right_row])
  } else if (args[1]=="name"){
    print(test$NAME[right_row])
  } else if (args[1] == "group"){
    print(test$`ACTUAL GROUP`[right_row])
  }
}


