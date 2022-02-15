#Must be the first statement in your script (not coutning comments)
version=$1

echo $version

curl --header "Content-Type: application/json" \
  --request POST \
  --data "{\"version\":\"$version\",\"type\":\"build\"}" \
  http://localhost:5001

# $body_json = @{
#     version = $version
#     type = "build"
# } | ConvertTo-Json -Depth 4

# Invoke-RestMethod -Method 'Post' -Uri http://localhost:5001 -Body $body_json -ContentType "application/json"