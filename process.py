from os import listdir
from os.path import isfile, join
import re
import pprint


class Result(object):
    def __init__(self, name, time, cpu, memory, gbs, loc, word, byte, score_time, score_memory, score_bytes, score_test_safety, score_productivity, score_overall):
        self.id = id
        self.name = name
        self.time = time
        self.cpu = cpu
        self.memory = memory
        self.gbs = gbs
        self.loc = loc
        self.word = word
        self.byte = byte
        self.score_time = score_time
        self.score_memory = score_memory
        self.score_bytes = score_bytes
        self.score_test_safety = score_test_safety
        self.score_productivity = score_productivity
        self.score_overall = score_overall

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
        loc_all = m.findall(lines[24])
        loc = int(loc_all[0])
        word = int(loc_all[1])
        byte = int(loc_all[2])
        mem = m.search(lines[10])
        memory = float(mem.group())
        gbs = (float(mem.group()) / 1024) * time
        developer_all = m.findall(lines[25])
        score_test_safety = int(developer_all[0])
        score_productivity = int(developer_all[1])

        # Time score
        if time < 0.5:
            score_time = 10
        elif time < 1.0:
            score_time = 8
        elif time < 2.0:
            score_time = 6
        elif time < 4.0:
            score_time = 4
        elif time < 8.0:
            score_time = 2
        else:
            score_time = 0

        # Memory score
        if memory < 10000:
            score_memory = 6
        elif memory < 12500:
            score_memory = 5
        elif memory < 25000:
            score_memory = 4
        elif memory < 50000:
            score_memory = 3
        elif memory < 100000:
            score_memory = 2
        elif memory < 250000:
            score_memory = 1
        else:
            score_memory = 0

        # Byte count score
        if byte < 2500:
            score_bytes = 5
        elif byte < 3000:
            score_bytes = 4
        elif byte < 3500:
            score_bytes = 3
        elif byte < 4000:
            score_bytes = 2
        elif byte < 4500:
            score_bytes = 1
        else:
            score_bytes = 0

        score_overall = score_time + score_memory + score_bytes + score_test_safety + (score_productivity * 2)

        # Add to results list
        results.append(
            Result(lines[0].rstrip(), time, cpu.group(), memory, gbs, loc, word, byte, score_time, score_memory, score_bytes, score_test_safety, score_productivity * 2, score_overall))
    print("")
    print("Sorted by GB/s:")
    print("")
    print("    Language   Time        Memory           GB/s")
    print("    --------   ----        ------           ----")
    for result in sorted(results, key=lambda x: x.gbs, reverse=False):
        print(f"{result.name} {result.time:6.2f}s {result.memory:10,.0f}kb {result.gbs:10,.2f}MB/s")
    print("")
    print("Sorted by time:")
    print("")
    print("    Language   Time        Memory")
    print("    --------   ----        ------")
    for result in sorted([x for x in results if '*' not in x.name], key=lambda x: x.time, reverse=False):
        print(f"{result.name} {result.time:6.2f}s {result.memory:10,.0f}kb")
    print("")
    print("Sorted by time (concurrent):")
    print("")
    print("    Language   Time        Memory")
    print("    --------   ----        ------")
    for result in sorted([x for x in results if '*' in x.name], key=lambda x: x.time, reverse=False):
        print(f"{result.name} {result.time:6.2f}s {result.memory:10,.0f}kb")
    print("")
    print("Sorted by memory:")
    print("")
    print("    Language   Time        Memory")
    print("    --------   ----        ------")
    for result in sorted(results, key=lambda x: x.memory, reverse=False):
        print(f"{result.name} {result.time:6.2f}s {result.memory:10,.0f}kb")
    print("")
    print("Sorted by overall score (concurrent):")
    print("")
    print("    Language    CPU      GB/s          Time    /10     Memory     /6    LoC    Bytes  /5    Test./Safety /5    Productivity /10    Overall")
    print("    --------    -----    ----------    -----------     -------------    ---    ---------    ---------------    ----------------    -------")
    for result in sorted([x for x in results if '*' in x.name], key=lambda x: x.score_overall, reverse=True):
        print(f"{result.name}   {result.cpu:>6s}  {result.gbs:8.2f}MB/s   {result.time:6.2f}s ({result.score_time:>2})   {result.memory:9,.0f}kb ({result.score_memory:>1})    "
        + f"{result.loc:>3}   {result.byte:>5} ({result.score_bytes:>2})                 "
        + f"{result.score_test_safety:>2}                  {result.score_productivity:>2}         {result.score_overall:>2}")
    print("")
    print("Sorted by overall score:")
    print("")
    print("    Language    CPU      GB/s          Time    /10     Memory     /6    LoC    Bytes  /5    Test./Safety /5    Productivity /10    Overall")
    print("    --------    -----    ----------    -----------     -------------    ---    ---------    ---------------    ----------------    -------")
    for result in sorted([x for x in results if '*' not in x.name], key=lambda x: x.score_overall, reverse=True):
        print(f"{result.name}   {result.cpu:>6s}  {result.gbs:8.2f}MB/s   {result.time:6.2f}s ({result.score_time:>2})   {result.memory:9,.0f}kb ({result.score_memory:>1})    "
        + f"{result.loc:>3}   {result.byte:>5} ({result.score_bytes:>2})                 "
        + f"{result.score_test_safety:>2}                  {result.score_productivity:>2}         {result.score_overall:>2}")


main()
