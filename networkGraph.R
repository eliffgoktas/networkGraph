# Network Graph Examples  #################################

# EXAMPLE 1
# Word adjacencies: adjacency network of common adjectives and nouns in the novel David Copperfield by Charles Dickens.
# M. E. J. Newman, Phys. Rev. E 74, 036104 (2006).
# http://www-personal.umich.edu/~mejn/netdata/

# create a file for the work
if(!file.exists("NetworkGraph")) {
        dir.create("NetworkGraph")
}

# set working directory
setwd("NetworkGraph")

# download file
url <- "http://www-personal.umich.edu/~mejn/netdata/adjnoun.zip"
if(!file.exists("adjnoun.zip")) {
        download.file(url, destfile="adjnoun.zip")
}

unzip("adjnoun.zip")

# read gml file
# install.packages("igraph")
library(igraph)
adjNoun <- read.graph("adjnoun.gml", format = c("gml"))

plot(adjNoun)

# EXAMPLE 2
# Les Miserables: coappearance network of characters in the novel Les Miserables.
# D. E. Knuth, The Stanford GraphBase: A Platform for Combinatorial Computing, Addison-Wesley, Reading, MA (1993).
# http://www-personal.umich.edu/~mejn/netdata/

# download file
urlLesMis <- "http://www-personal.umich.edu/~mejn/netdata/lesmis.zip"
if(!file.exists("lesmis.zip")) {
        download.file(urlLesMis, destfile="lesmis.zip")
}

unzip("lesmis.zip")

lesMis <- read.graph("lesmis.gml", format = c("gml"))

plot(lesMis)

# add some style
plot(lesMis,
     vertex.size=9,
     vertex.label.family="Arial",
     vertex.color=rgb(0.5, 0.3, 0.3, alpha = 0.3),
     vertex.label.color="black",
     vertex.label.cex = 0.7)
