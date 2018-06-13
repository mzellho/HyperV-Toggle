# HyperV-Toggle

Since *Virtual Machines* and *Docker* require different Hypervisor Launch Types on a Windows Host, this script can be used to quickly toggle between these modes.

The script uses the `bcdedit` command has to be executed from within a *Command Prompt with Administrative Privileges*.

Currently it supports setting the Hypervisor Launch Type to `Auto` (Docker) and `Off` (VMWare, VirtualBox, etc.).
