# Question 1
# Answer: We need to find the probability of all values of (speed > 100)
answer = pnorm(100, mean=90, sd=10, lower.tail=FALSE, log.p=FALSE)
answer
## OUTPUT: 0.1586553

# Question 2
# Answer: We will find the probability of getting 58.5 marks or less marks then multiply it by 100. It must be greater than 70.
answer = 100 * pnorm(58.5, mean=50, sd=10, lower.tail=TRUE, log.p=FALSE)
answer
## OUTPUT: 80.23375
## Yes, she will be admitted to CIC

# Question 3
# (a)
## Answer: prob(obtaining more than 80)
ans1 = 100*(pnorm(80, mean=70, sd=10, lower.tail=FALSE))
ans1
## OUTPUT: 15.86553%

# (b)
## Answer: prob(obtaing more than 40)
ans2 = 1 - pnorm(40, mean=70, sd=10, lower.tail=FALSE)
ans2
## OUTPUT: 99.86501%

# (c)
## Answer: prob(obtaining less than 40)
ans3 = 1 - pnorm(40, mean=70, sd=10)
ans3
## OUTPUT: 0.13498%

# Question 4
# Answer: prob(acceptance) = 1 - prob(less than 3.5mm) + prob(more than 4.4mm)
p_selection = 1 - ( pnorm(3.5, mean=4, sd=0.09) + pnorm(4.4, mean=4, sd=0.09, lower.tail = FALSE))
answer = 500*p_selection
## OUTPUT: 499.9978
## Almost all parts were accepted