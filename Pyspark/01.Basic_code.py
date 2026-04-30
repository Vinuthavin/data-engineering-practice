# read data
df = spark.read.csv(".. /dataset/employees.csv", header = True, Inferschema = True)

df.select("name", "salary").show()

df.filter(df.salary > 60000).show()

df = df.withColumn("bonus", df.salary * 0.2)
df.show()

# Grouping data
df.groupBy("department").avg("salary").show()

# sorting data
df.orderBy(df.salary.desc()).show()


#Count Rows

print(df.count())

#Write Output
df.write.mode("overwrite").csv("../datasets/output", header=True)

