function plan = buildfile
%buildfile Build tasks for matlab-fmp.

import matlab.buildtool.tasks.CodeIssuesTask

plan = buildplan(localfunctions);
plan.DefaultTasks = "test";

plan("check") = CodeIssuesTask(["+fmp", "+tools", "tests"]);
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

opts = matlab.addons.toolbox.ToolboxOptions(pwd, "stukozola-matlab-fmp");
opts.ToolboxName = "matlab-fmp";
opts.ToolboxVersion = "0.1.0";
opts.Summary = "MATLAB client for Financial Modeling Prep data.";
opts.Description = "Object-oriented MATLAB toolbox for the Financial Modeling Prep stable REST API.";
opts.AuthorName = "Stu Kozola";
opts.AuthorEmail = "stuart.kozola@gmail.com";
opts.MinimumMatlabRelease = "R2024b";
opts.ToolboxMatlabPath = pwd;
opts.ToolboxFiles = ["+fmp", "+tools", "examples", "resources", "README.md", "docs"];
opts.OutputFile = fullfile(distFolder, "matlab-fmp.mltbx");

matlab.addons.toolbox.packageToolbox(opts);
end
