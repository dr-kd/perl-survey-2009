list(summary (X$Gender), # raw data
     round(
           summary(X$Gender) / sum(summary(X$Gender))  * 100 # percent
           ,digits=2),
     sum(summary(X$Gender)) # sample size
     )
