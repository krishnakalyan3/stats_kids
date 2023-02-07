

```
1. navigate to https://posit.cloud/
2. New Projact
3. Project Name -> AnalyticsEdge

# Create a new book
quarto create-project analyticsedge --type book

# Maybe this is required
setwd("/cloud/project/analyticsedge/")

# Render WebUI
-> Render

# Render to PDF
quarto render --to pdf

# Edit _quarto.yml
project:
  type: book

book:
  title: "Analytics Edge"
  author: "Krishna Kalyan"
  date: "2/7/2023"
  chapters:
    - index.qmd

# Edit index.qmd
# Check out visual mode
# Complete as many questions as you can
# Export PDF

# Extra Points
quarto render


```

[Example](https://quarto.org/docs/get-started/hello/rstudio.html)
[Working Doc](https://krishnakalyan3.github.io/analyticsedge-book/)