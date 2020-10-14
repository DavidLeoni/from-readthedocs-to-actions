
#QUICK TESTS START
#FROM python:3-alpine
#NOTE: there no apk in readthedocs
#RUN apk --no-cache add git make
#QUICK TESTS END

#FROM readthedocs/build:6.0
# I *really*  want something fixed !!! this corresponds to 6.0
FROM readthedocs/build@sha256:52c2b1a1091f39ca2a15d0bcceba903fd1f3bc354da5ad7b689d53c8cd4af01d

ADD entrypoint.sh /entrypoint.sh

# we need to override RTD 'docs' user:
# https://github.com/readthedocs/readthedocs-docker-images/blob/master/Dockerfile#L136
# because of this:
#https://help.github.com/en/actions/reference/virtual-environments-for-github-hosted-runners#docker-container-filesystem
USER root

ENTRYPOINT ["/entrypoint.sh"]