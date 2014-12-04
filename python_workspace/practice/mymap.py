def mymap(f,l):
	a=[]
	for x in l:
		a.append(f(x))
	return a
	
def f(x):
	return x*x
print 'ok'
l=mymap(f,[1,2,3,4,5])
l
print 'th size of l:%d' % len(l)
for x in l:
	print x
