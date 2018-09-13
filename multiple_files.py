import os
import shlex
import subprocess as sp

directory = "."

for file in os.listdir("."):
	sp.call(shlex.split('/home/renan/Documentos/github/script-soma-tempos/read_files.sh %s' % file))