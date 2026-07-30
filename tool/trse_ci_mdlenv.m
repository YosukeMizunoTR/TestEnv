function trse_ci_mdlenv(FileName,ModelName)
	
	disp('model setup start');
	try
		
		Rlt = trse_mdlenv(FileName,ModelName);

	    if ~Rlt.Xresult %結果NG
	        disp(Rlt.Comment);
	        exit(100);
	    else
	    	disp('model setup end');
	    end
	    
	catch ME
		disp('%s\n', ME.message);
		exit(3);
	end

end
