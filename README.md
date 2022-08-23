# The Carpentries Workbench Resource Guide

<figure style='text-align: center'>
<p>
<img src="fig/hex-collection.jpeg" width="50%" alt="three isometric hex badges for The Carpentries Workbench representing the packages sandpaper, pegboard, and varnish. Each badge is styled to look like a tiny workshop working on a wooden carpentries logo with the package namesake highlighted.">
</p>
<figcaption style='display: block'></p>The Workbench is an accessible lesson infrastructure built in R</p></figcaption>
</figure>

::::::: {.callout-tip}

## Installation

To install the workbench, make sure you have a working version of R and 
pandoc/RStudio installed (see [the workbench setup instructions for 
details](https://carpentries.github.io/sandpaper-docs/)).

From there, you can install the workbench packages and their dependencies from
our [Carpentries R Universe](https://carpentries.r-universe.dev):

```r
install.packages(c("sandpaper", "varnish", "pegboard", "tinkr"),
  repos = c("https://carpentries.r-universe.dev/", getOption("repos")))
```

:::::::::::::::::::::::


::::::: {.callout-note}

## Workbench Beta Phase

**The Carpentries Workbench is currently in its Beta Phase an undergoing testing**
for the broader Carpentries Community including, but not limited to:

 - Maintainers (Official Lessons)
 - Lesson Developers (Community-curated Lessons)
 - Instructors
 - Trainers
 - Learners

If you would like to participate in the beta phase, you can

 - [find out more about our workbench through our Resource Guide](#resources),
 - **[introduce yourself](https://github.com/carpentries/workbench/discussions/1)**, and 
 - [give feedback via GitHub Discussions](https://github.com/carpentries/workbench/discussions/)

::::::::::::::::::::

## Resources

### Guides

 - [Official Workbench Documentation](https://carpentries.github.io/sandpaper-docs)
 - [Collaborative Lesson Development Training](https://carpentries.github.io/lesson-development-training/)

### Tools

 - [{sandpaper}](https://carpentries.github.io/sandpaper/): User interface and engine for the workbench
 - [{pegboard}](https://carpentries.github.io/pegboard/): Validation and parsing of lesson components
 - [{varnish}](https://carpentries.github.io/varnish/): HTML, CSS, and JavaScript templates
 - [(carpentries/actions)](https://github.com/carpentries/actions#readme): GitHub Actions for Workbench Workflows

### Templates

 - [R Markdown Lesson Template](https://github.com/carpentries/workbench-template-rmd)
 - [Markdown Lesson Template](https://github.com/carpentries/workbench-template-md)


### Inspired Examples

These are examples of lessons developed with The Workbench since the initial announcement: 

- Toby Hodges, Mateusz Kuzak, Aleksandra Nenadic, Sarah Stevens---[Collaborative Lesson Development Training](https://carpentries.github.io/lesson-development-training/)
- Saranjeet Kuar, Achintya Rao, Heather Turner, Aman Goel---[R's Bug Tracking](https://contributor.r-project.org/r-bug-tracking-lesson/)
- Saba Ferdous, David Pérez-Suárez---[Learn To Discover---Basic Python](https://learntodiscover.github.io/Basic_Python/) (note---this uses a custom fork of sandpaper, and varnish to run python)
- Philipp Matthias Schäfer---[GitLab Novice](https://zedif.github.io/gitlab-novice/)
- Michael Culshaw-Maurer---[Rewrite of the R Ecology Lesson](https://www.michaelc-m.com/Rewrite-R-ecology-lesson/)
