function trse_ci_mdlenv(FileName,ModelName)

	try
	  evalc('run(''trrc'')');
	  disp('MATLAB(mbd_common) setup OK');
	catch ME
		disp('%s\n', ME.message);
		exit(3);
	end
	
	Rlt = trse_mdlenv(FileName,ModelName);
	
	try
	    if ~Rlt.Xresult %結果NG
	        disp(Rlt.Comment);
	        exit(100);
	    else
	    	disp('model setup OK');
	    end
	    
	catch ME
		disp('%s\n', ME.message);
		exit(3);
	end

end
