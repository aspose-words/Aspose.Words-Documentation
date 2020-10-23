import sys
import zipfile
from wheel import egg2wheel
from jcc import cpp
import os
import subprocess
import shutil
import platform 

if sys.argv.__len__() < 4:
    raise SystemError('Example: python X:\\awjava\\lib\\Aspose.Words.jdk16.jar 17.8 aspose_words')

aw_jar_path = sys.argv[1]
aw_jar_version = sys.argv[2]
aw_python_name = sys.argv[3]

print('Reading ' + aw_jar_path)
print('Aspose Words Version ' + aw_jar_version)
print('Python name ' + aw_python_name)

aw_jar = zipfile.ZipFile(aw_jar_path)

classesToBeWrapped = []
for zipEntry in aw_jar.namelist():
    if not zipEntry.startswith('asposewobfuscated') \
            and not zipEntry.startswith('META-INF') \
            and not zipEntry.startswith('resources') \
            and not zipEntry.startswith('com/aspose/words/zz') \
            and not zipEntry.startswith('com/aspose/words/net/System/Data/zz') \
            and '$' not in zipEntry:
        classesToBeWrapped.append(zipEntry.replace('.class', '').replace('/', "."))

cmdLineArgs = []
cmdLineArgs.append('python -m')
cmdLineArgs.append('jcc')
cmdLineArgs.append('--include')
cmdLineArgs.append(aw_jar_path)
cmdLineArgs.extend(classesToBeWrapped)
#cmdLineArgs.append('--shared')
cmdLineArgs.append('--python')
cmdLineArgs.append(aw_python_name)
cmdLineArgs.append('--version')
cmdLineArgs.append(aw_jar_version)
#cmdLineArgs.append('--use_full_names')
cmdLineArgs.append('--build')
cmdLineArgs.append('--bdist')

cmdLine = " ".join(cmdLineArgs)
#print(cmdLine)

# clean
try:
    shutil.rmtree(aw_python_name + '.egg-info')
except OSError:
    pass
	
try:
    shutil.rmtree('dist')
except OSError:
    pass
	
try:
    shutil.rmtree('build')
except OSError:
    pass
	
print('#Run JCC')
use_shell = 'win' not in platform.system().lower()

#jcc.cpp(cmdLineArgs) # didn't manage to get it working
#os.system(cmdLine) # too long cmdLine
#proc = subprocess.Popen(cmdLine)
#proc.communicate()
subprocess.call(cmdLine, shell=use_shell)

destDir = 'dist/'

#remove old wheels
for file in os.listdir(destDir):
    if file.endswith('.whl'):
	    os.remove(os.path.join(destDir, file))
		
#convert all .eggs to wheels
for file in os.listdir(destDir):
    if file.endswith('.egg'):
        print('Converting ' + file)
        egg2wheel.egg2wheel(os.path.join(destDir, file), destDir)
        os.remove(os.path.join(destDir, file))

