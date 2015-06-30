# Set name of file to load
FileName<-"/Users/Wissamkahi/Dropbox/Odyssey Lead/Projects/UR 3 - VOIP/Data analysis/R analysis/CallLog_V3.csv"
# Load the table in a data.frame called CallLog
CallLog<-read.csv(file=FileName,header=TRUE,sep=",",stringsAsFactors = FALSE)
#Check the data frame has been created successfully
head(CallLog)
dim(CallLog)