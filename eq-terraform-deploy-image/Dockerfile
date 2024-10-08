#
# Dockerfile for terraform
#

FROM gcr.io/google.com/cloudsdktool/cloud-sdk:alpine AS builder

# Install gcloud auth plugin, kubectl and helm
RUN apk --update --no-cache add curl

FROM alpine:3.19
# Add gcloud to the path
ENV PATH /google-cloud-sdk/bin:$PATH

# Install dependencies
RUN apk add --no-cache python3 bash jq git curl && \
    git clone https://github.com/tfutils/tfenv.git ~/.tfenv && \
	ln -s /root/.tfenv/bin/* /usr/local/bin && \
	tfenv install 1.7.3 && \
    tfenv install 1.9.6

# Copy binaries from the builder
COPY --from=builder google-cloud-sdk/lib /google-cloud-sdk/lib
COPY --from=builder google-cloud-sdk/bin/gcloud google-cloud-sdk/bin/gcloud

# Update gcloud config
RUN gcloud config set core/disable_usage_reporting true && \
    gcloud config set component_manager/disable_update_check true && \
    gcloud config set metrics/environment github_docker_image

# Sets TFENV_AUTO_INSTALL=false so that by default only versions of
# Terraform included in this image are used i.e. other versions are not
# downloaded and installed.
ENV TFENV_AUTO_INSTALL=false

# Set the default configuration directory
VOLUME ["/root/.config"]
