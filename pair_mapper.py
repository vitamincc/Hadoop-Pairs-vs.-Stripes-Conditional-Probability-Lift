#!/usr/bin/env python
from operator import itemgetter

import string
import sys
import csv
from itertools import combinations
from collections import defaultdict


userMovies = defaultdict(list)
with open('rating03.csv', 'rb') as csvfile:
	csvReader = csv.reader(csvfile)
	csvReader.next()
	for row in csvReader:
		if float(row[2]) >= 4.0 :
			userMovies[row[0]].append(row[1])

for user, movieList in userMovies.items():
	for m1, m2 in combinations(movieList, 2):
		print '%s\t%s\t%s' % (m1, m2, 1)
