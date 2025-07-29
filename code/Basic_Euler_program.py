# Program      : Euler's method
# Author       : MOOC team Mathematical Modelling Basics
# Created      : April, 2017

import numpy as np
import matplotlib.pyplot as plt

print("Solution for dP/dt = 0.7*P")	# in Python 2.7: use no brackets

# Initializations

Dt = 0.1                                # timestep Delta t
P_init = 10                             # initial population 
t_init = 0                              # initial time
t_end = 5                               # stopping time
n_steps = int(round((t_end-t_init)/Dt)) # total number of timesteps

t_arr = np.zeros(n_steps + 1)           # create an array of zeros for t
P_arr = np.zeros(n_steps + 1)           # create an array of zeros for P
t_arr[0] = t_init                       # add the initial P to the array
P_arr[0] = P_init                       # add the initial t to the array

# Euler's method

for i in range (1, n_steps + 1):
    P = P_arr[i-1]
    t = t_arr[i-1]
    dPdt = 0.7*P                        # calculate the derivative 
    P_arr[i] = P + Dt*dPdt              # calculate P on the next time step
    t_arr[i] = t + Dt                   # adding the new t-value to the list

# Plot the results

fig = plt.figure()                      # create figure
plt.plot(t_arr, P_arr, linewidth = 4)   # plot population vs. time

plt.title('dP/dt = 0.7P, P(0)=10', fontsize = 25)  
plt.xlabel('t (in days)', fontsize = 20)
plt.ylabel('P(t)', fontsize = 20)

plt.xticks(fontsize = 15)
plt.yticks(fontsize = 15)
plt.grid(True)                          # show grid 
plt.axis([0, 5, 0, 200])                # define the axes
plt.show()                              # show the plot
# save the figure as .jpg
fig.savefig('Rainbowfish.jpg', dpi=fig.dpi, bbox_inches = "tight")