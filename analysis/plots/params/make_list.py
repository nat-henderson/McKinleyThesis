import sys
l = eval(open(sys.argv[1]).read())
ndtmap = {}
ndsmap = {}
for (n,d, score,time) in l:
    if (n,d) not in ndtmap:
        ndtmap[(n,d)] = []
        ndsmap[(n,d)] = []
    ndtmap[(n,d)].append(time)
    ndsmap[(n,d)].append(score)
for key, value in sorted(ndtmap.items()):
    f = open(sys.argv[1] + '-' + str(key[1]) + '-time', 'a')
    f.write(str(key[0]) + '\t' + str(float(sum(value)) / len(value)))
    f.write('\n')
    f.close()

for key, value in sorted(ndsmap.items()):
    f = open(sys.argv[1] + '-' + str(key[1]) + '-score', 'a')
    f.write(str(key[0]) + '\t' + str(float(sum(value)) / len(value)))
    f.write('\n')
    f.close()
