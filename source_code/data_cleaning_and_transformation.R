# Load the dataset 'Wellbeing_and_lifestyle_data_Kaggle' into the variable 'DATA'
DATA <- Wellbeing_and_lifestyle_data_Kaggle

# Convert the 'DAILY_STRESS' column to integer type, replacing any non-numeric values with NA
DATA$DAILY_STRESS <- as.integer(ifelse(is.na(as.numeric(DATA$DAILY_STRESS)), NA, DATA$DAILY_STRESS))

# Identify rows with complete data (no missing values) and store them in 'complete_rows'
complete_rows <- complete.cases(DATA)

# Filter the 'DATA' dataframe to keep only the rows with complete data
DATA <- DATA[complete_rows, ]
