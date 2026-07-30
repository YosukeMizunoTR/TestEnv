function trse_ci_mdlchk(FileName,ModelName)

	%ガイドラインチェック設定
	Justice.Run = false;
	Justice.File = '';

	%セットスクリプト実施
	trse_ci_mdlenv(FileName,ModelName);

	%ガイドラインチェック実施
	fprintf('GuideLineCheck start');

	try
	
	    Rlt = trse_mdlchk(FileName,ModelName,'Full',Justice);

	    if ~Rlt.Xresult %結果NG
	    
	    	fprintf('check OK!');
	    	fprintf('Result NG...');
	        fprintf(Rlt.Comment);
	        fprintf('GuideLineCheck end');
	        exit(2);
	        
	    else
	    
	    	fprintf('check OK!');
	    	fprintf('Result OK!');
	    	fprintf('GuideLineCheck end\n');
	    
	    end
	
	catch ME
	
		fprintf('%s\n', ME.message);
		fprintf('GuideLineCheck error\n');
		exit(3);
	end

end

