taskobj = 'counter';
try
% If input is model name
    bdroot(taskobj);
    subSys = find_system( taskobj, 'BlockType' , 'SubSystem' );
%For Top Level Of Model
    set_param( taskobj, 'ZoomFactor' , 'FitSystem' );
    set_param(taskobj,'ZoomFactor','100');

    %For all the Subsystems
    for ss=1:length(subSys)
    subs_h = get_param( subSys{ss}, 'handle' );
        set_param( subSys{ss}, 'ZoomFactor', 'FitSystem' );
      set_param( subSys{ss}, 'ZoomFactor', '100' );
    end
catch
    mdladvObj           = taskobj.MAObj;
    checkObj            = taskobj.Check;
resultDetailObjs    = checkObj.ResultDetails;
for i = 1:numel(resultDetailObjs)
    block           = Simulink.ID.getHandle(resultDetailObjs(i).Data);
    subs_h = get_param( block, 'handle' );
    set_param( subSys{ss}, 'ZoomFactor', 'FitSystem' );
    set_param( subSys{ss}, 'ZoomFactor', '100' );
end
end
disp('Model set to 100% zoom')
% End Of File
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%