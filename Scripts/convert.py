with open('ansicCompiler.y.old') as f:
  with open('ansicCompiler.y', 'w') as o:
    rows = f.readlines()
    flag = False
    dic = {}
    for row in rows:
      if row == '%%\n':
        flag = not flag
        o.write('%%\n')
      elif flag:
        mode = False
        ori = ''
        upp = ''
        for c in row:
          if c == '"':
            if mode:
              dic[upp] = ori
              ori = ''
              upp = ''
            mode = not mode
          elif mode:
            ori += c
            upp += c.upper()
            o.write(c.upper())
          else:
            o.write(c)
      else:
        o.write(row)
    for i in dic:
      print('    ' + i + ',')