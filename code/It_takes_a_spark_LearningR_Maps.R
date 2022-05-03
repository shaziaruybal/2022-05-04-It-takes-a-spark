#################### School trip map #################
# Load the map file
map <- load(url("https://raw.githubusercontent.com/shaziaruybal/2022-05-04-It-takes-a-spark/master/data/Map.rda"))

# Load the coordinates data of the students
map_data = read.delim("https://raw.githubusercontent.com/shaziaruybal/2022-05-04-It-takes-a-spark/master/data/Coordinates_student_data.txt")

# Plot the map
dev.off()
plot(melb_map)

# Add points with color for the sick students
points(map_data$Longitude[map_data$Sickness == "Y"], map_data$Latitude[map_data$Sickness == "Y"], col = "red", cex = 5)
# Add points with color for the healthy students
points(map_data$Longitude[map_data$Sickness == "N"], map_data$Latitude[map_data$Sickness == "N"], cex = 5)
