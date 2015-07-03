# 3) Function to add columns to InboundCall
AddInboundColumns<-function(dFrame)
{
  dFrame$CallingPartyName<-NA
  dFrame$Originalcalledpartynumber<-NA
  dFrame$BusinessHours<-NULL
  dFrame$AfterHours<-NULL
  dFrame$ExtensionNum<-dFrame$PhoneExt
  return(dFrame)
}