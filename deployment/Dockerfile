FROM gcr.io/google_appengine/base
LABEL maintainer='Sample Deployment 1'

ENV PATH="/google-cloud-sdk/bin:${PATH}"

RUN \
  curl -L -o google-cloud-sdk.zip \
    https://dl.google.com/dl/cloudsdk/release/google-cloud-sdk.zip && \
  unzip google-cloud-sdk.zip && \
  rm google-cloud-sdk.zip && \
  google-cloud-sdk/install.sh \
    --usage-reporting=true \
    --path-update=true \
    --bash-completion=true \
    --rc-path=/.bashrc \
    --disable-installation-options

COPY scripts/ /usr/bin
