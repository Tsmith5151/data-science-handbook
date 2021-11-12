# Reinforcement Learning
______

## Q-Learning
- Is an algorithm where the agent attempts to learn what the optimal policy is
  from its history of  interacting with the environment. 

**<span class="label label-success">Steps</span>**

  - We first initialize the `Q-Table`, which is the backbone of the Q-Learning
    Algorithm. 
  - This is what stores all the Q-Values for any given state/action pair the
    agent will encounter in  the environment. 
  - In order to start populating these values with meaningful numbers the agent
    needs to randomly  select an action at any given state and collect the
    associated reward. 
  - If the action was bad then the Q-Value that state/action pair will
    decrease. On the other hand, if  the action was good then the opposite
    happens and the `Q-Value` increases. 
  - Eventually at some point the agent needs to stop exploring and start
    exploiting the values and information in the Q-Table.  
  - This is where the policies such as `epsilon-greedy` come into play.
