# User Stories to a Domain Model

```
As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

As a person,
So that I can use a good bike,
I'd like to see if a bike is working
```

| Objects         | Messages         |
|-----------------|------------------|
| Person          | username_display |
| Person          | ride_bike?       |
| Bike            | working?         |
| DockingStation  | release_bike     |

```
person <-- username_display --> username
person <-- ride_bike? --> true/false
bike <-- works? --> true/false
docking station <-- release_bike --> true/false
```

## User Stories for docking bikes ##

As a member of the public
So I can return bikes I've hired
I want to dock my bike at the docking station

As a member of the public
So I can decide whether to use the docking station
I want to see a bike that has been docked

| Objects         | Messages         |
|-----------------|------------------|
| Bike            | Hire             |
| Bike            | Return_bike      |
| Bike            | Dock?            |
| Docking Station |                  |

## User Stories for not releasing bike if empty ##

As a member of the public,
So that I am not confused and charged unnecessarily,
I'd like docking stations not to release bikes when there are none available.


| Objects         | Messages         |
|-----------------|------------------|
| Docking Stations| release_bike     |
| Bikes           | available?       |
|                 |                  |
|                 |                  |

## Limiting Capacity

As a maintainer of the system,
So that I can control the distribution of bikes,
I'd like docking stations not to accept more bikes than their capacity.

| Objects         | Messages         |
|-----------------|------------------|
| Docking Stations| release_bike     |
| Bikes           | capacity         |
|                 |                  |
|                 |                  |
