install.packages("rstudioapi")



library(rstudioapi)

for (tissue in c("leaf", "root", "seedling")) {
	jobName = paste(tissue, "job")
	jobRunScript("job.R", importEnv=TRUE, exportEnv=jobName, name=jobName)
}

print("hello I am definitely done now")

