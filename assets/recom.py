
import pandas as pd
df = pd.read_csv("assets/plantinfo_clean.csv",encoding='unicode_escape')
sunshine = "full sun"
weather = "mild winters"
soil_condition = "sandy-soil"
row_lis = df[(df["Sunshine"] == sunshine ) & (df["Weather"] == weather) & (df["Soil Conditions"] == soil_condition)].values
new_a = row_lis.tolist()
with open('assets/data.txt','w') as dt:
    for i in new_a:
        for j in i:
            dt.write(str(j)+'\n')