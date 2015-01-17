#!/usr/bin/env python
# -*- coding: utf-8 -*-

# random float 0-1
import random
random.seed(0)
random.random()
random.randint(a, b) #[a,b]
random.shuffle(array)

#list set and dicts/maps
a=[]
a.append(1)
ls = [0]*1000

s=set()
s.add(1)
2 in s

s = set([12, 26, 54])

tel = {'jack': 4098, 'sape': 4139}
tel['guido']=5
tel['guido']
for key in tel:
    print key,tel[key]
if 'jack' in tel: # only for keys!
    print 1
if 4098 in tel:
    print 1

users = {}
users[userid] = username
users.__contains__(' ')
# ' ' in users?

# strings
x = s[3:9]
x = s[:2]
x = s[19:]
x = s[-7:-2]
len(s)
s.find('') #ret -1 on failure

# read write files

l = open('myfile','r').read()

f = open(sys.argv[1], "r")
l = f.readline()
while l:
	l = l.rstrip('\r\n')
	l = f.readline()

#l=l.replace('\r', '').replace('\n', '');

for l in open('myfile','r'):
	l = l.rstrip('\r\n')
    print(l)

f = open('somefile.txt', 'w')
f.write('Hello, ')
f.write('World!')
f.close()

# read strings
import StringIO
stream = StringIO.StringIO("""a1,b1
a1,b2
a2,b3
a2,b4
a2,b5
""")


# read write csv

import os
import csv
import sys

import csv
csvin = csv.reader(open('risk3.csv'), delimiter=',', quotechar='"')
head = csvin.next()
for row in csvin:
    gvkey = row[head.index('GVKEY')]

csvin = csv.reader(open('a.csv'), delimiter=',', quotechar='"')
for row in csvin:
  for cell in row:
    print cell

csvin = csv.reader(sys.stdin, delimiter=',', quotechar='"')
j=0
for row in csvin:
  for i in range(len(row)):
    cell = row[i]
    print cell
  j=j+1

csvout = csv.writer(open('out.csv', 'w'), delimiter=',', quotechar='"')
csvout = csv.writer(sys.stdout, delimiter=',', quotechar='"')
csvout.writerow(['Spam'] * 5 + ['Baked Beans'])
csvout.writerow([id, gvkey, ticker])
sys.stdout.flush()

#filter
import csv
import sys
csvin = csv.reader(sys.stdin, delimiter=',', quotechar='"')
csvout = csv.writer(sys.stdout, delimiter=',', quotechar='"')
for row in csvin:
	csvout.writerow(row)


stream=Popen(["gzip", "-dc", "md/work/vc/data/patentdb/dvd1/tls206_part"+str(i)+".Z"], stdout=PIPE).stdout
for row in csv.reader(stream, delimiter=',', quotechar='"'):

import os
import csv
stream=os.popen("""bash -c '(for i in 1 2 3 4 5
do
cat md/work/vc/data/patentdb/dvd2/tls212_part$i.Z | gzip -dc | tr -d '\\000'
done)|j csvSelect pat_publn_id cited_pat_publn_id'""")

# add column to csv
import csv
csvin = csv.reader(open('risk3.csv'), delimiter=',', quotechar='"')
fd=open('out.csv', 'w')
csvout = csv.writer(fd, delimiter=',', quotechar='"')
head = csvin.next()
csvout.writerow(head+['newvar'])
for row in csvin:
    cn = row[head.index('COMPANY_NAME')]
    newvar = cn.lower()
    row.append(newvar)
    csvout.writerow(row)

fd.close()
    


# run system commands,shell
os.system("ls")
import commands
commands.getstatusoutput('ls')

import os
for i in os.popen("ls -l"):
    print i

import os
for i in os.popen("""bash -c '(for i in 1 2 3 4 5
do
cat md/work/vc/data/patentdb/dvd2/tls212_part$i.Z | gzip -dc | tr -d '\\000'
done)|head|j csvSelect pat_publn_id cited_pat_publn_id'"""):
    print i

from subprocess import *
subprocess.call(["ls", "-l"])
for l in Popen(["ls", "."], stdout=PIPE).stdout:
    print(l)

# time

import time
import datetime
#from datetime import *

# timestamp to datetime
datetime.datetime.fromtimestamp(time.time())
# string to datetime
d=datetime.datetime.strptime('2010-04-28 23:55:41', '%Y-%m-%d %H:%M:%S')
# datetime to string
str(d)
d.strftime("%m/%d/%Y %H:%M:%S")
# datetime to timestamp
time.mktime(d.timetuple())

d=datetime.datetime.strptime('2014-01-01 00:00:00', '%Y-%m-%d %H:%M:%S')
for i in range(365):
	d=d+datetime.timedelta(days=1)
	print d.strftime("%d/%m/%Y %H:%M:%S")


%a	Locale's abbreviated weekday name.	 
%A	Locale's full weekday name.	 
%b	Locale's abbreviated month name.	 
%B	Locale's full month name.	 
%c	Locale's appropriate date and time representation.	 
%d	Day of the month as a decimal number [01,31].	 
%f	Microsecond as a decimal number [0,999999], zero-padded on the left	(1)
%H	Hour (24-hour clock) as a decimal number [00,23].	 
%I	Hour (12-hour clock) as a decimal number [01,12].	 
%j	Day of the year as a decimal number [001,366].	 
%m	Month as a decimal number [01,12].	 
%M	Minute as a decimal number [00,59].	 
%p	Locale's equivalent of either AM or PM.	(2)
%S	Second as a decimal number [00,61].	(3)
%U	Week number of the year (Sunday as the first day of the week) as a decimal number [00,53]. All days in a new year preceding the first Sunday are considered to be in week 0.	(4)
%w	Weekday as a decimal number [0(Sunday),6].	 
%W	Week number of the year (Monday as the first day of the week) as a decimal number [00,53]. All days in a new year preceding the first Monday are considered to be in week 0.	(4)
%x	Locale's appropriate date representation.	 
%X	Locale's appropriate time representation.	 
%y	Year without century as a decimal number [00,99].	 
%Y	Year with century as a decimal number.	 
%z	UTC offset in the form +HHMM or -HHMM (empty string if the the object is naive).	(5)
%Z	Time zone name (empty string if the object is naive).	 
%%	A literal '%' character.

# args

print sys.argv[1]

# ls
import os
def ls():
    for fname in os.listdir('.'):
        print fname

# re,regex

for t in re.compile(r'%s(.*?)%s' % ('<table class="standard" style="width: auto;">','</table>'), re.I+re.S).findall(l):
    print t
	#break



 # 1 match
matches=re.compile(r"REPARTO DE LOS PREMIOS\n(.*?)\n1\n", re.I+re.S).findall(cmd)
if len(matches)>0:
    match1=matches[0]
else:
    print 'no match 1'

 # n match
for id in re.compile(r"audio.htm\?ID=([^']*)'", re.I+re.S).findall(txt):
    print id

# n groups
for id in re.compile('a(.)(.)', re.I+re.S).findall('abcdaef'):
    print id[0]

 # remove img (replace)
re.compile('<img.*?/>').subn('', title)[0]

# exception
try:
    ...
except Exception, err:
    print err
    import sys, traceback
    traceback.print_exc(file=sys.stdout)



# other

for i in range(30, 127):
   print chr(i),

sys.exit()

if os.path.exists(file):

# wget
import urllib
txt=urllib.urlopen('www.google.com').read()

from urllib import FancyURLopener
class MyOpener(FancyURLopener):
    version = 'Mozilla/5.0 (Windows; U; Windows NT 5.1; it; rv:1.8.1.11) Gecko/20071127 Firefox/2.0.0.11'

def dl(url):
    myopener = MyOpener()
    page = myopener.open(url)
    txt=page.read()
    return txt

urllib.urlretrieve(url, filename)



import urllib
import re
import os
import shutil

txt=urllib.urlopen('http://www.catradio.cat/searcher/Search?hiEmissora=CATRADIO&hiPrograma=944&textBusca=&hiAdvanced=1&maxRowsDisplay=300&hiStartValue=1&hiTarget=seaLucResults.jsp&hiSearchEngine=lucene&hiPortal=cr').read()
for id in re.compile(r"audio.htm\?ID=([^']*)'", re.I+re.S).findall(txt):
    url=urllib.urlopen('http://www.catradio.com/paudio/aaItem.jsp?idint='+id).read()
    title=re.compile(r"<title>(.*)</title>", re.I+re.S).search(url).group(1)
    data=re.compile(r"<data>(.*)</data>", re.I+re.S).search(url).group(1).replace('/', '-')
    out='F:/md/audio/podcast/enguardia/'+data+' '+title+'.mp3'
    url2=urllib.urlopen('http://www.catradio.com/su/Register?hiTarget=*.swf&hiPortal=cr&hiRegServiceId=CR_REG&hiErrTarget=*.swf&hiAction=99&hiServiceId=CR_REG&hiRetrievalXsl=player.xsl&AGENT=CR&FORMAT=M3&QUALITY=A&IDVIDEO='+id).read()
    mp3=re.compile(r"<data>(.*)</data>", re.I+re.S).search(url2).group(1)
    print out
    if not os.path.exists(out):
        urllib.urlretrieve(mp3, out+'.tmp')
        shutil.move(out+'.tmp',out)



##
# Removes HTML or XML character references and entities from a text string.
#
# @param text The HTML (or XML) source text.
# @return The plain text, as a Unicode string, if necessary.

def unescape(text):
	def fixup(m):
		text = m.group(0)
		if text[:2] == "&#":
			# character reference
			try:
				if text[:3] == "&#x":
					return unichr(int(text[3:-1], 16))
				else:
					return unichr(int(text[2:-1]))
			except ValueError:
				pass
		else:
			# named entity
			try:
				text = unichr(htmlentitydefs.name2codepoint[text[1:-1]])
			except KeyError:
				pass
		return text # leave as is
	return re.sub("&#?\w+;", fixup, text)

import xml.sax.saxutils as saxutils 
saxutils.unescape("A bunch of text with entities: &amp; &gt; &lt;") 

import htmllib

def unescape(s):
  p = htmllib.HTMLParser(None)
  p.save_bgn()
  p.feed(s)
  return p.save_end()


import urllib;
urllib.quote("string");

for i, v in enumerate("alksjf"):

for m in re.finditer(r'<option value="(.*)\.(.*)">(.*)</option>', txt):
    av=todec(m.group(1))


import imaplib
imap = imaplib.IMAP4_SSL('imap.gmail.com', 993)
imap.login('jordikolomer@gmail.com', '')
imap.status("INBOX", "(UNSEEN)")

.__dict__.keys()
dir(object)
help(object)

def file_len(fname):
    with open(fname) as f:
        for i, l in enumerate(f):
            pass
    return i + 1


# import recipe.py
for i in pipe("cat /etc/passwd", "grep -i michael"): print i


# matrix a la python
matrix= [ [ 0 for i in range(maxboards) ] for j in range(maxboards) ]
matrix[1][2]


# serialize
import pickle
file='gen2.py.cache'
if os.path.exists(file):
    matrix0,distm,distf=pickle.load(open(file))
else:
    matrix0,distm,distf=getdistributions(netfile,genderfile)
    pickle.dump([matrix0,distm,distf], open(file,'w'))

import pickle
from cStringIO import StringIO
o = [1, [2, 3], 4]
src = StringIO()
pickle.dump(o, src)
v = src.getvalue()
r = pickle.Unpickler(StringIO(v)).load()
print r

print >> sys.stderr, 'entering function'

# leading zeros, format string
print "%02d" % (1,)
print "%02x%02x%02x" % (10,11,12)
print "%05.2f" % (1.567) #(2 decimales)

# sleep
import time
time.sleep(secs)

if __name__ == "__main__":


tuple( [1,2,3] )

#socket
import socket

HOST = ''                 # Symbolic name meaning all available interfaces
PORT = 50007              # Arbitrary non-privileged port
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.bind((HOST, PORT))
s.listen(1)
conn, addr = s.accept()
print 'Connected by', addr
while 1:
    data = conn.recv(1024)
    if not data: break
    conn.send(data)
conn.close()


def drange(start, stop, step):
    r = start
    while r < stop:
        yield r
        r += step

drange(0.0, 1.0, 0.1)

#threads
import thread
 
def function(i):
	print i

for i in range(10):
	thread.start_new_thread(function,(i,))

import time
time.sleep(1)

os.path.expanduser(path)

# ls
import glob
glob.glob('./[0-9].*')



import os
import smtplib
import mimetypes
from email.MIMEMultipart import MIMEMultipart
from email.MIMEBase import MIMEBase
from email.MIMEText import MIMEText
from email.MIMEAudio import MIMEAudio
from email.MIMEImage import MIMEImage
from email.Encoders import encode_base64
def sendMail(subject, text, attachmentFilePaths):
	gmailUser = 'jordikolomer@gmail.com'
	gmailPassword = 'zegpegns@'
	recipient = 'jordikolomer@gmail.com'
	msg = MIMEMultipart()
	msg['From'] = gmailUser
	msg['To'] = recipient
	msg['Subject'] = subject
	msg.attach(MIMEText(text))
	for attachmentFilePath in attachmentFilePaths:
		msg.attach(getAttachment(attachmentFilePath))
	mailServer = smtplib.SMTP('smtp.gmail.com', 587)
	mailServer.ehlo()
	mailServer.starttls()
	mailServer.ehlo()
	mailServer.login(gmailUser, gmailPassword)
	mailServer.sendmail(gmailUser, recipient, msg.as_string())
	mailServer.close()
	print('Sent email to %s' % recipient)
def getAttachment(attachmentFilePath):
	contentType, encoding = mimetypes.guess_type(attachmentFilePath)
	if contentType is None or encoding is not None:
		contentType = 'application/octet-stream'
	mainType, subType = contentType.split('/', 1)
	file = open(attachmentFilePath, 'rb')
	if mainType == 'text':
		attachment = MIMEText(file.read())
	elif mainType == 'message':
		attachment = email.message_from_file(file)
	elif mainType == 'image':
		attachment = MIMEImage(file.read(),_subType=subType)
	elif mainType == 'audio':
		attachment = MIMEAudio(file.read(),_subType=subType)
	else:
		attachment = MIMEBase(mainType, subType)
	attachment.set_payload(file.read())
	encode_base64(attachment)
	file.close()
	attachment.add_header('Content-Disposition', 'attachment',	 filename=os.path.basename(attachmentFilePath))
	return attachment


# trim
s = s.strip()
str.endswith(suffix[, start[, end]])
str.startswith(prefix[, start[, end]])

#hex
"%0.2X" % 1

%indexof,index,find,search
i = results.index(selection) #fails
i = results.find(selection) #rets -1

os.mkdir(path)

os.rename(src, dst)

#sort?
a=[2,4,1]
a.sort()
print a

#sort list of lists by 1st element
l.sort()
#sort list of lists by 2nd element
l.sort(key=lambda x: x[1])
l.sort(key=operator.itemgetter(1))

",".join(["a", "b", "c"])

os.remove()

s = raw_input('--> ')


def strtounicode(s):
	try:
		return unicode(s,encoding='utf-8')
	except Exception, err:
		return unicode(s,encoding='latin-1')

# unicode to str
s.encode('utf8')

import copy
ls2 = copy.deepcopy(ls)


def startprogressbar():
	

def updateprogressbar(now,end):
	print 'progress',100.*now/end

import time
updateprogressbar_start = None
def updateprogressbar(now,end):
	global updateprogressbar_start
	if updateprogressbar_start == None:
		updateprogressbar_start = time.time()
	p = 1.*now/end
	if p>0:
		print 'progress',100.*now/end,(time.time()-updateprogressbar_start)*(1-p)/p/60/60,'hours'
