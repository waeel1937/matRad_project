


restoredefaultpath();
addpath(genpath('C:\matRad'));
 
% profile on;
% 
% % restoredefaultpath();
% runtests (pwd); 
%     
% %                             
% mocov('-cover',pwd,...
%         '-profile_info',... 
%         '-cover_xml_file','coverage.xml',...
%         '-cover_html_dir','coverage_html');

%---------------------------------------------------------------------------------

import matlab.unittest.TestSuite
import matlab.unittest.TestRunner
import matlab.unittest.plugins.CodeCoveragePlugin

suite = TestSuite.fromPackage('matRad_unitests');


runner = TestRunner.withTextOutput;

runner.addPlugin(CodeCoveragePlugin.forFolder(['C:' filesep 'matRad' filesep 'matRad' ]))
result = runner.run(suite);




