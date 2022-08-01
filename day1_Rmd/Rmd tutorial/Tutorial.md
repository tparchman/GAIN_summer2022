
# R Markdown:

Markdown is an easy formatting syntax for creating HTML, PDF, and Word documents that serve as a neat and reproducible record of your analysis. Thus, other researchers or coworkers can easily understand what you did following your document. You might create an RMarkdown to present the results of a study, for example, or to keep a record of your work so you can quickly look back at your code and remember what you did.

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

**You are going to see some code under the YAML section. Please, delete all, as we will add late our own code.** 


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

Download this [Image](https://upload.wikimedia.org/wikipedia/commons/5/5c/Plantago_nivalis_flower.JPG) and save it on your computer. Then, copy the path where the Image is saved (for example: /home/Desktop/image.jpg) and copy this path in the code below:

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


Copy the below code inside a code chunk:

```{r, echo=FALSE}
install.packages("knitr")
library(knitr)
data_flowers <- read.csv("path_to_the_table/flowers_altitude.csv", sep = ",")
kable(data_flowers, digits = 2)
```


We do not want to show our code in the Rmd document, so add **"echo=FALSE"** in the code chunk (as shown below). The code will be evaluated when the Rmd file is knit; however, only the output will be rendered on the output document.


Then, you can run the code and have the output of the code just beneath the code chunk. Click on the green arrow:

<img width="1207" alt="texto14" src="https://user-images.githubusercontent.com/79876943/179018264-4087fcea-8026-4e3b-b732-08a052a5055d.png">


You have also different options for running the code here:

<img width="1102" alt="texto13" src="https://user-images.githubusercontent.com/79876943/179017010-dc105414-ebfd-4deb-98c6-55ab43d967ce.png">


If you Knit, you are going to see the Table included in your Rmd document, and the code hidden as we set **"echo=FALSE"**:

<img width="1117" alt="texto11" src="https://user-images.githubusercontent.com/79876943/178971983-bc01d483-3329-4465-9a64-6a41a1fbba0f.png">


 #### There are many other instructions that you can give to the code chunk. For example:

 | Instruction | Code to add (default option) | Function |
|:------|:-----:|-------:|
| echo    | echo=TRUE   | Whether to echo the source code in the output document  |
| eval    | eval=TRUE  |  Whether to evaluate a code chunk   |
| message    |  message=FALSE   | Whether to display messages that are generated by code  |
| warning    |  warning=TRUE   | Whether to display warning messages   |
| error    | error=FALSE    | Whether to display error messages   |
| fig.width, fig.height	   | fig.width=7	    | Include width/height (in inches) in the plots   |
| fig.align    | fig.align="left"	 | Align plots: "left" "right" "center"   |
| fig.cap   | fig.cap="your caption here"	 | Whether to include figure caption   |
| collapse    | collapse=FALSE	 | Whether to merge text output and source code into a single code block   |


 #### Code chunk examples:

* Now, change to **"echo=TRUE"**, and see how the code is shown in the Rmd document along with the output Table, like this:

<img width="1142" alt="texto18" src="https://user-images.githubusercontent.com/79876943/179470922-78a76826-8f19-4eac-8a32-b7f1fafccada.png">

* Try with **"eval=TRUE"** first, and the code and Table will be shown, and then try **"eval=FALSE"**, and only you will see the code displayed, without evaluating it:

<img width="1089" alt="texto19" src="https://user-images.githubusercontent.com/79876943/179478330-0b07534b-f836-43e5-a089-5f956ea7c3a6.png">

<img width="1064" alt="texto20" src="https://user-images.githubusercontent.com/79876943/179478390-f1c47c6f-a866-4692-a8c7-f365818f247a.png">


Now, we can explore our data a little bit. Copy and run the below code:

```{r}
# summary(data_flowers)
# plot(N_of_flowers ~ Altitude, data=data_flowers, xlab="Number of flowers", ylab="Altitude")
```

First, the summary function gives you information about the data:

<img width="684" alt="texto15" src="https://user-images.githubusercontent.com/79876943/179021013-a2bd5691-0f80-44ce-87ba-9f4762ce3f3f.png">

Then, you can see the plot beneath the code chunk:

<img width="753" alt="texto16" src="https://user-images.githubusercontent.com/79876943/179021182-bab566e0-89fc-40f1-86b5-5b58264930ea.png">

If you Knit, the results will appear included in the document:

![last_text](https://user-images.githubusercontent.com/79876943/179484096-24c6eff3-e4f2-4d7f-af18-2fd3a3e11f99.jpg)


You can try different code chunk options; for instance:

* Collapse the output and code with **collapse=TRUE**:

<img width="951" alt="texto21" src="https://user-images.githubusercontent.com/79876943/179483656-5f751624-668b-42b0-b3a7-38253705533e.png">


* Add a caption to the Plot with **fig.cap="Figure 1"**:

<img width="911" alt="texto22" src="https://user-images.githubusercontent.com/79876943/179483510-c20b85f1-c207-4baa-b1a1-dcf37d44ee5c.png">


* Align the Plot with **fig.align="right"**:

<img width="870" alt="texto23" src="https://user-images.githubusercontent.com/79876943/179483368-c653e820-9d51-4f92-be7f-3d98ac802c32.png">

## Examples of outputs and formats you can create using R Markdown:

If you want to explore more utilities, [here](https://github.com/tparchman/GAIN_summer2022/tree/main/day1_Rmd/Rmd%20examples) you can find an Rmd document and the rendered HTML.

You can use Rmd also to create:
1. [presentations](http://svmiller.com/rmarkdown-example.pdf),
2. [websites](https://rmarkdown.rstudio.com), 
3. or combine Rmd with different R packages to create [interactive documents](https://rpubs.com/jcheng/leaflet-layers-example), 
4. or even [books](https://r4ds.had.co.nz) 


