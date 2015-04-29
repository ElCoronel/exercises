f = open('hosts.txt', 'r')
txt = f.read()
 
line = txt.split('\n')
 
d = {}
 
for i in line:
     key = i.split(',')[0]
     value = i.split(',')[1]
     if key not in d:
             d[key] = [value]
     else:
             d[key].append(value)
 
for k in d.keys():
	if (len(d[k])==3 and 'proc03' in d[k]):
		print k
