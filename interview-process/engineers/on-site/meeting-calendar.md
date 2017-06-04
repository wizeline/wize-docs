[Home](../../../README.md)           |
[Interview Process](../../README.md) |
[Engineers](../README.md)            |
[On-site](README.md)

# Meeting Calendar

## Overview

Implement a Meeting Calendar system.

## Initial Requirements / Sample Instructions

### Notes

> Implement a Meeting Calendar system.
>
> - Each Person has a name
> - Each Meeting has
>   - Name
>   - Starting date and time
>   - Duration
> - Schedule Users into Meetings
> - Scheduling a Meeting fails if any Person is not available for the entire duration
> - Display or summarize
>   - Known Users
>   - Any given Person's schedule
> - Given a list of Persons and duration, suggest available days/times for a meeting among them
> - Persistent&mdash;data must survive system restart
>
> #### Exclusions
>
> - Authentication
> - Authorization / Roles
>
> ### Deliverables
>
> Use any languages, frameworks, etc., that you like.  
> Present it any form you like&mdash;e.g.,
>
> - desktop native: e.g., command-line or GUI
> - web
>   - at least back-end
>   - front-end is up to you&mdash;e.g.,
>      - none&mdash;API-only
>      - server-rendered
>      - client-rendered

## Ideas for New/Changed Requirements

e.g., for adding on during [2-part](README.md#2-part) flows or "Bonus points" during [4-hour](README.md#4-hour) processes

- **Fix any bugs or deficiencies identified during the presentation**
- Handle Locations&mdash;e.g., meeting rooms
  - Locations have names
  - Can specify a Location when attempting to schedule a Meeting
    - If given, scheduling fails if the Location is not available for the entire duration (like Persons)
    - If not given, auto-select an available Location
- Locations can accommodate a maximum number of Persons&mdash;refuse if too small
- Persons' working hours: will attend meetings only at/after _X_ and until _Y_
  - Easier: same schedule every day
  - Harder: can customize availability each day
- Handle Timezones
- Handle recurring meetings&mdash;e.g., daily, weekly, etc.

[Home](../../../README.md)           |
[Interview Process](../../README.md) |
[Engineers](../README.md)            |
[On-site](README.md)
