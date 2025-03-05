import pandas as pd
import sklearn
import matplotlib.pyplot as plt

# Example code
data = {'col1': [1, 2, 3], 'col2': [4, 5, 6]}
df = pd.DataFrame(data)
print(df)

# Example plotting
plt.plot(df['col1'], df['col2'])
plt.savefig("my_plot.png")
