##Copy files from specific interface folder and AdventServerSetup to create a deployable package

#Input(from Jekins) : interface path(or name) , built version,  AdventServerSetup directory
#Output : 

#Param([string]$sourceDir1, [string]$sourceDir2, [string]$targetDir)
#$sourceDir1 = "C:\test\AdventServer\Media\Default\Disk Images\Disk1"
#$sourceDir2 = "c:\test3" 
#$targetDir = "c:\test\bbb"
<#
$WORKSPACE = "D:\j\workspace\CoreProducts_Teams\TOMC\Moxy Interfaces\MOXY Fix Interface Build"
$MOXY_INTERFACE = "Test"
$ADVENT_SERVER_SETUP_VERSION = "18_20_0"
$MOXY_INTERFACE_VERSION = "Test"
$MOXY_INTERFACE_TYPE = "MoxyFix"
#>

#$sourceDir1 = $WORKSPACE + 
#$sourceDir2 = "\\Source\VSS\AdventOffice\Build\AdventOffice\ServerSetup_"+$env:ADVENT_SERVER_SETUP_VERSION+"\CurrentAll\AdventServer\Media\Default\Disk Images\Disk1"
#$targetDir = "\\Source\Img\qaimg\DX\"+$env:MOXY_INTERFACE_TYPE+"\"+$env:MOXY_INTERFACE_VERSION

<#
$sourceDir1 = $env:WORKSPACE + "\" + $env:MOXY_INTERFACE
$sourceDir2 = $env:WORKSPACE + "\AdventServer\" + $env:ADVENT_SERVER_SETUP_VERSION+ "\CurrentAll\AdventServer\Media\Default\Disk Images\Disk1"
$targetDir = $env:WORKSPACE + "\target\" + $env:MOXY_INTERFACE_TYPE + "\" + $env:MOXY_INTERFACE_VERSION + $env:BUILD_NUMBER

Write-Output ("source1: " + $sourceDir1)
Write-Output ("source2:" + $sourceDir2)
Write-Output ("targetDir:" + $targetDir)

If(!(test-path $sourceDir2))
{
      New-Item -ItemType Directory -Force -Path $sourceDir2
}
If(!(test-path $targetDir))
{
      New-Item -ItemType Directory -Force -Path $targetDir
}

Get-ChildItem -Path $sourceDir1 | Copy-Item -Destination $targetDir -Recurse -Container -Force
Get-ChildItem -Path $sourceDir2 | Copy-Item -Destination $targetDir -Recurse -Container -Force
#>

###Write-Output ("Hello World")