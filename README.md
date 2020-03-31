# cancersea: a simple R data package for curated cancer pathway-specific gene lists

A curated package of gene sets involved in cancer biology, taken from the CancerSEA database at http://biocc.hrbmu.edu.cn/CancerSEA/goDownload

Note that genes are those positively correlated (ie upregulated) with each process.

## Getting started

View avilable pathways:

```r
library(cancersea)
data('available_pathways')
available_pathways

 [1] "angiogenesis"    "apoptosis"       "cell_cycle"      "differentiation" "dna_damage"     
 [6] "dna_repair"      "emt"             "hypoxia"         "inflammation"    "invasion"       
[11] "metastasis"      "proliferation"   "quiescence"      "stemness" 
```

Then view a particular pathway:

```r
data('angiogenesis')

# A tibble: 6 x 2
  ensembl_gene_id symbol
  <chr>           <chr> 
1 ENSG00000139567 ACVRL1
2 ENSG00000101384 JAG1  
3 ENSG00000154188 ANGPT1
4 ENSG00000091879 ANGPT2
5 ENSG00000174059 CD34  
6 ENSG00000070831 CDC42 
```


