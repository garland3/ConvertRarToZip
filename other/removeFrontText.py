from os import listdir
from os.path import isfile, join
import os

mypath = './'
onlyfiles = [f for f in listdir(mypath) if isfile(join(mypath, f))]

for o in onlyfiles:
	# print o
	filename, file_extension = os.path.splitext(o)
	file_extension = file_extension.lower();
	#print file_extension
	if(file_extension == '.zip'):
		#filename[]
		stringParts = filename.lower().split("_")
		newFileName = '.\\' + stringParts[1] +'.zip'
		print 'old: '+ o+ ' new ' +newFileName
		os.rename(o,newFileName)