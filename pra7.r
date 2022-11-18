library(moments)
v <- c(12,34,32,43,45,60,56)
print(kurtosis(v))


# Playkurtic

kur = c(rep(61,each=10), rep(64,each=18),
        rep(65,each=23), rep(67,each=32),
        rep(70,each=27), rep(73,each=17))

print(paste("Playkurtic",kurtosis(kur)))

png(file='hello.png')
hist(kur)
dev.off()



# mesokurtic

meso <- rnorm(100)
print(paste("mesokurtic", kurtosis(meso)))
png(file='meso.png')
hist(meso)
dev.off()


# leptokurtic

lepto = c(rep(61, each=2), rep(64, each=6),
          rep(65, each=42), rep(67, each=12),
          rep(70, each=10))

print(paste("leptokurtic", kurtosis(lepto)))
png('lepto.png')
hist(lepto)
dev.off()