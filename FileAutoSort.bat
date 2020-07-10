::For windows, automate your file sorting on your pc
::Created by: Alejandro Alzate, copy, redistribute, edit, but give me the credits.
:start
setlocal
:source
set srcpath="%USERPROFILE%\Downloads"
:destiny
set despath="%USERPROFILE%\Documents"
:extensions
set ext1="*.mp3", "*.mp4", "*.wav", "*.ogg", "*.m4a"
set des1="Multimedia\"
set ext2="*.7z", "*.ar", "*.cbz", "*.cpio", "*.ear", "*.tar", "*.tar.7z", "*.tar.Z", "*.tar.bz2", "*.tar.gz", "*.tar.lz", "*.tar.lzma", "*.tar.lzo", "*.tar.xz", "*.war", "*.zip", "*.000", "*.rar", "*.z0", "*.z"
set des2="Archive\"
set ext3="*.iso", "*.img", "*.cd", "*.esd", "*.wim"
set des3="Disc Images\"
set ext4="*.vmdk", "*.vdi", "*.vhd", "*.qed", "*.qcow"
set des4="Virtual Machine\"
set ext5="*.exe", "*.cmd", "*.bat", "*.ps", "*.deb", "*.rpm", "*.apk", "*.pkg.tar.zst", "*.txz", "*.tgz", "*.ipk", "*.eopkg" 
set des5="Executables\"
set ext7="*."
set des7="Undefinied"
set ext8=""
set des8=""
set ext9=""
set des9=""
set ext10=""
set des10=""
set ext11=""
set des11=""
set ext12=""
set des12=""
set ext13=""
set des13=""
set ext14=""
set des14=""
set ext15=""
set des15=""
set ext16=""
set des16=""
set ext17=""
set des17=""
set ext18=""
set des18=""
set ext19=""
set des19=""
set ext20=""
set des20=""
set definied_extensions=20
set dummy=1
:Sort
cd %srcpath%
if errorlevel 0 {
	for /l %%f in (ext%dummy%) do {
		move "%%f" "%despath%des%dummy%" >nul
		if not errorlevel 0 {
			if not exist (errlog.txt) do {
				echo Created on %date% %time% > errlog.txt
				echo ------------------------------------------------------------------------------------------------------------------------------------------------------------- >> errlog.txt
			}
			echo Move: Some files failed to move >> errlog.txt
			echo %date%, %time%(Fallback on: file = "%%f", moving to "%despath%des%dummy%" >> errlog.txt
			echo ------------------------------------------------------------------------------------------------------------------------------------------------------------- >> errlog.txt
		}
		echo
	}
set /a dummy+=1
goto sort
}
