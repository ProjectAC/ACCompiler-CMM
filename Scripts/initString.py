with open('tmp', 'r') as f:
    with open('../Tree/treeNodeTypeStrings.h', 'w') as g:
        g.write('char *treeNodeTypeStrings[3000];\n\nvoid initTreeNodeTypeStrings()\n{\n')
        for i in range(32, 127):
            g.write('    name[' + str(i) + '] = newString("' + (chr(i) if i != 34 else '\\\"') + '");\n')
        for row in f.readlines():
            r = row[:-1]
            g.write('    name[' + r + '] = newString("' + r + '");\n')
        g.write('}\n')