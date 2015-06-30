# Initialize loop start
LoopStart<-1
CallLog$TestSSTBusy<-NA
# Start loop
for (i in 3:nrow(CallLog)) {
  if ((CallLog$Call.Category[i]=="Abandoned")||(CallLog$Call.Category[i]=="Call Center")) {
    CurrentSST<-paste("SST -",CallLog$Area[i])
    CurrentTimeIn<-CallLog$Time.In[i]
    test <- (CurrentSST==CallLog$SST[LoopStart:i-1]) & (strptime(CurrentTimeIn,"%m/%d/%Y %H:%M:%S")<strptime(CallLog$Time.Out[LoopStart:i-1],"%m/%d/%Y %H:%M:%S"))
    if(sum(test)>0) {LoopStart<-LoopStart+min(which(test==TRUE)-1)}
    CallLog$TestSSTBusy[i]<-sum(test) }
  else {CallLog$TestSSTBusy[i]<-NA}
}
# Show test
test