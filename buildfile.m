function plan = buildfile
%buildfile Build tasks for matlab-fmp.

import matlab.buildtool.tasks.CodeIssuesTask

plan = buildplan(localfunctions);
plan.DefaultTasks = "test";

plan("check") = CodeIssuesTask(["+fmp", "+tools", "examples", "tests"]);
plan("package").Dependencies = ["test", "check"];
end

function testTask(~)
% Run unit tests without live FMP calls.

results = runtests("tests/clientTest.m");
assertSuccess(results);
end

function packageTask(~)
% Build the MATLAB toolbox artifact.

distFolder = fullfile(pwd, "dist");
if ~isfolder(distFolder)
    mkdir(distFolder);
end

opts = matlab.addons.toolbox.ToolboxOptions("matlab-fmp.prj");
opts.OutputFile = fullfile(distFolder, "matlab-fmp.mltbx");

matlab.addons.toolbox.packageToolbox(opts);
end
