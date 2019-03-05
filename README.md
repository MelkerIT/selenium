# Selenium Docker environment
A repo for a Docker Selenium environment for projects used by Melker & Company.


## How-to
Run a container executing this command in the folder containing all `.side` files:

    docker run \
    	-v $(pwd):/tmp/data \
    	--rm \
    	-it \
    	melker/selenium:$tag --config-file "/tmp/data/chrome.env.yml"

Mount a folder containing all `.side` files and config files to `/tmp/data`.
