import matplotlib.pyplot as plt

# Data
locations = ['Hell\'s Kitchen', 'Astoria', 'Lower Manhattan']
sales = [50735, 50599, 47782]

# Creating the bar chart
plt.bar(locations, sales)

# Adding labels and title
plt.xlabel('Locations')
plt.ylabel('Number of Sales')
plt.title('Sales by Location')

# Displaying the plot
plt.show()