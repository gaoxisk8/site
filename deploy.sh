#! /bin/bash

#aws s3 cp ./node_modules s3://www.gaoxi.us/node_modules --recursive --acl public-read --profile default
#aws s3 cp ./resources s3://www.gaoxi.us/resources --recursive --acl public-read --profile default

aws s3 cp index.html s3://www.gaoxi.us --acl public-read --profile default
aws s3 cp noodles.html s3://www.gaoxi.us --acl public-read --profile default
aws s3 cp about.html s3://www.gaoxi.us --acl public-read --profile default
aws s3 cp plant.html s3://www.gaoxi.us --acl public-read --profile default
aws s3 cp yoga.html s3://www.gaoxi.us --acl public-read --profile default
aws s3 cp yarn.html s3://www.gaoxi.us --acl public-read --profile default

aws cloudfront create-invalidation --distribution-id E1XVFMS5DA2XIP --paths "/*" --profile default
