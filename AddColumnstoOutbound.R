# Function to add columns to OutboundCall
AddOutboundColumns<-function(dFrame)
{
  dFrame$PhoneExt<-NA
  dFrame$Answered<-NA
  dFrame$RingTime<-NA
  dFrame$Abandoned<-NA
  dFrame$AbandonTime<-NA
  dFrame$OverFlowedIn<-NA
  dFrame$OverFlowedOut<-NA
  dFrame$CallCenter<-NA
  dFrame$VoiceMail<-NA
  dFrame$ExtensionNum<-dFrame$callingPartyNumber
  dFrame$callingPartyNumber<NA
  return(dFrame)
}