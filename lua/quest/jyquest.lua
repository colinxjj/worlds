function jyquest()
	full(true)
	if getCha()["qimen-bagua"].level < 50 then
		log.error("���Ű��Բ������޷������")
		return false
	end
	if getCha()["qimen-bagua"].level < 90 then
		go("ɽ��", "�һ���")
		while true do
			local _cha = cha()
			if _cha["qimen-bagua"].level < 90 then
				db()
				e("#10 du bei;yun jing")
				wait(1000)
			else
				break
			end
		end
	end
	go("����ͤ")
	e("ask huang yaoshi about �ܲ�ͨ")
	go("thd/neishi1")
	e("ask huang rong about �ܲ�ͨ")
	go("�Ҷ�", "�һ���")
	e("give fan he to zhou botong") 
	e("ask zhou botong about ����")
	waitbusy()
	e("ask zhou botong about ��������")
	waitbusy()
	e("ask zhou botong about �����澭")
	waitbusy()
	e("answer n")
	jyanswer()
	listener("^�ܲ�ͨ˵�����������ɣ��ҽ�������Ĺ��򣡡�$")
	e("ask zhou botong about ����")
end

function jyanswer()
	while true do
		addListener([[^�� answer ���ش𣬻ش���ʹ��ƴ�����룬��Ҫ�ú��֡�\n�ܲ�ͨ˵������(\S+)��$]], "s:return wildcards[1]", "jyanswer")
		addListener("^�ܲ�ͨ˵������ԭ��������ͬ�����˰�����$", "s:return false", "jyanswer")
		local question = listen()
		if not question then
			return true
		end
		e("answer " .. questions[question])
	end
end

questions = {
	["��ȫ��̵��ڹ��ķ���ʲô��"] = "xiantian-gong",
	["����а��������ָ����ʲô��"] = "tanzhi-shentong",
	["�μ�������ָΪ���Ľ�������ʲô���֣�"] = "liumai-shenjian",
	["���ư�������Ṧ�ǣ�"] = "shuishangpiao",
	["��������ͷ�İ����ǽ���ʲô��"] = "hansha-sheying",
	["�϶��������ڹ���ʲô��"] = "hamagong",
	["�Ͻл��͹��ֵܶ�����Ʒ���ʲô��"] = "xianglong-zhang",
	["���ֺ����ǵ��ڹ���ʲô��"] = "yijin-jing",
	["���ҵĽ�����ʲô��"] = "huifeng-jian",
	["�䵱����ͷ������������ȭ����ʲô���֣�"] = "taiji-quan",
	["�������޼���С�ӵ��ڹ���ʲô��"] = "jiuyang-shengong",
	["�����ɶ������õĹ�����ʲô��"] = "huagong-dafa",
	["Ľ�ݼҵļҴ������мܼ����ǣ�"] = "douzhuan-xingyi",
	["����ǰ������������ʲô���������߻�����ģ�"] = "qiankun-danuoyi",
	["����а���������������ڹ�����������ڹ��������ǣ�"] = "bihai-chaosheng",
	["�����ɾ���ѩ�˵Ľ�����ʲô���ƣ�"] = "jinshe-jianfa",
	["���ֽ���������ʹ�˾��Ӿ�����������������ʲô��"] = "pixie-jian",
	["��ɽ���ڵ���ɽ֮����ʲô��"] = "zixia-gong",
	["������ͯ���Դ�ȭ����ʲô����"] = "kongming-quan",
	["��ɽ���ڵĸ߼������ǣ�"] = "dugu-jiujian",
	["��Ĺ�ɵ��ڹ��ķ���ʲô��"] = "yunu-xinjing",
	["���������С�ӽ��ҵ��Ʒ�����ʲô���ƣ�"] = "anran-zhang",
	["һ�ƴ�ʦ�����־�ѧ��ʲô��"] = "yiyang-zhi",
	["�Ͻл��̻�����СѾͷ����ʲôȭ����"] = "xiaoyaoyou",
	["��Ĺһ�ɵ�����ȭ������ʲô���ƣ�"] = "mainu-quan",
	["����а���˽������ָ��ͨ��������ʲô�书��"] = "yuxiao-jian",
	["���õĸ�������ʲô��"] = "niqiugong",
	["���صļҴ��ַ���ʲô���֣�"] = "lanhua-shou",
	["�һ��Ŀ�����Ҫ��ʲô������ɨҶ�����ʩչ��"] = "luoying-zhang",
	["���ҵ����ʦ̫���������ֹ������޼ɴ�ĵ��ز���"] = "jieshou-jiushi",
}