# rstudio::conf 2020 - Day 2

speaker: Jenny Bryan
title: Object of type 'closure' is not subsettable
url:  <https://github.com/jennybc/debugging>

Debugging strategies

- Reset | `R --no-save --no-restore-data`
  - Reset | Restart R often, especially when things get weird.
  - Reset | Don't Load a workspace, don't save a workspace
  - Clean Reproducible Workspace
  - R sessions are like crops; not houseplants.
  - R sessions are like livestock; not pets.

- Reprex | Minimal Reproducible Examples
  - Reprex: Render bits of R code for sharing, e.g., on GitHub or StackOverflow. 
  - <https://reprex.tidyverse.org>
  - No Reliance on hidden state
  - Helps to find a needle in a smaller haystack...
  - Start by
    - Simplifying the data
    - Inputs are small an simple
    - no extraneous functions
    - no unessecary function calls

- Debug | 
  - Get the 'Death Certificate'; i.e., the callstack
    - `traceback()`
    - `rlang::last_trace()`
  - Perform an autopsy: Look at the frames
    - `options(error = recover)`
  - Make existing live again
    - `debug(function_call); undebug(); debugonce();`
    - `browser()`

- Deter |
  - Fixed it once? Keep it fixed.
    - Package? Write a test.
    - Script? Write an assertion.
  - Automate Your Checks
    - `R CMD check`
    - `testthat::test_check()`
  - Run your checks on their machine.
    - Continuous Integration...
  