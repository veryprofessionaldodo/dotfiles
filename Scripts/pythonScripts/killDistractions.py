import os
import subprocess
hostsFilePath = "/etc/hosts"

dotfilesDir = os.environ['DOTFILES_DIR']
distractingSitesFile = open(dotfilesDir + "/Configs/distractingSites")

newFileString = ""

hostsFile = open(hostsFilePath, 'r')
for hostsLine in hostsFile:
    newFileString += hostsLine

for siteLine in distractingSitesFile:
    newFileString += "\n127.0.0.1 " + siteLine

hostsFileWrite = open(hostsFilePath, 'w')
hostsFileWrite.write(newFileString)

# Check if Firefox needs to be restarted
firefoxInstances = subprocess.run(['pgrep', 'firefox'], stdout=subprocess.PIPE).stdout.decode().rstrip()
if len(firefoxInstances) > 0:
    os.system("killall firefox && firefox &")

