function landtemp = importfile(filename, dataLines)
%IMPORTFILE Import data from a text file
%  MODLSTDM20200201RGB360X180 = IMPORTFILE(FILENAME) reads data from
%  text file FILENAME for the default selection.  Returns the numeric
%  data.
%
%  MODLSTDM20200201RGB360X180 = IMPORTFILE(FILE, DATALINES) reads data
%  for the specified row interval(s) of text file FILENAME. Specify
%  DATALINES as a positive scalar integer or a N-by-2 array of positive
%  scalar integers for dis-contiguous row intervals.
%
%  Example:
%  MODLSTDM20200201rgb360x180 = importfile("C:\Users\qq871\Desktop\MOD_LSTD_M_2020-02-01_rgb_360x180.CSV", [1, Inf]);
%
%  See also READTABLE.
%
% Auto-generated by MATLAB on 31-Mar-2020 17:41:12

%% Input handling

% If dataLines is not specified, define defaults
if nargin < 2
    dataLines = [1, Inf];
end

%% Setup the Import Options
opts = delimitedTextImportOptions("NumVariables", 360);

% Specify range and delimiter
opts.DataLines = dataLines;
opts.Delimiter = ",";

% Specify column names and types
opts.VariableNames = ["VarName1", "VarName2", "VarName3", "VarName4", "VarName5", "VarName6", "VarName7", "VarName8", "VarName9", "VarName10", "VarName11", "VarName12", "VarName13", "VarName14", "VarName15", "VarName16", "VarName17", "VarName18", "VarName19", "VarName20", "VarName21", "VarName22", "VarName23", "VarName24", "VarName25", "VarName26", "VarName27", "VarName28", "VarName29", "VarName30", "VarName31", "VarName32", "VarName33", "VarName34", "VarName35", "VarName36", "VarName37", "VarName38", "VarName39", "VarName40", "VarName41", "VarName42", "VarName43", "VarName44", "VarName45", "VarName46", "VarName47", "VarName48", "VarName49", "VarName50", "VarName51", "VarName52", "VarName53", "VarName54", "VarName55", "VarName56", "VarName57", "VarName58", "VarName59", "VarName60", "VarName61", "VarName62", "VarName63", "VarName64", "VarName65", "VarName66", "VarName67", "VarName68", "VarName69", "VarName70", "VarName71", "VarName72", "VarName73", "VarName74", "VarName75", "VarName76", "VarName77", "VarName78", "VarName79", "VarName80", "VarName81", "VarName82", "VarName83", "VarName84", "VarName85", "VarName86", "VarName87", "VarName88", "VarName89", "VarName90", "VarName91", "VarName92", "VarName93", "VarName94", "VarName95", "VarName96", "VarName97", "VarName98", "VarName99", "VarName100", "VarName101", "VarName102", "VarName103", "VarName104", "VarName105", "VarName106", "VarName107", "VarName108", "VarName109", "VarName110", "VarName111", "VarName112", "VarName113", "VarName114", "VarName115", "VarName116", "VarName117", "VarName118", "VarName119", "VarName120", "VarName121", "VarName122", "VarName123", "VarName124", "VarName125", "VarName126", "VarName127", "VarName128", "VarName129", "VarName130", "VarName131", "VarName132", "VarName133", "VarName134", "VarName135", "VarName136", "VarName137", "VarName138", "VarName139", "VarName140", "VarName141", "VarName142", "VarName143", "VarName144", "VarName145", "VarName146", "VarName147", "VarName148", "VarName149", "VarName150", "VarName151", "VarName152", "VarName153", "VarName154", "VarName155", "VarName156", "VarName157", "VarName158", "VarName159", "VarName160", "VarName161", "VarName162", "VarName163", "VarName164", "VarName165", "VarName166", "VarName167", "VarName168", "VarName169", "VarName170", "VarName171", "VarName172", "VarName173", "VarName174", "VarName175", "VarName176", "VarName177", "VarName178", "VarName179", "VarName180", "VarName181", "VarName182", "VarName183", "VarName184", "VarName185", "VarName186", "VarName187", "VarName188", "VarName189", "VarName190", "VarName191", "VarName192", "VarName193", "VarName194", "VarName195", "VarName196", "VarName197", "VarName198", "VarName199", "VarName200", "VarName201", "VarName202", "VarName203", "VarName204", "VarName205", "VarName206", "VarName207", "VarName208", "VarName209", "VarName210", "VarName211", "VarName212", "VarName213", "VarName214", "VarName215", "VarName216", "VarName217", "VarName218", "VarName219", "VarName220", "VarName221", "VarName222", "VarName223", "VarName224", "VarName225", "VarName226", "VarName227", "VarName228", "VarName229", "VarName230", "VarName231", "VarName232", "VarName233", "VarName234", "VarName235", "VarName236", "VarName237", "VarName238", "VarName239", "VarName240", "VarName241", "VarName242", "VarName243", "VarName244", "VarName245", "VarName246", "VarName247", "VarName248", "VarName249", "VarName250", "VarName251", "VarName252", "VarName253", "VarName254", "VarName255", "VarName256", "VarName257", "VarName258", "VarName259", "VarName260", "VarName261", "VarName262", "VarName263", "VarName264", "VarName265", "VarName266", "VarName267", "VarName268", "VarName269", "VarName270", "VarName271", "VarName272", "VarName273", "VarName274", "VarName275", "VarName276", "VarName277", "VarName278", "VarName279", "VarName280", "VarName281", "VarName282", "VarName283", "VarName284", "VarName285", "VarName286", "VarName287", "VarName288", "VarName289", "VarName290", "VarName291", "VarName292", "VarName293", "VarName294", "VarName295", "VarName296", "VarName297", "VarName298", "VarName299", "VarName300", "VarName301", "VarName302", "VarName303", "VarName304", "VarName305", "VarName306", "VarName307", "VarName308", "VarName309", "VarName310", "VarName311", "VarName312", "VarName313", "VarName314", "VarName315", "VarName316", "VarName317", "VarName318", "VarName319", "VarName320", "VarName321", "VarName322", "VarName323", "VarName324", "VarName325", "VarName326", "VarName327", "VarName328", "VarName329", "VarName330", "VarName331", "VarName332", "VarName333", "VarName334", "VarName335", "VarName336", "VarName337", "VarName338", "VarName339", "VarName340", "VarName341", "VarName342", "VarName343", "VarName344", "VarName345", "VarName346", "VarName347", "VarName348", "VarName349", "VarName350", "VarName351", "VarName352", "VarName353", "VarName354", "VarName355", "VarName356", "VarName357", "VarName358", "VarName359", "VarName360"];
opts.VariableTypes = ["double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double"];
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";

% Import the data
landtemp = readtable(filename, opts);

%% Convert to output type
landtemp = table2array(landtemp);
end