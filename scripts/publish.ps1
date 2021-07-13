#Must be the first statement in your script (not coutning comments)
param([string]$version="0.0.0") 

echo $version

$body_json = @{
    version = $version
    type = "publish"
} | ConvertTo-Json -Depth 4

Invoke-RestMethod -Method 'Post' -Uri http://localhost:5001 -Body $body_json -ContentType "application/json"