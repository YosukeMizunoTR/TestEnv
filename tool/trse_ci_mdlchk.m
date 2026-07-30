function trse_ci_mdlchk(FileName,ModelName)

	%設定
	Justice.Run = false;
	Justice.File = '';

	disp('GuideLineCheck start');
	trse_ci_mdlenv(FileName,ModelName);

    Rlt = trse_mdlchk(FileName,ModelName,'Full',Justice);

    if ~Rlt.Xresult %結果NG
        disp(Rlt.Comment);
        disp('GuideLineCheck end');
        exit(2);
    end

end

