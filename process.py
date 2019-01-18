from os import listdir
from os.path import isfile, join
import re
import pprint


class Result(object):
    name = ""
    time = 0.0
    cpu = 0.0
    memory = 0.0
    gbs = 0.0

    def __init__(self, name, time, cpu, memory, gbs):
        self.id = id
        self.name = name
        self.time = time
        self.cpu = cpu
        self.memory = memory
        self.gbs = gbs


def main():
    path = "./Timings"
    onlyfiles = [f for f in listdir(path) if isfile(join(path, f))]
    t1 = re.compile(r'(\d+)(?:\:)')
    t2 = re.compile(r'\d+\.\d+')
    c = re.compile(r'\d+\%')
    m = re.compile(r'\d+')
    results = []
    for file in onlyfiles:
        print(f"Opening timing file '{file}'")
        fullfilename = join(path, file)
        f = open(fullfilename, 'r')
        lines = f.readlines()
        time1 = t1.search(lines[5])
        time2 = t2.search(lines[5])
        time = float(int(time1.groups()[0]) * 60) + float(time2.group())
        cpu = c.search(lines[4])
        memory = m.search(lines[10])
        gbs = (float(memory.group()) / 1024) * time
        results.append(
            Result(lines[0].rstrip(), time, cpu.group(), float(memory.group()), gbs))
    print("")
    print("Sorted by GB/s:")
    for result in sorted(results, key=lambda x: x.gbs, reverse=False):
        print(f"{result.name} {result.time}s {result.cpu} {result.memory:,.0f}kb {result.gbs:,.4f}MB/s")
    print("")
    print("Sorted by time:")
    for result in sorted(results, key=lambda x: x.time, reverse=False):
        print(f"{result.name} {result.time}s {result.cpu} {result.memory:,.0f}kb")
    print("")
    print("Sorted by memory:")
    for result in sorted(results, key=lambda x: x.memory, reverse=False):
        print(f"{result.name} {result.time}s {result.cpu} {result.memory:,.0f}kb")


main()
