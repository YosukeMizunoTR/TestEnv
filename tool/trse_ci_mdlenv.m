function trse_ci_mdlenv(FileName,ModelName)

    Rlt = trse_mdlenv(FileName,ModelName,true);

    if ~Rlt.Xresult %結果NG
        error(Rlt.Comment);
    end

end

