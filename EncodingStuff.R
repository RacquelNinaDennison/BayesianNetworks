library(fastDummies)

traniningData = read.csv("Training.csv")
testingData = read.csv("Testing.csv")
validationData = read.csv("Validation.csv")

traniningData <- dummy_cols(traniningData, select_columns = "Location", remove_selected_columns = TRUE)
traniningData <- dummy_cols(traniningData, select_columns = "GameGenre", remove_selected_columns = TRUE)

colnames(traniningData)[colnames(traniningData) == "Location_0"] <- "Location_USA"
colnames(traniningData)[colnames(traniningData) == "Location_1"] <- "Location_Europe"
colnames(traniningData)[colnames(traniningData) == "Location_2"] <- "Location_Asia"
colnames(traniningData)[colnames(traniningData) == "Location_3"] <- "Location_Other"

colnames(traniningData)[colnames(traniningData) == "GameGenre_0"] <- "Genre_Strategy"
colnames(traniningData)[colnames(traniningData) == "GameGenre_1"] <- "Genre_Sports"
colnames(traniningData)[colnames(traniningData) == "GameGenre_2"] <- "Genre_Action"
colnames(traniningData)[colnames(traniningData) == "GameGenre_3"] <- "Genre_RPG"
colnames(traniningData)[colnames(traniningData) == "GameGenre_4"] <- "Genre_Simulation"

testingData <- dummy_cols(testingData, select_columns = "Location", remove_selected_columns = TRUE)
testingData <- dummy_cols(testingData, select_columns = "GameGenre", remove_selected_columns = TRUE)

colnames(testingData)[colnames(testingData) == "Location_0"] <- "Location_USA"
colnames(testingData)[colnames(testingData) == "Location_1"] <- "Location_Europe"
colnames(testingData)[colnames(testingData) == "Location_2"] <- "Location_Asia"
colnames(testingData)[colnames(testingData) == "Location_3"] <- "Location_Other"

colnames(testingData)[colnames(testingData) == "GameGenre_0"] <- "Genre_Strategy"
colnames(testingData)[colnames(testingData) == "GameGenre_1"] <- "Genre_Sports"
colnames(testingData)[colnames(testingData) == "GameGenre_2"] <- "Genre_Action"
colnames(testingData)[colnames(testingData) == "GameGenre_3"] <- "Genre_RPG"
colnames(testingData)[colnames(testingData) == "GameGenre_4"] <- "Genre_Simulation"

validationData <- dummy_cols(validationData, select_columns = "Location", remove_selected_columns = TRUE)
validationData <- dummy_cols(validationData, select_columns = "GameGenre", remove_selected_columns = TRUE)

colnames(validationData)[colnames(validationData) == "Location_0"] <- "Location_USA"
colnames(validationData)[colnames(validationData) == "Location_1"] <- "Location_Europe"
colnames(validationData)[colnames(validationData) == "Location_2"] <- "Location_Asia"
colnames(validationData)[colnames(validationData) == "Location_3"] <- "Location_Other"

colnames(validationData)[colnames(validationData) == "GameGenre_0"] <- "Genre_Strategy"
colnames(validationData)[colnames(validationData) == "GameGenre_1"] <- "Genre_Sports"
colnames(validationData)[colnames(validationData) == "GameGenre_2"] <- "Genre_Action"
colnames(validationData)[colnames(validationData) == "GameGenre_3"] <- "Genre_RPG"
colnames(validationData)[colnames(validationData) == "GameGenre_4"] <- "Genre_Simulation"

validationData$loca

write.csv(traniningData, "TrainingEncoded.csv", row.names = TRUE)
write.csv(validationData, "ValidationEncoded.csv", row.names = TRUE)
write.csv(testingData, "TestingEncoded.csv", row.names = TRUE)
