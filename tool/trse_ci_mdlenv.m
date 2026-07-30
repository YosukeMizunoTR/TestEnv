function trse_ci_mdlenv(FileName,ModelName)

	fprintf('MODEL setup start');
	try
		
		Rlt = trse_mdlenv(FileName,ModelName,true);

	    if ~Rlt.Xresult %結果NG
	        fprintf(Rlt.Comment);
	        exit(100);
	    else
	    	fprintf('MODEL setup end\n');
	    end
	    
	catch ME
	
		fprintf('%s\n', ME.message);
		fprintf('MODEL setup error\n');
		exit(3);
	
	end

end
