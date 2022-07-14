
# R Markdown:

Markdown is an easy formatting syntax for creating HTML, PDF, and MS Word documents that serve as a neat and reproducible record of your analysis. Thus, other researchers or coworkers can easily understand what you did following your document. You might create an RMarkdown to present the results of a study, for example, or to keep a record of your work so you can quickly look back at your code and remember what you did.

[Here](https://bookdown.org/yihui/rmarkdown-cookbook/), you have the R Markdown Cookbook, with detailed explanations of all its utilities.

## Install R Markdown:

1. The first thing you have to do is Open RStudio.

2. Then, to get RMarkdown working in RStudio, you need the rmarkdown package. You can get it running the following commands in RStudio:

```{r eval=FALSE}
install.packages("rmarkdown")
library(rmarkdown)
```

## Create an R Markdown document:

Go to your Rstudio and open a new R Markdown document:

<img width="269" alt="1_1" src="https://user-images.githubusercontent.com/79876943/178733450-f731959f-9364-47f7-88c9-26e22575df93.png">


A small screen appears, where you can add the document's name, your name, and specify the document format. By default, it's HTML; you can choose PDF or Word. **For this tutorial, please keep with HTML**. 

<img width="491" alt="2_2" src="https://user-images.githubusercontent.com/79876943/178733511-af6c7a0b-7475-467b-8c04-78ff26a75499.png">


## The YAML header:

The first thing you will see in your document is this YAML header section enclosed by ---. This includes the title, author, date, and file type you want to output by default.  You can modify the document details by changing the YAML header section. You can also use the header to tell R Markdown whether you want it to render to HTML (html_document; the default), PDF (pdf_document), or something else. 

```{r eval=FALSE}
---
title: "My Rmd document"
author: Your name
date: 08/2022
output: html_document
---
```

**You are going to see some code under the YAML section. Please, delete all, as we will add late or own code.** 


Now that we have our first piece of content, we can test the .Rmd file by compiling it to .html. To compile your .Rmd file into a .html document, you should press the **Knit button in the taskbar**. By default, RStudio opens a separate preview window to display the output of your .Rmd file. A preview appears, and a .html file is also saved to the same folder where you saved your .Rmd file.

<img width="337" alt="3_3" src="https://user-images.githubusercontent.com/79876943/178733671-331dc476-b518-4ca2-9781-e0103f444de2.png">


## Markdown syntax:

RMarkdown makes use of Markdown syntax. Markdown is a straightforward 'markup' language that provides methods for creating documents with headers, images added, links, etc. We are going to add some text to our document. Copy the text below and Knit as explained above:

```{r eval=FALSE}
The snow star or Plantago nivalis is a non-endangered endemic plant of Sierra Nevada (Spain), which grows exclusively above 3,000 m. 
It is considered a symbol of these Mountains. It is a species that, although it is maintained from the beginning of the thaw until the low temperatures return after the summer, can only be seen in bloom for a few days since its flowers are very brief. They grow on long stems that start from the inside of the fleshy star-shaped rosette. They are clusters of tiny yellow flowers, with the usual form in the genus Plantago.
```
<img width="1257" alt="texto1" src="https://user-images.githubusercontent.com/79876943/178735918-4cfed9ea-345b-402f-84c7-63a6dd4ffc3a.png">

###  **Headers:**

* The character # at the beginning of a line means that the rest of the line is interpreted as a section header. The number of #s at the beginning of the line indicates whether it is treated as a section, sub-section, sub-sub-section, etc., of the document. You can control the size of the headers by adding more #'s. 

Copy the following text and Knit again to see the results:

```{r eval=FALSE}
 # Plantago nivalis
####  The snow star

The snow star or Plantago nivalis is a non-endangered endemic plant of Sierra Nevada (Spain), which grows exclusively above 3,000 m. 
It is considered a symbol of these Mountains. It is a species that, although it is maintained from the beginning of the thaw until the low temperatures return after the summer, can only be seen in bloom for a few days since its flowers are very brief. They grow on long stems that start from the inside of the fleshy star-shaped rosette. They are clusters of tiny yellow flowers, with the usual form in the genus Plantago.
```
<img width="1252" alt="texto2" src="https://user-images.githubusercontent.com/79876943/178736445-d31d1b72-2d51-43d5-ba4b-36c97e790ecc.png">


###  **Paragraph Breaks and Forced Line Breaks:**

* Include a single completely blank line to insert a break between sentences/paragraphs.

```{r eval=FALSE}
 # Plantago nivalis
####  The snow star

The snow star or Plantago nivalis is a non-endangered endemic plant of Sierra Nevada (Spain), which grows exclusively above 3,000 m. 

It is considered a symbol of these Mountains. It is a species that, although it is maintained from the beginning of the thaw until the low temperatures return after the summer, can only be seen in bloom for a few days since its flowers are very brief. They grow on long stems that start from the inside of the fleshy star-shaped rosette. They are clusters of tiny yellow flowers, with the usual form in the genus Plantago.
```
<img width="1238" alt="texto3" src="https://user-images.githubusercontent.com/79876943/178735995-7a388d48-6a29-41e5-bafb-34371595bfaa.png">

###  **Italics, Boldface:**

* Text to be italicized goes inside a single set of underscores or asterisks.
* Text to be boldfaced goes inside a double set of underscores or asterisks.

Copy and Knit:

```{r eval=FALSE}
# *Plantago nivalis*
####  The snow star

**The snow star** or *Plantago nivalis* is a non-endangered endemic plant of Sierra Nevada (Spain), which grows exclusively above 3,000 m. 

It is considered a symbol of these Mountains. It is a species that, although it is maintained from the beginning of the thaw until the low temperatures return after the summer, can only be seen in bloom for a few days since its flowers are very brief. They grow on long stems that start from the inside of the fleshy star-shaped rosette. They are clusters of tiny yellow flowers, with the usual form in the genus *Plantago*.
```
<img width="1220" alt="texto4" src="https://user-images.githubusercontent.com/79876943/178736054-2b5885fd-c67c-4b3c-80af-3c09e18cd27f.png">

###  **List item:**

* Add an ordered (with a number and a period; for example, 1.) or a pointed list item (adding an asterisk). 

Copy and Knit:

```{r eval=FALSE}
1. Description:
* Flowers
* Leaves
* Seeds

2. Habitat
3. Conservation
```
<img width="1205" alt="texto5" src="https://user-images.githubusercontent.com/79876943/178736077-15223b40-95e6-4795-b2fb-d2a028d48157.png">

###  **Adding hyperlinks:**

* Hyperlinks anchored to the text have the anchor in square brackets, then the link in parentheses. Copy and Knit:

```{r eval=FALSE}
Press [here](https://en.wikipedia.org/wiki/Plantago_nivalis) to know more
```
<img width="1391" alt="texto6" src="https://user-images.githubusercontent.com/79876943/178736105-c1512b61-4d9f-4156-9535-587e1cd8006c.png">


## Images:

Images begin with an exclamation mark, then the text to use, and then either the file address of the Image (in the same directory as your document) or a URL. Here are two examples, one for an Image in the directory and one for a URL.

* **Insert an Image from your computer:**

Download this [Image](https://upload.wikimedia.org/wikipedia/commons/5/5c/Plantago_nivalis_flower.JPG) and save it on your computer. Then, copy the path where the Image it saved (for example: /home/Desktop/image.jpg) and copy this path in the code below:

```{r eval=FALSE}
![A local Image](/the path where the picture is/image.jpg)
```

* **Insert an Image from an URL:**
```{r eval=FALSE}
![A remote Image](http://www.florasilvestre.es/mediterranea/Plantaginaceae/Plantago_nivalis.jpg)
```
<img width="1283" alt="texto7" src="https://user-images.githubusercontent.com/79876943/178951802-ec27ffd4-4e87-44e8-aef1-718ff8fdb671.png">


* **Resize the Images:**
You can control the size of the Images by modifying width and height; you can resize the Image to 75%, 50%, 25% of whatever size needed, adding the following text: {#id .class width=100% height=100%}

<img width="1508" alt="texto10" src="https://user-images.githubusercontent.com/79876943/178951832-2caac7ba-07bf-4cde-b613-7025250b6b0b.png">


## Tables:


* **You can create small tables using markdown syntax:**

For example, copy and paste this text and Knit:

```{r eval=FALSE}
| Plant | Flowers | Altitude |
|:------|:-----:|-------:|
| 1     | 2  | 3000   |
| 2     | 4    | 4000   |
| 3     | 5    | 5000   |
```
<img width="940" alt="texto8" src="https://user-images.githubusercontent.com/79876943/178952364-2e4374dc-5d3d-4757-8ef0-6ec98aca1797.png">

The :-----: tells markdown that the line above should be treated as a header and the lines below should be treated as the body of the table. Text alignment of the columns is set by the position of :


| Syntax | Alignment |
|:------|:-----:|
| :----:     | Centre | 
| :-----    | Left    | 
| -----:    | Right   | 
| ------    | Auto   | 

## Including code chunk: 

R Markdown lets you include your code, have the code run automatically when your document is rendered, and include the results of that code in your document. 

The code chunk is preceded by three backward apostrophes following by {r} on a line by itself and ended by a line with three backward apostrophes; like this:

<img width="91" alt="texto9" src="https://user-images.githubusercontent.com/79876943/178946885-2faac276-7edb-4640-9f35-5444ed74da8a.png">

You can manually add the code chunk or click here:

<img width="1154" alt="texto12" src="https://user-images.githubusercontent.com/79876943/178969041-1f7d2f6c-da27-4aca-a445-130b3f3d9973.png">


Now, download this [Table]() in ".csv" format. We are going to read it from our computer and include the Table in the Rmd document.

Copy the below code inside a code chunk and Knit:

```{r, echo=FALSE}
install.packages("knitr")
library(knitr)
data_flowers <- read.csv("path_to_the_table/flowers_altitude.csv", sep = ",")
kable(data_flowers, digits = 2)
```
You have included the Table in your document, and you have also included the first chunk of code!

<img width="1117" alt="texto11" src="https://user-images.githubusercontent.com/79876943/178971983-bc01d483-3329-4465-9a64-6a41a1fbba0f.png">

Here XXXXX:

```{r}
# data <- read.csv("Cosas/prueba.csv", sep = ";")
# summary(data_flowers)
# plot(XX ~ XX, data=data_flowers, xlab="Number of flowers", ylab="Altitude")
```
XXXXXX
