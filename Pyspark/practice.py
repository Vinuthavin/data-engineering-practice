# INPUT:
# +------------------+
# |firstnameLastname |
# +------------------+
# |John Doe          |
# |Alice Smith       |
# |Raj Kumar         |
# +------------------+
 
# OUTPUT:
# +------------------+---------+--------+
# |firstnameLastname |firstName|lastName|
# +------------------+---------+--------+
# |John Doe          |John     |Doe     |
# |Alice Smith       |Alice    |Smith   |
# |Raj Kumar         |Raj      |Kumar   |
# +------------------+---------+--------+


from pyspark.sql.functions import col,split

df_output=df.withColumn("firstName",split(col("firstnameLastname")," ").getItem(0))\
            .withColumn("lastName",split(col("firstnameLastname")," ").getItem(1))
			
   