#!/bin/sh

# clear the temp pubic directory
# rm -rf site

# Generate static website. Files will be placed in site folder
# mkdocs build

# Move the files to S3 bucket for hosting
aws s3 sync ./ s3://zincsearch-website/ --profile=zinc-prod

# invalidate cloudfront cache so that latest files can be served
# aws cloudfront create-invalidation --distribution-id E2UMT5J75TQQR --paths=/* --profile=zinc-prod
