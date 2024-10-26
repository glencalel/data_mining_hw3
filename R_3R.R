library(arules)

# Cargar todos los datos contenidos en el csv a la variable data.
data <- read.csv('C:\\MIGRACION_BDP.csv', sep=",")

data <- discretizeDF(data)

clean_data <- data[, !(names(data) %in% c("NUM_VIVIENDA"))]

clean_data <- clean_data[, !(names(clean_data) %in% c("ZONA"))]
  

fpgrowth_rules <- fim4r(clean_data, method="fpgrowth", target="rules", supp = .2, conf = .5)


inspect(fpgrowth_rules[100:200])
