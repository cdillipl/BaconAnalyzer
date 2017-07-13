#!/bin/bash
# Job Number 0, running over 1 files 
pwd
touch /afs/cern.ch/user/c/cdillipl/PHIphiphi/Bacon/CMSSW_8_0_20/src/BaconAnalyzer/Analyzer/Phiphiphi_bits/Phi_test/test_mc/sub_runZprime_job0.sh.run
cd /afs/cern.ch/user/c/cdillipl/PHIphiphi/Bacon/CMSSW_8_0_20/src/BaconAnalyzer/Analyzer/production
pwd
eval `scramv1 runtime -sh`
cd -
pwd
export TWD=${PWD}/runZprime_job0
mkdir -p $TWD
cd $TWD
mkdir -p /afs/cern.ch/user/c/cdillipl/PHIphiphi/Bacon/CMSSW_8_0_20/src/BaconAnalyzer/Analyzer/zprimebits/zprimegamma/GJets_HT_600ToInf_13TeV_mc
if ( runZprime  root://eos/user/c/cdillipl/Phiphiphi/Phiphiphi_0.root   mc  none  1.000000  1.810613e+06 ; mv Output.root /afs/cern.ch/user/c/cdillipl/PHIphiphi/Bacon/CMSSW_8_0_20/src/BaconAnalyzer/Analyzer/Phiphiphi_bits/Phi_test/test_mc/Output.root_job0_file0.root;  ) then
         rm -rf ./bacon ./Output_job*
         touch /afs/cern.ch/user/c/cdillipl/PHIphiphi/Bacon/CMSSW_8_0_20/src/BaconAnalyzer/Analyzer/Phiphiphi_bits/Phi_test/test_mc/sub_runZprime_job0.sh.done
else
         touch /afs/cern.ch/user/c/cdillipl/PHIphiphi/Bacon/CMSSW_8_0_20/src/BaconAnalyzer/Analyzer/Phiphiphi_bits/Phi_test/test_mc/sub_runZprime_job0.sh.fail
fi
rm -f /afs/cern.ch/user/c/cdillipl/PHIphiphi/Bacon/CMSSW_8_0_20/src/BaconAnalyzer/Analyzer/Phiphiphi_bits/Phi_test/test_mc/sub_runZprime_job0.sh.run
cd ..
rm -rf $TWD
