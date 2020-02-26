import os
import subprocess

hostsFilePath = "/etc/hosts"

dotfilesDir = os.environ['DOTFILES_DIR']

newFileString = ""

hostsFile = open(hostsFilePath, 'r')
for hostsLine in hostsFile:
    lineIsDistracting = False
    
    distractingSitesFile = open(dotfilesDir + "/Configs/distractingSites")
    for siteLine in distractingSitesFile:
        if siteLine in hostsLine:   
            lineIsDistracting = True
    
    # If it is distracting, do not write it, and skip to the next one
    if lineIsDistracting == False:
        newFileString += hostsLine

hostsFileWrite = open(hostsFilePath, 'w')
hostsFileWrite.write(newFileString)

# Check if Firefox needs to be restarted
firefoxInstances = subprocess.run(['pgrep', 'firefox'], stdout=subprocess.PIPE).stdout.decode().rstrip()
if len(firefoxInstances) > 0:
    os.system("killall firefox && firefox &")

