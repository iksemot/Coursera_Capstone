---
layout: post
title:  "Ranking hotels by number of attractions"
categories: ['data analysis']
tags: ['capstone', 'clustering', 'data science']
---

Ranking hotels by number of attractions
================================================================================

The problem
--------------------------------------------------------------------------------

Imagine you are going to Prague in Czech Republic, it will be a short stay but 
you want to experience the city at most, you want to fell like local.

You go to Foursquare and check the top local venues:

![Map of top attractions](img/2019-01-07-23-09-36.png)

Then, you check the top Prague's hotels

![Map of top hotels](img/2019-01-07-23-40-52.png)

And... you are lost, where should you stay?

The solution
--------------------------------------------------------------------------------

I can help you with that! Well, me, data science and machine learning.

With the Foursquare API we can download all the required data - locations of the
top local attractions, and the best Prague's hotels. With help of Pandas we can
filter out some of the venues. And with Folium, a geospatial visualisation 
library, plot everything on the map:

![Map of top attractions around top X hotels](img/2019-01-08-21-21-40.png)

That gives quite a good view where to stay and the list of top hotels:

1. Grand Majestic Plaza
1. Czech Inn
1. Four Seasons Hotel Prague
1. ibis Praha Old Town
1. Hilton Prague
1. Hotel Grandium Prague
1. InterContinental Prague
1. Mama Shelter
1. President Hotel
