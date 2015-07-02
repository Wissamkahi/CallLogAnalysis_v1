#Load File function
LoadFile <-function(FileName)
{
  # Load the table in a data.frame called df
  df<-read.csv(file=FileName,header=TRUE,sep=",",stringsAsFactors = FALSE)
  # Return the data.frame
  return(df)
}