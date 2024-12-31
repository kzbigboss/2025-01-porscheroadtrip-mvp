# 2024-12-31T11:56:42

This is the start of another road trip data project! Prior road trips were able to rely on unofficial Tesla APIs to gather data. These next couple road trips are with a Porsche. Fortunately there's the Porsche Connect service [1] available that can act as a live data source. Unfortunately, similar to my previous Tesla road trips, there's no official API access for personal use.

Several developers have crafted their own solutions to poll for Porsche Connect data. One such example is an Python library [2]. Eventually I want to write my own library to poll the API. I won't be able to build that fast enough for an approaching trip, though. So instead, I'll make use of this Python library as a warm up for building dev containers.

[1] https://connect-store.porsche.com/offer/us/en-US
[2] https://github.com/CJNE/pyporscheconnectapi