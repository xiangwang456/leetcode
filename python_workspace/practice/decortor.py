import functools

def my_decorator(func):
	@functools.wraps(func)
	def wrapper(*args,**kw):
		print 'begin call %s' % func.__name__
		func(*args,**kw)
		print 'end call %s' % func.__name__
		return
	return wrapper

@my_decorator
def now():
	print '2013-12-25'

now()
print now.__name__
print '-----------------------------------'

def log2(text='whoever'):
	def my_decorator(func):
		@functools.wraps(func)
		def wrapper(*args,**kw):
			print '%s %s:' % (text,func.__name__)
			return func(*args,**kw)
		return wrapper
	return my_decorator

@log2('z')
def now():
	print '2013-12-25'
	print now.__name__

now()