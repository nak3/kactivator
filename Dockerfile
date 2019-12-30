FROM scratch
MAINTAINER nakayamakenjiro@gmail.com

COPY kactivator /
ENTRYPOINT ["/kactivator"]
