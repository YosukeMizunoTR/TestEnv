function trse_ci_mdlenv()
	try
	  disp('MATLAB(mbd_common) setup start');
	  evalc('run(''trrc'')');
	  disp('MATLAB(mbd_common) setup end');
	catch ME
		disp('%s\n', ME.message);
		exit(3);
	end
end