function trse_ci_mdlenv(FileName,ModelName)
    slCharacterEncoding('UTF-8')
    Rlt = trse_mdlenv(FileName,ModelName,true);

    if ~Rlt.Xresult %結果NG
        error(Rlt.Comment);
    else
    	disp('正常のモデル環境の作成に成功しました。');
    end

end

