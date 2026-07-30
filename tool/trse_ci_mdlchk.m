function trse_ci_mdlchk(FileName,ModelName)

	trse_ci_mdlenv(FileName,ModelName);

    Rlt = trse_mdlenv(FileName,ModelName,'Full',true);

    if ~Rlt.Xresult %結果NG
        disp(Rlt.Comment);
        exit(2);
    end

end

