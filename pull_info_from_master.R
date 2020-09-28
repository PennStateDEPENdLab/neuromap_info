
suppressMessages(library(dplyr))
suppressMessages(library(readxl))
args=commandArgs(trailingOnly=TRUE)

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
  print("No participant found. Perhaps you entered the wrong name, or your OneDrive folder needs to be synced with the online account.")
} else if (hit_counter==2){
  print("Multiple participants match those initials. You'll need to find the information manually.")
} else if(hit_counter==1){
  if (args[1]=="group"){
    print(test$`SCREENING GROUP`[right_row])
  } else if (args[1]=="id"){
    print(test$ID[right_row])
  }else if (args[1]=="name"){
    print(test$NAME[right_row])
  }else if (args[1]=="all"){
    print(test$`SCREENING GROUP`[right_row])
    print(test$ID[right_row])
    print(test$NAME[right_row])
  }
}


