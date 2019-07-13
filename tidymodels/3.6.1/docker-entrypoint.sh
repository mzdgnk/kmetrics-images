#!/bin/sh -eu
SAMPLES=/home/rstudio/mlwr-samples
if [ ! -e ${SAMPLES} ]; then
    git clone --depth 1 https://github.com/dataspelunking/MLwR.git ${SAMPLES}
    find ${SAMPLES} -type d -exec chmod 777 \{\} \;
    find ${SAMPLES} -type f -exec chmod a+w \{\} \;
fi
/init
