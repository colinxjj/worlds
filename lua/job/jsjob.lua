function jsjob()
	go("�ƽ�¥")
	e("ask wang furen about job")
	addListener([[^���������˴����йء�job������Ϣ��\n������˵�������㲻���Ѿ����˹���ô��������ȥ������$]],"s:return true","job")
	addListener([[^���������˴����йء�job������Ϣ��\n������˵������ׯ�ſڵĲ軨������Ĳ�ʢ���úú�����һ���ˣ���ȥ�������ţ��������Űɡ���$]],"s:return true","job")
	addListener([[^���������˴����йء�job������Ϣ��\n������˵���������������ݣ����һ�������ɡ���$]],"s:return false","job")
	local job = listen()
	if not job then
		waitbusy()
		e("s")
		waitjob()
		return false
	end
	go("���ʷ�")
	e("ask yan mama about ����")
	listener([[^�����轻����һ�����ߡ�$]])
	waitbusy()
	e("wield piao")
	go("������")
	while true do
		local _hp=hp()
		if _hp.qi < 30 or _hp.jingli < 50 then
			wait(5000)
		else
			e("jiaoshui")
			addListener([[^���ˮ����Ҩ��ưˮ��С������İ�ˮ����.+�ϡ�$]],"s:return false","js")
			addListener([[^�㻹û��ȥҪ���ߣ���ô�ɻ�ѽ��$]],"s:return 'notools'","js")
			addListener([[^(�����ˮ�Ѿ����Ĳ���ˣ����Ի�ȥ�����ˡ�|���Ѿ������ˣ��������������ѻ�����ѽ��)$]],"s:return true","js")
			local r=listen()
			waitbusy()
			if r == "notools" then
				jsjob()
				return
			elseif r then
				go("���ʷ�")
				e("give piao to yan mama")
				go("�ƽ�¥")
				e("ask wang furen about ok")
				waitbusy()
				e("s;#3 drink")
				go("����","��٢��ɽׯ")
				e("get ji;get ya;get yuyuan;eat ji;eat ya;eat yuyuan")
				xue("shenyuan-gong")
				xue("force")
				xue("finger")
				xue("finger")
				local rmb=i()
				if rmb.silver > 300 then
					go("�۱�ի")
					money(0, 20)
				end
				jsjob()
				return
			end
		end
	end
end