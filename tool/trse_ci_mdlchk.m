function trse_ci_mdlchk(FileName,ModelName)

    Rlt = trse_mdlenv(FileName,ModelName,'Full',true);

    if ~Rlt.Xresult %結果NG
        error(Rlt.Comment);
    end

end

