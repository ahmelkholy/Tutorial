$folderPath = "D:/Projects_Temp/videos_youtube/Shell/srt_file"
$pythonCommand = "python C:\Users\ahm_e\Documents\Python_Scripts\src\extract_text_from_srt.py"
# Get all items in the folder and filter only files
$files = Get-ChildItem -Path $folderPath | Where-Object { -not $_.PSIsContainer }
# Loop through each file and execute the Python command
foreach ($file in $files) {
	Invoke-Expression -Command "$pythonCommand `"$($file.FullName)`" -o `"$($file.FullName).md`""
}