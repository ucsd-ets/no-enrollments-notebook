# https://github.com/jupyter/docker-stacks/blob/master/base-notebook/Dockerfile

# 1) choose a base container
ARG ROOT_CONTAINER=ubuntu:focal-20201106@sha256:4e4bc990609ed865e07afc8427c30ffdddca5153fd4e82c20d8f0783a291e241

ARG BASE_CONTAINER=$ROOT_CONTAINER
FROM $BASE_CONTAINER

# 2) switch to root to uninstall pip/conda/python
USER root

#RUN suso pip uninstall pip

USER $NB_UID