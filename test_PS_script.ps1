Write-Host "PS is running ...."

# $version_tag = Invoke-Expression -Command 'git fetch --tags'
$tags = Invoke-Expression -Command 'git tag --list'

$latest_tag = ($tags | Sort-Object -Descending)[0]

Write-Host "latest_tag : $latest_tag"


$major, $minor, $patch = $latest_tag -split '\.'
$major1 = $major.Replace("v", "")
Write-Host "major $major1"
Write-Host "minor $minor"
Write-Host "patch $patch"

$ret_tags = Invoke-Expression -Command 'git describe --tags --abbrev=0'
$val = $ret_tags.outputs.latest_tag

Write-Host "$RELEASE_VERSION"




