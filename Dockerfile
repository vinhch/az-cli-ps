# Other tags: alpine-3.8, 7.0.0-rc.1-alpine-3.9
FROM mcr.microsoft.com/powershell:7.0.1-alpine-3.10

ENV AZURE_CLI_VERSION 2.6.0
ENV AZ_POWERSHELL_VERSION 4.1.0
RUN \
  apk update && \
  apk add --no-cache bash python3 && \
  apk add --virtual=build gcc libffi-dev musl-dev openssl-dev make python3-dev linux-headers && \
  pip3 --no-cache-dir install -U pip && \
  pip3 --no-cache-dir install azure-cli==${AZURE_CLI_VERSION} && \
  apk del --purge build
SHELL ["pwsh", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]
RUN Install-Module -Name Az -RequiredVersion ${AZ_POWERSHELL_VERSION} -AllowClobber -Force

# CMD ["/bin/bash"]
CMD [ "pwsh" ]