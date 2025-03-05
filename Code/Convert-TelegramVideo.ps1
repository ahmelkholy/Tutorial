# Check if FFmpeg is installed
function Test-FFmpeg {
 try {
  $null = & ffmpeg -version
  return $true
 }
 catch {
  return $false
 }
}

# Convert video function
function Convert-Video {
 param (
  [string]$InputFile,
  [string]$OutputFolder
 )

 $fileName = [System.IO.Path]::GetFileNameWithoutExtension($InputFile)
 $outputFile = Join-Path -Path $OutputFolder -ChildPath "$fileName-telegram.mp4"

 # FFmpeg command for conversion with good quality but reduced size
 ffmpeg -i $InputFile -c:v libx264 -preset medium -crf 22 -c:a aac -b:a 128k -movflags +faststart $outputFile

 if ($LASTEXITCODE -eq 0) {
  Write-Host "Successfully converted: $outputFile" -ForegroundColor Green
  return $outputFile
 }
 else {
  Write-Host "Failed to convert: $InputFile" -ForegroundColor Red
  return $null
 }
}

# Main script
if (-not (Test-FFmpeg)) {
 Write-Host "FFmpeg is not installed or not in PATH. Please install FFmpeg first." -ForegroundColor Red
 Write-Host "You can download it from https://ffmpeg.org/download.html" -ForegroundColor Yellow
 exit
}

# Create output directory if it doesn't exist
$outputFolder = Join-Path -Path $env:USERPROFILE -ChildPath "Videos\Telegram-Ready"
if (-not (Test-Path -Path $outputFolder)) {
 New-Item -Path $outputFolder -ItemType Directory | Out-Null
 Write-Host "Created output folder: $outputFolder" -ForegroundColor Cyan
}
else {
 Write-Host "Output folder: $outputFolder" -ForegroundColor Cyan
}

# Ask user for input method
$choice = Read-Host "Do you want to:
1 - Convert a single video file
2 - Convert all videos in a folder
Enter your choice (1 or 2)"

switch ($choice) {
 "1" {
  Add-Type -AssemblyName System.Windows.Forms
  $fileDialog = New-Object System.Windows.Forms.OpenFileDialog
  $fileDialog.Title = "Select Video File"
  $fileDialog.Filter = "Video files (*.mp4;*.avi;*.mov;*.mkv;*.wmv)|*.mp4;*.avi;*.mov;*.mkv;*.wmv|All files (*.*)|*.*"

  if ($fileDialog.ShowDialog() -eq [System.Windows.Forms.DialogResult]::OK) {
   $inputFile = $fileDialog.FileName
   $outputFile = Convert-Video -InputFile $inputFile -OutputFolder $outputFolder

   if ($outputFile) {
    Write-Host "`nConversion Summary:" -ForegroundColor Cyan
    $originalSize = (Get-Item $inputFile).Length / 1MB
    $newSize = (Get-Item $outputFile).Length / 1MB
    Write-Host "Original Size: $($originalSize.ToString('0.00')) MB" -ForegroundColor Yellow
    Write-Host "New Size: $($newSize.ToString('0.00')) MB" -ForegroundColor Yellow
    Write-Host "Size Reduction: $(((1 - ($newSize / $originalSize)) * 100).ToString('0.00'))%" -ForegroundColor Green
   }
  }
  else {
   Write-Host "No file selected. Exiting..." -ForegroundColor Yellow
  }
 }
 "2" {
  Add-Type -AssemblyName System.Windows.Forms
  $folderDialog = New-Object System.Windows.Forms.FolderBrowserDialog
  $folderDialog.Description = "Select Folder with Videos"

  if ($folderDialog.ShowDialog() -eq [System.Windows.Forms.DialogResult]::OK) {
   $inputFolder = $folderDialog.SelectedPath
   $videoFiles = Get-ChildItem -Path $inputFolder -Include "*.mp4", "*.avi", "*.mov", "*.mkv", "*.wmv" -File -Recurse

   if ($videoFiles.Count -eq 0) {
    Write-Host "No video files found in the selected folder." -ForegroundColor Yellow
    exit
   }

   Write-Host "Found $($videoFiles.Count) video files. Starting conversion..." -ForegroundColor Cyan

   $processedFiles = @()
   foreach ($file in $videoFiles) {
    $outputFile = Convert-Video -InputFile $file.FullName -OutputFolder $outputFolder
    if ($outputFile) {
     $processedFiles += [PSCustomObject]@{
      OriginalFile = $file.FullName
      NewFile      = $outputFile
      OriginalSize = (Get-Item $file.FullName).Length / 1MB
      NewSize      = (Get-Item $outputFile).Length / 1MB
     }
    }
   }

   # Summary
   if ($processedFiles.Count -gt 0) {
    Write-Host "`nConversion Summary:" -ForegroundColor Cyan
    $totalOriginalSize = ($processedFiles | Measure-Object -Property OriginalSize -Sum).Sum
    $totalNewSize = ($processedFiles | Measure-Object -Property NewSize -Sum).Sum

    Write-Host "Total files converted: $($processedFiles.Count)" -ForegroundColor Green
    Write-Host "Total original size: $($totalOriginalSize.ToString('0.00')) MB" -ForegroundColor Yellow
    Write-Host "Total new size: $($totalNewSize.ToString('0.00')) MB" -ForegroundColor Yellow
    Write-Host "Overall size reduction: $(((1 - ($totalNewSize / $totalOriginalSize)) * 100).ToString('0.00'))%" -ForegroundColor Green
   }
  }
  else {
   Write-Host "No folder selected. Exiting..." -ForegroundColor Yellow
  }
 }
 default {
  Write-Host "Invalid choice. Exiting..." -ForegroundColor Red
 }
}

Write-Host "`nAll done! Your videos are ready in: $outputFolder" -ForegroundColor Cyan
