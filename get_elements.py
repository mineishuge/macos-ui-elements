# USAGE
# python get_elements.py [element-keyword]
# python get_elements.py [process-name] [element-keyword]

import sys
import subprocess

keyword = None
procname = None

if len(sys.argv) == 2:
    script = "./get_all_UI_elements.applescript"
    keyword = sys.argv[1]
    lst_cmd = ['osascript', script]
elif len(sys.argv) == 3:
    script = "./get_all_UI_elements_of_process.applescript"
    procname = sys.argv[1]
    keyword = sys.argv[2]
    lst_cmd = ['osascript', script, procname]
else:
    raise RuntimeError("positional argument error.. --> keyword(must), procname(optional)")

process = subprocess.Popen(lst_cmd, stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
stdout, stderr = process.communicate()
elements = stdout.decode('utf-8').split(',')
result_elements = [ element.strip() for element in elements if keyword in element ]

for result in result_elements:
    print(f"==> {result}")

# for element in elements:
#     if keyword in element:
#         print(f"-> {element.strip()}")
