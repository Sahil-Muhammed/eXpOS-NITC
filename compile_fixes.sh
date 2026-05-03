#!/bin/bash
cd $HOME/myexpos/spl
./spl --os $HOME/myexpos/spl/spl_progs/sample_mod4_stage23.spl
./spl --os $HOME/myexpos/spl/spl_progs/sample_mod5_stage27.spl
./spl --os $HOME/myexpos/spl/spl_progs/sample_mod6_stage27.spl
cd $HOME/myexpos/xfs-interface
./xfs-interface << 'XFS'
fdisk
run batchFile
exit
XFS
