---
title: "Intro to R and Shiny"
output: pdf_document
---

# Intro to R

### How to make text fancy:

-   Italics:\
    `*Hello World*`\
    *Hello World*

-   Bold:\
    `**Hello World**`\
    **Hello World**

-   Different Heading:  

    -   Heading 1 (big):
        -   `# Hello World`
    -   Heading 2 (small):
        -   `## Hello World`
    -   Heading 1 (smaller):
        -   `### Hello World`

### Lists

-   item 1
-   item 2
-   item 3
    -   item 3a
    -   item 3b
        -   item 3ba
        -   item 3bb
        
### Tables
First you create the headings of the table and then section it off, and then add info like normal
```
H1 | H2
----- | -----
T1 | T2
T3 | T4
```
H1 | H2
----- | -----
T1 | T2
T3 | T4
```  
  
```
### Using Scripts
To make a fancy outline around commands use:  
"```{r}"
"```"

* This is how to add a title to a Script. (use command `paste0`)
```{r}
paste0("Hello World")
```

* This is how we can summarize a dataset called. (use command `summary()`)
```{r}
summary(cars)
```

* This is how to figure out how many rows there are in the dataset. There are 50 rows in cars. (use command `nrow()`)
```{r}
nrow(cars)
```

# Shiny
Shiny can be used to create Web Apps
Basic App:  
* First you activate the library shiny
* Then you create a UI with `ui <- fluidPage()`
* Write smth in the UI such as a title with `titlePanel()`
* Create a server with `server <- function(input, output){}`
* lastly run the app with `shinyApp(ui, server)`
```
```
```
library(shiny)
ui <- fluidPage(
  titlePanel("JGD")
)
server <- function(input, output){
  
}
shinyApp(ui, server)
```