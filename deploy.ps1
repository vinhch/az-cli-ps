$VERSION = (Get-Content -Path VERSION).Trim()
docker login
docker push vinhomn/az-cli-ps:latest
docker push vinhomn/az-cli-ps:$VERSION
