# 2025-01 Road Trip Data Polling

Another road trip means another data tracking project.

This repo tracks the initial minimally viable solution to poll Porsche Connect for my vehicle's current status and location.

This MVP is intented to look something like this:
- Dev container with basic compute environment
- Availability of pyporscheconnectapi [1] as a CLI tool
- Scripts that routinely poll Porsche Connect and persist the response payload

[1] https://github.com/CJNE/pyporscheconnectapi