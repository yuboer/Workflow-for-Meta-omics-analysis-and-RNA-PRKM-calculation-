###---This R script is used to calculate the relative transcriptional activities of MAGs derived from metagenome datasets
###---to use this script, info needed includ: 1) number of mRNA reads (of different samples) mapped to each ORF/CDS in each MAG ; 2) ; 3) total mRNA reads generated from each sample

###---combine the number of mRNA reads mapped to each ORF of each MAG at the 6 time points

htseq_31_genomes_path = as.character ("C:/Yubo/NU_work/Gaohan/DNA_RNA_mapping/RNA_mapping/2nd_htseq/31_genomes")
setwd(htseq_31_genomes_path)
getwd()
list_g_names <- read.delim("31genome_subfolder_list", sep="\t", header = F, 
                           stringsAsFactors = F, colClasses = c("character"))

g_list <- list_g_names$V1
#g_list[2]
#combine the info of the 6 timepoints for each genome
for (i in 1:length(g_list))
{
  time_points<-dir(g_list[i])
  m<-matrix(0, ncol = 1)
  bin_htseq_at_6_timepoints <- data.frame(m)
  colnames(bin_htseq_at_6_timepoints)<-c(g_list[i])
  for (j in 1: length(time_points))
  {
    temp<-read.delim(file = paste("./", g_list[i], "/", time_points[j], sep=""), sep="\t",header = F, stringsAsFactors = F)
    colnames(temp)<-c(g_list[i], sapply(strsplit(time_points[j], "_"), "[", 1))
    bin_htseq_at_6_timepoints<-merge( temp, bin_htseq_at_6_timepoints, by=g_list[i], all=T)
  }
  bin_htseq_at_6_timepoints[is.na(bin_htseq_at_6_timepoints)]<-0
  
  write.table(bin_htseq_at_6_timepoints, file = paste(g_list[i], ".summary.csv"), sep= ",", col.names = T, row.names = F, quote = F)
}
#move the .summary.csv to <g.summary> folder

#------------------------------------------------------------------------------------------


#-----------------------------------------------------------------------------------------
#number in the mapped mRNA reads in each genome bin
#to calculate the ratio of mRNA reads mapped to each MAG
n<-c(10,11,14,16,18,28,29,33,35,36,37,39,40,43,45,47,48,52,54,60,61,63,64,69,70,71,73,76,78,80,86,87,"AccIA","AccIB","AccIC")
#the numbers in the above line are bin ID

path_3 = as.character ("C:/Yubo/NU_work/Gaohan/DNA_RNA_mapping/RNA_mapping/")
setwd(path_3)
getwd()

m_1 <- matrix(0, ncol = 8)
reads_of_bins_at_6_timepoints <-data.frame(m_1)
colnames(reads_of_bins_at_6_timepoints)<-c("bin.id", "sum.gene.len", "sum.reads.Ac.1", "sum.reads.Ac.2", "sum.reads.Ac.3", "sum.reads.Pr.1", "sum.reads.Pr.2", "sum.reads.Pr.3")

  
for (i in 1:length(n))
{
  gff_tem<-read.delim(paste("./gff_info/bin.", n[i], 
                            ".gff.info.csv", sep=""),sep=",", header = T, stringsAsFactors = F)
  colnames(gff_tem)<-c("gene_id","annotation","gene_len")
  #gff_tem<-gff_tem[c("gene_id","annotation","gene_len")]
  gff_tem$gene_id<-sub("ID=", "", gff_tem$gene_id)
  gff_tem$gene_id<-paste(gff_tem$gene_id, "_mRNA", sep="")
  g.summary.tem<-read.delim(paste("./g.summary/g.", n[i], ".summary.csv", sep=""), sep=",", header=T, stringsAsFactors = F)
  colnames(g.summary.tem)[1]<-c("gene_id")
  g_temp<-merge(gff_tem, g.summary.tem, by= "gene_id", all.x=T, all.y=F)
  #add one row of the number of filtered mRNA sequences in each timepoint used in the mapping
  #check the mubers of reads in MILLION, differ from case to case
  #g_temp[nrow(g_temp)+1,]<-c(NA, NA, NA, 8.103505, 9.777407, 3.916520, 7.279628, 8.522852, 9.451007)
  #colnames(g_temp)
  #[1] "gene_id"    "gene_len"   "annotation" "RNA.Pr.3"   "RNA.Pr.2"   "RNA.Pr.1"   "RNA.Ac.3"   "RNA.Ac.2"   "RNA.Ac.1" 
  g_temp[,3:9]<-apply(g_temp[,3:9], 2, as.numeric)
  #add columns of rpkm calculation
  g_temp$pr.3<-g_temp$RNA.Pr.3*1000/(8.103505*g_temp$gene_len)
  g_temp$pr.2<-g_temp$RNA.Pr.2*1000/(9.777407*g_temp$gene_len)
  g_temp$pr.1<-g_temp$RNA.Pr.1*1000/(3.916520*g_temp$gene_len)
  g_temp$ac.3<-g_temp$RNA.Ac.3*1000/(7.279628*g_temp$gene_len)
  g_temp$ac.2<-g_temp$RNA.Ac.2*1000/(8.522852*g_temp$gene_len)
  g_temp$ac.1<-g_temp$RNA.Ac.1*1000/(9.451007*g_temp$gene_len)#colnames(g_temp)
  g_temp_1<-g_temp[,c("gene_id" , "annotation" , "gene_len", "ac.1", "ac.2", "ac.3", "pr.1", "pr.2", "pr.3")]
  write.table(g_temp_1, file=paste("bin.",n[i], ".rna.rpkm.csv", sep=""), sep=",", quote=F, col.names=T, row.names=F)
  g_temp_2<-g_temp[,c("gene_len", "RNA.Ac.1", "RNA.Ac.2", "RNA.Ac.3", "RNA.Pr.1", "RNA.Pr.2", "RNA.Pr.3")]
  g_temp_2[nrow(g_temp_2)+1,]<-c(sum(g_temp_2$gene_len), sum(g_temp$RNA.Ac.1), sum(g_temp$RNA.Ac.2),sum(g_temp$RNA.Ac.3),
                              sum(g_temp$RNA.Pr.1),sum(g_temp$RNA.Pr.2),sum(g_temp$RNA.Pr.3))
  g_temp_reads_sum<-g_temp_2[nrow(g_temp_2),]
  colnames(g_temp_reads_sum)<-c("sum.gene.len", "sum.reads.Ac.1", "sum.reads.Ac.2", "sum.reads.Ac.3", "sum.reads.Pr.1", "sum.reads.Pr.2", "sum.reads.Pr.3")
  g_temp_reads_sum$bin.id<-paste("bin.", n[i], sep="")
  g_temp_reads_sum<-g_temp_reads_sum[c("bin.id", "sum.gene.len", "sum.reads.Ac.1", "sum.reads.Ac.2", "sum.reads.Ac.3", "sum.reads.Pr.1", "sum.reads.Pr.2", "sum.reads.Pr.3")]
  reads_of_bins_at_6_timepoints<-rbind(reads_of_bins_at_6_timepoints, g_temp_reads_sum)
}
write.table(reads_of_bins_at_6_timepoints, file="reads_of_bins_at_6_timepoints.csv", sep=",", col.names = T, row.names = F, quote = F)

#--------------------------------------------------------------------------
#RPKM calculation of genes in each genome
#and summary of RPKM sum value of all genes in each MAGs
#number in the names of genome bins
n<-c(10,11,14,16,18,28,29,33,35,36,37,39,40,43,45,47,48,52,54,60,61,63,64,69,70,71,73,76,78,80,86,87,"AccIA","AccIB","AccIC")
#sum the rpkm of genes in each genome
path_3 = as.character ("C:/Yubo/NU_work/Gaohan/DNA_RNA_mapping/RNA_mapping/2nd_htseq/31_genomes/from_R/")
setwd(path_3)
getwd()
m_1 <- matrix(0, ncol = 7)
rpkm_of_bins_at_6_timepoints <-data.frame(m_1)
colnames(rpkm_of_bins_at_6_timepoints)<-c("bin.id", "sum.rpkm.Ac.1", "sum.rpkm.Ac.2", "sum.rpkm.Ac.3", "sum.rpkm.Pr.1", "sum.rpkm.Pr.2", "sum.rpkm.Pr.3")
m_2 <- matrix(0, ncol = 9)
rnarpkm_all_genes_in_genomes_6_timepoints <-data.frame(m_2)
colnames(rnarpkm_all_genes_in_genomes_6_timepoints)<-c("gene_id" , "annotation" , "gene_len", "ac.1", "ac.2", "ac.3", "pr.1", "pr.2", "pr.3")
for (i in 1:length(n))
{
  gff_tem<-read.delim(paste("./gff_info/bin.", n[i], ".gff.info.csv", sep=""),sep=",", header = T, stringsAsFactors = F)
  colnames(gff_tem)<-c("gene_id","annotation","gene_len")
  #gff_tem<-gff_tem[c("gene_id","annotation","gene_len")]
  gff_tem$gene_id<-sub("ID=", "", gff_tem$gene_id)
  gff_tem$gene_id<-paste(gff_tem$gene_id, "_mRNA", sep="")
  g.summary.tem<-read.delim(paste("./g.summary/g.", n[i], ".summary.csv", sep=""), sep=",", header=T, stringsAsFactors = F)
  colnames(g.summary.tem)[1]<-c("gene_id")
  g_temp<-merge(gff_tem, g.summary.tem, by= "gene_id", all.x=T, all.y=F)
  #add one row of the number of filtered mRNA sequences in each timepoint used in the mapping
  #check the mubers of rpkm in MILLION, differ from case to case
  #g_temp[nrow(g_temp)+1,]<-c(NA, NA, NA, 8.103505, 9.777407, 3.916520, 7.279628, 8.522852, 9.451007)
  #colnames(g_temp)
  #[1] "gene_id"    "gene_len"   "annotation" "RNA.Pr.3"   "RNA.Pr.2"   "RNA.Pr.1"   "RNA.Ac.3"   "RNA.Ac.2"   "RNA.Ac.1" 
  g_temp[,3:9]<-apply(g_temp[,3:9], 2, as.numeric)
  #add columns of rpkm calculation
  g_temp$pr.3<-g_temp$RNA.Pr.3*1000/(8.103505*g_temp$gene_len)
  g_temp$pr.2<-g_temp$RNA.Pr.2*1000/(9.777407*g_temp$gene_len)
  g_temp$pr.1<-g_temp$RNA.Pr.1*1000/(3.916520*g_temp$gene_len)
  g_temp$ac.3<-g_temp$RNA.Ac.3*1000/(7.279628*g_temp$gene_len)
  g_temp$ac.2<-g_temp$RNA.Ac.2*1000/(8.522852*g_temp$gene_len)
  g_temp$ac.1<-g_temp$RNA.Ac.1*1000/(9.451007*g_temp$gene_len)
  #9.451007	8.522852	7.279628	3.91652	9.777407	8.103505
  #colnames(g_temp)
  g_temp_1<-g_temp[,c("gene_id" , "annotation" , "gene_len", "ac.1", "ac.2", "ac.3", "pr.1", "pr.2", "pr.3")]
  write.table(g_temp_1, file=paste("bin.",n[i], ".rna.rpkm.csv", sep=""), sep=",", quote=F, col.names=T, row.names=F)
  rnarpkm_all_genes_in_genomes_6_timepoints<-rbind(rnarpkm_all_genes_in_genomes_6_timepoints,g_temp_1)
  g_temp_01<-g_temp[,c("ac.1", "ac.2", "ac.3", "pr.1", "pr.2", "pr.3")]
  g_temp_01[nrow(g_temp_01)+1,]<-c(sum(g_temp_01$ac.1), sum(g_temp$ac.2), sum(g_temp$ac.3),sum(g_temp$pr.1),
                                   sum(g_temp$pr.2),sum(g_temp$pr.3))
  g_temp_rpkm_sum<-g_temp_01[nrow(g_temp_01),]
  colnames(g_temp_rpkm_sum)<-c("sum.rpkm.Ac.1", "sum.rpkm.Ac.2", "sum.rpkm.Ac.3", "sum.rpkm.Pr.1", "sum.rpkm.Pr.2", "sum.rpkm.Pr.3")
  g_temp_rpkm_sum$bin.id<-paste("bin.", n[i], sep="")
  g_temp_rpkm_sum<-g_temp_rpkm_sum[c("bin.id", "sum.rpkm.Ac.1", "sum.rpkm.Ac.2", "sum.rpkm.Ac.3", "sum.rpkm.Pr.1", "sum.rpkm.Pr.2", "sum.rpkm.Pr.3")]
  #dim(g_temp_rpkm_sum)
  rpkm_of_bins_at_6_timepoints<-rbind(rpkm_of_bins_at_6_timepoints, g_temp_rpkm_sum)
}
rnarpkm_all_genes_in_genomes_6_timepoints$gene_id<-sub("_mRNA","",rnarpkm_all_genes_in_genomes_6_timepoints$gene_id)
rnarpkm_all_genes_in_genomes_6_timepoints<-rnarpkm_all_genes_in_genomes_6_timepoints[-1,]
write.table(rpkm_of_bins_at_6_timepoints, file="rpkm_of_bins_at_6_timepoints.csv", sep=",", col.names = T, row.names = F, quote = F)
write.table(rnarpkm_all_genes_in_genomes_6_timepoints, file="rnarpkm_all_genes_in_genomes_6_timepoints.csv",sep=",", col.names = T, row.names = F, quote = F)
