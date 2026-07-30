function trse_ci_mdlchk(FileName,ModelName)

	%ガイドラインチェック設定
	Justice.Run = false;
	Justice.File = '';

	%セットスクリプト実施
	trse_ci_mdlenv(FileName,ModelName);

	%ガイドラインチェック実施
	fprintf('GuideLineCheck start\n');

	try
	
	    Rlt = trse_mdlchk(FileName,ModelName,'Full',Justice);

	    if ~Rlt.Xresult %結果NG
	    
	    	fprintf('check OK!\n');
	    	fprintf('Result NG...\n');
	        fprintf('%s\n',Rlt.Comment);
	        fprintf('GuideLineCheck end\n');
	        exit(2);
	        
	    else
	    
	    	fprintf('check OK!\n');
	    	fprintf('Result OK!\n');
	    	fprintf('GuideLineCheck end\n');
	    
	    end
	
	catch ME
	
		fprintf('%s\n', ME.message);
		fprintf('GuideLineCheck error\n');
		exit(3);
	end

end

