---
title: "R Markdown and Leaflet"
author: "Yigang"
date: "April 1, 2021"
output:
  html_document:
    keep_md: yes
  pdf_document: default
---

# Leaflet for R
Leaflet is one of the most popular open-source JavaScript libraries for interactive maps. It’s used by websites ranging from The New York Times and The Washington Post to GitHub and Flickr, as well as GIS specialists like OpenStreetMap, Mapbox, and CartoDB.

# Goal 
Create a web page using R Markdown that features a map created with Leaflet. 
Host your webpage on either GitHub Pages, RPubs, or NeoCities.
Your webpage must contain the date that you created the document, and it must contain a map created with Leaflet. We would love to see you show off your creativity! 



## Create Map and Add Markers


```r
library(leaflet)
library(dplyr)

mymap <- leaflet() %>% addTiles() %>%
        addMarkers(lat=40.01077, lng=116.39204, 
                   popup="Olympic Forest Park")
mymap
```

```{=html}
<div id="htmlwidget-c70690903862a46b9713" style="width:672px;height:480px;" class="leaflet html-widget"></div>
<script type="application/json" data-for="htmlwidget-c70690903862a46b9713">{"x":{"options":{"crs":{"crsClass":"L.CRS.EPSG3857","code":null,"proj4def":null,"projectedBounds":null,"options":{}}},"calls":[{"method":"addTiles","args":["//{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",null,null,{"minZoom":0,"maxZoom":18,"tileSize":256,"subdomains":"abc","errorTileUrl":"","tms":false,"noWrap":false,"zoomOffset":0,"zoomReverse":false,"opacity":1,"zIndex":1,"detectRetina":false,"attribution":"&copy; <a href=\"http://openstreetmap.org\">OpenStreetMap<\/a> contributors, <a href=\"http://creativecommons.org/licenses/by-sa/2.0/\">CC-BY-SA<\/a>"}]},{"method":"addMarkers","args":[40.01077,116.39204,null,null,null,{"interactive":true,"draggable":false,"keyboard":true,"title":"","alt":"","zIndexOffset":0,"opacity":1,"riseOnHover":false,"riseOffset":250},"Olympic Forest Park",null,null,null,null,{"interactive":false,"permanent":false,"direction":"auto","opacity":1,"offset":[0,0],"textsize":"10px","textOnly":false,"className":"","sticky":true},null]}],"limits":{"lat":[40.01077,40.01077],"lng":[116.39204,116.39204]}},"evals":[],"jsHooks":[]}</script>
```

## Generate More Markers


```r
set.seed(2021-04-01)
df <- data.frame(lat = runif(100, min = 39.91, max = 40.11),
                 lng = runif(100, min = 116.29, max = 116.49))
df %>% 
        leaflet() %>%
        addTiles() %>%
        addMarkers()
```

```{=html}
<div id="htmlwidget-b08dec6ea521a93e6fc5" style="width:672px;height:480px;" class="leaflet html-widget"></div>
<script type="application/json" data-for="htmlwidget-b08dec6ea521a93e6fc5">{"x":{"options":{"crs":{"crsClass":"L.CRS.EPSG3857","code":null,"proj4def":null,"projectedBounds":null,"options":{}}},"calls":[{"method":"addTiles","args":["//{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",null,null,{"minZoom":0,"maxZoom":18,"tileSize":256,"subdomains":"abc","errorTileUrl":"","tms":false,"noWrap":false,"zoomOffset":0,"zoomReverse":false,"opacity":1,"zIndex":1,"detectRetina":false,"attribution":"&copy; <a href=\"http://openstreetmap.org\">OpenStreetMap<\/a> contributors, <a href=\"http://creativecommons.org/licenses/by-sa/2.0/\">CC-BY-SA<\/a>"}]},{"method":"addMarkers","args":[[39.9460327174421,39.9385887394566,40.0783293011039,39.9367149258405,40.0055004915129,39.9342516858503,40.0333262565453,40.0881095150858,39.9105246910732,39.9206917629484,39.9877375833131,39.9645907170512,39.9545159991737,40.0853148766234,39.9593337646127,39.9886575150676,40.0386436152644,39.9363593800832,40.0245199521445,39.927786565423,39.9765850020479,40.0471094176546,39.9878239528183,40.0221124618687,40.0919464830682,40.0298120798916,39.9465152906161,40.032444138024,40.0989269717038,39.9957298748568,40.0361496267281,40.0742243885901,39.948043647958,40.085736629311,40.0802198686544,39.9395494621154,39.9582762113213,39.966191179622,39.9584839743003,40.0447187990788,39.9775112282857,39.9298080793023,39.9612626552489,40.0439606172871,39.9845266320649,39.9649838311039,40.0548394670617,39.9724481800478,40.0242603776418,40.0069532174058,39.9415629190765,39.992907579001,39.9617684849445,39.9848019130435,40.0922188082151,40.0095561481919,40.0842020640057,39.9214462396596,39.9381861550175,39.985900995452,39.9420527879521,40.0101858545002,40.0032405128609,39.9443813330401,40.0881294392887,40.081493817633,39.923314973237,39.9286525702011,40.0142512835469,40.0858276151028,40.092403284451,40.0987889922131,39.9501734855492,40.0473672364745,39.9520483645052,39.9231513124797,39.9719510282297,40.08494181199,39.9236009103153,39.9430295410938,40.0038759230543,39.9422740040719,40.0457529365458,40.0751440665591,39.9856302010734,39.9500261003524,39.9631915356871,40.0359910628665,40.0718944189977,40.0165029895864,39.9879482290614,40.0545013001095,39.9302082649339,40.0490784688294,40.1071780404914,39.9297746294551,40.0697376264632,40.0156251275353,39.9187848897092,39.9815582205914],[116.377393774744,116.325183523968,116.327363408599,116.352876611762,116.291189264935,116.398722854638,116.315976713141,116.406798181925,116.402419506302,116.309057111768,116.300400967207,116.42459299705,116.479775980916,116.464662193935,116.311399569605,116.394744964605,116.363808993539,116.353754526572,116.359122029608,116.483824410764,116.441960710995,116.458813913595,116.440060198782,116.414469230464,116.348308565011,116.40911362065,116.347275434071,116.308112719292,116.426673164973,116.412678895202,116.473462863136,116.444412824428,116.3690024166,116.311716506267,116.316460210094,116.378958341675,116.359217347028,116.384105629763,116.449296278097,116.328155150972,116.456320245573,116.322496735407,116.417359493449,116.374214036306,116.295587623222,116.308092214642,116.387685225587,116.412046366148,116.387030719928,116.409021665724,116.44796930776,116.429490693435,116.407948141648,116.38116022666,116.452977403868,116.398186318493,116.389013190484,116.375613684217,116.361199943824,116.317043275815,116.430903584706,116.38597065784,116.430011734422,116.43705022159,116.431238069115,116.325766813532,116.331184151033,116.298497185167,116.303665318303,116.296219414948,116.485397741394,116.419311812297,116.347469363185,116.350179897863,116.43973920919,116.401574271275,116.369013533797,116.418219803516,116.406368865222,116.334727341831,116.472222167822,116.421706997519,116.434513435429,116.472761497283,116.313561968096,116.394124028562,116.444030034179,116.308800645182,116.362132496443,116.418783022705,116.345916921841,116.297954042405,116.40297017294,116.369843571922,116.366967370929,116.488875871068,116.292277075639,116.427613246264,116.468030337906,116.416521664066],null,null,null,{"interactive":true,"draggable":false,"keyboard":true,"title":"","alt":"","zIndexOffset":0,"opacity":1,"riseOnHover":false,"riseOffset":250},null,null,null,null,null,{"interactive":false,"permanent":false,"direction":"auto","opacity":1,"offset":[0,0],"textsize":"10px","textOnly":false,"className":"","sticky":true},null]}],"limits":{"lat":[39.9105246910732,40.1071780404914],"lng":[116.291189264935,116.488875871068]}},"evals":[],"jsHooks":[]}</script>
```

## Make clusters 


```r
df %>% 
        leaflet() %>%
        addTiles() %>%
        addMarkers(clusterOptions = markerClusterOptions())
```

```{=html}
<div id="htmlwidget-8bc24731e75a0fa99f13" style="width:672px;height:480px;" class="leaflet html-widget"></div>
<script type="application/json" data-for="htmlwidget-8bc24731e75a0fa99f13">{"x":{"options":{"crs":{"crsClass":"L.CRS.EPSG3857","code":null,"proj4def":null,"projectedBounds":null,"options":{}}},"calls":[{"method":"addTiles","args":["//{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",null,null,{"minZoom":0,"maxZoom":18,"tileSize":256,"subdomains":"abc","errorTileUrl":"","tms":false,"noWrap":false,"zoomOffset":0,"zoomReverse":false,"opacity":1,"zIndex":1,"detectRetina":false,"attribution":"&copy; <a href=\"http://openstreetmap.org\">OpenStreetMap<\/a> contributors, <a href=\"http://creativecommons.org/licenses/by-sa/2.0/\">CC-BY-SA<\/a>"}]},{"method":"addMarkers","args":[[39.9460327174421,39.9385887394566,40.0783293011039,39.9367149258405,40.0055004915129,39.9342516858503,40.0333262565453,40.0881095150858,39.9105246910732,39.9206917629484,39.9877375833131,39.9645907170512,39.9545159991737,40.0853148766234,39.9593337646127,39.9886575150676,40.0386436152644,39.9363593800832,40.0245199521445,39.927786565423,39.9765850020479,40.0471094176546,39.9878239528183,40.0221124618687,40.0919464830682,40.0298120798916,39.9465152906161,40.032444138024,40.0989269717038,39.9957298748568,40.0361496267281,40.0742243885901,39.948043647958,40.085736629311,40.0802198686544,39.9395494621154,39.9582762113213,39.966191179622,39.9584839743003,40.0447187990788,39.9775112282857,39.9298080793023,39.9612626552489,40.0439606172871,39.9845266320649,39.9649838311039,40.0548394670617,39.9724481800478,40.0242603776418,40.0069532174058,39.9415629190765,39.992907579001,39.9617684849445,39.9848019130435,40.0922188082151,40.0095561481919,40.0842020640057,39.9214462396596,39.9381861550175,39.985900995452,39.9420527879521,40.0101858545002,40.0032405128609,39.9443813330401,40.0881294392887,40.081493817633,39.923314973237,39.9286525702011,40.0142512835469,40.0858276151028,40.092403284451,40.0987889922131,39.9501734855492,40.0473672364745,39.9520483645052,39.9231513124797,39.9719510282297,40.08494181199,39.9236009103153,39.9430295410938,40.0038759230543,39.9422740040719,40.0457529365458,40.0751440665591,39.9856302010734,39.9500261003524,39.9631915356871,40.0359910628665,40.0718944189977,40.0165029895864,39.9879482290614,40.0545013001095,39.9302082649339,40.0490784688294,40.1071780404914,39.9297746294551,40.0697376264632,40.0156251275353,39.9187848897092,39.9815582205914],[116.377393774744,116.325183523968,116.327363408599,116.352876611762,116.291189264935,116.398722854638,116.315976713141,116.406798181925,116.402419506302,116.309057111768,116.300400967207,116.42459299705,116.479775980916,116.464662193935,116.311399569605,116.394744964605,116.363808993539,116.353754526572,116.359122029608,116.483824410764,116.441960710995,116.458813913595,116.440060198782,116.414469230464,116.348308565011,116.40911362065,116.347275434071,116.308112719292,116.426673164973,116.412678895202,116.473462863136,116.444412824428,116.3690024166,116.311716506267,116.316460210094,116.378958341675,116.359217347028,116.384105629763,116.449296278097,116.328155150972,116.456320245573,116.322496735407,116.417359493449,116.374214036306,116.295587623222,116.308092214642,116.387685225587,116.412046366148,116.387030719928,116.409021665724,116.44796930776,116.429490693435,116.407948141648,116.38116022666,116.452977403868,116.398186318493,116.389013190484,116.375613684217,116.361199943824,116.317043275815,116.430903584706,116.38597065784,116.430011734422,116.43705022159,116.431238069115,116.325766813532,116.331184151033,116.298497185167,116.303665318303,116.296219414948,116.485397741394,116.419311812297,116.347469363185,116.350179897863,116.43973920919,116.401574271275,116.369013533797,116.418219803516,116.406368865222,116.334727341831,116.472222167822,116.421706997519,116.434513435429,116.472761497283,116.313561968096,116.394124028562,116.444030034179,116.308800645182,116.362132496443,116.418783022705,116.345916921841,116.297954042405,116.40297017294,116.369843571922,116.366967370929,116.488875871068,116.292277075639,116.427613246264,116.468030337906,116.416521664066],null,null,null,{"interactive":true,"draggable":false,"keyboard":true,"title":"","alt":"","zIndexOffset":0,"opacity":1,"riseOnHover":false,"riseOffset":250},null,null,{"showCoverageOnHover":true,"zoomToBoundsOnClick":true,"spiderfyOnMaxZoom":true,"removeOutsideVisibleBounds":true,"spiderLegPolylineOptions":{"weight":1.5,"color":"#222","opacity":0.5},"freezeAtZoom":false},null,null,{"interactive":false,"permanent":false,"direction":"auto","opacity":1,"offset":[0,0],"textsize":"10px","textOnly":false,"className":"","sticky":true},null]}],"limits":{"lat":[39.9105246910732,40.1071780404914],"lng":[116.291189264935,116.488875871068]}},"evals":[],"jsHooks":[]}</script>
```