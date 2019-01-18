from os import listdir
from os.path import isfile, join
import re
import pprint


class Result(object):
    name = ""
    time = 0.0
    cpu = 0.0
    memory = 0.0

    def __init__(self, name, time, cpu, memory):
        self.id = id
        self.name = name
        self.time = time
        self.cpu = cpu
        self.memory = memory


def main():
    path = "./Timings"
    onlyfiles = [f for f in listdir(path) if isfile(join(path, f))]
    t = re.compile(r'\d+\.\d+')
    c = re.compile(r'\d+\%')
    m = re.compile(r'\d+')
    results = []
    for file in onlyfiles:
        print(f"Opening timing file '{file}'")
        fullfilename = join(path, file)
        f = open(fullfilename, 'r')
        lines = f.readlines()
        time = t.search(lines[2])
        cpu = c.search(lines[4])
        memory = m.search(lines[10])
        results.append(
            Result(lines[0].rstrip(), float(time.group()), cpu.group(), float(memory.group())))
    sortedResults = sorted(results, key=lambda x: x.time, reverse=False)
    for result in sortedResults:
        print(f"{result.name} {result.time}s {result.cpu} {result.memory}")


main()
