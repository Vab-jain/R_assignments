
###### Question - 1 ######
p = pbinom(1, 10, 0.7)
print(f)




###### Question - 2 ######
#	part (a)
x = pbinom(4, 10, 0.7)
print(x)


#	part (b)
y= pbinom(9, 20, 0.7)
print(y)






###### Question - 3 ######
#	part (a)
z= ppois(0, lambda = 5)
print(z)


#	part (b)
a= ppois(5, lambda = 5, lower=FALSE)
print(a)




###### Question - 4 ######
#	part (a)
b= pbinom(1, 10, 0.1)
b=1-b
print(b)


#	part (b)
c= pbinom(1, 10, 0.2)
c=1-c
print(c)


#	part (c)
d= pbinom(1, 10, 0.02)
d=1-d
print(d)


#	part (d)
e = log(0.01)/log(0.98)
e= ceiling(e)
print(e)


#	part (e)
f = dbinom(1:10, 10, 0.02)
meanf= mean(f)
print(meanf)
sdf= sd(f)
print(sdf)