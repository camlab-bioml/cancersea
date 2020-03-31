
## To be run in package root


#' Build the lists from the raw data files downloaded from
#' http://biocc.hrbmu.edu.cn/CancerSEA/goDownload

library(stringr)
library(readr)

read_one_pathway <- function(path) {
  df <- read_tsv(path)
  names(df) <- c("ensembl_gene_id", "symbol")
  df
}

base_dir <- 'data-raw'

files <- dir(base_dir, pattern = 'txt')

pathway_names <- sub(".txt", "", files, fixed = TRUE)
pathway_names <- str_to_lower(pathway_names)

dfs <- lapply(file.path(base_dir, files), read_one_pathway)
names(dfs) <- pathway_names

for(p in seq_along(dfs)) {
  assign(pathway_names[p], dfs[[p]])
  save(list = pathway_names[p], file = file.path("data", paste0(pathway_names[p], ".rda")))
}

available_pathways <- pathway_names

save(available_pathways, file = "data/available_pathways.rda")



