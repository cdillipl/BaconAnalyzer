#!/bin/bash
# Job Number 0, running over 1 files 
pwd
touch /afs/cern.ch/user/c/cdillipl/PHIphiphi/Bacon/CMSSW_8_0_20/src/BaconAnalyzer/Analyzer/Phiphiphi_bits/test_Phiphiphi/test_mc/sub_runZprime_job0.sh.run
cd /afs/cern.ch/user/c/cdillipl/PHIphiphi/Bacon/CMSSW_8_0_20/src/BaconAnalyzer/Analyzer/production
pwd
eval `scramv1 runtime -sh`
cd -
pwd
export TWD=${PWD}/runZprime_job0
mkdir -p $TWD
cd $TWD
mkdir -p /afs/cern.ch/user/c/cdillipl/PHIphiphi/Bacon/CMSSW_8_0_20/src/BaconAnalyzer/Analyzer/Phiphiphi_bits/test_Phiphiphi/test_mc
if ( runZprime  root://eoscms.cern.ch//store/cmst3/group/monojet/production/12/Phiphiphi_/Phiphiphi_0.root   mc  none  1.000000  2.028810e+01 ; mv Output.root /afs/cern.ch/user/c/cdillipl/PHIphiphi/Bacon/CMSSW_8_0_20/src/BaconAnalyzer/Analyzer/Phiphiphi_bits/test_Phiphiphi/test_mc/Output.root_job0_file0.root;  ) then
	 rm -rf ./bacon ./Output_job* 
	 touch /afs/cern.ch/user/c/cdillipl/PHIphiphi/Bacon/CMSSW_8_0_20/src/BaconAnalyzer/Analyzer/Phiphiphi_bits/test_Phiphiphi/test_mc/sub_runZprime_job0.sh.done
else
	 touch /afs/cern.ch/user/c/cdillipl/PHIphiphi/Bacon/CMSSW_8_0_20/src/BaconAnalyzer/Analyzer/Phiphiphi_bits/test_Phiphiphi/test_mc/sub_runZprime_job0.sh.fail
fi
rm -f /afs/cern.ch/user/c/cdillipl/PHIphiphi/Bacon/CMSSW_8_0_20/src/BaconAnalyzer/Analyzer/Phiphiphi_bits/test_Phiphiphi/test_mc/sub_runZprime_job0.sh.run
cd ..
rm -rf $TWD
