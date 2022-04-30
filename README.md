## Deployment instructions

1. Create an AWS account
2. Register a new domain address
3. Create an AWS IAM Access Key
4. Run the terraform scripts (you will need to comment out the s3 backend block in main.tf)
5. Migrate the terraform state to the remote bucket
6. Install dependancies: `poetry install`
7. Upload the website: `source scripts/upload-website.sh`

## Running the site locally

1. Create you .env config file from the .env.template file
2. Run `poetry run flask run`
3. Visit [`http://localhost:5000/`](http://localhost:5000/) in your web browser


## TODO:

* Dark mode style
* Remake the uniform diagrams with current badges and branding
* Check for updated document for promise explained files
* Restyle the hero for mobile devices (currently the image banner is covered.)
* Add more images to the Volunteer page