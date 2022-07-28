# AMD-R
Source code for Automated Mail Delivery Robot (AMD-R)

# Requirements
AMD-R uses ROS 1 Noetic Ninjemys. To install it in your operating system follow the intallation [guide](https://wiki.ros.org/noetic/Installation).

# Installation and Usage
## Installation
``` sh
$ git clone https://github.com/AMD-R/AMD-R --recurse-submodules
$ cd AMD-R
$ catkin_make
```

**Note:** `catkin_make` should be run after each update or first use installation.
**Note:** This repository uses submodules. When pulling or cloning the `--recurse-submodules` flag should be used in order for the repository to clone/update properly. For more information on git submodule, you can read the guide [here](https://git-scm.com/book/en/v2/Git-Tools-Submodules)

## Usage
Before use, `setup.bash` or `setup.zsh` file must be sourced. It can be sourced in the `.bashrc` file or zsh equivalence for covinience.

In bash do,
``` sh
$ cd AMD-R
$ source setup.bash
```

In zsh do,
``` sh
$ cd AMD-R
$ source setup.zsh
```

Example .bashrc

``` sh
...

source ~/AMD-R/devel/setup.bash

...
```

### Navigation Nodes
This only launches the nodes required for the navgation of the AMD-R.
``` sh
$ roslaunch navigation full_nav.launch
```

This launches only the nodes used for navigation

``` sh
roslaunch navigation nav.launch
```

### None Navigation Nodes
This launches all the nodes that aren't used by the AMD-R for navigation

``` sh
roslaunch navigation no_nav.launch
```

#### IOT Nodes
This only launches the nodes required for the IOT on the AMD-R.
``` sh
$ roslaunch iot iot.launch
```

### HMI
This launches everything required for the AMD-R
``` sh
$ roslaunch hmi hmi.launch
```

This only launches the HMI but not the main nodes used by the AMD-R

``` sh
roslaunch hmi hmi_only.launch
```

# TODO
  * [ ] Make a welcome/setup script
  * [ ] QR Authentication
