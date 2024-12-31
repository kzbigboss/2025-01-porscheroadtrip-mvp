# 2025-01 Road Trip Data Polling

Another road trip means another data tracking project.

This repo tracks the initial minimally viable solution to poll Porsche Connect for my vehicle's current status and location.

This MVP is intended to look something like this:
- Dev container with a basic compute environment
- Availability of `pyporscheconnectapi` [1] as a CLI tool
- Scripts that routinely poll Porsche Connect and persist the response payload

[1] https://github.com/CJNE/pyporscheconnectapi

## Handling credentials

Credentials are passed to the container via environment variables. You need to include a `.env` file in the project root that contains:

```env
PORSCHE_EMAIL=XXX
PORSCHE_PASSWORD=XXX
PORSCHE_SESSION_FILE=/app/temp/.session
```

The `PORSCHE_SESSION_FILE` temporarily holds the resultant API authorization tokens. The `/app/temp/` location is ephemeral and is lost when the container is stopped.