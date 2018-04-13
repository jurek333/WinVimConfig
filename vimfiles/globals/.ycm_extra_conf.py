def FlagsForFile(filename, **kwargs):
	return {
		'flags': ['-x', 'c++', '-std=c++14', '-Wall', '-Wextra', '-Werror'
			,'-I','C:/Program Files (x86)/Microsoft Visual Studio/2017/Community/VC/Tools/MSVC/14.13.26128/include'
			,'-I','C:/Program Files (x86)/Microsoft Visual Studio/2017/Community/VC/Tools/MSVC/14.13.26128/atlmfc/include'
			,'-I','C:/Program Files (x86)/Microsoft Visual Studio/2017/Community/VC/Auxiliary/VS/include'
			,'-I','C:/Program Files (x86)/Windows Kits/10/Include/10.0.16299.0/ucrt'
			,'-I','C:/Program Files (x86)/Windows Kits/10/Include/10.0.16299.0/um'
			,'-I','C:/Program Files (x86)/Windows Kits/10/Include/10.0.16299.0/shared'
			,'-I','C:/Program Files (x86)/Windows Kits/10/Include/10.0.16299.0/winrt'
			,'-I','C:/Program Files (x86)/Windows Kits/NETFXSDK/4.6.1/Include/um']
	}
