FROM mzdgnk/jverse:3.5

# Install R packages for Machine Learning with R (alphanureric order) and others
# for Machine Learning with R
RUN install2.r --error --skipinstalled --repos https://cloud.r-project.org \
  adabag arules C50 caret class data.table doParallel e1071 ff ffbase foreach \
  gmodels httr igraph ipred irr kernlab neuralnet psych randomForest \
  RCurl rio rjson ROCR RODBC rpart rpart.plot rvest RWeka \
  snow SnowballC tm vcd wordcloud XML xml2

# for model and infer process
RUN install2.r --error --skipinstalled --repos https://cloud.r-project.org \
  car FNN iBreakDown kknn klaR MLmetrics ranger

# Other Packages
RUN install2.r --error --skipinstalled --repos https://cloud.r-project.org \
  BiocManager DiagrammeR DT ggrepel GGally learnr profvis rmdformats skimr summarytools

# `modeest` package needs Bioc package
RUN Rscript -e "BiocManager::install(c('genefilter'))" \
  && install2.r --error --skipinstalled --repos https://cloud.r-project.org \
    modeest

# install package from GitHub
RUN Rscript -e "devtools::install_github('k-metrics/ggbiplot', \
                                         build_opts = c('--no-resave-data', \
                                         '--no-manual'))"
