#control the data
#dim has to return the length of columns equals to 15
dim(raw.week.data)
#control the first 6 elements
head(raw.week.data)
#control the factors (qualitative fields)
factor(raw.week.data)
#control the names of the columns
colnames(raw.week.data)


#manipulation data
#manage rownames
raw.methods.names = colnames(raw.week.data)
all.methods.names = toupper(raw.methods.names)
#remove the dates of methodologies from dataframe
raw.week.data.no.date = raw.week.data[-1]
#control the new names of the columns
colnames(raw.week.data.no.date)
#remove the ID of methodologies from dataframe
raw.week.data.only.number = raw.week.data.no.date[-14]
#retrieve names of methodologies
methods.names.no.weeks = all.methods.names[-1]
#control column number: it has be 14
length(methods.names.no.weeks)
#remove ID
methods.names = methods.names.no.weeks[-14]

