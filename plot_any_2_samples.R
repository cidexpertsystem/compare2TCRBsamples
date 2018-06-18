# plot_any_2_samples.R
# October 29, 2010
# Author: Cindy Desmarais, AdaptiveTCR

merged<-read.table("mydata.tsv", header=T)

person<-"Donor 2"

# EFF DAY 0 VS 14
pdf("Group1_vs_Group2_plot.pdf")

# extract just the points we want to plot

# plot data - add 1 to include points on the axes in the logarithmic plot
plot(merged$Group1, merged$Group2, type="p", col="blue", log="xy", xlim=c(1,1000000), ylim=c(1,1000000), axes=FALSE, 
ylab=paste("Count for Group2"), xlab=paste("Counts for Group1"), 
main="Plot of Group1 vs Group2", pch=20)

# define and plot axes
axis(1, at=c(1,10,100,1000,10000,100000, 250000, 500000, 1000000), labels=c(0,10,100,1000,10000,100000, 250000, 500000, 1000000)) 
axis(2, at=c(1,10,100,1000,10000,100000, 250000, 500000, 1000000), labels=c(0,10,100,1000,10000,100000, 250000, 500000, 1000000))

dev.off()

