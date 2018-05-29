
%1 util\mkfiles.pl >MINFO
%1 util\mk1mf.pl no-asm VC-WIN32 >ms\nt.mak
%1 util\mk1mf.pl dll no-asm VC-WIN32 >ms\ntdll.mak
if x%OSVERSION% == x goto skipce
%1 util\mk1mf.pl no-asm VC-CE >ms\ce.mak
%1 util\mk1mf.pl dll no-asm VC-CE >ms\cedll.mak
:skipce

%1 util\mkdef.pl 32 libeay > ms\libeay32.def
%1 util\mkdef.pl 32 ssleay > ms\ssleay32.def
