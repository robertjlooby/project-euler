# Project Euler

Solutions to [Project Euler](https://projecteuler.net/) problems in Haskell

The primary branch is `source`. When PRs are merged to the `source` branch,
a CircleCI job builds the site, copies it to `/docs` on the `master` branch and
pushes it up where it's hosted on GitHub Pages at
[https://robertjlooby.github.io/project-euler/](https://robertjlooby.github.io/project-euler/).

### Building

1. `stack build` (only need to re-do this if `site.hs` has changed)
1. `stack exec project-euler -- build`

### Executing problems

1. `stack repl`
1. `:load problems/problem-<number>.lhs`

### Running tests

1. `stack test`
