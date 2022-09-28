set theFiles to paragraphs of (get the clipboard)

set posixPaths to {}
repeat with aFile in theFiles
	try
		tell application "Finder" to set thePath to item aFile as text
		set end of posixPaths to (POSIX path of thePath)
	end try
end repeat
copy "posixPaths" to stdout
return posixPaths
