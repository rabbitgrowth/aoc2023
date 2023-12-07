with open('05.txt') as f:
    pars = f.read().split('\n\n')
    it = map(int, pars[0].split()[1:])
    seeds = []
    for start, length in list(zip(it, it)):
        seeds.append((False, start))
        seeds.append((True,  start + length))
    maps = []
    for par in pars[1:]:
        map_ = []
        for line in par.splitlines()[1:]:
            dst, src, length = list(map(int, line.split()))
            map_.append((False, src,          dst - src))
            map_.append((True,  src + length, dst - src))
        maps.append(map_)

for map_ in maps:
    new_seeds = []
    level = 0
    start = None
    d = 0
    for point in sorted(seeds + map_, key=lambda p: (p[1], not(p[0]))):
        if len(point) == 2:
            end, x = point
            if not end: # seed start
                if not level:
                    start = x
                level += 1
            else: # seed end
                level -= 1
                if not level:
                    new_seeds.append((False, start + d))
                    new_seeds.append((True,  x     + d))
        elif len(point) == 3:
            end, x, y = point
            if not end: # map start
                assert d == 0
                if level:
                    new_seeds.append((False, start))
                    new_seeds.append((True,  x))
                    start = x
                d = y
            else: # map end
                if level:
                    new_seeds.append((False, start + d))
                    new_seeds.append((True,  x     + d))
                    start = x
                d = 0
    seeds = new_seeds

print(min(x for _, x in seeds))
