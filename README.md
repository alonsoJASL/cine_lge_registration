> Edit this file. 

# Research Code Template
Template for developing research code. Has support to add other code as submodules.

It uses the following code: 
+ [CemrgApp](https://github.com/OpenHeartDevelopers/CemrgApp): 
    + Branch: `<some_branch>`
    + Commit: [`commit_sha`]() 
    + Notes: Some notes on this repo
+ [imatools]()
    + Branch: `<some_branch>`
    + Commit: [`commit_sha`](https://github.com/alonsoJASL/imatools.git)

## Quick start
Clone this repository: 
```shell
git clone <this_repository>  
cd <this_repository>
```

> `imatools` is a common repository used for image analysis and mesh handling in python

Add `imatools` as submodule:
```shell
git submodule add https://github.com/alonsoJASL/imatools.git imatools
git submodule init
git submodule update 
```
