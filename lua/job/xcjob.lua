function xcjob()
	local xc1 = "w;wu;sw;su;nd;w;sw;su;nd;ne;nw;sw;up;d;ne;se;e;ne;nu;wu;nu;n;nu;sd;s;sd;ed;sd;ed;e"
	local xc2 = "n;w;e;n;w;e;n;w;e;n;w;#3 e;#3 s;n;e;#3 n;s;e;n;s;e;w;s;e;w;s;e;w;#2 s"
	local xc3 = "#2 e;ne;#10 eu;#2 se;#2 nw;#10 wd;sw"
	local xc4 = "se;n;#2 s;e;w;s;e;w;su;r;#3 d;#2 e;u;e;w;d;#2 w;#3 u;out;nd;#2 n;nw;#2 w"
	local xc5 = "#2 s;e;w;s;e;w;s;e;w;s;n;w;s;n;w;n;w;e;e;w;s"
	local xc6 = "#2 s;su;e;w;se;#2 w;#2 e;su;n;s;s;n;nd;s;su;sw;ne;nd;n;nw;nd;#2 n"
	local xc7 = "#2 w;s;n;w;e;n;w;e;n;w;e;#2 n;w"
	go("����","�����")
	e("ask zhu danchen about Ѳ��")
	addListener([[^�����쵤�������йء�Ѳ�ǡ�����Ϣ��\n�쵤��˵������\S+���㲻�Ǳ�������ӣ��˻��Ӻ�˵�𣿡�$]],"s:return 'rgf'","xcask")
	addListener([[^�����쵤�������йء�Ѳ�ǡ�����Ϣ��\n�쵤��˵������\S+����������񣬻�����ȥ��Ϣһ��ɡ���$]],"s:return 'busy'","xcask")
	addListener([[^�����쵤�������йء�Ѳ�ǡ�����Ϣ��\n�쵤��˵�������ðɣ�����ڴ������Χ�Ĵ��鿴һ�£�Ѳ��ʱӦ��С�ķ�������ֹ��С���$]],"s:return 'xc'","xcask")
	addListener([[^�����쵤�������йء�Ѳ�ǡ�����Ϣ��\n�쵤��˵�������㲻���Ѿ�����Ѳ�ǵ������𣿻�����ȥ������$]],"s:return 'xc'","xcask")
	local next = listen()
	if next == "rgf" then
		go("��������")
		e("ask fu sigui about ��ٸ�")
		xcjob()
	elseif next == "busy" then
		waitbusy()
		e("e")
		xcaskwait()
		xcjob()
	else
		waitbusy()
		e("e")
		xcwait()
		e(xc1)
		xcwait()
		e(xc2)
		xcwait()
		e(xc3)
		xcwait()
		e(xc4)
		xcwait()
		e(xc5)
		xcwait()
		e(xc6)
		xcwait()
		e(xc7)
		xctaskok()
	end
	return true
end

function xctaskok()
	e("task ok")
	addListener([[^�㱻�����ˣ�\S+��ʵս���飬\S+��Ǳ�ܣ�\S+��������\S+��(��|��)?��$]],"s:return 'ok'","xctaskok")
	addListener("^����ô������ˣ��ǲ�����Щ�ط�ֻ��������������$","s:return 'busy'","xctaskok")
	local result = listen()
	if result == "busy" then
		e("e")
		xcwait()
		e("w")
		xctaskok()
	end
end

function xcaskwait()
	local hp = hp()
	if hp.jing >= hp.jing7 and hp.qi3 then
		dz(hp.qi3)
	elseif hp.qi >= hp.qi7 and hp.jing3 then
		tn(hp.jing3)
	else
		wait(2000)
	end
end

function xcwait()
	local hp = hp()
	if hp.jing >= hp.jing7 and hp.qi3 then
		dz(hp.qi3)
		xcwait()
	elseif hp.qi >= hp.qi7 and hp.jing3 then
		tn(hp.jing3)
		xcwait()
	elseif hp.jingli < 100 then
		e("yun jingli")
		wait(2000)
		xcwait()
	else
		wait(2000)
	end
end
