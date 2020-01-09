$VERSION = (Get-Content -Path VERSION).Trim()
docker build -t vinhomn/az-cli-ps .
docker tag vinhomn/az-cli-ps vinhomn/az-cli-ps
docker tag vinhomn/az-cli-ps vinhomn/az-cli-ps:$VERSION
