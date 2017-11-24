getwd()

statesInfo <-read.csv('stateData.csv')

# Get stes in the North east
stateSubset <- subset(statesInfo, state.region==1)
# could also be written as Dataset[Rows_to_keep, columns_to_keep], i.e.:
# statesInfo[statesInfo$state.region==1, ]
head(stateSubset, 2)
dim(stateSubset)

literateSubset <- subset(statesInfo, illiteracy==0.5 )
head(literateSubset)

