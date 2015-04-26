#!/usr/bin/python2.7

from multiprocessing import Process, Value, Manager, Array
from google import pygoogle
import logging
import sys

def google():
    g = pygoogle(sys.argv[1], log_level=logging.INFO)
    g.pages = 1
    out = g.search()
    print (out)

google_thr = Process(target=google, args=())
google_thr.start()
