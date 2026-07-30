function trse_ci_mdlchk(FileName,ModelName)

	disp('GuideLineCheck start');
	trse_ci_mdlenv(FileName,ModelName,true);

    Rlt = trse_mdlenv(FileName,ModelName,'Full',true);

    if ~Rlt.Xresult %結果NG
        disp(Rlt.Comment);
        disp('GuideLineCheck end');
        exit(2);
    end

end

