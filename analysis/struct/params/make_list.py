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
f = open(sys.argv[1] + '-time', 'w')
for key, value in sorted(ndtmap.items()):
    f.write(str(key[0]) + '\t' + str(key[1]) + '\t' + str(float(sum(value)) / len(value)))
    f.write('\n')
f.close()

f = open(sys.argv[1] + '-score', 'w')

for key, value in sorted(ndsmap.items()):
    f.write(str(key[0]) + '\t' + str(key[1]) + '\t' + str(float(sum(value)) / len(value)))
    f.write('\n')

f.close()
