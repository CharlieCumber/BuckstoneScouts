poetry run python freeze.py
source .credentials/terraform.sh
aws s3 sync "build" "s3://buckstone-scouts-website/" --delete
aws cloudfront create-invalidation --distribution-id E3VSQEHON4UVZY --paths "/*"