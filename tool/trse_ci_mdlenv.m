function trse_ci_mdlenv(FileName,ModelName)
	
	disp('MODEL setup start');
	try
		
		Rlt = trse_mdlenv(FileName,ModelName,true);

	    if ~Rlt.Xresult %結果NG
	        disp(Rlt.Comment);
	        exit(100);
	    else
	    	disp('MODEL setup end');
	    end
	    
	catch ME
		fprintf('%s\n', ME.message);
		exit(3);
	end

end
