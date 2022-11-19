# algolia-docsearch-upload-action
# Inputs
## FILE_PATH
相对于仓库为根路径的index文件路径
## INDEX_NAME
algolia的index name
## APPLICATION_ID
algolia的APPLICATION_ID
## ADMIN_API_KEY
algolia的ADMIN_API_KEY

# Example

```yml
      - uses: actions/checkout@v2
      - name: example
        uses: github.com/0RAJA/algolia-docsearch-upload-action@master
        with:
          ADMIN_API_KEY: ${{ secrets.ADMIN_API_KEY }}
          APPLICATION_ID: ${{ secrets.APPLICATION_ID }}
          # needs to be inside $GITHUB_WORKSPACE from actions/checkout step
          FILE_PATH: index.json
          INDEX_NAME: index
```

algolia-docsearch-upload-action
参考<a href="https://www.freecodecamp.org/chinese/news/upload-algolia-index-with-github-action-build-by-myself/">文章</a>
以及<a href="https://github.com/darrenjennings/algolia-docsearch-action">action</a>