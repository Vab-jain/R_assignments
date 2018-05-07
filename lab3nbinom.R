# Defining the parameters
# Number to trials
n = 1000

# Probability of success
p = 0.5

# Number of successes required
t = 10


# Conducting the experiment of tossing the coin x times each for 50 times
# until x successes are obtained. 
nbrand = rnbinom(n,t,p)

nbrand = nbrand + t

nbhist = hist(nbrand,plot = F, breaks = c(0:max(nbrand)))

# Finding the relative frequencies
nbhist$counts = nbhist$counts/sum(nbhist$counts)

# Defining discrete data points
x = 0:max(nbrand)

# Finding the probability density function of the binomial distribution
nbpdf = choose(x-1,t-1)*(p^t)*(1-p)^(x-t)

# Creating the file
png(file = "nbinomial.png")

# Plotting the histogram on relative frequencies
plot(nbhist, freq = TRUE, ylim = c(0,.3))

# Superimposing the probability mass function of the binomial distribution
lines(x,nbpdf)

# Saving the plot
dev.off()
 
