P <- function(x,A) {
	if (x < 5) {
		A[1] = 0
		return (A)
	}
	if (x == 5) {
		A[1] = 1
		return (A)
	}
	n = (x-1)/2
	if (length(A) < n) {
		summation = 0
		for (k in 2:n-1) {
			temp = P(2*k+1,A)
			summation = summation + temp[1]*choose(2*(n-k),(n-k))
		}
		A[n] = (choose(x,(x-5)/2)-summation)
	}
	A[1] = A[n]
	return (A)
}

prob <- function(x) {
	j = 1
	y <- c()
	A <- c()
	A[1] = 0
	A[2] = 1
	for(i in x) {
		A = P(i,A)
		y[j] = A[1]*((9/19)^((i-5)/2))*((10/19)^((i+5)/2))
		A[1] = 0
		j = j+1
	}
	return (y)
}

x = seq(5,1029,2)
y = prob(x)
freq = floor(y*100000)
totalOb = sum(freq)
cumFreq <- c()
cumFreq[1] = freq[1]
for (i in 2:totalOb) {
	cumFreq[i] = cumFreq[i-1] + freq[i]
}
sampleSpace <- c()
for (i in 1:totalOb) {
	for (j in 1:length(cumFreq)) {
		if (i <= cumFreq[j]) {
			sampleSpace[i] = x[j]
			break
		}
	}
}
observations = sample(sampleSpace,100)
histo = hist(observations, plot = F, breaks = seq(0,1050,50))
histo$counts = histo$counts/100
png(file = "Ques2.png")
plot(histo, freq = TRUE, main="RELATIVE FREQUENCY HISTOGRAM FOR SIMULATION", ylab="RELATIVE FREQUENCY", xlab="X", ylim=c(0,0.5))
lines(x,y*100000/totalOb, col="green", lwd=4)
dev.off()