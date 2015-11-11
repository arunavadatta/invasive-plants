##Scale standardization for multiple boxplots##


#value/range#
tr1=data.frame(lapply(box[,1:9], 
		function(x)
			(x/(max(x)-min(x)))))

#value/standard deviation#
boxplot(tr1)

tr2=lapply(box[,1:9], function(x)(x/sd(x)))
data.frame(tr2)
boxplot(tr2)

