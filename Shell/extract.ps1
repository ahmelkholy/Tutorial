# Set the path to the current folder
$folderPath = Get-Location

# Get all .srt files in the folder
$srtFiles = Get-ChildItem -Path $folderPath -Filter *.srt

foreach ($file in $srtFiles) {
	# Construct the full path to the input .srt file and the output .md file
	$inputFile = $file.FullName
	$outputFile = [System.IO.Path]::ChangeExtension($inputFile, ".md")

	# Extract text from the .srt file using the Python script
	$pythonCommand = "python C:\Users\ahm_e\Documents\Python_Scripts\src\extract_text_from_srt.py `"$inputFile`" -o `"$outputFile`""
	Invoke-Expression $pythonCommand

	# Check if the extraction was successful
	if (Test-Path $outputFile) {
		Write-Host "Extraction successful for file: $inputFile"
	} else {
		Write-Host "Extraction failed for file: $inputFile"
	}
}