# clang-tidy-action

This action is for executing static analysis on your repository using by clang-tidy. You can check defects in Files changed tab of Pull Request.

## Inputs

### `exclude`

**Optional** keyword for excluding check

## Example usage

```
name: Static-Analysis

on:  
  push:
    branches: [ master ]
  pull_request:
    branches: [ master ]

jobs:
  hello_world_job:
    runs-on: ubuntu-latest
    steps:
    - name: checkout repo
      uses: actions/checkout@v2
    - name: run clang-tidy-action
      uses: kimhyungrok/clang-tidy-action@v1
      with:
        exclude: 'externals'
```
