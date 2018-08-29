HyperV-Toggle
=============

Since *Virtual Machines* and *Docker* require different [**Hypervisor Launch Type**](https://docs.microsoft.com/en-us/virtualization/hyper-v-on-windows/)s on a Windows Host, this script can be used to quickly toggle between `Off` (*VMWare, VirtualBox, ...*) and `Auto` (*Docker*).

[hyperv.bat](https://github.com/MZellhofer/HyperV-Toggle/blob/master/hyperv.bat) is a Batch-Script and uses the [`bcdedit`](https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/bcdedit-command-line-options) command. It has to be executed from a *Command Prompt with Administrative Privileges*.

Note that updating the Hypervisor Launch Type requires a reboot to take effect, which the script will offer to the user after updating the Launch Type.
