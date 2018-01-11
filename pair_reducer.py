#!/usr/bin/env python

from operator import itemgetter
import sys
import collections
import csv

freq = collections.defaultdict(int)
for line in sys.stdin:
	#remove leading and trailing whitespace
	line = line.strip()

	#parse the input we got from mapper.py
	words = line.split('\t', 2)
	if (len(words) != 3) :
		print words

	try:
		mv1 = int(words[0])
		mv2 = int(words[1])
		count = int(words[2])
		pair = (mv1, mv2) if mv1 < mv2 else (mv2, mv1)
		freq[pair] = freq.get(pair, 0) + 1
	except ValueError:
		pass

movieNames = {}
with open('movies1.csv', 'rb') as csvfile:
	csvReader = csv.reader(csvfile)
	csvReader.next()
	for row in csvReader:
		movieNames[int(row[0])] = row[1]

count = 0
for pair, freqcount in sorted(freq.iteritems(), key=lambda (k,v): (v,k), reverse=True):
	count += 1
	if count <= 20:
		print '%s\t%s\t%s' % (movieNames[pair[0]], movieNames[pair[1]], freqcount)
