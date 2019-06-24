#control the data
#dim has to return the length of columns equals to 15
dim(raw_week_data)
#control the first 6 elements
head(raw_week_data)
#control the factors (qualitative fields)
factor(raw_week_data)
#control the names of the columns
colnames(raw_week_data)


#manipulation data
#manage rownames
raw_methods_names = colnames(raw_week_data)
all_methods_names = toupper(raw_methods_names)
#remove the dates of methodologies from dataframe
raw_week_data_no_date = raw_week_data[-1]
#control the new names of the columns
colnames(raw_week_data_no_date)
#remove the ID of methodologies from dataframe
raw_week_data_only_number = raw_week_data_no_date[-14]
#retrieve names of methodologies
methods_names_no_weeks = all_methods_names[-1]
#control column number: it has be 14
length(methods_names_no_weeks)
#remove ID
methods_names = methods_names_no_weeks[-14]

