# selenium-chrome
A repo for a Docker Selenium environment


# How-to
Run a container using this command:

docker run --rm -it -v $(pwd):/tmp/data melker/selenium:$tag --config-file "/tmp/data/chrome.env.yml"

Mount a folder containing all .side files and config files to /tmp/data.