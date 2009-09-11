ct_male_contrib <- table(X$Contributed.to.CPAN[X$Gender=="male"])
ct_female_contrib <- table(X$Contributed.to.CPAN[X$Gender=="female"])

list(
ct_male_contrib/sum(ct_male_contrib) * 100
ct_female_contrib/sum(ct_female_contrib) * 100
)
