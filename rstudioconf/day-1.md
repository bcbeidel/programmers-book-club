# Rstudio Conf

## Keynote: JJ Allaire (CEO Rstudio)

Title: Free and Open Source Software For Data Science

Background

- Introduced to idea that Highly Consequential Decisions being made, without data, Bill James Baseball Book
- Used software provide leverage for decision making
- Dropped out of PhD program, to pursue software

Why Free and Open Source?

- Gratis versus Libra

- Four Essential Freedoms of Open Source Software (GNU)
  - Reproducibility
  - Resiliency
  - Participation
  - Accessibility

## Keynote: Data Visualization and Designing with AI

- Fernanda Viegas (Google AI)
- Martin Wattenberg (Google AI)

- "Debug your data first, not your program"
  - dataset - <https://www.cs.toronto.edu/~kriz/cifar.html>
  - Display facet visualizations, confusion matrixes and other plots with using the images
  - softmax plot, building up to pick out mistakes and understand what is going on
- <https://pair-code.github.io/facets/>

- "ML Fairness Vis & Simulation"
  - Discrimination in Machine Learning
    - <https://research.google.com/bigpicture/attacking-discrimination-in-ml/>
  - What-If Tool
    - <https://github.com/pair-code/what-if-tool>
    - built into google cloud

- "What about analyzing models?"
  - Data in high dimensions
  - <https://projector.tensorflow.org/>
  - Word Embeddings
    - Related words end up near each other
    - meaningful directions in space relationship between words
  - Direction in high dimensions has meaning
    - TCAV
    - <https://github.com/tensorflow/tcav>
    - <https://towardsdatascience.com/tcav-interpretability-beyond-feature-attribution-79b4d3610b4d>
    - pick a layer inside the network

- "From Interpretability to Controllability"
  - Applying tcav to images (SMILY)
    - <https://ai.googleblog.com/2019/07/building-smily-human-centric-similar.html>

- <https://pair.withgoogle.com/>

## Session 1: Programming

Location: Plaza Room
Time: 11:30a - 1:00p

## Simplified Data Quality Monitoring of Dynamic Longitudinal Data: A Functional Programming Approach

Jacqueline Gutman, Flatiron Health

### Core Principles of Functional Programming

- Functions
- That can be composed into higher order functions
- Clear, Declarative Names
- Purity, (avoid side effects)

- Robustness: Testability and elegant rerror andnling
  - `purrr::safely`
- Efficiency
  - cache `memoise`


## 

Side Effects
- render, generate, plot

## Tools

- Nested Data Structures (Tibbles for Tibbles)
- Package Development
- Differentiated Code Review

`purrr::compose` - take a piped workflow, into a higher order function

## Hitting R - 100,000 million times a day

- T-Mobile
- Tools: Keras, Plumber, Docker, Kubernetes

- Unit Testing A Model
  - 'Unit Testing == bowling lane bumpers"
  - "I am a customer" should return 0.95 confidence that they are a customer
  - These constraints are too hard to keep up to date, and are arbitrary,
  - Pick and choose your battles carefully

- Curously Slow Response
- logging: `log4r`
- load testing: `loadtest`
- Problems:
  - Garbage Collection
  - Connection Timeout

- https://putrinprod.com/

## Asynchronous programming in R

Winston Chang, RStudio

Asynchronous Programming in R

- package: later
- package: chromate
- package: httpuv


Grand Ballroom A - Session 3: Programming
4:00p - 5:30p

Getting things logged
Gergely Daroczi, System1

Technical debt is a social problem
Mr. Gordon Shotwell, Socure

Parallel computing with R using foreach, future, and other packages
Bryan Lewis

Future: Simple Async, Parallel & Distributed Processing in R - What's Next?
Henrik Bengtsson, University of California, San Francisco

## Resources

### Tensorflow in R

- <https://blogs.rstudio.com/tensorflow/> | TensorFlow for R: TensorFlow for R Blog
- <https://github.com/rstudio/tfhub> | rstudio/tfhub: R interface to TensorFlow Hub
- <https://tensorflow.rstudio.com/> | TensorFlow for R
- <https://github.com/rstudio/tensorflow> | rstudio/tensorflow: TensorFlow for R
- <https://github.com/rstudio/keras> | rstudio/keras: R Interface to Keras
- <https://github.com/t-kalinowski/tfautograph> | t-kalinowski/tfautograph: Autograph R for tensorflow
- <https://github.com/rstudio/tfprobability> | rstudio/tfprobability: R interface to TensorFlow Probability
- <https://github.com/rstudio/tfdatasets> | rstudio/tfdatasets: R interface to TensorFlow Datasets API

### Production APIs in R w/ Plumber

- https://putrinprod.com/ | Put R in prod
- <https://medium.com/tmobile-tech/loadtest-an-r-package-for-load-testing-23efeeb370a5> | loadtest: an R Package for Load Testing - T-Mobile Tech - Medium
- <https://github.com/sol-eng/plumbpkg> | sol-eng/plumbpkg: Example R package that includes Plumber APIs
- <https://www.rplumber.io/> | plumber
- <https://github.com/rstudio/plumber> | rstudio/plumber: Turn your R code into a web API.

### Production UIs in R w/ Shiny

- <http://bit.ly/shinymeta-talk> | Shiny Meta Talk
- <https://github.com/rstudio/shinymeta> | rstudio/shinymeta: Record and expose Shiny app logic using metaprogramming
- <https://github.com/rstudio/bootstraplib> | rstudio/bootstraplib: Tools for theming shiny and rmarkdown from R via Bootstrap (3 or 4) Sass.
- <https://rstudio.github.io/bootstraplib/> | Tools for styling shiny and rmarkdown from R via Bootstrap (3 or 4) Sass. • bootstraplib
- <https://github.com/ThinkR-open/golem> | ThinkR-open/golem: A Framework for Building Robust Shiny Apps
- <https://thinkr-open.github.io/building-shiny-apps-workflow/> | Engineering Production-Grade Shiny Apps
- <https://thinkr-open.github.io/golem/> | A Framework for Robust Shiny Applications • golem

### Keynote: Google - ML & Visualizations

- <https://research.google.com/bigpicture/attacking-discrimination-in-ml/> | Attack discrimination with smarter machine learning
- <https://pair-code.github.io/facets/> | Facets - Visualizations for ML datasets
- <https://github.com/pair-code/what-if-tool> | PAIR-code/what-if-tool: Source code/webpage/demos for the What-If Tool
- <https://projector.tensorflow.org/> | Embedding projector - visualization of high-dimensional data
- <https://github.com/tensorflow/tcav> | tensorflow/tcav
- <https://pair.withgoogle.com/> | People + AI Guidebook

### R Utility Packages

- <https://github.com/rstudio/pins> | rstudio/pins: Pin, Discover and Share Resources
- <https://github.com/r-lib/later> | r-lib/later: Schedule an R function or formula to run after a specified period of time.
- <https://github.com/rstudio/chromote> | rstudio/chromote: Chrome Remote Interface for R
- <https://github.com/collectivemedia/tictoc> | collectivemedia/tictoc: R package with extended timing functions tic/toc, as well as stack and list structures.
- <https://github.com/r-lib/here> | r-lib/here: A simpler way to find your files
- <https://github.com/sparklyr/sparklyr> | sparklyr/sparklyr: R interface for Apache Spark
