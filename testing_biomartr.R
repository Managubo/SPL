# Install core Bioconductor packages
if (!requireNamespace("BiocManager"))
    install.packages("BiocManager")
BiocManager::install()

# Install package dependencies
BiocManager::install("Biostrings")
BiocManager::install("biomaRt")

# Install biomartr 0.9.2
install.packages("biomartr", dependencies = TRUE)
library(biomartr)

# Download collection for Arabidopsis thaliana
biomartr:: getCollection( db = "refseq", organism = "Arabidopsis thaliana")

###Download A.thaliana SPLs

# Store SPLs ATG numbers
list_spl_atg <- list(SPL1 = "AT2G47070.1", SPL2 = "AT5G43270.2", SPL3 = "AT2G33810.1", 
                SPL4 = "AT1G53160.2", SPL5 = "AT3G15270.1", SPL6 = "AT1G69170.1",
                SPL7 = "AT5G18830.3", SPL8 = "AT1G02065.1", SPL9 = "AT2G42200.1",
                SPL10 = "AT1G27370.1", SPL11= "AT1G27360.1", SPL12 = "AT3G60030.1",
                SPL13A ="AT5G50570.1", SPL13B = "AT5G50670.1", SPl14 = "AT1G20980.1",
                SPL15 = "AT3G57920.1")
#print(list_spl_atg)

file_path <- getCDS (db = "refseq",
                   organism = list_spl_atg,
                   path = file.path("_ncbi_downloads", "CDS"))


