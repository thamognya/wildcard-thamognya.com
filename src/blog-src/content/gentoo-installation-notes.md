+++
title = "Gentoo Installation Notes"
date = 2022-03-26
description = "These are my Gentoo Installation Notes"
+++

### For a fast installation

1) Instead of the Minimal installation cd, just use the distro you are already in or use a live iso of any distro. I reccomend using the EndeavourOS which has all the required tools ; also it works great with my upcomming gentoo installation script (which attempts to replicated the arch linux installer).

2) Use the stage 3 desktop profile, as they are already pre compiled.

3) Use the kernel bins which are basically genkerneled kernel sources, pre compiled for you that can reduce the time required to compile the kernel. With these tricks it can reduce the time to the time required to install archlinux without the installer.

4) If you would like to optimze your build, you can just recompile the whole system with the custom make.conf later on with the commands `emerge -e @world` or if you would like a script use the one provided in this [gentoo forums question](https://forums.gentoo.org/viewtopic-t-1041480-start-0.html), comment 4.

### Here is the script:

<script src="https://gist.github.com/ThamognyaKodi/a62bd48ff95b67449c8b90b1855e865d.js"></script>
