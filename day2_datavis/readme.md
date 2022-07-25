# Data Visualizaiton

Data visualization is a key component to any scientific journal or popular science article. Being able to tell a compelling story using just the data at hand should be the goal of any figure. 

All of the code generating figures will be done in **R** using the package **ggplot2**. While I hope to incorporate some philosphy of good data visualization practices, a majority of these modules will be a *how to* on generating various types of figures within ggplot.

## ggplot2 - Grammar of graphics

[ggplot2 wiki](https://en.wikipedia.org/wiki/Ggplot2#:~:text=ggplot2%20is%20a%20data%20visualization,such%20as%20scales%20and%20layers.)

ggplot2 is one of the most widely used R packages and graphical programs. It breaks everything into *scales* and *layers*, allowing quick manipulaion of complex figure types. While it is very easy to get simple figures made, customization requires a more in-depth understanding of what is happening *under the hood*. Once you understand how to format your data in a manner ggplot works well with, it becomes largely intuitive. 

## Resources: 

Below is a all open-source book and course all on data visualization in R
- https://clauswilke.com/dataviz/
- https://wilkelab.org/SDS375/

R basics for those needing a refresher:
- https://rpubs.com/chalsch/intro_to_R

## Install R and RStudio Desktop

Both these programs are free and open-source. R is the actual program while RStudio is a user-friendly GUI (graphical user interface) to run R. 

- https://www.r-project.org/
- https://rstudio.com/products/rstudio/download/

It is possible to set up an R Jupyter Notebooks but it the interface of RStudio is much more user friendly.

## How to use this github repository

Many of the primers or modules will be in a *'.Rmd'* format but files can be easily viewed by opening the *'.html'* formatted file. Github does not support visual output for Rmarkdown file types and the html just looks nicer in general. I **HIGHLY** recommend using RStudio or base R to run scripts and play with your code. Each Rmd will be accompanied with a *follow* R script. The follow R script will have the same code so you can follow along with the primers. 

### This repository includes: 
- Philosophy_Figures.pdf (general best practices for figure making)
- Intro_ggplot2.Rmd (an introduction primer to ggplot)
- Assignment-DataVis-ggplot.Rmd (a blank Rmd with tasks to practice. All information to complete tasks should be in Intro_ggplot2 primer)
- ggmap_ex.Rmd (examples to make maps from state data and using Google Maps in R)

#### Intro_ggplot2 primer 

The R markdown and html is a very thorough introduction to the interworkings of ggplot. This should be useful for someone who has never used ggplot to even the more advanced users. Even if you are well versed in ggplot, take a look at this module as it sets up how the rest of the module figures will be structured

This module covers:

- how to format your data before ploting (*long vs wide*)
- brief introduction to summarizing data using *tidyverse*
- the structure of ggplot (*layers* and *aesthetics*)
- Various types of plots from simple to relatively complex
- changing colours, fonts, shapes, etc. within your figure (*scales*)
- changing overall layout of figure (*theme*)
- combining multiple figures into one (*patchwork*)