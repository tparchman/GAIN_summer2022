I've started adding here things, I'll do a trimming and fixed text and all later

#### Tutorial Aims:

1. 
2.
3.

### R Markdown:

Markdown is an easy formatting syntax for creating HTML, PDF, and MS Word documents that serve as a neat and reproducible record of your analysis. Thus, other researchers or coworkers can easily understand what you did following your document. You might create an RMarkdown to present the results of a study, for example, or to keep a record of your work so you can quickly look back at your code and remember what you did.

1. The first thing you have to do is Open RStudio.

2. Then, to get RMarkdown working in RStudio, you need the rmarkdown package. You can get it running the following commands in RStudio:

```{r eval=FALSE}
install.packages("rmarkdown")
library(rmarkdown)
```

### Create an R Markdown document:

Go to your Rstudio and open a new R Markdown document:

<img width="402" alt="Captura de pantalla 2022-07-11 a las 16 38 05" src="https://user-images.githubusercontent.com/79876943/178289922-2a468e85-951f-423a-b06e-6e2da6fe397c.png">


A small screen appears, where you can add the document's name, your name, and specify the document format. By default, it's HTML; you can choose PDF or Word. **For this tutorial, please keep with HTML**. 

![2](https://user-images.githubusercontent.com/79876943/178290033-4e3d7e6a-d8b5-4fed-ae10-bf82d9af8336.png)


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

![3](https://user-images.githubusercontent.com/79876943/178290068-dcb07e39-5641-4cff-b636-e4d6fc5af73c.jpg)



### Markdown syntax:

RMarkdown makes use of Markdown syntax. Markdown is a straightforward 'markup' language that provides methods for creating documents with headers, images added, links, etc.


**Paragraph Breaks and Forced Line Breaks:**

* Include a single completely blank line to insert a break between sentences/paragraphs.

Copy in your document the following text and Knit your document as explained below (pressing the Knit button in the taskbar):

```{r eval=FALSE}
Earth is the third planet from the Sun and the only astronomical object known to harbor life. While large volumes of water can be found throughout the Solar System, only Earth sustains liquid surface water.
```

You'll see no break between sentences. Now delete the previous text and copy this; Knit again your document as explained below:

```{r eval=FALSE}
Earth is the third planet from the Sun and the only astronomical object known to harbor life. 

While large volumes of water can be found throughout the Solar System, only Earth sustains liquid surface water.
```

You'll see now a break between sentences.


**Headers:**

* The character # at the beginning of a line means that the rest of the line is interpreted as a section header. The number of #s at the beginning of the line indicates whether it is treated as a section, sub-section, sub-sub-section, etc., of the document. You can control the size of the headers by adding more #'s. 

Copy the following text and Knit again to see the results:

```{r eval=FALSE}
# Earth
####  From Wikipedia

```


**Italics, Boldface:**

* Text to be italicized goes inside a single set of underscores or asterisks.
* Text to be boldfaced goes inside a double set of underscores or asterisks.

Copy and Knit:

```{r eval=FALSE}
# Earth
####  From Wikipedia

**Earth** is the third planet from the *Sun* and the only astronomical object known to harbor life. 

While large volumes of water can be found throughout the _Solar System_, only __Earth__ sustains liquid surface water.
```


**List item:**

* Add an ordered (with a number and a period; for example, 1.) or a pointed list item (adding an asterisk). 

Copy and Knit:

```{r eval=FALSE}
# Earth
####  From Wikipedia

**Earth** is the third planet from the *Sun* and the only astronomical object known to harbor life. 

While large volumes of water can be found throughout the _Solar System_, only __Earth__ sustains liquid surface water.

1. Chronology
* Formation
* Geological history
* Origin of life
* Future

2. Hydrosphere
3. Atmosphere

```


**Adding hyperlinks:**

* Hyperlinks anchored to the text have the anchor in square brackets, then the link in parentheses. Copy and Knit:

```{r eval=FALSE}
[Link to the Earth Wiki](https://en.wikipedia.org/wiki/Earth#Life_on_Earth)
```


### Images:

Images begin with an exclamation mark, then the text to use, and then either the file address of the Image (in the same directory as your document) or a URL. Here are two examples, one for an image in the directory and one for a URL.

* **Insert an image from your computer:**

Download this [Image](https://www.nasa.gov/sites/default/files/thumbnails/image/3-as08-14-2383a.jpg) and save it on your computer. Then, copy the path where the Image it saved (for example: /home/Desktop/image.jpg) and copy this path in the code below:

```{r eval=FALSE}
![A local image](/the path where the picture is/image.jpg)
```

* **Insert an image from an URL:**
```{r eval=FALSE}
![A remote image](https://www.nasa.gov/sites/default/files/thumbnails/image/1-187_1003705_americas_dxm-2_0.jpg)
```

### Including Tables

---

### Including code chunks

---


### Running code 

---

