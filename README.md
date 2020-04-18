# Boris Bikes Project

## Overview

Simple command line application that is built to simulate the London Bike borrowing service Boris Bikes.

## How to Run

Clone this repo, and from the command line navigate to the [_boris-bikes-2_](boris-bikes-2). In the command line type:

```
irb
```

This will start the Ruby REPL. Then type the following:

```
require './lib/docking_station'
```

This will require the files you need to instantiate new Docking Stations, Bikes, Vans and Garages. This can be done by the following commands:

```
bike = Bike.new
docking_station = DockingStation.new
```

You can then type in the following in the command line to action the objects accordingly:

```
docking_station.dock_bike(bike)
docking_station.release_bike
bike.report_broken
docking_station.dock_bike(bike)
docking_station.release_bike
docking_station.van.drop_off_garage
docking_station.van.garage.fix_bike
docking_station.van.pick_up_garage
docking_station.drop_off_docking
ds.release_bike
```

---

To run the test suite (RSpec), in the command line type:

```
rspec
```

This will display 23 passing tests with 100% coverage.



## User Stories

```
As a person,
So that I can use a bike,
I'd like a docking station to release a bike.
```

```
As a person,
So that I can use a good bike,
I'd like to see if a bike is working
```

```
As a member of the public
So I can return bikes I've hired
I want to dock my bike at the docking station
```

```
As a member of the public
So I can decide whether to use the docking station
I want to see a bike that has been docked
```

```
As a member of the public,
So that I am not confused and charged unnecessarily,
I'd like docking stations not to release bikes when there are none available.
```

```
As a maintainer of the system,
So that I can control the distribution of bikes,
I'd like docking stations not to accept more bikes than their capacity.
```

```
As a system maintainer,
So that I can plan the distribution of bikes,
I want a docking station to have a default capacity of 20 bikes.
```

```
As a system maintainer,
So that busy areas can be served more effectively,
I want to be able to specify a larger capacity when necessary.
```

```
As a member of the public,
So that I reduce the chance of getting a broken bike in future,
I'd like to report a bike as broken when I return it.
```

```
As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations not to release broken bikes.
```

```
As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations to accept returning bikes (broken or not).
```

```
As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like vans to take broken bikes from docking stations and deliver them to garages to be fixed.
```

```
As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like vans to collect working bikes from garages and distribute them to docking stations.
```

---
