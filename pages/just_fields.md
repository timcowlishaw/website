---
title: "Tim Cowlishaw — I remember when all of this was just fields"
---

#### I remember when all of this was just fields / _Antes, todo esto era campo_ (2024)

![A google maps satellite-view screenshot of an empty, greeen field, with a single red pin in the middle labeled "Amazon Web Services"](/assets/img/just_fields.jpg)

_I remember when all of this was just fields_ is a Firefox extension that checks if the site you're looking at is hosted in one of the three datacentres in Zaragoza that make up the AWS Spain region (eu-south-2), and if it is, redirects you to a lovely image of when all this was just fields.

I made this as part of a larger piece of work investigating the AWS Spain region, using open-source investigation techniques to identify the location of the three data centres in the Zaragoza region, attempting to map out their sources of power and water, and better understand their links to local communities and ecosystems. One particular challenge was to identify the sites and applications hosted within it - for obvious reasons, there is no way of getting a list of clients from Amazon itself. However, by using the public list of AWS IP addresses, we can start to slowly get an idea of what these three massive warehouses contain during our day to day browsing, through the use of this extension.

The extension source code is [available on github](https://github.com/timcowlishaw/just-fields){target="_blank"}.
