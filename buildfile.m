function plan = buildfile
%buildfile Build tasks for matlab-fmp.

import matlab.buildtool.tasks.CodeIssuesTask

plan = buildplan(localfunctions);
plan.DefaultTasks = "test";

projectRoot = getProjectRoot();
codeIssuePaths = fullfile(projectRoot, ["+fmp", "+tools", "docs", "examples", "tests"]);

plan("check") = CodeIssuesTask(codeIssuePaths);
plan("package").Dependencies = ["test", "check"];
end

function testTask(~)
% Run unit tests without live FMP calls.

projectRoot = getProjectRoot();
restorePath = addProjectPaths(projectRoot); %#ok<NASGU>

results = runtests(fullfile(projectRoot, "tests", "clientTest.m"));
assertSuccess(results);
end

function liveTestTask(~)
% Run live FMP API smoke tests.

projectRoot = getProjectRoot();
restorePath = addProjectPaths(projectRoot); %#ok<NASGU>

if strlength(fmp.internal.resolveApiKey("")) == 0
    error("fmp:MissingLiveApiKey", ...
        "FMP_API_KEY is required for the liveTest build task.");
end

results = runtests(fullfile(projectRoot, "tests", "liveClientTest.m"));
assertSuccess(results);
end

function packageTask(~)
% Build the MATLAB toolbox artifact.

projectRoot = getProjectRoot();
restorePath = addProjectPaths(projectRoot); %#ok<NASGU>

distFolder = fullfile(projectRoot, "dist");
if ~isfolder(distFolder)
    mkdir(distFolder);
end

projectFile = fullfile(projectRoot, "matlab-fmp.prj");
opts = matlab.addons.toolbox.ToolboxOptions(projectFile);
opts.OutputFile = fullfile(distFolder, "matlab-fmp.mltbx");

matlab.addons.toolbox.packageToolbox(opts);
end

function projectRoot = getProjectRoot()
% Return the folder that contains this buildfile.

projectRoot = string(fileparts(mfilename("fullpath")));
end

function restorePath = addProjectPaths(projectRoot)
% Add source and test helpers to the MATLAB path for the current task.

folders = [projectRoot, fullfile(projectRoot, "tests")];
foldersToRemove = strings(1, 0);

for folder = folders
    if ~isfolder(folder)
        continue
    end

    if ~isOnPath(folder)
        addpath(folder);
        foldersToRemove(end + 1) = folder; %#ok<AGROW>
    end
end

restorePath = onCleanup(@() removeAddedPaths(foldersToRemove));
end

function tf = isOnPath(folder)
% True when folder is already present on the MATLAB path.

folder = char(folder);
pathFolders = string(strsplit(path, pathsep));
tf = any(pathFolders == string(folder));
end

function removeAddedPaths(folders)
% Remove only path entries added by addProjectPaths.

for folder = fliplr(folders)
    if isOnPath(folder)
        rmpath(folder);
    end
end
end
