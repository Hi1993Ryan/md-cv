# Example script to generate HTML and push to local gh-pages directory.

# build site from markdown
jekyll build

# path on your system to your github pages repo checkout (if you deploy by copying _site into another repo)
# SITE_DIR=../Hi1993Ryan.github.io/  # example: copy into main site's static/md-cv/
SITE_DIR=../md-cv-deploy/

# remove old files
rm -R ${SITE_DIR}*

# re-add new
cp _site/index.html ${SITE_DIR}.
cp -R _site/media ${SITE_DIR}.
