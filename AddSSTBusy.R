# Initialize loop start
LoopStart<-1
CallLog$TestSSTBusy<-NA
# Start loop
for (i in 3:nrow(CallLog)) {
  if ((CallLog$Abandoned[i]==1)||(CallLog$CallCenter[i]==1)) {
    CurrentSST<-paste("SST -",CallLog$Metro[i])
    CurrentTimeIn<-CallLog$Time.In[i]
    test <- (CurrentSST==CallLog$SST[LoopStart:i-1]) & (CurrentTimeIn<CallLog$Time.Out[LoopStart:i-1])
    if(sum(test)>0) {LoopStart<-LoopStart+min(which(test==TRUE)-1)}
    CallLog$TestSSTBusy[i]<-sum(test) }
  else {CallLog$TestSSTBusy[i]<-NA}
}
# Show test
test