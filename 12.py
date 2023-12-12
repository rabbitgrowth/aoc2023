memo = {}

def valid(string, lengths, prev=None):
    key = (string, tuple(lengths), prev)
    if key in memo:
        return memo[key]
    if not string:
        ret = lengths == [0] or not lengths # enough #-groups?
    else:
        if string[0] == '.':
            if prev == '#':
                if lengths[0]:
                    ret = False
                else:
                    ret = valid(string[1:], lengths[1:], string[0])
            else:
                ret = valid(string[1:], lengths, string[0])
        elif string[0] == '#':
            if not lengths: # too many #-groups
                ret = False
            else:
                ret = valid(string[1:], [lengths[0] - 1, *lengths[1:]], string[0])
        elif string[0] == '?':
            ret = sum(valid(char + string[1:], lengths, prev) for char in '.#')
    memo[key] = ret
    return ret

with open('12.txt') as f:
    total1 = 0
    total2 = 0
    for line in f:
        string, rest = line.split()
        lengths = list(map(int, rest.split(',')))
        total1 += valid(string, lengths)
        total2 += valid('?'.join([string]*5), lengths*5)
    print(total1)
    print(total2)
