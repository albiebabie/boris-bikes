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
| Bike            | Dock?             |
| Docking Station |      |
