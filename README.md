# Jupyter-to-PDF
  Convert Jupyter notebook files to PDF

## Usage 

This is example on how to use this action and using `peter-evans/create-pull-request` to create a pull requests with the converted Markdown files to the repository

Add this to `.github/workflow/action.yml`



```
name: Jupyter to PDF
on:
  push:
    paths:
      - '**.ipynb'
jobs:
  convert:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v2
      with:
        ref: ${{ github.head_ref }}
    - name: Jupyter Notebooks to PDF
      uses: MohamedElashri/Jupyter-to-PDF@v1
    - name: Create Pull Request
      uses: peter-evans/create-pull-request@v3
      with:
        commit-message: Pull request with the Convreted markdown files
        committer: Mohamed Elashri <MohamedElashri@users.noreply.github.com>
        title: Convert file from .ipynb to .pdf 
        body: This is an auto-generated PR
        branch: PDF
```

`branch` and `base` can't be the same. `branch` is where the automatic pull requests will be pushed  
