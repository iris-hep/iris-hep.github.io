---
permalink: /docs/vidyo.html
layout: default
title: Information regarding Vidyo 
---

  Vidyo is a videoconferencing system used by CERN and the LHC experiments.
It will also be used for many IRIS-HEP meetings. The system is organized
around "Vidyo Rooms" to which people connect for a videconference. The
first part of this webpage will explain how you can get the relevant mobile
or desktop applications to connect as a user to an existing Vidyo Room 
and the latter part of the page will describe how to create a new Vidyo Room 
for some purpose.

## Connecting to an existing Vidyo Room

In most cases, you will need to connect to a Vidyo Room which has
been created by someone else. Either someone will have provided you with
a direct URL to open, e.g. the main general use IRIS-HEP Vidyo Room is:

[https://vidyoportal.cern.ch/join/8ssmWH8zau](https://vidyoportal.cern.ch/join/8ssmWH8zau)

or (more often) you will have an [Indico](https://indico.cern.ch/category/10492/) agenda page for some meeting which has a "Video Conference: Join" button
near the top.

Even for those of you who have used it, please be aware that CERN did a
major upgrade during August and you should download the new client app.

  If you use a mobile device, you should be able to find and download
the "VidyoConnect" app from either the Apple or Google app stores. If
you want to use a desktop application, please see:

   [http://avcdocs.web.cern.ch/VidyoConnect/VidyoConnect_pilot/](http://avcdocs.web.cern.ch/VidyoConnect/VidyoConnect_pilot/)

In particular the direct links to download the desktop app are:

  * Mac:  [https://cernbox.cern.ch/index.php/s/cTyphWXj3I2uFeV](https://cernbox.cern.ch/index.php/s/cTyphWXj3I2uFeV)
  * Windows (not at CERN): [https://cernbox.cern.ch/index.php/s/r5Yga0IUtfukua5](https://cernbox.cern.ch/index.php/s/r5Yga0IUtfukua5)

  Once you have that installed, start the app (just ignore the request to
login if you don't have a CERN account), and open the IRIS-HEP-Project vidyo
room connect url in a browser:

   [https://vidyoportal.cern.ch/join/8ssmWH8zau](https://vidyoportal.cern.ch/join/8ssmWH8zau)

It may ask you if you want to connect using the app, say "yes". This should
start the connection within the VidyoConnect app. It will ask you there for
your name (if you didn't have a CERN account to login) -and- allow you to
turn off your video and mute your microphone before entering the room. (The
defaults in the new app annoyingly seem to have both active. I'm still trying
to figure out how to change that.) Then click "join" and you should be
connected to the IRIS-HEP vidyo room.

## Creating a Vidyo Room

  The creation of a new Vidyo Room is done through [Indico](https://indico.cern.ch/category/10492/) and thus will require a (CERN?) account on that system. To create a room, you first need to create an event (meeting, etc.) in Indico. 
Once you have that meeting created, go to the settings in the "Management Area"
for the meeting and you should see "Videoconference" listed among the
services in the navigation bar on the left. If choose that, you will be
offered two options: "Create Vidyo Room" (i.e. create a new one) and "Add
Existing Room".

  Note that Vidyo rooms are persistent, i.e. once one is created it isn't 
strictly connected to the original meeting or time slot that was used to 
create. And you can use it anytime with the direct URL to the room, even
without creating another Indico event/meeting. (TBC: they *might* expire if
not used at all for 6 months.) In general we should not create many, many
Vidyo rooms for the IRIS-HEP project, but instead have a handful with clear
names that get reused.
