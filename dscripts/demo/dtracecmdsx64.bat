

debug\amd64\bin\dtrace.exe -s tests\misc\t_cs_args.d -c debug\amd64\obj\t_cs_str.exe
debug\amd64\bin\dtrace.exe -s tests\misc\t_c_args.d -c debug\amd64\obj\t_c_args.exe
debug\amd64\bin\dtrace.exe -s dscripts\demo\fpid_ustack.d -c debug\amd64\obj\t_c_win.exe
debug\amd64\bin\dtrace.exe -s dscripts\demo\fpid_functime.d -c debug\amd64\obj\t_c_win.exe
debug\amd64\bin\dtrace.exe -s dscripts\demo\fpid_functime.d -c debug\amd64\obj\t_cs_win.exe
debug\amd64\bin\dtrace.exe -s dscripts\demo\pid_ustack.d -c debug\amd64\obj\t_c_win.exe
debug\amd64\bin\dtrace.exe -s dscripts\demo\fpid_ustack.d -c debug\amd64\obj\t_cs_win.exe 
debug\amd64\bin\dtrace.exe -s dscripts\demo\pid_ustack.d -c debug\amd64\obj\t_cs_win.exe
debug\amd64\bin\dtrace.exe -s dscripts\demo\fpid_args.d -c debug\amd64\obj\t_c_args.exe
debug\amd64\bin\dtrace.exe -s dscripts\demo\pid_args.d -c debug\amd64\obj\t_c_args.exe

debug\amd64\bin\dtrace.exe -s tests\misc\t_c_args.d -c debug\i386\obj\t_c_args.exe
debug\amd64\bin\dtrace.exe -s dscripts\demo\fpid_ustack.d -c debug\i386\obj\t_c_win.exe
debug\amd64\bin\dtrace.exe -s dscripts\demo\fpid_functime.d -c debug\i386\obj\t_c_win.exe
debug\amd64\bin\dtrace.exe -s dscripts\demo\pid_ustack.d -c debug\i386\obj\t_c_win.exe
debug\amd64\bin\dtrace.exe -s dscripts\demo\fpid_args.d -c debug\i386\obj\t_c_args.exe
debug\amd64\bin\dtrace.exe -s dscripts\demo\pid_args.d -c debug\i386\obj\t_c_args.exe

del data\testfile.etl
debug\amd64\bin\dtrace.exe -s dscripts\demo\testdata.d -E data\testfile.etl 
debug\amd64\bin\dtrace.exe -s dscripts\demo\profile_syms.d
REM https://github.com/randomascii/bigfiles/blob/master/ETWTraces/2015-09-25_20-56-25%20VS%20F8%20short%20hang.zip
debug\amd64\bin\dtrace.exe -s dscripts\demo\randomascii.d -E "data\2015-09-25_20-56-25 VS F8 short hang.etl"
debug\amd64\bin\dtrace.exe -s dscripts\demo\profile_syms.d -E data\testfile.etl
debug\amd64\bin\dtrace.exe -s dscripts\demo\dns.d
debug\amd64\bin\dtrace.exe -s dscripts\demo\pid_functime.d -c debug\amd64\obj\t_c_sim.exe
debug\amd64\bin\dtrace.exe -s dscripts\demo\proc.d
debug\amd64\bin\dtrace.exe -s dscripts\demo\profile-resolution.d

debug\amd64\bin\dtrace.exe -s tests\misc\t_c_userctf.d -c debug\amd64\obj\t_c_sim.exe
debug\amd64\bin\dtrace.exe -s tests\misc\t_c_userland.d -c debug\amd64\obj\t_c_userland.exe

debug\amd64\bin\dtrace.exe -s dscripts\bin\diag.d -E "data\testfile.etl"
debug\amd64\bin\dtrace.exe -s dscripts\bin\sched.d -E "data\testfile.etl"
debug\amd64\bin\dtrace.exe -s dscripts\bin\whererun.d firefox.exe
debug\amd64\bin\dtrace.exe -s dscripts\bin\wakeup.d firefox.exe
debug\amd64\bin\dtrace.exe -s dscripts\bin\whererun.d firefox.exe -E "data\testfile.etl"
debug\amd64\bin\dtrace.exe -s dscripts\bin\wakeup.d firefox.exe -E "data\testfile.etl"
debug\amd64\bin\dtrace.exe -s dscripts\bin\ustacks_exe.d firefox.exe

debug\amd64\bin\dtrace.exe -s dscripts\demo\powershell.d
