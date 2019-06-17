on run {input, parameters}
	try
		set filePath to POSIX path of input
	on error errMsg
		set filePath to ""
	end try
	
	if application "Terminal" is running then
		tell application "Terminal"
			if filePath is "" then
				do script "vim"
				# do script without "in window" will open a new window        
			else
				do script "vim " & quote & filePath & quote & ""
				activate
			end if
		end tell
	else
		tell application "Terminal"
			# window 1 is guaranteed to be recently opened window        
			if filePath is "" then
				do script "vim" in window 1
				activate
			else
				do script "vim " & quote & filePath & quote & "" in window 1
				activate
			end if
		end tell
	end if
	
end run
