# let's exclude everybody who reports themselves born after 1994 ( 13 years old
# or younger) or before 1927 (80 years old)

survey.year<- 2007 # or as.numeric(format(Sys.time(),"%Y")) for the next one

Age <- survey.year-X$Year.of.birth
Age[Age < 14] <- NA
Age[Age > 79] <- NA
sd(Age,na.rm=T)
postscript("02-age.ps")
hist(Age,breaks=40)
dev.off()

# here's how we bin the sample into quartiles for further investigation

Age.q1 <- quantile(Age,0.25, na.rm=T)
Age.q2 <- quantile(Age,0.5,  na.rm=T)
Age.q3 <- quantile(Age,0.75  na.rm=T)

# so we should be able to report on programming languages known and differences
# by age with this stuff.  Here we'll just show how to get the size of each group.

length(Age[Age < Age.q1])
length(Age[Age >= Age.q1 & Age < Age.q2])
length(Age[Age >= Age.q2 & Age < Age.q3])
length(Age[Age >= Age.q3])

