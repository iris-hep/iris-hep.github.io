#!/usr/bin/env python

def finish(text):
    title=text.split('*')[2]
    description = text.split('*')[4]
    if title.endswith(':'): title=title[:-1]
    if description.startswith(':'): description=description[1:]
    if description.startswith('.'): description=description[1:]
    title=title.strip()
    description=description.strip()
    description=description.replace('"',' ')
    fname='_'.join(title.split())+'.yml'
    fname=fname.replace('/','')
    fname=fname.replace(',','')
    fname=fname.lower()
    f=open(fname,'w')
    
    
    f.write("open: yes\n")
    f.write("postdate: 2020-09-29\n")
    f.write("title: \"**"+title+"**\"\n")
    f.write("description: \""+description+"\"\n")
    f.write("contacts:\n")
    f.write(" - fellows@iris-hep.org\n")
    f.close()
    
text=""
for l in open("dud"):
    if l.startswith('-'):
        if len(text)>1:
            finish(text)
        text=""
    text+=l.strip()

if len(text)>1:
    finish(text)
