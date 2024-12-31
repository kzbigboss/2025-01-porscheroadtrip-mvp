# 2024-12-31T16:55:22

Moved the credentials out of `.porscheconnect.cfg` and into various environment variables. Was successfully polling data. Moved the execution into a script so I could start adding to it (eg: dump to file, push to S3, ect).

Starting getting captcha errors. I suspect hitting the API enough caused it to start requesting a captcha to be solved. Going to take a break and see if the API accepts connections later.

# 2024-12-31T13:19:15

Got the first pass of a functional container. Current problem is when I add the `postCreateCommand` to the config to fire a porschecli. I'm using file `.porscheconnect.cfg` to host the email/password necessary to reach Porsche Connect. I also need to provide a path to a session file where it stores auth tokens. If I manually enter the container and run the command, I'll see it create a session file and commands are successful. When I push the command into `postCreateCommand`, the session file isn't created and the command times out.

Going to undo the `postCreateCommand` config and work within the container to figure out what's happening.

# 2024-12-31T11:56:42

This is the start of another road trip data project! Prior road trips were able to rely on unofficial Tesla APIs to gather data. These next couple road trips are with a Porsche. Fortunately there's the Porsche Connect service [1] available that can act as a live data source. Unfortunately, similar to my previous Tesla road trips, there's no official API access for personal use.

Several developers have crafted their own solutions to poll for Porsche Connect data. One such example is an Python library [2]. Eventually I want to write my own library to poll the API. I won't be able to build that fast enough for an approaching trip, though. So instead, I'll make use of this Python library as a warm up for building dev containers.

[1] https://connect-store.porsche.com/offer/us/en-US
[2] https://github.com/CJNE/pyporscheconnectapi