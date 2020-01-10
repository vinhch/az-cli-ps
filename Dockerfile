# Other tags: alpine-3.8, 7.0.0-rc.1-alpine-3.9
FROM mcr.microsoft.com/powershell:6.2.3-alpine-3.8

ENV AZURE_CLI_VERSION 2.0.79
RUN \
  apk update && \
  apk add --no-cache bash python3 && \
  apk add --virtual=build gcc libffi-dev musl-dev openssl-dev make python3-dev linux-headers && \
  pip3 --no-cache-dir install -U pip && \
  pip3 --no-cache-dir install azure-cli==${AZURE_CLI_VERSION} && \
  apk del --purge build

# CMD ["/bin/bash"]
CMD [ "pwsh" ]