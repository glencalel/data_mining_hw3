library(arules)

# Cargar todos los datos contenidos en el csv a la variable data.
data <- read.csv('C:\\MIGRACION_BDP.csv', sep=",")

data <- read.csv('MIGRACION_BDP.csv', sep=",")

data <- discretizeDF(data)

clean_data <- data[, !(names(data) %in% c("NUM_VIVIENDA"))]

clean_data <- clean_data[, !(names(clean_data) %in% c("ZONA"))]
  

fpgrowth_rules <- apriori(data, parameter = list(support=0.2, confidence=0.5))


inspect(fpgrowth_rules[100:200])
