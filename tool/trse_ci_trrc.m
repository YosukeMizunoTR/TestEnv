function trse_ci_mdlenv()

	%TR環境セットアップ用関数
	%MATLABで作業を行うjobの場合、必ず最初の本関数を実行する

	try
	
	  disp('MATLAB(mbd_common) setup start');	%普段MATLAB起動時にコマンドウインドウに表示させる内容を表示させない(開始)
	  
	  evalc('run(''trrc'')');					%TR環境構築
	  
	  disp('MATLAB(mbd_common) setup end');		%普段MATLAB起動時にコマンドウインドウに表示させる内容を表示させない(終了)
	  
	catch ME
	
		disp('%s\n', ME.message);				%エラーになればその内容を表示
		exit(3);
		
	end
end