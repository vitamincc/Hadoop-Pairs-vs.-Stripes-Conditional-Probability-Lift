# Hadoop-Pairs-vs.-Stripes-Conditional-Probability-Lift

1.Write a job to compute the frequency of co-occurrence for every pair of movies that receive a "High" ranking from the same user (the frequency is the number of users that give this ranking to both of the movies). High ranking corresponds to a 4 or a 5 ranking in the ratings file. You must do this using the 'pairs' and the 'stripes' approach explained in class. Use different sizes of the dataset to obtain a graph similar to the Figure in the slides. Then, output the 20 frequent pairs by using the movie names in the movie data file (not the IDs) You must produce two implementations of this: One in Hadoop MapReduce, one in SPARK. Compare the times for both

2.Modify your program above to compute the conditional probability P(B/A) where A,B are movies. Use the 'stripes' approach to do this. And output the names (both A and B) of the movies whose conditional probability exceeds 0.8. (This can be used as a primitive way to recommend movie B to customers that rent movie A and like it.). Graph the time needed for this vs. size of the dataset. Do this on SPARK

3.Further modify your SPARK program to compute the lift between two movies. (Recall that lift(AB)=P(AB)/(P(A)*P(B))=P(A|B)/P(A)) Again, plot the time vs. size graph, and output pairs whose lift is greater than 1.6 (What does this mean?)
