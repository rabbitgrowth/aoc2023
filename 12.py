invalid = set()

def valid(string, lengths, prev=None):
    if (string, tuple(lengths), prev) in invalid:
        return False
    if not string:
        return lengths == [0] or not lengths # enough #-groups?
    if string[0] == '.':
        if prev == '#':
            if lengths[0]:
                invalid.add((string, tuple(lengths), prev))
                return False
            return valid(string[1:], lengths[1:], string[0])
        else:
            return valid(string[1:], lengths, string[0])
    elif string[0] == '#':
        if not lengths: # too many #-groups
            invalid.add((string, tuple(lengths), prev))
            return False
        return valid(string[1:], [lengths[0] - 1, *lengths[1:]], string[0])
    elif string[0] == '?':
        return sum(valid(char + string[1:], lengths, prev) for char in '.#')

with open('12.txt') as f:
    total = 0
    for line in f:
        string, rest = line.split()
        lengths = list(map(int, rest.split(',')))
        total += valid(string, lengths)
    print(total)
