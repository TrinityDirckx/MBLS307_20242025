#Trinity Heatmaps exercise
#installing pheatmap
install.packages("pheatmap")
library(pheatmap)

#I don't actually know what this does but reddit said to add this for reproducibility
set.seed(123)

#Making a dataframe with gene expression values
df <- data.frame(row.names = paste0("gene", 1:10),
                 condition1 = runif(10, min = -3, max = 3),
                 condition2 = runif(10, min = -3, max = 3),
                 condition3 = runif(10, min = -3, max = 3),
                 condition4 = runif(10, min = -3, max = 3),
                 condition5 = runif(10, min = -3, max = 3))

#making heatmap in colors I like without borders and column clustering 
pheatmap(df, 
         cluster_cols = FALSE, 
         border_color = NA,
         color = colorRampPalette(c("indianred3", "mediumorchid", "goldenrod"))(50))

#saving the heatmap as a png
png("heatmap_gene_expression.png", width = 800, height = 600)
pheatmap(df, 
         cluster_cols = FALSE, 
         border_color = NA,
         color = colorRampPalette(c("indianred3", "mediumorchid", "goldenrod"))(50)) 
dev.off()

#devoff to close the file so R will not work on it anymore and it can save it properly