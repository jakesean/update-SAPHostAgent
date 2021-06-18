#!/bin/bash

umask 022

export media=/media/Kernel781Patch
export HostAgent_BIN=SAPHOSTAGENT50_50-20009394.SAR

echo "-----------------------------------------"
echo "Current version of SAP Host Agent is :"
/usr/sap/hostctrl/exe/saphostexec -version | grep "patch number"
cat /usr/sap/hostctrl/exe/hostagent.mf
echo "-----------------------------------------"
echo "Updating SAP Host Agent..."
/usr/sap/hostctrl/exe/saphostexec -upgrade -archive $media/$HostAgent_BIN
echo "-----------------------------------------"
echo " "
echo "Update completed. New SAP Host Agent version is :"
/usr/sap/hostctrl/exe/saphostexec -version | grep "patch number"
cat /usr/sap/hostctrl/exe/hostagent.mf
echo "-----------------------------------------"