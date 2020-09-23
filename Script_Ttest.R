data <- read_excel("Desktop/Meet/different genes and their FPKM values in airway epithelial cell-5.xlsx",sheet = "Comparison_FPKM_Up")
View(data)
data_1<-data$PLA_FPKM
data_2<-data$C_FPKM
t.test(data_1,data_2)
par(family = "Times New Roman")
boxplot(data_1,data_2, 
        main = "Gene expression", xlab = "Genes", ylab = "-log2", 
        names = c("Up_regulated", "Down_regulated"), ylim = c(0, 10), 
        yaxs = "i")

