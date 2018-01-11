#!/usr/bin/env python
from operator import itemgetter

import string
import sys
import csv
from itertools import combinations
from collections import defaultdict
from signal import signal, SIGPIPE, SIG_DFL
signal(SIGPIPE,SIG_DFL)


userMovies = defaultdict(list)
with open('rating03.csv', 'rb') as csvfile:
	csvReader = csv.reader(csvfile)
	csvReader.next()
	for row in csvReader:
		if float(row[2]) >= 4.0 :
			userMovies[row[0]].append(row[1])

for user, movieList in userMovies.items():
	movieList.sort()
	length = len(movieList)
	for index, mv in enumerate(movieList):
		if index >= length -1 :
			break

		sublist = '\t'.join(movieList[index + 1:])
		print '%s\t%s' % (mv, sublist)
