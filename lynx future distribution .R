future = getData('CMIP5', var='bio', res=5, rcp=65, model='AC', year=100)
lp= crop(future, ext)
lp
names(lp) = names(predictors)
lppred =maxnet.predictRaster(eval@models[[best]], lp, type = 'exponential',clamp=TRUE)
plot(lppred)
plot(eval@predictions[[best]]>thr$equal_sens_spec)
plot(lppred>thr$equal_sens_spec)
