grep("[a-z]", letters)

cancer <- c("Squamous Cell Neoplasms","Glioma","Epithelial Neoplasms, NOS", "Adenocarcinoma")
type <- grep("Neoplasm", cancer)
cat("Indices are\n", type, "\n")

cancer <- c("Squamous Cell Neoplasms","Glioma","Epithelial Neoplasms, NOS", "Adenocarcinoma")
type <- grepl("Neoplasm", cancer)
cat("Indices are\n", type, "\n")

cancer <- c("Squamous Cell Neoplasms Neoplasms","Glioma","Epithelial Neoplasms, NOS", "Adenocarcinoma")
type <- regexpr("Neoplasm", cancer)
type

cancer <- c("Squamous Cell Neoplasms Neoplasms","Glioma","Epithelial Neoplasms, NOS", "Adenocarcinoma")
type <- gregexpr("Neoplasm", cancer)
type

cancer <- c("Squamous Cell Neoplasms","Glioma","Epithelial Neoplasms, NOS", "Adenocarcinoma")
type <- regexpr("Neoplasm", cancer)
res <- regmatches(cancer, type)
res

cancer <- c("Squamous Cell Neoplasms","Glioma","Epithelial Neoplasms, NOS NOS", "Adenocarcinoma")
type <- gsub("NOS", "Not otherwise specified", cancer)
type