Room {
	id = "baituo/btshan",
	name = "白驼山",
	ways = {
		["westup"] = "baituo/shanmen",
		["east"] = "hj/gebin",
		["e;s;s;s;s;s;s;s;s;s;s;s;s"] = "hj/road2",
	},
	nolooks = {
		["e;s;s;s;s;s;s;s;s;s;s;s;s"] = true,
	},
	lengths = {
		["e;s;s;s;s;s;s;s;s;s;s;s;s"] = 13,
	},
}
Room {
	id = "baituo/chucang",
	name = "储藏室",
	ways = {
		["east"] = "baituo/kongdi",
	},
}
Room {
	id = "baituo/fengxi",
	name = "缝隙",
	ways = {
		["north"] = "baituo/fengxi1",
		["out"] = "baituo/yuanzi2",
	},
}
Room {
	id = "baituo/fengxi1",
	name = "缝隙",
	ways = {
		["south"] = "baituo/fengxi",
		["west"] = "baituo/fengxi2",
		["out"] = "baituo/yuanzi3",
	},
}
Room {
	id = "baituo/fengxi2",
	name = "缝隙",
	ways = {
		["east"] = "baituo/fengxi1",
		["out"] = "baituo/yuanzi4",
	},
}
Room {
	id = "baituo/kongdi",
	name = "空地",
	ways = {
		["northup"] = "baituo/tangwu",
		["southdown"] = "baituo/shanmen",
		["west"] = "baituo/chucang",
	},
}
Room {
	id = "baituo/midao",
	name = "秘道",
	ways = {
		["west"] = "baituo/midao1",
	},
}
Room {
	id = "baituo/midao1",
	name = "秘道",
	ways = {
		["westdown"] = "baituo/midao2",
		["east"] = "baituo/midao",
	},
}
Room {
	id = "baituo/midao2",
	name = "秘道",
	ways = {
		["eastdown"] = "baituo/midao5",
		["westdown"] = "baituo/midao3",
		["eastup"] = "baituo/midao1",
	},
}
Room {
	id = "baituo/midao3",
	name = "秘道",
	ways = {
		["westdown"] = "baituo/midao3",
		["eastup"] = "baituo/midao3",
		["south"] = "baituo/midao4",
		["north"] = "baituo/midao4",
	},
}
Room {
	id = "baituo/midao4",
	name = "秘道",
	ways = {
		["westdown"] = "baituo/midao4",
		["eastup"] = "baituo/midao4",
		["south"] = "baituo/midao3",
		["north"] = "baituo/midao3",
	},
}
Room {
	id = "baituo/midao5",
	name = "秘道",
	ways = {
		["eastdown"] = "baituo/midao6",
		["westup"] = "baituo/midao2",
	},
}
Room {
	id = "baituo/midao6",
	name = "秘道",
	ways = {
		["westup"] = "baituo/midao5",
		["south"] = "baituo/midao8",
		["north"] = "baituo/midao8",
		["east"] = "baituo/midao7",
		["west"] = "baituo/midao6",
	},
}
Room {
	id = "baituo/midao7",
	name = "秘道",
	ways = {
		["south"] = "baituo/midaoout",
		["east"] = "baituo/midao8",
		["north"] = "baituo/midao7",
		["west"] = "baituo/midao6",
	},
}
Room {
	id = "baituo/midao8",
	name = "秘道",
	ways = {
		["south"] = "baituo/midao8",
		["east"] = "baituo/midao8",
		["north"] = "baituo/midao6",
		["west"] = "baituo/midao7",
	},
}
Room {
	id = "baituo/midaoout",
	name = "秘道",
	ways = {
		["south"] = "baituo/midaoout",
		["east"] = "baituo/midao8",
		["north"] = "baituo/midao7",
		["west"] = "baituo/midaoout",
	},
}
Room {
	id = "baituo/shanmen",
	name = "白驼山庄山门",
	ways = {
		["northup"] = "baituo/kongdi",
		["eastdown"] = "baituo/btshan",
	},
}
Room {
	id = "baituo/shetan",
	name = "蛇潭",
}
Room {
	id = "baituo/shuifang",
	name = "睡房",
	no_fight = true,
	ways = {
		["west"] = "baituo/tangwu",
	},
}
Room {
	id = "baituo/tangwu",
	name = "堂屋",
	ways = {
		["north"] = "baituo/tuitang",
		["southdown"] = "baituo/kongdi",
		["west"] = "baituo/yaofang",
	},
}
Room {
	id = "baituo/tianjing",
	name = "天井",
	ways = {
		["out"] = "baituo/midao4",
	},
}
Room {
	id = "baituo/tuitang",
	name = "退堂",
	ways = {
		["south"] = "baituo/tangwu",
		["north"] = "baituo/yuanzi",
		["east"] = "baituo/shuifang",
	},
}
Room {
	id = "baituo/yaofang",
	name = "药房",
	ways = {
		["east"] = "baituo/tangwu",
	},
}
Room {
	id = "baituo/yuanzi",
	name = "花园",
	ways = {
		["south"] = "baituo/tuitang",
	},
}
Room {
	id = "baituo/yuanzi1",
	name = "院子",
	ways = {
		["northwest"] = "baituo/yuanzi2",
		["jumpdown"] = "baituo/shetan",
	},
}
Room {
	id = "baituo/yuanzi2",
	name = "院子",
	ways = {
		["southeast"] = "baituo/yuanzi1",
		["northwest"] = "baituo/yuanzi4",
		["northeast"] = "baituo/yuanzi3",
	},
}
Room {
	id = "baituo/yuanzi3",
	name = "院子",
	ways = {
		["southwest"] = "baituo/yuanzi2",
		["northwest"] = "baituo/yuanzi5",
		["west"] = "baituo/yuanzi4",
	},
}
Room {
	id = "baituo/yuanzi4",
	name = "院子",
	ways = {
		["southeast"] = "baituo/yuanzi2",
		["east"] = "baituo/yuanzi3",
		["northeast"] = "baituo/yuanzi5",
	},
}
Room {
	id = "baituo/yuanzi5",
	name = "院子",
	ways = {
		["southeast"] = "baituo/yuanzi3",
		["southwest"] = "baituo/yuanzi4",
	},
}
Room {
	id = "beijing/jiuguan1",
	name = "小酒馆",
}
Room {
	id = "beijing/road1",
	name = "长安街",
	ways = {
		["south"] = "beijing/jiuguan1",
	},
}
Room {
	id = "cangzhou/bank",
	name = "天音阁",
	ways = {
		["west"] = "cangzhou/beijie1",
	},
}
Room {
	id = "cangzhou/beijie1",
	name = "北街",
	ways = {
		["south"] = "cangzhou/beijie2",
		["north"] = "cangzhou/beimen",
		["east"] = "cangzhou/bank",
		["west"] = "cangzhou/mihang",
	},
}
Room {
	id = "cangzhou/beijie2",
	name = "北街",
	ways = {
		["south"] = "cangzhou/beijie3",
		["east"] = "cangzhou/gongdi",
		["north"] = "cangzhou/beijie1",
		["west"] = "cangzhou/fuya",
	},
}
Room {
	id = "cangzhou/beijie3",
	name = "北街",
	ways = {
		["southeast"] = "cangzhou/dongjie1",
		["southwest"] = "cangzhou/xijie1",
		["south"] = "cangzhou/kezhan",
		["east"] = "cangzhou/feiyuan",
		["north"] = "cangzhou/beijie2",
		["west"] = "cangzhou/mingju",
	},
}
Room {
	id = "cangzhou/beimen",
	name = "北门",
	ways = {
		["south"] = "cangzhou/beijie1",
	},
}
Room {
	id = "cangzhou/changku",
	name = "仓库",
	ways = {
		["north"] = "cangzhou/mihang",
	},
}
Room {
	id = "cangzhou/dangpu",
	name = "当铺",
	no_fight = true,
	ways = {
		["north"] = "cangzhou/xijie1",
	},
}
Room {
	id = "cangzhou/dongjie1",
	name = "东街",
	ways = {
		["southwest"] = "cangzhou/nanjie1",
		["northwest"] = "cangzhou/beijie3",
		["east"] = "cangzhou/dongmen",
	},
}
Room {
	id = "cangzhou/dongmen",
	name = "东门",
	ways = {
		["east"] = "cangzhou/eroad1",
		["west"] = "cangzhou/dongjie1",
	},
}
Room {
	id = "cangzhou/eroad1",
	name = "大驿道",
	ways = {
		["east"] = "cangzhou/eroad2",
		["west"] = "cangzhou/dongmen",
	},
}
Room {
	id = "cangzhou/eroad2",
	name = "大驿道",
	ways = {
		["northeast"] = "group/entry/czeroad3",
		["west"] = "cangzhou/eroad1",
	},
}
Room {
	id = "cangzhou/eroad4",
	name = "大驿道",
	ways = {
		["southwest"] = "group/entry/czeroad3",
		["northeast"] = "tanggu/wroad4",
	},
}
Room {
	id = "cangzhou/feiyuan",
	name = "废园",
	ways = {
		["enter"] = "cangzhou/tingtang",
		["west"] = "cangzhou/beijie3",
	},
}
Room {
	id = "cangzhou/fuya",
	name = "沧州府衙",
	ways = {
		["east"] = "cangzhou/beijie2",
		["west"] = "cangzhou/zhenting",
	},
	blocks = {
		["west"] = {
			{id = "ya yi", exp = 17500},
		},
	},
}
Room {
	id = "cangzhou/gongdi",
	name = "工地",
	ways = {
		["west"] = "cangzhou/beijie2",
	},
}
Room {
	id = "cangzhou/huadian",
	name = "花店",
	ways = {
		["west"] = "cangzhou/nanjie1",
	},
}
Room {
	id = "cangzhou/kezhan",
	name = "大客栈",
	ways = {
		["south"] = "cangzhou/nanjie1",
		["north"] = "cangzhou/beijie3",
		-- ["up"] = "cangzhou/kezhan2",
	},
	nolooks = {
		["up"] = true,
	},
}
Room {
	id = "cangzhou/kezhan2",
	name = "客栈二楼",
	no_fight = true,
	ways = {
		["enter"] = "cangzhou/sleeproom",
		["down"] = "cangzhou/kezhan",
	},
}
Room {
	id = "cangzhou/mihang",
	name = "米行",
	ways = {
		["south"] = "cangzhou/changku",
		["east"] = "cangzhou/beijie1",
	},
}
Room {
	id = "cangzhou/mingju",
	name = "民居",
	ways = {
		["east"] = "cangzhou/beijie3",
	},
}
Room {
	id = "cangzhou/nanjie1",
	name = "南街",
	ways = {
		["south"] = "cangzhou/nanmen",
		["northwest"] = "cangzhou/xijie1",
		["north"] = "cangzhou/kezhan",
		["east"] = "cangzhou/huadian",
		["northeast"] = "cangzhou/dongjie1",
		["west"] = "cangzhou/xiyuanzi",
	},
}
Room {
	id = "cangzhou/nanmen",
	name = "南门",
	ways = {
		["south"] = "cangzhou/sroad1",
		["north"] = "cangzhou/nanjie1",
	},
}
Room {
	id = "cangzhou/sancakou",
	name = "路口",
	ways = {
		["southeast"] = "cangzhou/wroad4",
		["west"] = "hmy/pingding/road9",
	},
}
Room {
	id = "cangzhou/sleeproom",
	name = "客店二楼",
	no_fight = true,
	ways = {
		["out"] = "cangzhou/kezhan2",
	},
}
Room {
	id = "cangzhou/sroad1",
	name = "官道",
	ways = {
		["south"] = "cangzhou/sroad2",
		["north"] = "cangzhou/nanmen",
	},
}
Room {
	id = "cangzhou/sroad2",
	name = "官道",
	ways = {
		["southeast"] = "cangzhou/sroad3",
		["north"] = "cangzhou/sroad1",
	},
}
Room {
	id = "cangzhou/sroad3",
	name = "官道",
	ways = {
		["southeast"] = "cangzhou/sroad4",
		["northwest"] = "cangzhou/sroad2",
	},
}
Room {
	id = "cangzhou/sroad4",
	name = "官道",
	ways = {
		["south"] = "huanghe/road3",
		["northwest"] = "cangzhou/sroad3",
	},
}
Room {
	id = "cangzhou/tingtang",
	name = "厅堂",
	no_fight = true,
	ways = {
		["out"] = "cangzhou/feiyuan",
	},
}
Room {
	id = "cangzhou/wroad1",
	name = "驿道",
	ways = {
		["east"] = "cangzhou/ximen",
		["west"] = "group/entry/czwroad2",
	},
}
Room {
	id = "cangzhou/wroad3",
	name = "驿道",
	ways = {
		["northeast"] = "group/entry/czwroad2",
		["west"] = "cangzhou/wroad4",
	},
}
Room {
	id = "cangzhou/wroad4",
	name = "驿道",
	ways = {
		["northwest"] = "cangzhou/sancakou",
		["east"] = "cangzhou/wroad3",
	},
}
Room {
	id = "cangzhou/xijie1",
	name = "西街",
	ways = {
		["southeast"] = "cangzhou/nanjie1",
		["south"] = "cangzhou/dangpu",
		["north"] = "cangzhou/yizhan",
		["northeast"] = "cangzhou/beijie3",
		["west"] = "cangzhou/ximen",
	},
}
Room {
	id = "cangzhou/ximen",
	name = "西门",
	ways = {
		["east"] = "cangzhou/xijie1",
		["west"] = "cangzhou/wroad1",
	},
}
Room {
	id = "cangzhou/xiyuanzi",
	name = "戏园",
	ways = {
		["east"] = "cangzhou/nanjie1",
	},
}
Room {
	id = "cangzhou/yizhan",
	name = "驿站",
	ways = {
		["south"] = "cangzhou/xijie1",
	},
}
Room {
	id = "cangzhou/zhenting",
	name = "府衙正厅",
	ways = {
		["east"] = "cangzhou/fuya",
	},
}
Room {
	id = "changan/baishulin1",
	name = "柏树林",
	ways = {
		["southeast"] = "changan/baishulin1",
		["southwest"] = "changan/baishulin1",
		["north"] = "changan/baishulin1",
		["east"] = "changan/baishulin1",
		["west"] = "changan/baishulin1",
		["n;n;n;n;n;n;n;n;n;n;n;n;n;n;n;n;n;n;n;n;n;n;n;n;n;n;n;n;n;n"] = "changan/xiaoyanta1",
		["w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w"] = "changan/beilin",
		["e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e"] = "changan/yongkeng2",
		["sw;sw;sw;sw;sw;sw;sw;sw;sw;sw;sw;sw;sw;sw;sw;sw;sw;sw;sw;sw;sw;sw;sw;sw;sw;sw;sw;sw;sw;sw"] = "changan/changjie2",
		["se;se;se;se;se;se;se;se;se;se;se;se;se;se;se;se;se;se;se;se;se;se;se;se;se;se;se;se;se;se"] = "changan/baishulin2",
	},
	nolooks = {
		["n;n;n;n;n;n;n;n;n;n;n;n;n;n;n;n;n;n;n;n;n;n;n;n;n;n;n;n;n;n"] = true,
		["w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w"] = true,
		["e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e"] = true,
		["sw;sw;sw;sw;sw;sw;sw;sw;sw;sw;sw;sw;sw;sw;sw;sw;sw;sw;sw;sw;sw;sw;sw;sw;sw;sw;sw;sw;sw;sw"] = true,
		["se;se;se;se;se;se;se;se;se;se;se;se;se;se;se;se;se;se;se;se;se;se;se;se;se;se;se;se;se;se"] = true,
	},
	lengths = {
		["n;n;n;n;n;n;n;n;n;n;n;n;n;n;n;n;n;n;n;n;n;n;n;n;n;n;n;n;n;n"] = 30,
		["w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w"] = 30,
		["e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e"] = 30,
		["sw;sw;sw;sw;sw;sw;sw;sw;sw;sw;sw;sw;sw;sw;sw;sw;sw;sw;sw;sw;sw;sw;sw;sw;sw;sw;sw;sw;sw;sw"] = 30,
		["se;se;se;se;se;se;se;se;se;se;se;se;se;se;se;se;se;se;se;se;se;se;se;se;se;se;se;se;se;se"] = 30,
	},
}
Room {
	id = "changan/baishulin2",
	name = "柏树林",
	ways = {
		["northwest"] = "changan/baishulin2",
		["east"] = "changan/baishulin2",
		["northeast"] = "changan/baishulin2",
		["west"] = "changan/baishulin2",
		["nw;nw;nw;nw;nw;nw;nw;nw;nw;nw;nw;nw;nw;nw;nw;nw;nw;nw;nw;nw;nw;nw;nw;nw;nw;nw;nw;nw;nw;nw"] = "changan/baishulin1",
		["ne;ne;ne;ne;ne;ne;ne;ne;ne;ne;ne;ne;ne;ne;ne;ne;ne;ne;ne;ne;ne;ne;ne;ne;ne;ne;ne;ne;ne;ne"] = "changan/shihuangling",
		["e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e"] = "changan/wenquan",
		["w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w"] = "changan/jiashan",
	},
	nolooks = {
		["nw;nw;nw;nw;nw;nw;nw;nw;nw;nw;nw;nw;nw;nw;nw;nw;nw;nw;nw;nw;nw;nw;nw;nw;nw;nw;nw;nw;nw;nw"] = true,
		["ne;ne;ne;ne;ne;ne;ne;ne;ne;ne;ne;ne;ne;ne;ne;ne;ne;ne;ne;ne;ne;ne;ne;ne;ne;ne;ne;ne;ne;ne"] = true,
		["e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e"] = true,
		["w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w"] = true,
	},
	lengths = {
		["nw;nw;nw;nw;nw;nw;nw;nw;nw;nw;nw;nw;nw;nw;nw;nw;nw;nw;nw;nw;nw;nw;nw;nw;nw;nw;nw;nw;nw;nw"] = 30,
		["ne;ne;ne;ne;ne;ne;ne;ne;ne;ne;ne;ne;ne;ne;ne;ne;ne;ne;ne;ne;ne;ne;ne;ne;ne;ne;ne;ne;ne;ne"] = 30,
		["e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e;e"] = 30,
		["w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w;w"] = 30,
	},
}
Room {
	id = "changan/beilin",
	name = "碑林",
	ways = {
		["east"] = "changan/baishulin1",
	},
}
Room {
	id = "changan/biaoju",
	name = "虎威镖局",
	ways = {
		["south"] = "changan/biaoju2",
		["north"] = "changan/westjie3",
	},
}
Room {
	id = "changan/biaoju2",
	name = "镖局大厅",
	ways = {
		["north"] = "changan/biaoju",
	},
}
Room {
	id = "changan/bingqipu",
	name = "兵器铺",
	ways = {
		["west"] = "changan/southjie2",
	},
}
Room {
	id = "changan/bingying",
	name = "兵营大门",
	ways = {
		["south"] = "changan/bingying2",
		["north"] = "changan/eastjie4",
	},
	blocks = {
		["south"] = {
			{id = "guan bing", exp = 10000},
		},
	},
}
Room {
	id = "changan/bingying2",
	name = "兵营",
	ways = {
		["north"] = "changan/bingying",
	},
}
Room {
	id = "changan/chaguan",
	name = "茶馆",
	ways = {
		["south"] = "changan/eastjie2",
	},
}
Room {
	id = "changan/changjie1",
	name = "长街",
	ways = {
		["east"] = "changan/changjie1",
		["west"] = "changan/changjie1",
		["w;w;w;w;w;w;w;w;w;w;w;w;w"] = "changan/jiashan",
		["e;se;e;se;e;se;e;se;e;se;e;se;e;se;e;se;e;se;e;se;e;se"] = "changan/dayanta1",
	},
	nolooks = {
		["w;w;w;w;w;w;w;w;w;w;w;w;w"] = true,
		["e;se;e;se;e;se;e;se;e;se;e;se;e;se;e;se;e;se;e;se;e;se"] = true,
	},
	lengths = {
		["w;w;w;w;w;w;w;w;w;w;w;w;w"] = 12,
		["e;se;e;se;e;se;e;se;e;se;e;se;e;se;e;se;e;se;e;se;e;se"] = 24,
	},
}
Room {
	id = "changan/changjie2",
	name = "长街",
	ways = {
		["southeast"] = "changan/ciensi",
		["east"] = "changan/baishulin2",
		["northeast"] = "changan/baishulin1",
		["west"] = "changan/changjie1",
	},
}
Room {
	id = "changan/chm",
	name = "城隍庙",
	ways = {
		["north"] = "changan/westjie4",
	},
}
Room {
	id = "changan/ciensi",
	name = "慈恩寺",
	ways = {
		["northwest"] = "changan/changjie2",
		["east"] = "changan/dayanta1",
	},
}
Room {
	id = "changan/dadian",
	name = "大殿",
	ways = {
		["south"] = "changan/qingzhensi",
		["north"] = "changan/houdian",
	},
}
Room {
	id = "changan/dangpu",
	name = "当铺",
	no_fight = true,
	ways = {
		["west"] = "changan/southjie1",
	},
}
Room {
	id = "changan/dayanta1",
	name = "大雁塔",
	ways = {
		["west"] = "changan/ciensi",
		["up"] = "changan/dayanta2",
	},
}
Room {
	id = "changan/dayanta2",
	name = "大雁塔二层",
	ways = {
		["down"] = "changan/dayanta1",
		["up"] = "changan/dayanta3",
	},
}
Room {
	id = "changan/dayanta3",
	name = "大雁塔三层",
	ways = {
		["down"] = "changan/dayanta2",
		["up"] = "changan/dayanta4",
	},
}
Room {
	id = "changan/dayanta4",
	name = "大雁塔四层",
	ways = {
		["down"] = "changan/dayanta3",
		["up"] = "changan/dayanta5",
	},
}
Room {
	id = "changan/dayanta5",
	name = "大雁塔五层",
	ways = {
		["down"] = "changan/dayanta4",
		["up"] = "changan/dayanta6",
	},
}
Room {
	id = "changan/dayanta6",
	name = "大雁塔六层",
	ways = {
		["down"] = "changan/dayanta5",
		["up"] = "changan/dayanta7",
	},
}
Room {
	id = "changan/dayanta7",
	name = "大雁塔七层",
	ways = {
		["down"] = "changan/dayanta6",
	},
}
Room {
	id = "changan/dewentang",
	name = "德文堂",
	ways = {
		["east"] = "changan/southjie2",
	},
}
Room {
	id = "changan/duchang",
	name = "赌场",
	ways = {
		["north"] = "changan/eastjie1",
	},
}
Room {
	id = "changan/eastchl",
	name = "东门城楼",
	ways = {
		["south"] = "changan/eastjl2",
		["down"] = "changan/eastmen",
		["north"] = "changan/eastjl1",
	},
}
Room {
	id = "changan/eastchq1",
	name = "东城墙",
	ways = {
		["south"] = "changan/eastchq2",
		["north"] = "changan/lwtne",
	},
}
Room {
	id = "changan/eastchq2",
	name = "东城墙",
	ways = {
		["south"] = "changan/eastjl1",
		["north"] = "changan/eastchq1",
	},
}
Room {
	id = "changan/eastchq3",
	name = "东城墙",
	ways = {
		["south"] = "changan/eastchq4",
		["north"] = "changan/eastjl2",
	},
}
Room {
	id = "changan/eastchq4",
	name = "东城墙",
	ways = {
		["south"] = "changan/lwtse",
		["north"] = "changan/eastchq3",
	},
}
Room {
	id = "changan/eastjie1",
	name = "东大街",
	ways = {
		["south"] = "changan/duchang",
		["north"] = "changan/wanhonglou",
		["east"] = "changan/eastjie2",
		["west"] = "changan/zhonglou",
	},
}
Room {
	id = "changan/eastjie2",
	name = "东大街",
	ways = {
		["south"] = "changan/qingchi",
		["east"] = "changan/eastjie3",
		["north"] = "changan/chaguan",
		["west"] = "changan/eastjie1",
	},
}
Room {
	id = "changan/eastjie3",
	name = "东大街",
	ways = {
		["south"] = "changan/huadian",
		["north"] = "changan/shuiguodian",
		["east"] = "changan/eastjie4",
		["west"] = "changan/eastjie2",
	},
}
Room {
	id = "changan/eastjie4",
	name = "东大街",
	ways = {
		["south"] = "changan/bingying",
		["north"] = "changan/neijie7",
		["east"] = "changan/eastmen",
		["west"] = "changan/eastjie3",
	},
}
Room {
	id = "changan/eastjl1",
	name = "箭楼",
	ways = {
		["south"] = "changan/eastchl",
		["north"] = "changan/eastchq2",
	},
}
Room {
	id = "changan/eastjl2",
	name = "箭楼",
	ways = {
		["south"] = "changan/eastchq3",
		["north"] = "changan/eastchl",
	},
}
Room {
	id = "changan/eastmen",
	name = "长乐门",
	ways = {
		["east"] = "changan/eastroad1",
		["west"] = "changan/eastjie4",
		["up"] = "changan/eastchl",
	},
	blocks = {
		["up"] = {
			{id = "guan bing", exp = 10000},
			{id = "wu jiang", exp = 75000},
		},
	},
}
Room {
	id = "changan/eastroad1",
	name = "官道",
	ways = {
		["east"] = "changan/eastroad2",
		["west"] = "changan/eastmen",
	},
}
Room {
	id = "changan/eastroad2",
	name = "官道",
	ways = {
		["east"] = "group/entry/caeroad3",
		["west"] = "changan/eastroad1",
	},
}
Room {
	id = "changan/fengchi",
	name = "凤池",
	no_fight = true,
	ways = {
		["west"] = "changan/qingchi",
	},
}
Room {
	id = "changan/gulou",
	name = "鼓楼",
	ways = {
		["southeast"] = "changan/zhonglou",
		["south"] = "changan/westjie1",
	},
}
Room {
	id = "changan/heishi",
	name = "黑市",
	ways = {
		["east"] = "changan/shiji",
	},
}
Room {
	id = "changan/houdian",
	name = "后殿",
	ways = {
		["south"] = "changan/dadian",
	},
}
Room {
	id = "changan/huadian",
	name = "花店",
	ways = {
		["north"] = "changan/eastjie3",
	},
}
Room {
	id = "changan/jiangjunfu",
	name = "将军府",
	ways = {
		["south"] = "changan/jjfzht",
		["north"] = "changan/westjie2",
		["west"] = "changan/jjfxf",
	},
}
Room {
	id = "changan/jiashan",
	name = "假山",
	ways = {
		["east"] = "changan/jinghu",
	},
}
Room {
	id = "changan/jinghu",
	name = "镜湖",
	ways = {
		["east"] = "changan/southjie3",
		["west"] = "changan/jiashan",
	},
}
Room {
	id = "changan/jiuguan",
	name = "酒馆",
	ways = {
		["north"] = "changan/neijie1",
	},
}
Room {
	id = "changan/jjfhhy",
	name = "后花园",
	ways = {
		["north"] = "changan/jjfhm",
		["west"] = "changan/jjflt",
	},
	nolooks = {
		["north"] = true,
	},
	precmds = {
		["north"] = "open door",
	},
}
Room {
	id = "changan/jjfhm",
	name = "后门",
	ways = {
		["south"] = "changan/jjfhhy",
		["north"] = "changan/jjfzht",
	},
	nolooks = {
		["south"] = true,
	},
	precmds = {
		["south"] = "open door",
	},
}
Room {
	id = "changan/jjflt",
	name = "凉亭",
	ways = {
		["east"] = "changan/jjfhhy",
	},
}
Room {
	id = "changan/jjfws",
	name = "卧室",
	ways = {
		["east"] = "changan/jjfzht",
	},
}
Room {
	id = "changan/jjfxf",
	name = "厢房",
	ways = {
		["east"] = "changan/jiangjunfu",
	},
}
Room {
	id = "changan/jjfyt",
	name = "宴厅",
	ways = {
		["west"] = "changan/jjfzht",
	},
}
Room {
	id = "changan/jjfzht",
	name = "正厅",
	ways = {
		["south"] = "changan/jjfhm",
		["east"] = "changan/jjfyt",
		["north"] = "changan/jiangjunfu",
		["west"] = "changan/jjfws",
	},
	blocks = {
		["west"] = {
			{id = "guan jia", exp = 10000},
		},
		["south"] = {
			{id = "guan jia", exp = 10000},
		},
		["east"] = {
			{id = "guan jia", exp = 10000},
		},
	},
}
Room {
	id = "changan/juhao",
	name = "聚豪酒楼",
	ways = {
		["west"] = "changan/northjie1",
		["up"] = "changan/juhao2",
	},
}
Room {
	id = "changan/juhao2",
	name = "酒楼二楼",
	no_fight = true,
	ways = {
		["down"] = "changan/juhao",
	},
}
Room {
	id = "changan/kezhan",
	name = "聚豪客栈",
	no_fight = true,
	ways = {
		["east"] = "changan/northjie1",
		-- ["up"] = "changan/kezhan2",
	},
	nolooks = {
		["up"] = true,
	},
}
Room {
	id = "changan/kezhan2",
	name = "走廊",
	ways = {
		["north"] = "changan/kezhan3",
		["down"] = "changan/kezhan",
	},
}
Room {
	id = "changan/kezhan3",
	name = "客房",
	no_fight = true,
	ways = {
		["south"] = "changan/kezhan2",
	},
}
Room {
	id = "changan/lijia",
	name = "李家大院",
	ways = {
		["east"] = "changan/neijie7",
		["north"] = "changan/ljzhangfang",
		["west"] = "changan/ljzhengting",
	},
}
Room {
	id = "changan/ljwoshi",
	name = "卧室",
	no_fight = true,
	ways = {
		["east"] = "changan/ljzhengting",
	},
}
Room {
	id = "changan/ljyanting",
	name = "宴厅",
	ways = {
		["south"] = "changan/ljzhengting",
	},
}
Room {
	id = "changan/ljzhangfang",
	name = "账房",
	ways = {
		["south"] = "changan/lijia",
	},
}
Room {
	id = "changan/ljzhengting",
	name = "正厅",
	ways = {
		["north"] = "changan/ljyanting",
		["east"] = "changan/lijia",
		["west"] = "changan/ljwoshi",
	},
}
Room {
	id = "changan/longchi",
	name = "龙池",
	no_fight = true,
	ways = {
		["east"] = "changan/qingchi",
	},
}
Room {
	id = "changan/lwtne",
	name = "了望台",
	ways = {
		["south"] = "changan/eastchq1",
		["west"] = "changan/northchq6",
	},
}
Room {
	id = "changan/lwtnw",
	name = "了望台",
	ways = {
		["south"] = "changan/westchq1",
		["east"] = "changan/northchq1",
	},
}
Room {
	id = "changan/lwtse",
	name = "了望台",
	ways = {
		["north"] = "changan/eastchq4",
		["west"] = "changan/southchq6",
	},
}
Room {
	id = "changan/lwtsw",
	name = "了望台",
	ways = {
		["north"] = "changan/westchq4",
		["east"] = "changan/southchq1",
	},
}
Room {
	id = "changan/minju1",
	name = "民居",
	ways = {
		["south"] = "changan/shiji",
	},
}
Room {
	id = "changan/minju2",
	name = "民居",
	ways = {
		["north"] = "changan/shiji",
	},
}
Room {
	id = "changan/minju3",
	name = "民居",
	ways = {
		["south"] = "changan/neijie1",
	},
}
Room {
	id = "changan/minju4",
	name = "民居",
	ways = {
		["south"] = "changan/neijie2",
	},
}
Room {
	id = "changan/minju5",
	name = "民居",
	ways = {
		["south"] = "changan/neijie3",
	},
}
Room {
	id = "changan/minju6",
	name = "民居",
	ways = {
		["south"] = "changan/neijie4",
	},
}
Room {
	id = "changan/minju7",
	name = "民居",
	ways = {
		["south"] = "changan/neijie5",
	},
}
Room {
	id = "changan/neijie1",
	name = "内街",
	ways = {
		["south"] = "changan/jiuguan",
		["east"] = "changan/northjie3",
		["north"] = "changan/minju3",
		["west"] = "changan/shiji",
	},
}
Room {
	id = "changan/neijie2",
	name = "内街",
	ways = {
		["south"] = "changan/xiyuan",
		["east"] = "changan/neijie3",
		["north"] = "changan/minju4",
		["west"] = "changan/northjie3",
	},
}
Room {
	id = "changan/neijie3",
	name = "内街",
	ways = {
		["south"] = "changan/tupiaoguan",
		["east"] = "changan/neijie4",
		["north"] = "changan/minju5",
		["west"] = "changan/neijie2",
	},
}
Room {
	id = "changan/neijie4",
	name = "内街",
	ways = {
		["south"] = "changan/zahuopu",
		["east"] = "changan/neijie5",
		["north"] = "changan/minju6",
		["west"] = "changan/neijie3",
	},
}
Room {
	id = "changan/neijie5",
	name = "内街",
	ways = {
		["south"] = "changan/neijie6",
		["north"] = "changan/minju7",
		["west"] = "changan/neijie4",
	},
}
Room {
	id = "changan/neijie6",
	name = "内街",
	ways = {
		["south"] = "changan/neijie7",
		["north"] = "changan/neijie5",
	},
}
Room {
	id = "changan/neijie7",
	name = "内街",
	ways = {
		["south"] = "changan/eastjie4",
		["north"] = "changan/neijie6",
		["west"] = "changan/lijia",
	},
}
Room {
	id = "changan/northchl",
	name = "北门城楼",
	ways = {
		["down"] = "changan/northmen",
		["east"] = "changan/northjl2",
		["west"] = "changan/northjl1",
	},
}
Room {
	id = "changan/northchq1",
	name = "北城墙",
	ways = {
		["east"] = "changan/northchq2",
		["west"] = "changan/lwtnw",
	},
}
Room {
	id = "changan/northchq2",
	name = "北城墙",
	ways = {
		["east"] = "changan/northchq3",
		["west"] = "changan/northchq1",
	},
}
Room {
	id = "changan/northchq3",
	name = "北城墙",
	ways = {
		["east"] = "changan/northjl1",
		["west"] = "changan/northchq2",
	},
}
Room {
	id = "changan/northchq4",
	name = "北城墙",
	ways = {
		["east"] = "changan/northchq5",
		["west"] = "changan/northjl2",
	},
}
Room {
	id = "changan/northchq5",
	name = "北城墙",
	ways = {
		["east"] = "changan/northchq6",
		["west"] = "changan/northchq4",
	},
}
Room {
	id = "changan/northchq6",
	name = "北城墙",
	ways = {
		["east"] = "changan/lwtne",
		["west"] = "changan/northchq5",
	},
}
Room {
	id = "changan/northjie1",
	name = "北大街",
	ways = {
		["south"] = "changan/zhonglou",
		["north"] = "changan/northjie2",
		["east"] = "changan/juhao",
		["west"] = "changan/kezhan",
	},
}
Room {
	id = "changan/northjie2",
	name = "北大街",
	ways = {
		["south"] = "changan/northjie1",
		["east"] = "zhiye/zhibufang1",
		["north"] = "changan/northjie3",
		["west"] = "zhiye/caifengpu1",
	},
}
Room {
	id = "changan/northjie3",
	name = "北大街",
	ways = {
		["south"] = "changan/northjie2",
		["north"] = "changan/northmen",
		["east"] = "changan/neijie2",
		["west"] = "changan/neijie1",
	},
}
Room {
	id = "changan/northjl1",
	name = "箭楼",
	ways = {
		["east"] = "changan/northchl",
		["west"] = "changan/northchq3",
	},
}
Room {
	id = "changan/northjl2",
	name = "箭楼",
	ways = {
		["east"] = "changan/northchq4",
		["west"] = "changan/northchl",
	},
}
Room {
	id = "changan/northmen",
	name = "安远门",
	ways = {
		["south"] = "changan/northjie3",
		["north"] = "changan/northroad1",
		["up"] = "changan/northchl",
	},
	blocks = {
		["up"] = {
			{id = "guan bing", exp = 10000},
			{id = "wu jiang", exp = 75000},
		},
	},
}
Room {
	id = "changan/northroad1",
	name = "官道",
	ways = {
		["south"] = "changan/northmen",
		["north"] = "changan/northroad2",
	},
}
Room {
	id = "changan/northroad10",
	name = "大道",
	ways = {
		["northup"] = "hengshan/jinlongxia",
		["south"] = "changan/northroad9",
		["east"] = "hmy/pingding/road1",
	},
}
Room {
	id = "changan/northroad2",
	name = "官道",
	ways = {
		["south"] = "changan/northroad1",
		["north"] = "changan/northroad3",
	},
}
Room {
	id = "changan/northroad3",
	name = "大道",
	ways = {
		["south"] = "changan/northroad2",
		["northeast"] = "changan/northroad4",
	},
}
Room {
	id = "changan/northroad4",
	name = "土路",
	ways = {
		["northup"] = "changan/northroad5",
		["southwest"] = "changan/northroad3",
		["south"] = "zhiye/nongtian0",
		["north"] = "zhiye/sanglin0",
	},
}
Room {
	id = "changan/northroad5",
	name = "土路",
	ways = {
		["northeast"] = "group/entry/canroad6",
		["southdown"] = "changan/northroad4",
	},
}
Room {
	id = "changan/northroad7",
	name = "土路",
	ways = {
		["southup"] = "group/entry/canroad6",
		["northeast"] = "changan/northroad8",
	},
}
Room {
	id = "changan/northroad8",
	name = "土路",
	ways = {
		["southwest"] = "changan/northroad7",
		["north"] = "changan/road2",
	},
}
Room {
	id = "changan/northroad9",
	name = "大道",
	ways = {
		["south"] = "changan/road3",
		["north"] = "changan/northroad10",
	},
}
Room {
	id = "changan/qianzhuang",
	name = "威信钱庄",
	ways = {
		["east"] = "changan/southjie1",
	},
}
Room {
	id = "changan/qingchi",
	name = "清池",
	no_fight = true,
	ways = {
		["north"] = "changan/eastjie2",
		-- ["east"] = "changan/fengchi",
		-- ["west"] = "changan/longchi",
	},
	nolooks = {
		["east"] = true,
		["west"] = true,
	},
}
Room {
	id = "changan/qingzhensi",
	name = "清真寺",
	ways = {
		["south"] = "changan/westjie4",
		["north"] = "changan/dadian",
	},
}
Room {
	id = "changan/road2",
	name = "陕晋渡口",
	ways = {
		["southeast"] = "huanghe/huangtu",
		["south"] = "changan/northroad8",
		["#sjdk n"] = "changan/road3",
	},
	lengths = {
		["#sjdk n"] = 10000,
	},
	nolooks = {
		["enter"] = true,
		["#sjdk n"] = true,
	}
}
Room {
	id = "changan/road3",
	name = "陕晋渡口",
	ways = {
		["north"] = "changan/northroad9",
		["#sjdk s"] = "changan/road2",
	},
	lengths = {
		["#sjdk s"] = 10000,
	},
	nolooks = {
		["enter"] = true,
		["#sjdk s"] = true,
	}
}
Room {
	id = "changan/shihuangling",
	name = "始皇陵",
	ways = {
		["southwest"] = "changan/baishulin2",
		["east"] = "changan/yongkeng2",
		["north"] = "changan/yongkeng1",
		["west"] = "changan/baishulin1",
	},
}
Room {
	id = "changan/shiji",
	name = "市集",
	ways = {
		["south"] = "changan/minju2",
		["east"] = "changan/neijie1",
		["north"] = "changan/minju1",
		["west"] = "changan/heishi",
	},
}
Room {
	id = "changan/shuiguodian",
	name = "水果店",
	ways = {
		["south"] = "changan/eastjie3",
	},
}
Room {
	id = "changan/southchl",
	name = "南门城楼",
	ways = {
		["down"] = "changan/southmen",
		["east"] = "changan/southjl2",
		["west"] = "changan/southjl1",
	},
}
Room {
	id = "changan/southchq1",
	name = "南城墙",
	ways = {
		["east"] = "changan/southchq2",
		["west"] = "changan/lwtsw",
	},
}
Room {
	id = "changan/southchq2",
	name = "南城墙",
	ways = {
		["east"] = "changan/southchq3",
		["west"] = "changan/southchq1",
	},
}
Room {
	id = "changan/southchq3",
	name = "南城墙",
	ways = {
		["east"] = "changan/southjl1",
		["west"] = "changan/southchq2",
	},
}
Room {
	id = "changan/southchq4",
	name = "南城墙",
	ways = {
		["east"] = "changan/southchq5",
		["west"] = "changan/southjl2",
	},
}
Room {
	id = "changan/southchq5",
	name = "南城墙",
	ways = {
		["east"] = "changan/southchq6",
		["west"] = "changan/southchq4",
	},
}
Room {
	id = "changan/southchq6",
	name = "南城墙",
	ways = {
		["east"] = "changan/lwtse",
		["west"] = "changan/southchq5",
	},
}
Room {
	id = "changan/southjie1",
	name = "南大街",
	ways = {
		["south"] = "changan/southjie2",
		["north"] = "changan/zhonglou",
		["east"] = "changan/dangpu",
		["west"] = "changan/qianzhuang",
	},
}
Room {
	id = "changan/southjie2",
	name = "南大街",
	ways = {
		["south"] = "changan/southjie3",
		["north"] = "changan/southjie1",
		["east"] = "changan/bingqipu",
		["west"] = "changan/dewentang",
	},
}
Room {
	id = "changan/southjie3",
	name = "南大街",
	ways = {
		["south"] = "changan/southmen",
		["north"] = "changan/southjie2",
		["east"] = "changan/changjie1",
		["west"] = "changan/jinghu",
	},
}
Room {
	id = "changan/southjl1",
	name = "箭楼",
	ways = {
		["east"] = "changan/southchl",
		["west"] = "changan/southchq3",
	},
}
Room {
	id = "changan/southjl2",
	name = "箭楼",
	ways = {
		["east"] = "changan/southchq4",
		["west"] = "changan/southchl",
	},
}
Room {
	id = "changan/southmen",
	name = "永宁门",
	ways = {
		["south"] = "changan/southroad1",
		["north"] = "changan/southjie3",
		["up"] = "changan/southchl",
	},
	blocks = {
		["up"] = {
			{id = "wu jiang", exp = 75000},
			{id = "guan bing", exp = 10000},
		},
	},
}
Room {
	id = "changan/southroad1",
	name = "官道",
	ways = {
		["south"] = "changan/southroad2",
		["north"] = "changan/southmen",
	},
}
Room {
	id = "changan/southroad2",
	name = "官道",
	ways = {
		["south"] = "changan/southroad3",
		["north"] = "changan/southroad1",
	},
}
Room {
	id = "changan/southroad3",
	name = "官道",
	ways = {
		["south"] = "xiangyang/lantian",
		["north"] = "changan/southroad2",
		["west"] = "xiangyang/caiyongmanor",
	},
}
Room {
	id = "changan/tupiaoguan",
	name = "土嫖馆",
	ways = {
		["north"] = "changan/neijie3",
	},
}
Room {
	id = "changan/wanhonglou",
	name = "万红楼",
	ways = {
		["south"] = "changan/eastjie1",
	},
}
Room {
	id = "changan/wenquan",
	name = "温泉",
	ways = {
		["west"] = "changan/baishulin2",
	},
}
Room {
	id = "changan/westchl",
	name = "西门城楼",
	ways = {
		["south"] = "changan/westjl2",
		["down"] = "changan/westmen",
		["north"] = "changan/westjl1",
	},
}
Room {
	id = "changan/westchq1",
	name = "西城墙",
	ways = {
		["south"] = "changan/westchq2",
		["north"] = "changan/lwtnw",
	},
}
Room {
	id = "changan/westchq2",
	name = "西城墙",
	ways = {
		["south"] = "changan/westjl1",
		["north"] = "changan/westchq1",
	},
}
Room {
	id = "changan/westchq3",
	name = "西城墙",
	ways = {
		["south"] = "changan/westchq4",
		["north"] = "changan/westjl2",
	},
}
Room {
	id = "changan/westchq4",
	name = "西城墙",
	ways = {
		["south"] = "changan/lwtsw",
		["north"] = "changan/westchq3",
	},
}
Room {
	id = "changan/westjie1",
	name = "西大街",
	ways = {
		["south"] = "changan/zhubaohang",
		["east"] = "changan/zhonglou",
		["north"] = "changan/gulou",
		["west"] = "changan/westjie2",
	},
}
Room {
	id = "changan/westjie2",
	name = "西大街",
	ways = {
		["south"] = "changan/jiangjunfu",
		["north"] = "changan/yamen",
		["east"] = "changan/westjie1",
		["west"] = "changan/westjie3",
	},
}
Room {
	id = "changan/westjie3",
	name = "西大街",
	ways = {
		["south"] = "changan/biaoju",
		["north"] = "changan/yizhan",
		["east"] = "changan/westjie2",
		["west"] = "changan/westjie4",
	},
}
Room {
	id = "changan/westjie4",
	name = "西大街",
	ways = {
		["south"] = "changan/chm",
		["east"] = "changan/westjie3",
		["north"] = "changan/qingzhensi",
		["west"] = "changan/westmen",
	},
}
Room {
	id = "changan/westjl1",
	name = "箭楼",
	ways = {
		["south"] = "changan/westchl",
		["north"] = "changan/westchq2",
	},
}
Room {
	id = "changan/westjl2",
	name = "箭楼",
	ways = {
		["south"] = "changan/westchq3",
		["north"] = "changan/westchl",
	},
}
Room {
	id = "changan/westmen",
	name = "安定门",
	ways = {
		["east"] = "changan/westjie4",
		["west"] = "changan/westroad1",
		["up"] = "changan/westchl",
	},
	blocks = {
		["up"] = {
			{id = "wu jiang", exp = 75000},
			{id = "guan bing", exp = 10000},
		},
	},
}
Room {
	id = "changan/westroad1",
	name = "官道",
	ways = {
		["east"] = "changan/westmen",
		["west"] = "changan/westroad2",
	},
}
Room {
	id = "changan/westroad2",
	name = "官道",
	ways = {
		["northwest"] = "lanzhou/lpshan",
		["east"] = "changan/westroad1",
	},
}
Room {
	id = "changan/xiaoyanta1",
	name = "小雁塔",
	ways = {
		["south"] = "changan/baishulin1",
		["up"] = "changan/xiaoyanta2",
	},
}
Room {
	id = "changan/xiaoyanta10",
	name = "小雁塔十层",
	ways = {
		["down"] = "changan/xiaoyanta9",
		["up"] = "changan/xiaoyanta11",
	},
}
Room {
	id = "changan/xiaoyanta11",
	name = "小雁塔十一层",
	ways = {
		["down"] = "changan/xiaoyanta10",
		["up"] = "changan/xiaoyanta12",
	},
}
Room {
	id = "changan/xiaoyanta12",
	name = "小雁塔十二层",
	ways = {
		["down"] = "changan/xiaoyanta11",
		["up"] = "changan/xiaoyanta13",
	},
}
Room {
	id = "changan/xiaoyanta13",
	name = "小雁塔十三层",
	ways = {
		["down"] = "changan/xiaoyanta12",
		["up"] = "changan/xiaoyanta14",
	},
}
Room {
	id = "changan/xiaoyanta14",
	name = "小雁塔十四层",
	ways = {
		["down"] = "changan/xiaoyanta13",
		["up"] = "changan/xiaoyanta15",
	},
}
Room {
	id = "changan/xiaoyanta15",
	name = "小雁塔十五层",
	ways = {
		["down"] = "changan/xiaoyanta14",
	},
}
Room {
	id = "changan/xiaoyanta2",
	name = "小雁塔二层",
	ways = {
		["down"] = "changan/xiaoyanta1",
		["up"] = "changan/xiaoyanta3",
	},
}
Room {
	id = "changan/xiaoyanta3",
	name = "小雁塔三层",
	ways = {
		["down"] = "changan/xiaoyanta2",
		["up"] = "changan/xiaoyanta4",
	},
}
Room {
	id = "changan/xiaoyanta4",
	name = "小雁塔四层",
	ways = {
		["down"] = "changan/xiaoyanta3",
		["up"] = "changan/xiaoyanta5",
	},
}
Room {
	id = "changan/xiaoyanta5",
	name = "小雁塔五层",
	ways = {
		["down"] = "changan/xiaoyanta4",
		["up"] = "changan/xiaoyanta6",
	},
}
Room {
	id = "changan/xiaoyanta6",
	name = "小雁塔六层",
	ways = {
		["down"] = "changan/xiaoyanta5",
		["up"] = "changan/xiaoyanta7",
	},
}
Room {
	id = "changan/xiaoyanta7",
	name = "小雁塔七层",
	ways = {
		["down"] = "changan/xiaoyanta6",
		["up"] = "changan/xiaoyanta8",
	},
}
Room {
	id = "changan/xiaoyanta8",
	name = "小雁塔八层",
	ways = {
		["down"] = "changan/xiaoyanta7",
		["up"] = "changan/xiaoyanta9",
	},
}
Room {
	id = "changan/xiaoyanta9",
	name = "小雁塔九层",
	ways = {
		["down"] = "changan/xiaoyanta8",
		["up"] = "changan/xiaoyanta10",
	},
}
Room {
	id = "changan/xiyuan",
	name = "戏院",
	ways = {
		["north"] = "changan/neijie2",
	},
}
Room {
	id = "changan/yamen",
	name = "衙门大门",
	ways = {
		["south"] = "changan/westjie2",
		["north"] = "changan/yamen2",
	},
	blocks = {
		["north"] = {
			{id = "ya yi", exp = 17500},
		},
	},
}
Room {
	id = "changan/yamen2",
	name = "衙门正厅",
	ways = {
		["south"] = "changan/yamen",
	},
}
Room {
	id = "changan/yizhan",
	name = "驿站",
	ways = {
		["south"] = "changan/westjie3",
	},
}
Room {
	id = "changan/yongkeng1",
	name = "兵马俑坑",
	ways = {
		["south"] = "changan/shihuangling",
	},
}
Room {
	id = "changan/yongkeng2",
	name = "兵马俑坑",
	ways = {
		["west"] = "changan/shihuangling",
	},
}
Room {
	id = "changan/zahuopu",
	name = "杂货铺",
	ways = {
		["north"] = "changan/neijie4",
	},
}
Room {
	id = "changan/zhonglou",
	name = "钟楼",
	ways = {
		["south"] = "changan/southjie1",
		["northwest"] = "changan/gulou",
		["north"] = "changan/northjie1",
		["east"] = "changan/eastjie1",
		["west"] = "changan/westjie1",
	},
}
Room {
	id = "changan/zhubaohang",
	name = "珠宝行",
	ways = {
		["north"] = "changan/westjie1",
	},
}
Room {
	id = "changle/bajiao",
	name = "八角亭",
	ways = {
		["west"] = "changle/huayuan",
	},
}
Room {
	id = "changle/chaifang",
	name = "柴房",
	ways = {
		["north"] = "changle/zoulang3",
	},
}
Room {
	id = "changle/chufang",
	name = "厨房",
	no_fight = true,
	ways = {
		["north"] = "changle/zoulang2",
	},
}
Room {
	id = "changle/damen",
	name = "大门",
	ways = {
		["south"] = "changle/xiaolu",
		["enter"] = "changle/dating",
	},
}
Room {
	id = "changle/dating",
	name = "大厅",
	ways = {
		["north"] = "changle/zoulang4",
		["out"] = "changle/damen",
	},
}
Room {
	id = "changle/huayuan",
	name = "花园",
	ways = {
		["north"] = "changle/yongdao",
		["east"] = "changle/bajiao",
		["west"] = "changle/xiaoting",
	},
}
Room {
	id = "changle/road1",
	name = "大驿道",
	ways = {
		["southeast"] = "changle/road2",
		["northwest"] = "city/eroad2",
		["northeast"] = "changle/road3",
	},
}
Room {
	id = "changle/road2",
	name = "青石路",
	ways = {
		["northwest"] = "changle/road1",
		["east"] = "changle/xiaolu",
	},
}
Room {
	id = "changle/road3",
	name = "大驿道",
	ways = {
		["southwest"] = "changle/road1",
	},
}
Room {
	id = "changle/shishi",
	name = "石室",
	ways = {
		["west"] = "changle/yongdao",
	},
}
Room {
	id = "changle/shuifang",
	name = "睡房",
	no_fight = true,
	ways = {
		["south"] = "changle/zoulang3",
	},
}
Room {
	id = "changle/woshi",
	name = "卧室",
	ways = {
		["south"] = "changle/xiaoting",
	},
}
Room {
	id = "changle/xiaolu",
	name = "青石路",
	ways = {
		["north"] = "changle/damen",
		["west"] = "changle/road2",
	},
}
Room {
	id = "changle/xiaoting",
	name = "小厅",
	ways = {
		["south"] = "changle/zoulang4",
		["north"] = "changle/woshi",
		["east"] = "changle/huayuan",
	},
}
Room {
	id = "changle/xiaowu",
	name = "小屋",
	ways = {
		["north"] = "changle/zoulang1",
	},
}
Room {
	id = "changle/yongdao",
	name = "甬道",
	ways = {
		["south"] = "changle/huayuan",
		["east"] = "changle/shishi",
	},
}
Room {
	id = "changle/zoulang1",
	name = "东走廊",
	ways = {
		["south"] = "changle/xiaowu",
		["east"] = "changle/zoulang2",
		["west"] = "changle/zoulang4",
	},
}
Room {
	id = "changle/zoulang2",
	name = "东走廊",
	ways = {
		["south"] = "changle/chufang",
		["west"] = "changle/zoulang1",
	},
}
Room {
	id = "changle/zoulang3",
	name = "西走廊",
	ways = {
		["south"] = "changle/chaifang",
		["east"] = "changle/zoulang4",
		["north"] = "changle/shuifang",
	},
}
Room {
	id = "changle/zoulang4",
	name = "走廊",
	ways = {
		["south"] = "changle/dating",
		["north"] = "changle/xiaoting",
		["east"] = "changle/zoulang1",
		["west"] = "changle/zoulang3",
	},
}
Room {
	id = "chengdu/bank",
	name = "墨玉斋",
	ways = {
		["east"] = "chengdu/nandajie2",
	},
}
Room {
	id = "chengdu/beidajie1",
	name = "北大街",
	ways = {
		["south"] = "chengdu/center",
		["north"] = "chengdu/beidajie2",
	},
}
Room {
	id = "chengdu/beidajie2",
	name = "北大街",
	ways = {
		["south"] = "chengdu/beidajie1",
		["east"] = "zhiye/yaochang1",
		["north"] = "chengdu/beidajie3",
		["west"] = "zhiye/yaodian1",
	},
}
Room {
	id = "chengdu/beidajie3",
	name = "北大街",
	ways = {
		["south"] = "chengdu/beidajie2",
		["north"] = "chengdu/beidajie4",
	},
}
Room {
	id = "chengdu/beidajie4",
	name = "北大街",
	ways = {
		["south"] = "chengdu/beidajie3",
		["north"] = "chengdu/dabeimen",
		["east"] = "chengdu/cgenlu1",
	},
}
Room {
	id = "chengdu/center",
	name = "城中心",
	ways = {
		["south"] = "chengdu/nandajie1",
		["east"] = "chengdu/ddajie1",
		["north"] = "chengdu/beidajie1",
		["west"] = "chengdu/xidajie1",
	},
}
Room {
	id = "chengdu/cgenlu1",
	name = "城跟路",
	ways = {
		["east"] = "chengdu/cgenlu2",
		["west"] = "chengdu/beidajie4",
	},
}
Room {
	id = "chengdu/cgenlu2",
	name = "城跟路",
	ways = {
		["southeast"] = "chengdu/cgenlu3",
		["west"] = "chengdu/cgenlu1",
	},
}
Room {
	id = "chengdu/cgenlu3",
	name = "城跟路",
	ways = {
		["southeast"] = "chengdu/cgenlu4",
		["northwest"] = "chengdu/cgenlu2",
	},
}
Room {
	id = "chengdu/cgenlu4",
	name = "城跟路",
	ways = {
		["south"] = "chengdu/cgenlu5",
		["northwest"] = "chengdu/cgenlu3",
	},
}
Room {
	id = "chengdu/cgenlu5",
	name = "城跟路",
	ways = {
		["south"] = "chengdu/ddajie4",
		["north"] = "chengdu/cgenlu4",
	},
}
Room {
	id = "chengdu/dabeimen",
	name = "大北门",
	ways = {
		["south"] = "chengdu/beidajie4",
		["north"] = "chengdu/road4",
	},
}
Room {
	id = "chengdu/dadongmen",
	name = "大东门",
	ways = {
		["east"] = "chengdu/eroad1",
		["west"] = "chengdu/ddajie4",
	},
}
Room {
	id = "chengdu/dananmen",
	name = "大南门",
	ways = {
		["south"] = "chengdu/sroad1",
		["north"] = "chengdu/nandajie2",
	},
}
Room {
	id = "chengdu/daximen",
	name = "大西门",
	ways = {
		["east"] = "chengdu/xidajie2",
		["west"] = "chengdu/wroad1",
	},
}
Room {
	id = "chengdu/ddajie1",
	name = "东大街",
	ways = {
		["north"] = "group/cailiao-hang",
		["east"] = "chengdu/ddajie2",
		["west"] = "chengdu/center",
	},
}
Room {
	id = "chengdu/ddajie2",
	name = "东大街",
	ways = {
		["south"] = "chengdu/zjmen",
		["east"] = "chengdu/ddajie3",
		["west"] = "chengdu/ddajie1",
	},
}
Room {
	id = "chengdu/ddajie3",
	name = "东大街",
	ways = {
		["south"] = "chengdu/nancejie1",
		["east"] = "chengdu/ddajie4",
		["west"] = "chengdu/ddajie2",
	},
}
Room {
	id = "chengdu/ddajie4",
	name = "东大街",
	ways = {
		["east"] = "chengdu/dadongmen",
		["north"] = "chengdu/cgenlu5",
		["west"] = "chengdu/ddajie3",
	},
}
Room {
	id = "chengdu/eroad1",
	name = "大道",
	ways = {
		["northeast"] = "chengdu/eroad2",
		["west"] = "chengdu/dadongmen",
	},
}
Room {
	id = "chengdu/eroad2",
	name = "大道",
	ways = {
		["southwest"] = "chengdu/eroad1",
		["northeast"] = "chengdu/eroad3",
	},
}
Room {
	id = "chengdu/eroad3",
	name = "大道",
	ways = {
		["southwest"] = "chengdu/eroad2",
		["east"] = "group/entry/cderoad4",
	},
}
Room {
	id = "chengdu/guandm",
	name = "关帝庙",
	ways = {
		["south"] = "chengdu/xidajie2",
		["north"] = "chengdu/houyuan",
	},
}
Room {
	id = "chengdu/houyuan",
	name = "后院",
	no_fight = true,
	ways = {
		["south"] = "chengdu/guandm",
	},
}
Room {
	id = "chengdu/nancejie1",
	name = "南侧街",
	ways = {
		["south"] = "chengdu/nancejie2",
		["north"] = "chengdu/ddajie3",
	},
}
Room {
	id = "chengdu/nancejie2",
	name = "南侧街",
	ways = {
		["south"] = "chengdu/nanmen",
		["north"] = "chengdu/nancejie1",
	},
}
Room {
	id = "chengdu/nandajie1",
	name = "南大街",
	ways = {
		["south"] = "chengdu/nandajie2",
		["north"] = "chengdu/center",
	},
}
Room {
	id = "chengdu/nandajie2",
	name = "南大街",
	ways = {
		["south"] = "chengdu/dananmen",
		["north"] = "chengdu/nandajie1",
		["west"] = "chengdu/bank",
	},
}
Room {
	id = "chengdu/nanmen",
	name = "小南门",
	ways = {
		["south"] = "dali/shanlu2",
		["north"] = "chengdu/nancejie2",
	},
}
Room {
	id = "chengdu/road1",
	name = "大道",
	ways = {
		["southwest"] = "chengdu/road4",
		["east"] = "zhiye/gaoshan0",
		["north"] = "lanzhou/qingcheng",
	},
}
Room {
	id = "chengdu/road4",
	name = "大道",
	ways = {
		["south"] = "chengdu/dabeimen",
		["northeast"] = "chengdu/road1",
	},
}
Room {
	id = "chengdu/shufang",
	name = "书房",
	ways = {
		["east"] = "chengdu/zjhall",
	},
}
Room {
	id = "chengdu/sroad1",
	name = "南门外",
	ways = {
		["southwest"] = "chengdu/tulu3",
		["north"] = "chengdu/dananmen",
	},
}
Room {
	id = "chengdu/tulu1",
	name = "峨嵋山脚下",
	ways = {
		["northeast"] = "group/entry/cdtulu2",
		["west"] = "emei/qingshijie",
	},
}
Room {
	id = "chengdu/tulu3",
	name = "土路",
	ways = {
		["southwest"] = "group/entry/cdtulu2",
		["northeast"] = "chengdu/sroad1",
	},
}
Room {
	id = "chengdu/wroad1",
	name = "大道",
	ways = {
		["east"] = "chengdu/daximen",
		["west"] = "chengdu/wroad2",
	},
}
Room {
	id = "chengdu/wroad2",
	name = "大道",
	ways = {
		["east"] = "chengdu/wroad1",
		["west"] = "xueshan/tulu1",
	},
}
Room {
	id = "chengdu/xidajie1",
	name = "西大街",
	ways = {
		["east"] = "chengdu/center",
		["west"] = "chengdu/xidajie2",
	},
}
Room {
	id = "chengdu/xidajie2",
	name = "西大街",
	ways = {
		["east"] = "chengdu/xidajie1",
		["north"] = "chengdu/guandm",
		["west"] = "chengdu/daximen",
	},
}
Room {
	id = "chengdu/zjhall",
	name = "大厅",
	no_fight = true,
	ways = {
		["north"] = "chengdu/zjmen",
		["west"] = "chengdu/shufang",
	},
}
Room {
	id = "chengdu/zjmen",
	name = "子爵府门",
	ways = {
		["south"] = "chengdu/zjhall",
		["north"] = "chengdu/ddajie2",
	},
}
Room {
	id = "city/banfang",
	name = "班房",
	ways = {
		["west"] = "city/menlang",
	},
}
Room {
	id = "city/beidajie1",
	name = "北大街",
	ways = {
		["south"] = "city/beidajie2",
		["east"] = "city/xiaochidian",
		["north"] = "city/beimen",
		["west"] = "city/chmiao",
	},
}
Room {
	id = "city/beidajie2",
	name = "北大街",
	ways = {
		["south"] = "city/beidajie3",
		["east"] = "city/kedian",
		["north"] = "city/beidajie1",
		["west"] = "city/qianzhuang",
	},
}
Room {
	id = "city/beidajie3",
	name = "北大街",
	ways = {
		["south"] = "city/guangchangdong",
		["east"] = "city/yizhan",
		["north"] = "city/beidajie2",
		["west"] = "city/guangchangbei",
	},
}
Room {
	id = "city/beimen",
	name = "北门",
	ways = {
		["south"] = "city/beidajie1",
		["north"] = "city/hsroad1",
	},
}
Room {
	id = "city/bingqiku",
	name = "兵器库",
	ways = {
		["north"] = "city/bingying",
	},
}
Room {
	id = "city/bingying",
	name = "兵营",
	ways = {
		["south"] = "city/bingqiku",
		["east"] = "city/bingyingmen",
	},
	blocks = {
		["south"] = {
			{id = "guan bing", exp = 35000},
		},
	},
}
Room {
	id = "city/bingyingmen",
	name = "兵营大门",
	ways = {
		["east"] = "city/guangchangxi",
		["west"] = "city/bingying",
	},
}
Room {
	id = "city/chaguan",
	name = "茶馆",
	ways = {
		["east"] = "city/nandajie2",
	},
}
Room {
	id = "city/chemahang",
	name = "车马行",
	ways = {
		["west"] = "city/guangchangdong",
	},
}
Room {
	id = "city/chmiao",
	name = "城隍庙",
	no_fight = true,
	ways = {
		["northwest"] = "wizard/guest_room",
		["east"] = "city/beidajie1",
	},
}
Room {
	id = "city/damingsi",
	name = "大明寺",
	ways = {
		["north"] = "city/xidajie2",
	},
}
Room {
	id = "city/dangpu",
	name = "当铺",
	no_fight = true,
	ways = {
		["north"] = "city/guangchangnan",
	},
}
Room {
	id = "city/dating1",
	name = "赌场大厅",
	no_fight = true,
	ways = {
		["north"] = "city/duchang4",
		["east"] = "city/duchang",
		-- ["down"] = "city/dixiashi",
	},
	nolooks = {
		["down"] = true,
	},
}
Room {
	id = "city/dhq",
	name = "大虹桥",
	ways = {
		["south"] = "city/sxh",
		["east"] = "city/xjs",
		["north"] = "city/hubian1",
	},
}
Room {
	id = "city/diemenglou1",
	name = "蝶梦楼一楼",
	ways = {
		["up"] = "city/diemenglou2",
	},
}
Room {
	id = "city/diemenglou2",
	name = "蝶梦楼二楼",
	ways = {
		["down"] = "city/diemenglou1",
	},
}
Room {
	id = "city/laofang",
	name = "牢房",
	ways = {
		["give 2 silver to yu zu;wear all"] = "city/dilao",
	},
	nolooks = {
		["give 2 silver to yu zu;wear all"] = true,
	},
}
Room {
	id = "city/dilao",
	name = "地牢",
	ways = {
		["southup"] = "city/fyhouyuan",
	},
}
Room {
	id = "city/dixiashi",
	name = "地下黑拳市",
	ways = {
		["up"] = "city/dating1",
	},
}
Room {
	id = "city/dongdajie0",
	name = "东大街",
	ways = {
		["south"] = "zhiye/bingqipu1",
		["north"] = "zhiye/datiepu1",
		["east"] = "city/dongmen",
		["west"] = "city/dongdajie1",
	},
}
Room {
	id = "city/dongdajie1",
	name = "东大街",
	ways = {
		["southeast"] = "city/yltw",
		["south"] = "zhiye/jimaidian1",
		["north"] = "city/yaopu",
		["east"] = "city/dongdajie0",
		["west"] = "city/dongdajie2",
	},
}
Room {
	id = "city/dongdajie2",
	name = "东大街",
	ways = {
		["south"] = "city/zahuopu",
		["north"] = "city/shuyuan",
		["east"] = "city/dongdajie1",
		["west"] = "city/dongdajie3",
	},
}
Room {
	id = "city/dongdajie3",
	name = "东大街",
	ways = {
		["south"] = "city/yueqidian",
		["north"] = "city/guangchangdong",
		["east"] = "city/dongdajie2",
		["west"] = "city/guangchangnan",
	},
}
Room {
	id = "city/dongmen",
	name = "东门",
	ways = {
		["south"] = "city/yzyunhe",
		["north"] = "zhiye/biaoju1",
		["east"] = "group/entry/yzeroad1",
		["northeast"] = "city/guandimiao",
		["west"] = "city/dongdajie0",
	},
}
Room {
	id = "city/dongting",
	name = "东厅",
	no_fight = true,
	ways = {
		["west"] = "city/ymzhengting",
	},
}
Room {
	id = "city/dongting2",
	name = "盐局东厅",
	no_fight = true,
	ways = {
		["west"] = "city/yanju",
	},
}
Room {
	id = "city/dongxiangfang",
	name = "东厢房",
	ways = {
		["west"] = "city/lichunyuan",
	},
}
Room {
	id = "city/duchang",
	name = "赌场",
	ways = {
		["south"] = "city/gusaifang",
		["east"] = "city/nandajie3",
		["west"] = "city/dating1",
		["up"] = "city/duchang2",
	},
}
Room {
	id = "city/duchang2",
	name = "赌场",
	no_fight = true,
	ways = {
		["down"] = "city/duchang",
		["east"] = "city/eproom",
		["west"] = "city/wproom",
		["south"] = "city/sproom",
		["north"] = "city/nproom",
	},
}
Room {
	id = "city/eproom",
	name = "拱猪东房",
	no_fight = true,
	ways = {
		["west"] = "city/duchang2",
	},
}
Room {
	id = "city/nproom",
	name = "拱猪北房",
	no_fight = true,
	ways = {
		["south"] = "city/duchang2",
	},
}
Room {
	id = "city/wproom",
	name = "拱猪西房",
	no_fight = true,
	ways = {
		["east"] = "city/duchang2",
	},
}
Room {
	id = "city/sproom",
	name = "拱猪南房",
	no_fight = true,
	ways = {
		["north"] = "city/duchang2",
	},
}
Room {
	id = "city/duchang4",
	name = "赛龟房",
	ways = {
		["south"] = "city/dating1",
	},
}
Room {
	id = "city/eroad2",
	name = "大驿道",
	ways = {
		["southeast"] = "changle/road1",
		["west"] = "group/entry/yzeroad1",
	},
}
Room {
	id = "city/fenduo2",
	name = "墓室",
	ways = {
		["jump well"] = "city/shangang",
		["north"] = "city/mszoulang",
	},
	nolooks = {
		["up"] = true,
		["jump well"] = true,
	}
}
Room {
	id = "city/fyhouyuan",
	name = "府衙后院",
	ways = {
		["southeast"] = "city/ymzhengting",
		["northdown"] = "city/dilao",
	},
}
Room {
	id = "city/gbandao",
	name = "暗道",
	ways = {
		["east"] = "city/gbxiaowu",
		["out"] = "city/pomiao",
	},
}
Room {
	id = "city/gbxiaowu",
	name = "林间小屋",
}
Room {
	id = "city/geyuan",
	name = "个园",
	ways = {
		["east"] = "city/nandajie1",
		["west"] = "city/jiashan",
	},
}
Room {
	id = "city/guandimiao",
	name = "关帝庙",
	ways = {
		["southwest"] = "city/dongmen",
	},
}
Room {
	id = "city/guangchang",
	name = "中央广场",
	ways = {
		["south"] = "city/guangchangnan",
		["east"] = "city/guangchangdong",
		["north"] = "city/guangchangbei",
		["west"] = "city/guangchangxi",
	},
}
Room {
	id = "city/guangchangbei",
	name = "广场北",
	ways = {
		["south"] = "city/guangchang",
		["north"] = "city/yamen",
		["east"] = "city/beidajie3",
		["northeast"] = "city/kongchang",
		["west"] = "city/xidajie3",
	},
}
Room {
	id = "city/guangchangdong",
	name = "广场东",
	ways = {
		["south"] = "city/dongdajie3",
		["east"] = "city/chemahang",
		["north"] = "city/beidajie3",
		["west"] = "city/guangchang",
	},
}
Room {
	id = "city/guangchangnan",
	name = "广场南",
	ways = {
		["south"] = "city/dangpu",
		["north"] = "city/guangchang",
		["east"] = "city/dongdajie3",
		["west"] = "city/nandajie3",
	},
}
Room {
	id = "city/guangchangxi",
	name = "广场西",
	ways = {
		["south"] = "city/nandajie3",
		["north"] = "city/xidajie3",
		["east"] = "city/guangchang",
		["west"] = "city/bingyingmen",
	},
}
Room {
	id = "city/gusaifang",
	name = "赌场",
	no_fight = true,
	ways = {
		["north"] = "city/duchang",
	},
}
Room {
	id = "city/hanghai_room",
	name = "【南海探宝】船只",
	ways = {
		["out"] = "city/guangchang",
	},
}
Room {
	id = "city/houyuan",
	name = "财主后院",
	ways = {
		["west"] = "city/xixiang",
	},
}
Room {
	id = "city/hsroad1",
	name = "北门外",
	ways = {
		["south"] = "city/beimen",
		["northwest"] = "city/shangang",
		["north"] = "huanghe/caodi1",
		["nw;n;phd;jump well;se;s"] = "city/beimen",
	},
	nolooks = {
		["nw;n;phd;jump well;se;s"] = true,
	},
	lengths = {
		["south"] = "if isSafe() then return false else return 1 end",
		["nw;n;phd;jump well;se;s"] = "if isSafe() then return 1 else return false end",
	},
}
Room {
	id = "city/huadian",
	name = "鲜花店",
	no_fight = true,
	ways = {
		["south"] = "city/yizhan",
	},
}
Room {
	id = "city/hubian",
	name = "湖畔",
	ways = {
		["south"] = "city/xidajie2",
		["north"] = "city/sxh",
	},
}
Room {
	id = "city/hubian1",
	name = "瘦西湖边",
	ways = {
		["south"] = "city/dhq",
		["west"] = "city/lxs",
	},
}
Room {
	id = "city/jiangbei",
	name = "长江北岸",
	ways = {
		["#cj"] = "city/jiangnan",
		["north"] = "city/nanmen",
		["east"] = "city/jiangbei2",
		["west"] = "city/jiangbei1",
	},
	lengths = {
		["#cj"] = 5000,
	},
	nolooks = {
		["#cj"] = true,
		["enter"] = true,
	}
}
Room {
	id = "city/jiangbei1",
	name = "长江北岸",
	ways = {
		["east"] = "city/jiangbei",
	},
	nolooks = {
		["enter"] = true,
	}
}
Room {
	id = "city/jiangbei2",
	name = "长江北岸",
	ways = {
		["west"] = "city/jiangbei",
	},
	nolooks = {
		["enter"] = true,
	}
}
Room {
	id = "city/jiangnan",
	name = "长江南岸",
	ways = {
		["#cj"] = "city/jiangbei",
		["south"] = "city/sroad1",
		["east"] = "city/jiangnan2",
		["west"] = "city/jiangnan1",
	},
	lengths = {
		["#cj"] = 5000,
	},
	nolooks = {
		["#cj"] = true,
		["enter"] = true,
	}
}
Room {
	id = "city/jiangnan1",
	name = "长江南岸",
	ways = {
		["east"] = "city/jiangnan",
	},
	nolooks = {
		["enter"] = true,
	}
}
Room {
	id = "city/jiangnan2",
	name = "长江南岸",
	ways = {
		["west"] = "city/jiangnan",
	},
	nolooks = {
		["enter"] = true,
	}
}
Room {
	id = "city/jiashan",
	name = "假山",
	ways = {
		["east"] = "city/geyuan",
	},
}
Room {
	id = "city/jiulou",
	name = "瘦西湖酒馆",
	ways = {
		["up"] = "city/jiulou2",
		["south"] = "city/xidajie1",
	},
}
Room {
	id = "city/jiulou2",
	name = "瘦西湖雅楼",
	ways = {
		["down"] = "city/jiulou",
	},
	nolooks = {
		["up"] = true,
	},
}
Room {
	id = "city/kedian",
	name = "宝昌客栈",
	no_fight = true,
	ways = {
		["east"] = "city/kedian/pianting",
		["west"] = "city/beidajie2",
		-- ["up"] = "city/kedian2",
	},
	nolooks = {
		["up"] = true,
	},
}
Room {
	id = "city/kedian/pianting",
	name = "偏厅",
	ways = {
		["west"] = "city/kedian",
	},
}
Room {
	id = "city/kedian2",
	name = "客店二楼",
	ways = {
		["enter"] = "city/kedian3",
		["down"] = "city/kedian",
	},
}
Room {
	id = "city/kedian3",
	name = "客店二楼",
	no_fight = true,
	ways = {
		["out"] = "city/kedian2",
	},
}
Room {
	id = "city/kongchang",
	name = "广场",
	ways = {
		["southwest"] = "city/guangchangbei",
	},
}
Room {
	id = "city/lichunyuan",
	name = "丽春院",
	ways = {
		["south"] = "city/mingyufang",
		["east"] = "city/dongxiangfang",
		["west"] = "city/xixiangfang",
	},
}
Room {
	id = "city/lxs",
	name = "莲性寺白塔",
	ways = {
		["east"] = "city/hubian1",
	},
}
Room {
	id = "city/menlang",
	name = "门廊",
	ways = {
		["south"] = "city/yamen",
		["north"] = "city/ymzhengting",
		["east"] = "city/banfang",
	},
}
Room {
	id = "city/miao",
	name = "英烈夫人庙",
	no_fight = true,
	ways = {
		["east"] = "city/winmo",
	},
}
Room {
	id = "city/mine_room",
	name = "扫雷游戏室",
	ways = {
		["south"] = "city/chmiao",
	},
}
Room {
	id = "city/mingyufang",
	name = "鸣玉坊",
	ways = {
		["south"] = "city/xidajie3",
		["north"] = "city/lichunyuan",
	},
}
Room {
	id = "city/ml1",
	name = "青竹林",
	ways = {
		["south"] = "city/dongmen",
		["east"] = "city/ml2",
		["north"] = "city/ml1",
		["west"] = "city/ml1",
	},
}
Room {
	id = "city/ml2",
	name = "青竹林",
	ways = {
		["south"] = "city/dongmen",
		["north"] = "city/ml3",
		["east"] = "city/ml2",
		["west"] = "city/ml2",
	},
}
Room {
	id = "city/ml3",
	name = "青竹林",
	ways = {
		["south"] = "city/dongmen",
		["north"] = "city/ml3",
		["east"] = "city/ml3",
		["west"] = "city/ml4",
	},
}
Room {
	id = "city/ml4",
	name = "青竹林",
	ways = {
		["south"] = "city/dongmen",
		["north"] = "city/ml5",
		["east"] = "city/ml4",
		["west"] = "city/ml4",
	},
}
Room {
	id = "city/ml5",
	name = "青竹林",
	ways = {
		["south"] = "city/dongmen",
		["east"] = "city/ml6",
		["north"] = "city/ml5",
		["west"] = "city/ml5",
	},
}
Room {
	id = "city/ml6",
	name = "青竹林",
	ways = {
		["south"] = "city/dongmen",
		["east"] = "city/ml6",
		["north"] = "city/ml6",
		["west"] = "city/ml7",
	},
}
Room {
	id = "city/ml7",
	name = "青竹林",
	ways = {
		["south"] = "city/dongmen",
		["north"] = "city/pomiao",
		["east"] = "city/ml7",
		["west"] = "city/ml7",
	},
}
Room {
	id = "city/mszoulang",
	name = "墓室通道",
	ways = {
		["south"] = "city/fenduo2",
		["west"] = "city/xmushi",
	},
}
Room {
	id = "city/nandajie1",
	name = "南大街",
	ways = {
		-- ["south"] = "city/nanmen",
		["east"] = "city/xiaopangu",
		["north"] = "city/nandajie2",
		["west"] = "city/geyuan",
		["#yjh"] = "city/nanmen",
	},
	nolooks = {
		["#yjh"] = true,
		["south"] = true,
	},
}
Room {
	id = "city/nandajie2",
	name = "南大街",
	ways = {
		["south"] = "city/nandajie1",
		["east"] = "city/yanju",
		["north"] = "city/nandajie3",
		["west"] = "city/chaguan",
	},
}
Room {
	id = "city/nandajie3",
	name = "南大街",
	ways = {
		["south"] = "city/nandajie2",
		["north"] = "city/guangchangxi",
		["east"] = "city/guangchangnan",
		["west"] = "city/duchang",
	},
}
Room {
	id = "city/nanmen",
	name = "南门",
	ways = {
		["south"] = "city/jiangbei",
		["north"] = "city/nandajie1",
	},
}
Room {
	id = "city/neizhai",
	name = "内宅",
	ways = {
		["south"] = "city/ymzhengting",
	},
}
Room {
	id = "city/pinqiting",
	name = "品棋亭",
	ways = {
		["north"] = "city/yueqidian",
	},
}
Room {
	id = "city/pomiao",
	name = "土地庙",
	ways = {
		["south"] = "city/ml4",
		["enter"] = "city/gbandao",
	},
}
Room {
	id = "city/qianzhuang",
	name = "天阁斋",
	ways = {
		["east"] = "city/beidajie2",
	},
}
Room {
	id = "city/shangang",
	name = "山冈",
	ways = {
		["southeast"] = "city/hsroad1",
		["north"] = "city/tomb",
	},
}
Room {
	id = "city/shuyuan",
	name = "书院",
	ways = {
		["south"] = "city/dongdajie2",
		["up"] = "city/wizroom",
	},
}
Room {
	id = "city/sroad1",
	name = "江南官道",
	ways = {
		["southeast"] = "suzhou/qsgdao6",
		["north"] = "city/jiangnan",
	},
}
Room {
	id = "city/sxh",
	name = "瘦西湖",
	ways = {
		["south"] = "city/hubian",
		["north"] = "city/dhq",
	},
}
Room {
	id = "city/tomb",
	name = "坟墓",
	ways = {
		["south"] = "city/shangang",
		["pull huan;d"] = "city/fenduo2",
	},
	nolooks = {
		["pull huan;d"] = true,
		["down"] = true,
	},
}
Room {
	id = "city/winmo",
	name = "得胜山",
	ways = {
		["southeast"] = "city/wroad1",
		["west"] = "city/miao",
	},
}
Room {
	id = "city/wizroom",
	name = "巫师雕像陈列室",
	ways = {
		["down"] = "city/shuyuan",
	},
}
Room {
	id = "city/wroad1",
	name = "西郊",
	ways = {
		["northwest"] = "city/winmo",
		["east"] = "city/ximen",
		["west"] = "city/wroad2",
	},
}
Room {
	id = "city/wroad2",
	name = "青石大道",
	ways = {
		["east"] = "city/wroad1",
		["west"] = "city/wroad3",
	},
}
Room {
	id = "city/wroad3",
	name = "土路",
	ways = {
		["north"] = "mingjiao/hdg/shanbi",
		["east"] = "city/wroad2",
		["west"] = "xiangyang/outeroad1",
	},
}
Room {
	id = "city/xiaochidian",
	name = "小吃店",
	ways = {
		["west"] = "city/beidajie1",
	},
}
Room {
	id = "city/xiaopangu",
	name = "小盘古",
	ways = {
		["west"] = "city/nandajie1",
	},
}
Room {
	id = "city/xidajie1",
	name = "西大街",
	ways = {
		["south"] = "city/zhubaodian",
		["east"] = "city/xidajie2",
		["north"] = "city/jiulou",
		["west"] = "city/ximen",
	},
	nolooks = {
		["north"] = true,
		["south"] = true,
	},
	lengths = {
		["north"] = "if minutes() < 1230 and minutes() > 390 then return 1 else return false end",
		["south"] = "if minutes() < 1230 and minutes() > 390 then return 1 else return false end",
	},
}
Room {
	id = "city/xidajie2",
	name = "西大街",
	ways = {
		["south"] = "city/damingsi",
		["east"] = "city/xidajie3",
		["north"] = "city/hubian",
		["west"] = "city/xidajie1",
	},
}
Room {
	id = "city/xidajie3",
	name = "西大街",
	ways = {
		["south"] = "city/guangchangxi",
		["north"] = "city/mingyufang",
		["east"] = "city/guangchangbei",
		["west"] = "city/xidajie2",
	},
}
Room {
	id = "city/ximen",
	name = "西门",
	ways = {
		["east"] = "city/xidajie1",
		["west"] = "city/wroad1",
	},
}
Room {
	id = "city/xiting",
	name = "西厅",
	ways = {
		["east"] = "city/ymzhengting",
	},
}
Room {
	id = "city/xixiang",
	name = "财主西厢",
	ways = {
		["east"] = "city/houyuan",
	},
}
Room {
	id = "city/xixiangfang",
	name = "西厢房",
	ways = {
		["east"] = "city/lichunyuan",
	},
}
Room {
	id = "city/xjs",
	name = "小金山",
	ways = {
		["west"] = "city/dhq",
	},
}
Room {
	id = "city/xmushi",
	name = "小墓室",
	no_fight = true,
	ways = {
		["east"] = "city/mszoulang",
	},
}
Room {
	id = "city/yamen",
	name = "衙门大门",
	ways = {
		["south"] = "city/guangchangbei",
		["north"] = "city/menlang",
	},
	blocks = {
		["north"] = {
			{id = "ya yi", exp = 17500},
		},
	},
}
Room {
	id = "city/yanju",
	name = "扬州盐局",
	ways = {
		["east"] = "city/dongting2",
		["west"] = "city/nandajie2",
	},
}
Room {
	id = "city/yaopu",
	name = "药铺",
	ways = {
		["south"] = "city/dongdajie1",
	},
}
Room {
	id = "city/yizhan",
	name = "驿站",
	ways = {
		["north"] = "city/huadian",
		["west"] = "city/beidajie3",
	},
}
Room {
	id = "city/yltw",
	name = "月老亭外",
	ways = {
		["south"] = "city/yuelaoting",
		["northwest"] = "city/dongdajie1",
	},
}
Room {
	id = "city/ymzhengting",
	name = "衙门正厅",
	ways = {
		["south"] = "city/menlang",
		["northwest"] = "city/fyhouyuan",
		["east"] = "city/dongting",
		["west"] = "city/xiting",
	},
	blocks = {
		["northwest"] = {
			{id = "da yayi", exp = 800000},
		},
	},
}
Room {
	id = "city/yuelaoting",
	name = "月老亭",
	no_fight = true,
	ways = {
		["north"] = "city/yltw",
		["west"] = "city/yueqidian",
	},
}
Room {
	id = "city/yueqidian",
	name = "乐器店",
	ways = {
		["south"] = "city/pinqiting",
		["north"] = "city/dongdajie3",
		["east"] = "city/yuelaoting",
	},
}
Room {
	id = "city/yzyunhe",
	name = "码头",
	ways = {
		["north"] = "city/dongmen",
	},
}
Room {
	id = "city/zahuopu",
	name = "杂货铺",
	ways = {
		["north"] = "city/dongdajie2",
	},
}
Room {
	id = "city/zhubaodian",
	name = "珠宝店",
	ways = {
		["north"] = "city/xidajie1",
	},
}
Room {
	id = "dali/beijie1",
	name = "北大街",
	ways = {
		["south"] = "dali/xijie1",
		["north"] = "dali/yamen",
		["east"] = "dali/beijie2",
		["west"] = "dali/chaguan",
	},
}
Room {
	id = "dali/beijie2",
	name = "北大街",
	ways = {
		["south"] = "dali/fengwei",
		["east"] = "dali/beijie3",
		["west"] = "dali/beijie1",
	},
}
Room {
	id = "dali/beijie3",
	name = "太和北街",
	ways = {
		["south"] = "dali/dalics",
		["north"] = "dali/beimen",
		["east"] = "dali/beijie4",
		["west"] = "dali/beijie2",
	},
}
Room {
	id = "dali/beijie4",
	name = "北大街",
	ways = {
		["south"] = "dali/jiulou",
		["north"] = "dali/qian",
		["east"] = "dali/beijie5",
		["west"] = "dali/beijie3",
	},
}
Room {
	id = "dali/beijie5",
	name = "北大街",
	ways = {
		["south"] = "dali/dongjie1",
		["east"] = "dali/yanju",
		["north"] = "dali/duchang",
		["west"] = "dali/beijie4",
	},
}
Room {
	id = "dali/beimen",
	name = "北门",
	ways = {
		["south"] = "dali/beijie3",
		["north"] = "dali/dadao4",
	},
}
Room {
	id = "dali/bingying",
	name = "兵营",
	ways = {
		["west"] = "dali/dongjie3",
	},
}
Room {
	id = "dali/caifeng",
	name = "裁缝店",
	no_fight = true,
	ways = {
		["east"] = "dali/xijie1",
	},
}
Room {
	id = "dali/chaguan",
	name = "茶馆",
	ways = {
		["east"] = "dali/beijie1",
	},
}
Room {
	id = "dali/chouduan",
	name = "绸缎庄",
	ways = {
		["east"] = "dali/xijie3",
	},
}
Room {
	id = "dali/chyuan",
	name = "茶花园",
	ways = {
		["northup"] = "dali/chyuan2",
		["west"] = "dali/dongjie6",
	},
	precmds = {
		["northup"] = "give 5 silver to yizu xiaohuo",
	},
}
Room {
	id = "dali/chyuan2",
	name = "茶花园",
	ways = {
		["northup"] = "dali/chyuan3",
		["southdown"] = "dali/chyuan",
	},
}
Room {
	id = "dali/chyuan3",
	name = "茶花园",
	ways = {
		["northwest"] = "dali/chyuan4",
		["northeast"] = "dali/chyuan5",
		["southdown"] = "dali/chyuan2",
	},
}
Room {
	id = "dali/chyuan4",
	name = "茶花园",
	ways = {
		["southeast"] = "dali/chyuan3",
	},
}
Room {
	id = "dali/chyuan5",
	name = "茶花园",
	ways = {
		["southwest"] = "dali/chyuan3",
	},
}
Room {
	id = "dali/dadao1",
	name = "大道",
	ways = {
		["southwest"] = "dali/yuxu/xiaodao1",
		["south"] = "group/entry/dlndao2",
		["north"] = "dali/shanlu4",
	},
}
Room {
	id = "dali/dadao3",
	name = "大道",
	ways = {
		["south"] = "dali/dadao4",
		["north"] = "group/entry/dlndao2",
		["northeast"] = "dali/htq",
	},
}
Room {
	id = "dali/dadao4",
	name = "大道",
	ways = {
		["south"] = "dali/beimen",
		["north"] = "dali/dadao3",
	},
}
Room {
	id = "dali/dafujia",
	name = "大富之家",
	ways = {
		["north"] = "dali/nanjie4",
	},
}
Room {
	id = "dali/dalics",
	name = "城中心",
	ways = {
		["south"] = "dali/qsjie1",
		["east"] = "dali/jiulou",
		["north"] = "dali/beijie3",
		["west"] = "dali/fengwei",
	},
}
Room {
	id = "dali/dalieast/chengj",
	name = "澄江抚仙湖",
	ways = {
		["southup"] = "group/entry/dleyd",
		["east"] = "dali/dalieast/yzh",
		["north"] = "dali/dalieast/lunan",
	},
}
Room {
	id = "dali/dalieast/dadian",
	name = "大殿",
	ways = {
		["south"] = "dali/dalieast/yuan1",
		["north"] = "dali/dalieast/houyuan1",
	},
}
Room {
	id = "dali/dalieast/houyuan1",
	name = "后院",
	ways = {
		["south"] = "dali/dalieast/dadian",
	},
}
Room {
	id = "dali/dalieast/lunan",
	name = "路南大叠水",
	ways = {
		["south"] = "dali/dalieast/chengj",
		["north"] = "dali/dalieast/xs1",
		["east"] = "dali/dalieast/sl",
	},
}
Room {
	id = "dali/dalieast/nianhuasi",
	name = "寺间小路",
	ways = {
		["north"] = "dali/dalieast/yuan1",
		["out"] = "dali/dalieast/simen",
	},
}
Room {
	id = "dali/dalieast/road1",
	name = "山间小路",
	ways = {
		["eastup"] = "dali/dalieast/road2",
		["southwest"] = "dali/dalieast/shanlu7",
	},
}
Room {
	id = "dali/dalieast/road2",
	name = "山间小路",
	ways = {
		["eastup"] = "dali/dalieast/road3",
		["westdown"] = "dali/dalieast/road1",
	},
}
Room {
	id = "dali/dalieast/road3",
	name = "山间小路",
	ways = {
		["westdown"] = "dali/dalieast/road2",
		["southeast"] = "dali/dalieast/road4",
	},
}
Room {
	id = "dali/dalieast/road4",
	name = "山间小路",
	ways = {
		["southeast"] = "dali/dalieast/simen",
		["northwest"] = "dali/dalieast/road3",
	},
}
Room {
	id = "dali/dalieast/shanlu7",
	name = "山路",
	ways = {
		["southeast"] = "dali/dalieast/xs1",
		["northeast"] = "dali/dalieast/road1",
		["west"] = "dali/dongmen",
	},
}
Room {
	id = "dali/dalieast/simen",
	name = "拈花寺",
	ways = {
		["northwest"] = "dali/dalieast/road4",
		["enter"] = "dali/dalieast/nianhuasi",
	},
}
Room {
	id = "dali/dalieast/sl",
	name = "石林",
	ways = {
		["west"] = "dali/dalieast/lunan",
	},
}
Room {
	id = "dali/dalieast/xs1",
	name = "西山森林",
	ways = {
		["south"] = "dali/dalieast/lunan",
		["northwest"] = "dali/dalieast/shanlu7",
		["north"] = "dali/dalieast/xs2",
	},
}
Room {
	id = "dali/dalieast/xs2",
	name = "望海楼",
	ways = {
		["south"] = "dali/dalieast/xs1",
	},
}
Room {
	id = "dali/dalieast/ydk",
	name = "燕子洞口",
	ways = {
		["down"] = "dali/dalieast/ydn",
		["out"] = "group/entry/dleyd",
	},
}
Room {
	id = "dali/dalieast/ydn",
	name = "第一天",
	ways = {
		["down"] = "dali/dalieast/ydx",
		["up"] = "dali/dalieast/ydk",
	},
}
Room {
	id = "dali/dalieast/ydx",
	name = "第二天",
	ways = {
		["down"] = "dali/dalieast/ydxx",
		["up"] = "dali/dalieast/ydn",
	},
}
Room {
	id = "dali/dalieast/ydxx",
	name = "第三天",
	ways = {
		["east"] = "dali/dalieast/ydxxx",
		["up"] = "dali/dalieast/ydx",
	},
}
Room {
	id = "dali/dalieast/ydxxx",
	name = "观景楼",
	ways = {
		["east"] = "dali/dalieast/ydxxxx",
		["west"] = "dali/dalieast/ydxx",
	},
}
Room {
	id = "dali/dalieast/ydxxxx",
	name = "观景楼边",
	ways = {
		["west"] = "dali/dalieast/ydxxx",
		["up"] = "dali/dalieast/ydxxxxx",
	},
}
Room {
	id = "dali/dalieast/ydxxxxx",
	name = "洞顶",
	ways = {
		["east"] = "dali/dalieast/ydxxxxxx",
		["down"] = "dali/dalieast/ydxxxx",
	},
}
Room {
	id = "dali/dalieast/ydxxxxxx",
	name = "燕子窝",
	ways = {
		["west"] = "dali/dalieast/ydxxxxx",
	},
}
Room {
	id = "dali/dalieast/yuan1",
	name = "寺间小路",
	ways = {
		["south"] = "dali/dalieast/nianhuasi",
		["north"] = "dali/dalieast/dadian",
	},
}
Room {
	id = "dali/dalieast/yzh",
	name = "阳宗海",
	ways = {
		["west"] = "dali/dalieast/chengj",
	},
}
Room {
	id = "dali/dalisouth/anning",
	name = "安宁温泉",
	ways = {
		["west"] = "dali/dalisouth/xgf",
	},
}
Room {
	id = "dali/dalisouth/dg1",
	name = "大观楼",
	ways = {
		["southup"] = "dali/dalisouth/hg1",
		["south"] = "group/entry/dlstulin",
		["northwest"] = "dali/dalisouth/xgf",
		["west"] = "dali/dalisouth/dg2",
	},
}
Room {
	id = "dali/dalisouth/dg2",
	name = "荷花池",
	ways = {
		["east"] = "dali/dalisouth/dg1",
		["west"] = "dali/dalisouth/dg3",
	},
}
Room {
	id = "dali/dalisouth/dg3",
	name = "游园会",
	ways = {
		["east"] = "dali/dalisouth/dg2",
	},
}
Room {
	id = "dali/dalisouth/hg1",
	name = "海埂",
	ways = {
		["south"] = "dali/dalisouth/hg2",
		["north"] = "dali/dalisouth/hg3",
		["northdown"] = "dali/dalisouth/dg1",
	},
}
Room {
	id = "dali/dalisouth/hg2",
	name = "海埂南",
	ways = {
		["north"] = "dali/dalisouth/hg1",
	},
}
Room {
	id = "dali/dalisouth/hg3",
	name = "海埂北",
	ways = {
		["south"] = "dali/dalisouth/hg1",
	},
}
Room {
	id = "dali/dalisouth/jiangbei",
	name = "澜沧江边",
	ways = {
		["east"] = "foshan/road6",
		["#lcj"] = "dali/dalisouth/jiangnan",
	},
	lengths = {
		["#lcj"] = 6000,
	},
	nolooks = {
		["#lcj"] = true,
		["enter"] = true,
	}
}
Room {
	id = "dali/dalisouth/jiangnan",
	name = "澜沧江边",
	ways = {
		["west"] = "dali/dalisouth/xishuang",
		["#lcj"] = "dali/dalisouth/jiangbei",
	},
	lengths = {
		["#lcj"] = 6000,
	},
	nolooks = {
		["#lcj"] = true,
		["enter"] = true,
	}
}
Room {
	id = "dali/dalisouth/shanlu6",
	name = "山路",
	ways = {
		["southup"] = "dali/dalisouth/xgf",
		["north"] = "dali/nanmen",
	},
}
Room {
	id = "dali/dalisouth/xgf",
	name = "下关风",
	ways = {
		["southeast"] = "dali/dalisouth/dg1",
		["east"] = "dali/dalisouth/anning",
		["northdown"] = "dali/dalisouth/shanlu6",
	},
}
Room {
	id = "dali/dalisouth/xishuang",
	name = "西双版纳",
	ways = {
		["east"] = "dali/dalisouth/jiangnan",
		["northeast"] = "dali/dalisouth/xiushan",
	},
}
Room {
	id = "dali/dalisouth/xiushan",
	name = "秀山",
	ways = {
		["southwest"] = "dali/dalisouth/xishuang",
		["northdown"] = "group/entry/dlstulin",
	},
}
Room {
	id = "dali/daliwest/futiao",
	name = "虎跳峡",
	ways = {
		["southwest"] = "dali/daliwest/ninglang",
		["northwest"] = "group/entry/dlwqunsh",
		["east"] = "dali/daliwest/nj",
	},
}
Room {
	id = "dali/daliwest/ninglang",
	name = "宁浪泸沽湖",
	ways = {
		["southup"] = "dali/daliwest/yuelong",
		["northeast"] = "dali/daliwest/futiao",
	},
}
Room {
	id = "dali/daliwest/nj",
	name = "怒江",
	ways = {
		["southup"] = "dali/daliwest/xueshan",
		["northeast"] = "tls/diancang",
		["west"] = "dali/daliwest/futiao",
	},
}
Room {
	id = "dali/daliwest/tianchi1",
	name = "天池",
	ways = {
		["northeast"] = "group/entry/dlwqunsh",
		["up"] = "dali/daliwest/tianchi2",
	},
}
Room {
	id = "dali/daliwest/tianchi2",
	name = "天池半山",
	ways = {
		["down"] = "dali/daliwest/tianchi1",
	},
}
Room {
	id = "dali/daliwest/xueshan",
	name = "轿子雪山",
	ways = {
		["northdown"] = "dali/daliwest/nj",
	},
}
Room {
	id = "dali/daliwest/yuelong",
	name = "玉龙雪山",
	ways = {
		["northdown"] = "dali/daliwest/ninglang",
	},
}
Room {
	id = "dali/dangpu",
	name = "当铺",
	no_fight = true,
	ways = {
		["west"] = "dali/dongjie1",
	},
}
Room {
	id = "dali/datiepu",
	name = "打铁铺",
	no_fight = true,
	ways = {
		["east"] = "dali/nanjie1",
	},
}
Room {
	id = "dali/dinganfu",
	name = "定安府",
	no_fight = true,
	ways = {
		["north"] = "dali/nanjie2",
	},
}
Room {
	id = "dali/dlhg/chitang",
	name = "池塘",
	ways = {
		["southeast"] = "dali/dlhg/xiaoqiao",
		["northwest"] = "dali/dlhg/jiashan",
	},
}
Room {
	id = "dali/dlhg/chufang",
	name = "御膳房",
	ways = {
		["east"] = "dali/dlhg/huating",
	},
}
Room {
	id = "dali/dlhg/dadian",
	name = "大殿",
	ways = {
		["east"] = "dali/dlhg/zoulang2",
	},
}
Room {
	id = "dali/dlhg/houyuan",
	name = "后院",
	ways = {
		["south"] = "dali/dlhg/xiaoqiao",
		["north"] = "dali/dlhg/qingong",
	},
}
Room {
	id = "dali/dlhg/huating",
	name = "正厅",
	ways = {
		["south"] = "dali/dlhg/zoulang1",
		["east"] = "dali/dlhg/shufang",
		["west"] = "dali/dlhg/chufang",
	},
	nolooks = {
		["north"] = true,
	},
}
Room {
	id = "dali/dlhg/jiashan",
	name = "大山石",
	ways = {
		["southeast"] = "dali/dlhg/chitang",
	},
}
Room {
	id = "dali/dlhg/qingong",
	name = "寝宫",
	ways = {
		["south"] = "dali/dlhg/houyuan",
	},
}
Room {
	id = "dali/dlhg/shufang",
	name = "书房",
	ways = {
		["west"] = "dali/dlhg/huating",
	},
}
Room {
	id = "dali/dlhg/xiangfang",
	name = "厢房",
	ways = {
		["west"] = "dali/dlhg/zoulang2",
	},
}
Room {
	id = "dali/dlhg/xiaoqiao",
	name = "小桥",
	ways = {
		["south"] = "dali/dlhg/zoulang2",
		["northwest"] = "dali/dlhg/chitang",
		["north"] = "dali/dlhg/houyuan",
	},
}
Room {
	id = "dali/dlhg/zhengmen",
	name = "皇宫正门",
	ways = {
		["south"] = "dali/qsjie2",
		["north"] = "dali/dlhg/zoulang1",
	},
	blocks = {
		["north"] = {
			{id = "huanggong shiwei", exp = 75000},
		},
	},
}
Room {
	id = "dali/dlhg/zoulang1",
	name = "走廊",
	ways = {
		["south"] = "dali/dlhg/zhengmen",
		["north"] = "dali/dlhg/huating",
	},
}
Room {
	id = "dali/dlhg/zoulang2",
	name = "走廊",
	ways = {
		["south"] = "dali/dlhg/huating",
		["north"] = "dali/dlhg/xiaoqiao",
		["east"] = "dali/dlhg/xiangfang",
		["west"] = "dali/dlhg/dadian",
	},
}
Room {
	id = "dali/dongjie1",
	name = "东大街",
	ways = {
		["south"] = "dali/dongjie2",
		["east"] = "dali/dangpu",
		["north"] = "dali/beijie5",
		["west"] = "dali/jiulou",
	},
}
Room {
	id = "dali/dongjie2",
	name = "东大街",
	ways = {
		["south"] = "dali/dongjie3",
		["east"] = "dali/yaopu",
		["north"] = "dali/dongjie1",
		["west"] = "dali/doufufang",
	},
}
Room {
	id = "dali/dongjie3",
	name = "东大街",
	ways = {
		["south"] = "dali/dongjie4",
		["north"] = "dali/dongjie2",
		["east"] = "dali/bingying",
	},
}
Room {
	id = "dali/dongjie4",
	name = "太和东街",
	ways = {
		["south"] = "dali/dongjie5",
		["east"] = "dali/dongmen",
		["north"] = "dali/dongjie3",
	},
}
Room {
	id = "dali/dongjie5",
	name = "东大街",
	ways = {
		["south"] = "dali/dongjie6",
		["east"] = "dali/wangfu/damen",
		["north"] = "dali/dongjie4",
	},
}
Room {
	id = "dali/dongjie6",
	name = "东大街",
	ways = {
		["south"] = "dali/dongjie7",
		["north"] = "dali/dongjie5",
		["east"] = "dali/chyuan",
	},
}
Room {
	id = "dali/dongjie7",
	name = "东大街",
	ways = {
		["south"] = "dali/nanjie5",
		["east"] = "dali/huadian",
		["north"] = "dali/dongjie6",
	},
}
Room {
	id = "dali/dongmen",
	name = "东门",
	ways = {
		["east"] = "dali/dalieast/shanlu7",
		["west"] = "dali/dongjie4",
	},
}
Room {
	id = "dali/doufufang",
	name = "豆腐坊",
	ways = {
		["north"] = "dali/jiulou",
		["east"] = "dali/dongjie2",
		["west"] = "dali/qsjie1",
	},
}
Room {
	id = "dali/duchang",
	name = "赌场",
	ways = {
		["south"] = "dali/beijie5",
	},
}
Room {
	id = "dali/erhai",
	name = "洱海园",
	ways = {
		["eastup"] = "dali/jzs3",
		["west"] = "dali/hth",
	},
}
Room {
	id = "dali/fengwei",
	name = "风味小吃店",
	ways = {
		["east"] = "dali/dalics",
		["north"] = "dali/beijie2",
		["west"] = "dali/xijie1",
	},
}
Room {
	id = "dali/hth",
	name = "蝴蝶会",
	ways = {
		["east"] = "dali/erhai",
		["west"] = "dali/htq",
	},
}
Room {
	id = "dali/htq",
	name = "蝴蝶泉",
	ways = {
		["southwest"] = "dali/dadao3",
		["east"] = "dali/hth",
	},
}
Room {
	id = "dali/huadian",
	name = "花店",
	ways = {
		["west"] = "dali/dongjie7",
	},
}
Room {
	id = "dali/jiulou",
	name = "云雪楼",
	ways = {
		["south"] = "dali/doufufang",
		["east"] = "dali/dongjie1",
		["north"] = "dali/beijie4",
		["west"] = "dali/dalics",
	},
}
Room {
	id = "dali/jzs1",
	name = "鸡足山",
	ways = {
		["westdown"] = "dali/jzs2",
	},
}
Room {
	id = "dali/jzs2",
	name = "鸡足山上",
	ways = {
		["westdown"] = "dali/jzs3",
		["eastup"] = "dali/jzs1",
	},
}
Room {
	id = "dali/jzs3",
	name = "灵山一会",
	ways = {
		["eastup"] = "dali/jzs2",
		["westdown"] = "dali/erhai",
	},
}
Room {
	id = "dali/kedian",
	name = "迎宾馆",
	ways = {
		-- ["enter"] = "dali/kedian2",
		["north"] = "dali/qsjie1",
	},
	nolooks = {
		["enter"] = true,
	},
}
Room {
	id = "dali/kedian2",
	name = "走廊",
	ways = {
		["north"] = "dali/kedian3",
		["out"] = "dali/kedian",
	},
}
Room {
	id = "dali/kedian3",
	name = "客房",
	no_fight = true,
	ways = {
		["south"] = "dali/kedian2",
	},
}
Room {
	id = "dali/mafang",
	name = "马房",
	ways = {
		["east"] = "dali/qsjie2",
	},
}
Room {
	id = "dali/nanjie1",
	name = "南大街",
	ways = {
		["south"] = "dali/shudian",
		["north"] = "dali/xijie7",
		["east"] = "dali/nanjie2",
		["west"] = "dali/datiepu",
	},
}
Room {
	id = "dali/nanjie2",
	name = "南大街",
	ways = {
		["south"] = "dali/dinganfu",
		["east"] = "dali/nanjie3",
		["west"] = "dali/nanjie1",
	},
}
Room {
	id = "dali/nanjie3",
	name = "太和南街",
	ways = {
		["south"] = "dali/nanmen",
		["north"] = "dali/qsjie2",
		["east"] = "dali/nanjie4",
		["west"] = "dali/nanjie2",
	},
}
Room {
	id = "dali/nanjie4",
	name = "南大街",
	ways = {
		["south"] = "dali/dafujia",
		["east"] = "dali/nanjie5",
		["west"] = "dali/nanjie3",
	},
}
Room {
	id = "dali/nanjie5",
	name = "南大街",
	ways = {
		["south"] = "dali/zahuopu",
		["east"] = "dali/shuyuan",
		["north"] = "dali/dongjie7",
		["west"] = "dali/nanjie4",
	},
}
Room {
	id = "dali/nanmen",
	name = "南门",
	ways = {
		["south"] = "dali/dalisouth/shanlu6",
		["north"] = "dali/nanjie3",
	},
}
Room {
	id = "dali/qian",
	name = "大理钱庄",
	ways = {
		["south"] = "dali/beijie4",
	},
}
Room {
	id = "dali/qsjie1",
	name = "青石街",
	ways = {
		["south"] = "dali/kedian",
		["north"] = "dali/dalics",
		["east"] = "dali/doufufang",
	},
}
Room {
	id = "dali/qsjie2",
	name = "青石街",
	ways = {
		["south"] = "dali/nanjie3",
		["east"] = "dali/yizhan",
		["north"] = "dali/dlhg/zhengmen",
		["west"] = "dali/mafang",
	},
}
Room {
	id = "dali/shanhou",
	name = "善阐侯府",
	ways = {
		["east"] = "dali/xijie5",
	},
}
Room {
	id = "dali/shanlu2",
	name = "山路",
	ways = {
		["south"] = "dali/shanlu3",
		["north"] = "chengdu/nanmen",
	},
}
Room {
	id = "dali/shanlu3",
	name = "山路",
	ways = {
		["south"] = "dali/shanlu4",
		["north"] = "dali/shanlu2",
		["northeast"] = "dali/wuliang/xiaoxi",
	},
}
Room {
	id = "dali/shanlu4",
	name = "山路",
	ways = {
		["south"] = "dali/dadao1",
		["north"] = "dali/shanlu3",
	},
}
Room {
	id = "dali/shudian",
	name = "书肆",
	ways = {
		["north"] = "dali/nanjie1",
	},
}
Room {
	id = "dali/shuyuan",
	name = "书院",
	ways = {
		["west"] = "dali/nanjie5",
	},
}
Room {
	id = "dali/sikong",
	name = "司空堂",
	ways = {
		["south"] = "dali/yamen",
	},
}
Room {
	id = "dali/sima",
	name = "司马堂",
	ways = {
		["east"] = "dali/yamen",
	},
}
Room {
	id = "dali/situ",
	name = "司徒堂",
	ways = {
		["west"] = "dali/yamen",
	},
}
Room {
	id = "dali/wangfu/chufang",
	name = "王府厨房",
	ways = {
		["west"] = "dali/wangfu/lang4",
	},
}
Room {
	id = "dali/wangfu/damen",
	name = "镇南王府大门",
	ways = {
		["south"] = "dali/wangfu/dating",
		["west"] = "dali/dongjie5",
	},
}
Room {
	id = "dali/wangfu/dating",
	name = "王府大厅",
	ways = {
		["east"] = "dali/wangfu/lang2",
		["north"] = "dali/wangfu/damen",
		["west"] = "dali/wangfu/lang1",
	},
	blocks = {
		["east"] = {
			{id = "dali guanbing", exp = 10000},
		},
		["west"] = {
			{id = "dali guanbing", exp = 10000},
		},
	},
}
Room {
	id = "dali/wangfu/huayuan",
	name = "花园",
	ways = {
		["east"] = "dali/wangfu/lang8",
		["west"] = "dali/wangfu/lang7",
	},
}
Room {
	id = "dali/wangfu/lang1",
	name = "长廊",
	ways = {
		["south"] = "dali/wangfu/lang3",
		["east"] = "dali/wangfu/dating",
	},
}
Room {
	id = "dali/wangfu/lang2",
	name = "长廊",
	ways = {
		["south"] = "dali/wangfu/lang4",
		["west"] = "dali/wangfu/dating",
	},
}
Room {
	id = "dali/wangfu/lang3",
	name = "长廊",
	ways = {
		["south"] = "dali/wangfu/lang5",
		["east"] = "dali/wangfu/nuange",
		["north"] = "dali/wangfu/lang1",
		["west"] = "dali/wangfu/yizheng",
	},
}
Room {
	id = "dali/wangfu/lang4",
	name = "长廊",
	ways = {
		["south"] = "dali/wangfu/lang6",
		["north"] = "dali/wangfu/lang2",
		["east"] = "dali/wangfu/chufang",
		["west"] = "dali/wangfu/zhangfang",
	},
}
Room {
	id = "dali/wangfu/lang5",
	name = "长廊",
	ways = {
		["southeast"] = "dali/wangfu/lang7",
		["east"] = "dali/wangfu/shufang",
		["north"] = "dali/wangfu/lang3",
		["west"] = "dali/wangfu/woshi1",
	},
}
Room {
	id = "dali/wangfu/lang6",
	name = "长廊",
	ways = {
		["southwest"] = "dali/wangfu/lang8",
		["east"] = "dali/wangfu/wupinfang",
		["north"] = "dali/wangfu/lang4",
		["west"] = "dali/wangfu/woshi2",
	},
}
Room {
	id = "dali/wangfu/lang7",
	name = "长廊",
	ways = {
		["northwest"] = "dali/wangfu/lang5",
		["east"] = "dali/wangfu/huayuan",
	},
}
Room {
	id = "dali/wangfu/lang8",
	name = "长廊",
	ways = {
		["northeast"] = "dali/wangfu/lang6",
		["west"] = "dali/wangfu/huayuan",
	},
}
Room {
	id = "dali/wangfu/nuange",
	name = "暖阁",
	ways = {
		["west"] = "dali/wangfu/lang3",
	},
}
Room {
	id = "dali/wangfu/shufang",
	name = "书房",
	ways = {
		["west"] = "dali/wangfu/lang5",
	},
}
Room {
	id = "dali/wangfu/woshi1",
	name = "卧室",
	ways = {
		["east"] = "dali/wangfu/lang5",
	},
}
Room {
	id = "dali/wangfu/woshi2",
	name = "卧室",
	ways = {
		["east"] = "dali/wangfu/lang6",
	},
}
Room {
	id = "dali/wangfu/wupinfang",
	name = "兵器房",
	ways = {
		["west"] = "dali/wangfu/lang6",
	},
}
Room {
	id = "dali/wangfu/yizheng",
	name = "议政厅",
	ways = {
		["east"] = "dali/wangfu/lang3",
	},
}
Room {
	id = "dali/wangfu/zhangfang",
	name = "帐房",
	ways = {
		["east"] = "dali/wangfu/lang4",
	},
}
Room {
	id = "dali/wuliang/anbian",
	name = "澜沧江边",
	ways = {
		["eastup"] = "dali/wuliang/gaoshan",
	},
}
Room {
	id = "dali/wuliang/anbian1",
	name = "澜沧江畔",
	ways = {
		["east"] = "dali/wuliang/jiangan",
		["west"] = "dali/wuliang/shanlu8",
	},
}
Room {
	id = "dali/wuliang/banshan1",
	name = "半山",
	ways = {
		["down"] = "dali/wuliang/banshan2",
	},
}
Room {
	id = "dali/wuliang/banshan2",
	name = "半山",
	ways = {
		["down"] = "dali/wuliang/banshan3",
	},
}
Room {
	id = "dali/wuliang/banshan3",
	name = "半山",
	ways = {
		["down"] = "dali/wuliang/banshan4",
	},
}
Room {
	id = "dali/wuliang/banshan4",
	name = "半山",
	ways = {
		["down"] = "dali/wuliang/gudi",
	},
}
Room {
	id = "dali/wuliang/beihubian",
	name = "北湖边",
	ways = {
		["southeast"] = "dali/wuliang/nanhubian",
		["north"] = "dali/wuliang/shulin4",
		["northeast"] = "dali/wuliang/donghubian",
	},
}
Room {
	id = "dali/wuliang/caodi",
	name = "万劫谷谷口",
	ways = {
		["south"] = "dali/wuliang/xiaojing",
		["out"] = "dali/wuliang/hslin",
	},
}
Room {
	id = "dali/wuliang/dlgong",
	name = "东练武厅",
	ways = {
		["west"] = "dali/wuliang/jhg",
	},
}
Room {
	id = "dali/wuliang/dong1",
	name = "石室",
	ways = {
		["enter"] = "dali/wuliang/dong2",
		["up"] = "dali/wuliang/taijie",
		["out"] = "dali/wuliang/dongkou",
	},
}
Room {
	id = "dali/wuliang/dong2",
	name = "内室",
	ways = {
		["out"] = "dali/wuliang/dong1",
	},
}
Room {
	id = "dali/wuliang/donghubian",
	name = "东湖边",
	ways = {
		["southwest"] = "dali/wuliang/beihubian",
		["north"] = "dali/wuliang/shulin1",
		["east"] = "dali/wuliang/gudi",
		["west"] = "dali/wuliang/xihubian",
	},
}
Room {
	id = "dali/wuliang/dongkou",
	name = "洞口",
	ways = {
		["out"] = "dali/wuliang/shibi",
	},
}
Room {
	id = "dali/wuliang/dting",
	name = "东厅",
	ways = {
		["west"] = "dali/wuliang/wlj",
	},
}
Room {
	id = "dali/wuliang/gaoshan",
	name = "无量山峰",
	ways = {
		["westdown"] = "dali/wuliang/anbian",
		["south"] = "dali/wuliang/shanlu12",
	},
}
Room {
	id = "dali/wuliang/gudi",
	name = "山谷底部",
	ways = {
		["west"] = "dali/wuliang/donghubian",
	},
}
Room {
	id = "dali/wuliang/guzhong",
	name = "万劫谷",
	ways = {
		["south"] = "dali/wuliang/keting",
		["north"] = "dali/wuliang/xiaojing",
		["west"] = "dali/wuliang/xiaoting",
	},
}
Room {
	id = "dali/wuliang/houyuan",
	name = "后院",
	ways = {
		["south"] = "dali/wuliang/jhg",
		-- ["north"] = "dali/wuliang/songlin1",
	},
	nolooks = {
		["north"] = true,
	},
}
Room {
	id = "dali/wuliang/hslin",
	name = "黑森林",
	ways = {
		["south"] = "dali/wuliang/tiesuo",
		["enter 第四株"] = "dali/wuliang/caodi",
	},
	nolooks = {
		["enter 第四株"] = true,
	},
}
Room {
	id = "dali/wuliang/jhg",
	name = "剑湖宫",
	ways = {
		["south"] = "dali/wuliang/wlj",
		["north"] = "dali/wuliang/houyuan",
		["east"] = "dali/wuliang/dlgong",
		["west"] = "dali/wuliang/xlgong",
	},
	blocks = {
		["north"] = {
			{id = "xin shuangqing", exp = 350000},
			{id = "zuo zimu", exp = 400000},
			{id = "gong guangjie", exp = 200000},
		},
		["east"] = {
			{id = "xin shuangqing", exp = 350000},
			{id = "zuo zimu", exp = 400000},
			{id = "gong guangjie", exp = 200000},
		},
		["west"] = {
			{id = "xin shuangqing", exp = 350000},
			{id = "zuo zimu", exp = 400000},
			{id = "gong guangjie", exp = 200000},
		},
	},
}
Room {
	id = "dali/wuliang/jiangan",
	name = "江岸",
	ways = {
		["north"] = "dali/wuliang/tiesuo",
		["west"] = "dali/wuliang/anbian1",
	},
}
Room {
	id = "dali/wuliang/jiangpan",
	name = "江畔",
	ways = {
		["enter"] = "dali/wuliang/taijie",
		["down"] = "dali/wuliang/anbian1",
	},
}
Room {
	id = "dali/wuliang/keting",
	name = "客厅",
	ways = {
		["north"] = "dali/wuliang/guzhong",
		["east"] = "dali/wuliang/xiangfang",
	},
	blocks = {
		["east"] = {
			{id = "zhong wanchou", exp = 400000},
		},
	},
}
Room {
	id = "dali/wuliang/lsdui",
	name = "乱石堆",
	ways = {
		["southwest"] = "dali/wuliang/xiaolu2",
	},
}
Room {
	id = "dali/wuliang/midao1",
	name = "密道",
	ways = {
		["southdown"] = "dali/wuliang/midao2",
	},
}
Room {
	id = "dali/wuliang/midao2",
	name = "密道",
	ways = {
		["northup"] = "dali/wuliang/midao1",
		["south"] = "dali/wuliang/midao3",
	},
}
Room {
	id = "dali/wuliang/midao3",
	name = "密道",
	ways = {
		["east"] = "dali/wuliang/midao4",
		["north"] = "dali/wuliang/midao2",
	},
}
Room {
	id = "dali/wuliang/midao4",
	name = "密道",
	ways = {
		["southdown"] = "dali/wuliang/midao5",
		["west"] = "dali/wuliang/midao3",
	},
}
Room {
	id = "dali/wuliang/midao5",
	name = "密道",
	ways = {
		["northup"] = "dali/wuliang/midao4",
		["out"] = "dali/shanlu3",
	},
}
Room {
	id = "dali/wuliang/muwu1",
	name = "空地",
	ways = {
		["north"] = "dali/wuliang/muwu2",
	},
}
Room {
	id = "dali/wuliang/muwu2",
	name = "石屋",
	ways = {
		["south"] = "dali/wuliang/muwu1",
	},
}
Room {
	id = "dali/wuliang/nanhubian",
	name = "南湖边",
	ways = {
		["northwest"] = "dali/wuliang/beihubian",
		["north"] = "dali/wuliang/shulin3",
		["northeast"] = "dali/wuliang/xihubian",
	},
}
Room {
	id = "dali/wuliang/pubu",
	name = "大瀑布",
	ways = {
		["southeast"] = "dali/wuliang/shanya",
		["west"] = "dali/wuliang/songlin1",
	},
}
Room {
	id = "dali/wuliang/shanlin-1",
	name = "石道",
	ways = {
		["east"] = "dali/wuliang/shanlin-2",
		["west"] = "dali/wuliang/shanlu12",
	},
}
Room {
	id = "dali/wuliang/shanlin-2",
	name = "山坡",
	ways = {
		["eastup"] = "dali/wuliang/shanlin-3",
		["west"] = "dali/wuliang/shanlin-1",
	},
}
Room {
	id = "dali/wuliang/shanlin-3",
	name = "森林",
	ways = {
		["westdown"] = "dali/wuliang/shanlin-2",
		["north"] = "dali/wuliang/shanlin-4",
	},
}
Room {
	id = "dali/wuliang/shanlin-4",
	name = "森林",
	ways = {
		["south"] = "dali/wuliang/shanlin-3",
		["west"] = "dali/wuliang/shanlin-5",
	},
}
Room {
	id = "dali/wuliang/shanlin-5",
	name = "森林",
	ways = {
		["north"] = "dali/wuliang/shanlin-6",
		["east"] = "dali/wuliang/shanlin-4",
	},
}
Room {
	id = "dali/wuliang/shanlin-6",
	name = "森林",
	ways = {
		["south"] = "dali/wuliang/shanlin-5",
	},
}
Room {
	id = "dali/wuliang/shanlu8",
	name = "荆棘林",
	ways = {
		["west"] = "dali/wuliang/shanlu8",
		["east"] = "dali/wuliang/anbian1",
		["south"] = "dali/wuliang/xiaoxi",
		["north"] = "dali/wuliang/shanlu9",
	},
}
Room {
	id = "dali/wuliang/shanlu9",
	name = "荆棘林",
	ways = {
		["west"] = "dali/wuliang/shanlu10",
		["east"] = "dali/wuliang/shanlu10",
		["south"] = "dali/wuliang/shanlu8",
		["north"] = "dali/wuliang/shanlu10",
	},
}
Room {
	id = "dali/wuliang/shanlu10",
	name = "荆棘林",
	ways = {
		["west"] = "dali/wuliang/shanlu13",
		["east"] = "dali/wuliang/shanlu14",
		["south"] = "dali/wuliang/shanlu9",
		["north"] = "dali/wuliang/shanlu12",
	},
}
Room {
	id = "dali/wuliang/shanlu11",
	name = "山路",
	ways = {
		["#outJjl"] = "dali/wuliang/xiaoxi",
	},
	nolooks = {
		["#outJjl"] = true,
		["south"] = true,
		["east"] = true,
		["north"] = true,
		["west"] = true,
	},
	lengths = {
		["#outJjl"] = 500,
	},
}
Room {
	id = "dali/wuliang/shanlu12",
	name = "荆棘林",
	ways = {
		["west"] = "dali/wuliang/shanlu14",
		["east"] = "dali/wuliang/shanlu13",
		["south"] = "dali/wuliang/shanlu12",
		["north"] = "dali/wuliang/shanlu11",
	},
}
Room {
	id = "dali/wuliang/shanlu13",
	name = "斜坡",
	ways = {
		["south"] = "dali/wuliang/shanlu10",
		["north"] = "dali/wuliang/shanlu10",
		["west"] = "dali/wuliang/shanlu9",
		["east"] = "dali/wuliang/shanlu12",
	},
}
Room {
	id = "dali/wuliang/shanlu14",
	name = "斜坡",
	ways = {
		["south"] = "dali/wuliang/shanlu10",
		["north"] = "dali/wuliang/shanlu10",
		["west"] = "dali/wuliang/shanlu12",
		["east"] = "dali/wuliang/shanlu9",
	},
}
Room {
	id = "dali/wuliang/shanlu5",
	name = "无量山路",
	ways = {
		["eastup"] = "dali/wuliang/xiaolu1",
		["northdown"] = "dali/wuliang/xiaoxi",
	},
}
Room {
	id = "dali/wuliang/shanya",
	name = "白龙峰",
	ways = {
		["northwest"] = "dali/wuliang/pubu",
	},
}
Room {
	id = "dali/wuliang/shibi",
	name = "石壁下",
	ways = {
		["out"] = "dali/wuliang/shuhou",
	},
}
Room {
	id = "dali/wuliang/shuhou",
	name = "树丛后",
	ways = {
		["out"] = "dali/wuliang/shulin1",
	},
}
Room {
	id = "dali/wuliang/shulin1",
	name = "山中密林",
	ways = {
		["south"] = "dali/wuliang/donghubian",
	},
}
Room {
	id = "dali/wuliang/shulin2",
	name = "山中密林",
	ways = {
		["south"] = "dali/wuliang/xihubian",
	},
}
Room {
	id = "dali/wuliang/shulin3",
	name = "山中密林",
	ways = {
		["south"] = "dali/wuliang/nanhubian",
	},
}
Room {
	id = "dali/wuliang/shulin4",
	name = "山中密林",
	ways = {
		["south"] = "dali/wuliang/beihubian",
	},
}
Room {
	id = "dali/wuliang/songlin1",
	name = "大松林",
	ways = {
		["south"] = "dali/wuliang/houyuan",
		["north"] = "dali/wuliang/songlin1",
	},
}
Room {
	id = "dali/wuliang/songlin2",
	name = "大松林",
	ways = {
		["north"] = "dali/wuliang/songlin2",
	},
}
Room {
	id = "dali/wuliang/songlin3",
	name = "大松林",
	ways = {
		["north"] = "dali/wuliang/songlin3",
	},
}
Room {
	id = "dali/wuliang/songlin4",
	name = "大松林",
	ways = {
		["north"] = "dali/wuliang/songlin4",
	},
}
Room {
	id = "dali/wuliang/songlin5",
	name = "大松林",
	ways = {
		["south"] = "dali/wuliang/songlin5",
		["east"] = "dali/wuliang/pubu",
	},
}
Room {
	id = "dali/wuliang/taijie",
	name = "台阶",
	ways = {
		["down"] = "dali/wuliang/dong1",
		["out"] = "dali/wuliang/jiangpan",
	},
}
Room {
	id = "dali/wuliang/tiesuo",
	name = "铁索桥",
	ways = {
		["south"] = "dali/wuliang/jiangan",
		["north"] = "dali/wuliang/hslin",
	},
}
Room {
	id = "dali/wuliang/wlj",
	name = "石板路",
	ways = {
		["north"] = "dali/wuliang/jhg",
		["east"] = "dali/wuliang/dting",
		["west"] = "dali/wuliang/xting",
		["out"] = "dali/wuliang/wljmen",
	},
	blocks = {
		["north"] = {
			{id = "rong ziju", exp = 350000},
		},
		["east"] = {
			{id = "rong ziju", exp = 350000},
		},
		["west"] = {
			{id = "rong ziju", exp = 350000},
		},
	},
}
Room {
	id = "dali/wuliang/wljmen",
	name = "无量剑宗",
	ways = {
		["enter"] = "dali/wuliang/wlj",
		["southdown"] = "dali/wuliang/xiaolu5",
	},
	blocks = {
		["enter"] = {
			{id = "yu guangbiao", exp = 200000},
			{id = "wu guangsheng", exp = 200000},
		},
	},
}
Room {
	id = "dali/wuliang/xiangfang",
	name = "厢房",
	ways = {
		["west"] = "dali/wuliang/keting",
	},
}
Room {
	id = "dali/wuliang/xiaojing",
	name = "谷中小径",
	ways = {
		["south"] = "dali/wuliang/guzhong",
		["north"] = "dali/wuliang/caodi",
	},
}
Room {
	id = "dali/wuliang/xiaolu1",
	name = "青石小路",
	ways = {
		["eastup"] = "dali/wuliang/xiaolu2",
		["westdown"] = "dali/wuliang/shanlu5",
	},
}
Room {
	id = "dali/wuliang/xiaolu2",
	name = "青石小路",
	ways = {
		["northup"] = "dali/wuliang/xiaolu3",
		["westdown"] = "dali/wuliang/xiaolu1",
		["northeast"] = "dali/wuliang/lsdui",
	},
}
Room {
	id = "dali/wuliang/xiaolu3",
	name = "青石小路",
	ways = {
		["northup"] = "dali/wuliang/xiaolu4",
		["southdown"] = "dali/wuliang/xiaolu2",
	},
}
Room {
	id = "dali/wuliang/xiaolu4",
	name = "青石台阶",
	ways = {
		["westup"] = "dali/wuliang/xiaolu5",
		["southdown"] = "dali/wuliang/xiaolu3",
	},
}
Room {
	id = "dali/wuliang/xiaolu5",
	name = "青石台阶",
	ways = {
		["northup"] = "dali/wuliang/wljmen",
		["eastdown"] = "dali/wuliang/xiaolu4",
	},
}
Room {
	id = "dali/wuliang/xiaoting",
	name = "小厅",
	ways = {
		["east"] = "dali/wuliang/guzhong",
	},
}
Room {
	id = "dali/wuliang/xiaoxi",
	name = "山中小溪",
	ways = {
		["southup"] = "dali/wuliang/shanlu5",
		["southwest"] = "dali/shanlu3",
		["north"] = "dali/wuliang/shanlu8",
	},
}
Room {
	id = "dali/wuliang/xihubian",
	name = "西湖边",
	ways = {
		["southwest"] = "dali/wuliang/nanhubian",
		["north"] = "dali/wuliang/shulin2",
		["east"] = "dali/wuliang/donghubian",
	},
}
Room {
	id = "dali/wuliang/xlgong",
	name = "西练武厅",
	ways = {
		["east"] = "dali/wuliang/jhg",
	},
}
Room {
	id = "dali/wuliang/xting",
	name = "西厅",
	ways = {
		["east"] = "dali/wuliang/wlj",
	},
}
Room {
	id = "dali/xijie1",
	name = "西大街",
	ways = {
		["south"] = "dali/xijie2",
		["east"] = "dali/fengwei",
		["north"] = "dali/beijie1",
		["west"] = "dali/caifeng",
	},
}
Room {
	id = "dali/xijie2",
	name = "西大街",
	ways = {
		["south"] = "dali/xijie3",
		["north"] = "dali/xijie1",
		["west"] = "dali/xiulou",
	},
}
Room {
	id = "dali/xijie3",
	name = "西大街",
	ways = {
		["south"] = "dali/xijie4",
		["north"] = "dali/xijie2",
		["west"] = "dali/chouduan",
	},
}
Room {
	id = "dali/xijie4",
	name = "太和西街",
	ways = {
		["south"] = "dali/xijie5",
		["north"] = "dali/xijie3",
		["west"] = "dali/ximen",
	},
}
Room {
	id = "dali/xijie5",
	name = "西大街",
	ways = {
		["south"] = "dali/xijie6",
		["north"] = "dali/xijie4",
		["west"] = "dali/shanhou",
	},
}
Room {
	id = "dali/xijie6",
	name = "西大街",
	ways = {
		["south"] = "dali/xijie7",
		["north"] = "dali/xijie5",
		["west"] = "dali/xiyuan",
	},
}
Room {
	id = "dali/xijie7",
	name = "西大街",
	ways = {
		["south"] = "dali/nanjie1",
		["north"] = "dali/xijie6",
		["west"] = "dali/yanzhi",
	},
}
Room {
	id = "dali/ximen",
	name = "西门",
	no_fight = true,
	ways = {
		["westup"] = "tls/diancang",
		["east"] = "dali/xijie4",
	},
}
Room {
	id = "dali/xiulou",
	name = "绣楼",
	no_fight = true,
	ways = {
		["east"] = "dali/xijie2",
	},
}
Room {
	id = "dali/xiyuan",
	name = "戏园子",
	ways = {
		["east"] = "dali/xijie6",
	},
}
Room {
	id = "dali/yamen",
	name = "府衙前厅",
	ways = {
		["south"] = "dali/beijie1",
		["east"] = "dali/situ",
		["north"] = "dali/sikong",
		["west"] = "dali/sima",
	},
	blocks = {
		["north"] = {
			{id = "dali guanbing", exp = 10000},
			{id = "dali wujiang", exp = 75000},
		},
		["east"] = {
			{id = "dali guanbing", exp = 10000},
			{id = "dali wujiang", exp = 75000},
		},
		["west"] = {
			{id = "dali guanbing", exp = 10000},
			{id = "dali wujiang", exp = 75000},
		},
	},
}
Room {
	id = "dali/yanju",
	name = "作坊",
	no_fight = true,
	ways = {
		["west"] = "dali/beijie5",
	},
}
Room {
	id = "dali/yanzhi",
	name = "铸剑房",
	no_fight = true,
	ways = {
		["east"] = "dali/xijie7",
	},
}
Room {
	id = "dali/yaopu",
	name = "药铺",
	no_fight = true,
	ways = {
		["west"] = "dali/dongjie2",
	},
}
Room {
	id = "dali/yideng/anbian",
	name = "岸边",
	ways = {
		["enter"] = "dali/yideng/shandong",
	},
}
Room {
	id = "dali/yideng/caowu",
	name = "茅屋",
	ways = {
		["east"] = "dali/yideng/pubu",
	},
}
Room {
	id = "dali/yideng/chufang",
	name = "斋堂",
	ways = {
		["east"] = "dali/yideng/houyuan",
	},
}
Room {
	id = "dali/yideng/dadian",
	name = "禅院大殿",
	ways = {
		["south"] = "dali/yideng/shiqiao",
		["north"] = "dali/yideng/houyuan",
		["east"] = "dali/yideng/dfang",
		["west"] = "dali/yideng/xfang",
	},
}
Room {
	id = "dali/yideng/dfang",
	name = "东厢房",
	ways = {
		["west"] = "dali/yideng/dadian",
	},
}
Room {
	id = "dali/yideng/fanpu",
	name = "小饭铺",
	ways = {
		["southwest"] = "dali/yideng/xiaolu1",
		["east"] = "group/entry/dlstulin",
	},
}
Room {
	id = "dali/yideng/hetang",
	name = "河塘",
	ways = {
		["south"] = "dali/yideng/liang",
		["north"] = "dali/yideng/shiqiao",
	},
}
Room {
	id = "dali/yideng/houyuan",
	name = "禅院后院",
	ways = {
		["south"] = "dali/yideng/dadian",
		["northwest"] = "dali/yideng/xiaojing1",
		["east"] = "dali/yideng/liangong",
		["west"] = "dali/yideng/chufang",
	},
}
Room {
	id = "dali/yideng/liang",
	name = "石梁尽头",
	ways = {
		["north"] = "dali/yideng/hetang",
	},
}
Room {
	id = "dali/yideng/liangong",
	name = "练功房",
	ways = {
		["west"] = "dali/yideng/houyuan",
	},
}
Room {
	id = "dali/yideng/pubu",
	name = "山谷瀑布",
	ways = {
		["north"] = "dali/yideng/xiaolu2",
		["west"] = "dali/yideng/caowu",
	},
}
Room {
	id = "dali/yideng/shanding",
	name = "山顶",
	ways = {
		["eastup"] = "dali/yideng/shanpo",
	},
}
Room {
	id = "dali/yideng/shandong",
	name = "山洞",
	ways = {
		["out"] = "dali/yideng/anbian",
	},
}
Room {
	id = "dali/yideng/shanpo",
	name = "山坡",
	nofind = true,
	ways = {
		["westdown"] = "dali/yideng/shanding",
		["east"] = "dali/yideng/shiliang",
	},
}
Room {
	id = "dali/yideng/shiliang",
	name = "石梁",
	ways = {
		["west"] = "dali/yideng/shanpo",
	},
}
Room {
	id = "dali/yideng/shiqiao",
	name = "小石桥",
	ways = {
		["south"] = "dali/yideng/hetang",
		["north"] = "dali/yideng/dadian",
	},
}
Room {
	id = "dali/yideng/shiwu",
	name = "石屋正房",
	ways = {
		["south"] = "dali/yideng/zhulin",
		["east"] = "dali/yideng/xiangfang",
	},
}
Room {
	id = "dali/yideng/xfang",
	name = "西厢房",
	ways = {
		["east"] = "dali/yideng/dadian",
	},
}
Room {
	id = "dali/yideng/xiangfang",
	name = "石屋厢房",
	ways = {
		["west"] = "dali/yideng/shiwu",
	},
}
Room {
	id = "dali/yideng/xiaojing1",
	name = "青石小径",
	ways = {
		["southeast"] = "dali/yideng/houyuan",
		["northeast"] = "dali/yideng/xiaojing2",
	},
}
Room {
	id = "dali/yideng/xiaojing2",
	name = "青石小径",
	ways = {
		["southwest"] = "dali/yideng/xiaojing1",
		["west"] = "dali/yideng/xiaojing3",
	},
}
Room {
	id = "dali/yideng/xiaojing3",
	name = "青石小径",
	ways = {
		["east"] = "dali/yideng/xiaojing2",
		["west"] = "dali/yideng/zhulin",
	},
}
Room {
	id = "dali/yideng/xiaolu1",
	name = "山间小路",
	ways = {
		["southwest"] = "dali/yideng/xiaolu2",
		["northeast"] = "dali/yideng/fanpu",
	},
}
Room {
	id = "dali/yideng/xiaolu2",
	name = "山岭",
	ways = {
		["south"] = "dali/yideng/pubu",
		["northeast"] = "dali/yideng/xiaolu1",
	},
}
Room {
	id = "dali/yideng/zhulin",
	name = "竹林",
	ways = {
		["east"] = "dali/yideng/xiaojing3",
		["north"] = "dali/yideng/shiwu",
	},
}
Room {
	id = "dali/yizhan",
	name = "驿站",
	no_fight = true,
	ways = {
		["west"] = "dali/qsjie2",
	},
}
Room {
	id = "dali/yuxu/guanmen",
	name = "玉虚观门",
	ways = {
		["enter"] = "dali/yuxu/yuxuguan",
		["east"] = "group/entry/dlndao5",
	},
}
Room {
	id = "dali/yuxu/shangang",
	name = "山岗",
	ways = {
		["northwest"] = "group/entry/dlndao5",
		["east"] = "dali/yuxu/xiaodao2",
	},
}
Room {
	id = "dali/yuxu/shufang1",
	name = "书房",
	ways = {
		["east"] = "dali/yuxu/yuxuguan",
	},
}
Room {
	id = "dali/yuxu/shuifang",
	name = "睡房",
	ways = {
		["west"] = "dali/yuxu/yuxuguan",
	},
}
Room {
	id = "dali/yuxu/xiaodao1",
	name = "道旁田野",
	ways = {
		["northeast"] = "dali/dadao1",
		["west"] = "dali/yuxu/xiaodao2",
	},
}
Room {
	id = "dali/yuxu/xiaodao2",
	name = "道旁田野",
	ways = {
		["east"] = "dali/yuxu/xiaodao1",
		["west"] = "dali/yuxu/shangang",
	},
}
Room {
	id = "dali/yuxu/yuxuguan",
	name = "玉虚观",
	ways = {
		["east"] = "dali/yuxu/shuifang",
		["west"] = "dali/yuxu/shufang1",
		["out"] = "dali/yuxu/guanmen",
	},
}
Room {
	id = "dali/zahuopu",
	name = "杂货铺",
	ways = {
		["north"] = "dali/nanjie5",
	},
}
Room {
	id = "death/gate",
	name = "鬼门关",
	ways = {
		["enter"] = "death/gateway",
	},
}
Room {
	id = "death/gateway",
	name = "阎罗大殿",
	ways = {
		["out"] = "death/gate",
	},
}
Room {
	id = "death/mpting",
	name = "孟婆亭",
	ways = {
		["out"] = "death/gate",
	},
}
Room {
	id = "death/pusadian",
	name = "地藏王菩萨殿",
	ways = {
		["out"] = "death/gate",
	},
}
Room {
	id = "emei/bailongdong",
	name = "白龙洞",
	ways = {
		["northup"] = "emei/wannianan",
		["southeast"] = "emei/qingyinge",
		["west"] = "emei/gudelin",
	},
}
Room {
	id = "emei/baoguosi",
	name = "报国寺",
	ways = {
		["southwest"] = "emei/milin",
		["enter"] = "emei/daxiongdian",
		["east"] = "emei/baoguosm",
		["west"] = "emei/baoguosixq",
	},
}
Room {
	id = "emei/baoguosicf",
	name = "报国寺禅房",
	ways = {
		["east"] = "emei/daxiongdian",
	},
}
Room {
	id = "emei/baoguosixq",
	name = "报国寺西墙",
	ways = {
		["east"] = "emei/baoguosi",
	},
}
Room {
	id = "emei/baoguosm",
	name = "报国寺山门",
	ways = {
		["northdown"] = "emei/qingshijie",
		["west"] = "emei/baoguosi",
	},
}
Room {
	id = "emei/basipan1",
	name = "八十四盘",
	ways = {
		["southwest"] = "emei/basipan2",
		["northwest"] = "emei/lengshanlin",
		["northdown"] = "emei/leidongping",
	},
}
Room {
	id = "emei/basipan2",
	name = "八十四盘",
	ways = {
		["southup"] = "emei/basipan3",
		["southeast"] = "emei/lengshanlin1",
		["northeast"] = "emei/basipan1",
	},
}
Room {
	id = "emei/basipan3",
	name = "八十四盘",
	ways = {
		["southeast"] = "emei/jieyindian",
		["northwest"] = "emei/lengshanlin2",
		["northdown"] = "emei/basipan2",
	},
}
Room {
	id = "emei/cangjinglou",
	name = "藏经楼",
	ways = {
		["out"] = "emei/daxiongdian",
	},
}
Room {
	id = "emei/caodi",
	name = "草地",
	ways = {
		["southwest"] = "emei/xiaojing",
		["east"] = "emei/xiaowu",
		["north"] = "emei/mu",
		["northeast"] = "emei/xiaojing2",
	},
}
Room {
	id = "emei/caopeng",
	name = "草棚",
	ways = {
		["east"] = "emei/qingshijie",
	},
}
Room {
	id = "emei/chanfang",
	name = "禅房",
	no_fight = true,
	ways = {
		["west"] = "emei/lingwenge",
	},
}
Room {
	id = "emei/chanfang2",
	name = "禅房",
	no_fight = true,
	ways = {
		["west"] = "emei/qianfoandd",
	},
}
Room {
	id = "emei/chanfang3",
	name = "禅房",
	no_fight = true,
	ways = {
		["west"] = "emei/wanniananzd",
	},
	nolooks = {
		["west"] = true,
	},
	precmds = {
		["west"] = "open door",
	},
}
Room {
	id = "emei/chunyangdian",
	name = "纯阳殿",
	ways = {
		["eastdown"] = "emei/guiyunge",
		["westup"] = "emei/shenshuian",
	},
}
Room {
	id = "emei/chuwujian",
	name = "储物间",
	ways = {
		["north"] = "emei/huazanganzt",
		["up"] = "emei/huazangancj",
	},
	blocks = {
		["up"] = {
			{id = "jingfeng shitai", exp = 550000, party = "峨嵋派",},
		},
	},
}
Room {
	id = "emei/daxiong",
	name = "华藏庵大雄宝殿",
	ways = {
		["south"] = "emei/houdian",
		["east"] = "emei/huazanganzt",
		["northdown"] = "emei/huazangangc",
		["west"] = "emei/huazangancf",
	},
	nolooks = {
		["south"] = true,
	},
	precmds = {
		["south"] = "open door",
	},
}
Room {
	id = "emei/daxiongdian",
	name = "大雄殿",
	ways = {
		["enter"] = "emei/cangjinglou",
		["east"] = "emei/xiuxishi2",
		["west"] = "emei/baoguosicf",
		["out"] = "emei/baoguosi",
	},
}
Room {
	id = "emei/dcedian",
	name = "东侧殿",
	ways = {
		["west"] = "emei/huazanganzd",
	},
}
Room {
	id = "emei/dcelang",
	name = "东侧廊",
	ways = {
		["south"] = "emei/huazanganzt",
		["west"] = "emei/huazangangc",
	},
}
Room {
	id = "emei/dongkou",
	name = "九老洞口",
	ways = {
		["enter"] = "emei/jiulaodong1",
		["out"] = "emei/jiulaodong",
	},
}
Room {
	id = "emei/duguangtai",
	name = "睹光台",
	ways = {
		["north"] = "emei/huazangan",
		["northdown"] = "emei/woyunan",
		["west"] = "emei/sheshenya",
	},
}
Room {
	id = "emei/fuhusi",
	name = "伏虎寺",
	ways = {
		["westup"] = "emei/milin2",
		["east"] = "emei/milin",
	},
}
Room {
	id = "emei/fushouan",
	name = "福寿庵",
	ways = {
		["enter"] = "emei/lingwenge",
		["north"] = "emei/shenshuian",
	},
}
Room {
	id = "emei/fushouanxxs",
	name = "休息室",
	no_fight = true,
	ways = {
		["southdown"] = "emei/fushouanzt",
	},
}
Room {
	id = "emei/fushouanzt",
	name = "福寿庵斋堂",
	ways = {
		["east"] = "emei/lingwenge",
	},
	nolooks = {
		["northup"] = true,
	},
}
Room {
	id = "emei/guanyinqiao",
	name = "观音桥",
	ways = {
		["east"] = "emei/jietuopo",
		["west"] = "emei/guanyintang",
	},
}
Room {
	id = "emei/guanyintang",
	name = "观音堂",
	ways = {
		["westup"] = "emei/guiyunge",
		["east"] = "emei/guanyinqiao",
	},
}
Room {
	id = "emei/gudelin",
	name = "古德林",
	ways = {
		["south"] = "emei/gudelin",
		["north"] = "emei/gudelin2",
		["east"] = "emei/gudelin",
		["west"] = "emei/gudelin",
	},
}
Room {
	id = "emei/gudelin2",
	name = "古德林",
	ways = {
		["south"] = "emei/gudelin3",
		["north"] = "emei/gudelin2",
		["east"] = "emei/gudelin2",
		["west"] = "emei/gudelin2",
	},
}
Room {
	id = "emei/gudelin3",
	name = "古德林",
	ways = {
		["south"] = "emei/bailongdong",
		["north"] = "emei/gudelin3",
		["east"] = "emei/gudelin3",
		["west"] = "emei/gudelin3",
		["jump zhuang"] = "emei/muzhuang",
	},
	nolooks = {
		["jump zhuang"] = true,
	},
}
Room {
	id = "emei/guiyunge",
	name = "归云阁",
	ways = {
		["southup"] = "emei/yunvfeng",
		["eastdown"] = "emei/guanyintang",
		["westup"] = "emei/chunyangdian",
	},
}
Room {
	id = "emei/heilongjiangzd",
	name = "黑龙江栈道",
	ways = {
		["south"] = "emei/heilongjiangzd2",
		["northeast"] = "emei/qingyinge",
	},
}
Room {
	id = "emei/heilongjiangzd2",
	name = "黑龙江栈道",
	ways = {
		["south"] = "emei/qianfoan",
		["north"] = "emei/heilongjiangzd",
	},
}
Room {
	id = "emei/houdian",
	name = "后殿",
	ways = {
		["north"] = "emei/daxiong",
	},
	nolooks = {
		["north"] = true,
	},
	precmds = {
		["north"] = "open door",
	},
}
Room {
	id = "emei/houshan",
	name = "后山",
	ways = {
		["southup"] = "emei/houshanxl2",
		["east"] = "emei/houshansl",
		["northeast"] = "emei/houshanty",
	},
}
Room {
	id = "emei/houshandk",
	name = "洞口",
	ways = {
		["enter"] = "emei/houshansd",
	},
}
Room {
	id = "emei/houshangm",
	name = "灌木丛",
	ways = {
		["eastdown"] = "emei/houshangm",
		["westup"] = "emei/houshangm",
		["southwest"] = "emei/houshangm",
		["northeast"] = "emei/houshangm",
	},
}
Room {
	id = "emei/houshangm1",
	name = "灌木丛",
	ways = {
		["westup"] = "emei/houshangm",
	},
}
Room {
	id = "emei/houshansd",
	name = "山洞",
	ways = {
		["eastdown"] = "emei/qingyinge",
		["out"] = "emei/houshandk",
	},
}
Room {
	id = "emei/houshansl",
	name = "后山树林",
	ways = {
		["northdown"] = "emei/houshanxl3",
		["west"] = "emei/houshan",
	},
}
Room {
	id = "emei/houshanty",
	name = "炭窑",
	ways = {
		["southwest"] = "emei/houshan",
	},
}
Room {
	id = "emei/houshanxl",
	name = "后山小路",
	ways = {
		["northeast"] = "emei/houshanxl2",
	},
}
Room {
	id = "emei/houshanxl2",
	name = "后山小路",
	ways = {
		["southwest"] = "emei/houshanxl",
		["northdown"] = "emei/houshan",
	},
}
Room {
	id = "emei/houshanxl3",
	name = "后山小路",
	ways = {
		["southup"] = "emei/houshansl",
		["northdown"] = "emei/houshanxl4",
	},
}
Room {
	id = "emei/houshanxl4",
	name = "后山小路",
	ways = {
		["southup"] = "emei/houshanxl3",
		["#hsToQyg"] = "emei/qingyinge",
	},
	nolooks = {
		["#hsToQyg"] = true,
		["northdown"] = true,
	},
	lengths = {
		["#hsToQyg"] = 50,
	},
}
Room {
	id = "emei/houshanxlsd",
	name = "山洞",
	ways = {
		["out"] = "emei/houshansl",
	},
}
Room {
	id = "emei/huayanding",
	name = "华严顶",
	ways = {
		["eastup"] = "emei/xianfengsi",
		["westup"] = "emei/lianhuashi",
		["down"] = "emei/shierpan4",
		["north"] = "emei/maji",
	},
}
Room {
	id = "emei/huazangan",
	name = "华藏庵",
	ways = {
		["south"] = "emei/duguangtai",
		["enter"] = "emei/huazanganzd",
		["northdown"] = "emei/jinding",
	},
}
Room {
	id = "emei/huazangancf",
	name = "禅房",
	no_fight = true,
	ways = {
		["south"] = "emei/xiuxishi",
		["north"] = "emei/xcelang",
		["east"] = "emei/daxiong",
	},
	nolooks = {
		["south"] = true,
	},
	lengths = {
		["south"] = "if getSex() == '女' then return 1 else return false end",
	},
	precmds = {
		["south"] = "open door",
	},
}
Room {
	id = "emei/huazangancj",
	name = "藏经楼",
	ways = {
		["down"] = "emei/chuwujian",
	},
}
Room {
	id = "emei/huazangangc",
	name = "华藏庵广场",
	ways = {
		["southup"] = "emei/daxiong",
		["north"] = "emei/huazanganzd",
		["east"] = "emei/dcelang",
		["west"] = "emei/xcelang",
	},
}
Room {
	id = "emei/huazanganzd",
	name = "华藏庵正殿",
	ways = {
		["south"] = "emei/huazangangc",
		["east"] = "emei/dcedian",
		["west"] = "emei/xcedian",
		["out"] = "emei/huazangan",
	},
}
Room {
	id = "emei/huazanganzt",
	name = "斋堂",
	ways = {
		["south"] = "emei/chuwujian",
		["north"] = "emei/dcelang",
		["west"] = "emei/daxiong",
	},
}
Room {
	id = "emei/jietuopo",
	name = "解脱坡",
	ways = {
		["eastdown"] = "emei/milin2",
		["west"] = "emei/guanyinqiao",
	},
}
Room {
	id = "emei/jieyindian",
	name = "接引殿",
	ways = {
		["westup"] = "emei/wanxingan",
		["northwest"] = "emei/basipan3",
	},
}
Room {
	id = "emei/jinding",
	name = "金顶",
	ways = {
		["southup"] = "emei/huazangan",
		["southwest"] = "emei/woyunan",
		["northdown"] = "emei/wanxingan",
	},
}
Room {
	id = "emei/jiudaoguai1",
	name = "九十九道拐",
	ways = {
		["westup"] = "emei/jiudaoguai2",
		["northeast"] = "emei/qianfoan",
	},
}
Room {
	id = "emei/jiudaoguai2",
	name = "九十九道拐",
	ways = {
		["eastdown"] = "emei/jiudaoguai1",
		["southwest"] = "emei/jiudaoguai3",
	},
}
Room {
	id = "emei/jiudaoguai3",
	name = "九十九道拐",
	ways = {
		["westup"] = "emei/jiudaoguai4",
		["northeast"] = "emei/jiudaoguai2",
	},
}
Room {
	id = "emei/jiudaoguai4",
	name = "九十九道拐",
	ways = {
		["eastdown"] = "emei/jiudaoguai3",
		["southwest"] = "emei/jiulaodong",
	},
}
Room {
	id = "emei/jiulaodong",
	name = "九老洞",
	ways = {
		["northwest"] = "emei/lianhuashi",
		["enter"] = "emei/dongkou",
		["northeast"] = "emei/jiudaoguai4",
		["west"] = "emei/wanfoding",
	},
}
Room {
	id = "emei/jiulaodong1",
	name = "九老洞",
	ways = {
		["#outJld"] = "emei/dongkou",
	},
	nolooks = {
		["#outJld"] = true,
	},
	lengths = {
		["#outJld"] = 20,
	},
}
Room {
	id = "emei/leidongping",
	name = "雷洞坪",
	ways = {
		["southup"] = "emei/basipan1",
		["northdown"] = "emei/lingyunti",
	},
}
Room {
	id = "emei/lengshanlin",
	name = "冷杉林",
	ways = {
		["southeast"] = "emei/basipan1",
		["southwest"] = "emei/lengshanlin",
		["northwest"] = "emei/lengshanlin1",
		["northeast"] = "emei/lengshanlin1",
	},
}
Room {
	id = "emei/lengshanlin1",
	name = "冷杉林",
	ways = {
		["southeast"] = "emei/lengshanlin1",
		["southwest"] = "emei/lengshanlin2",
		["northwest"] = "emei/lengshanlin1",
	},
	nolooks = {
		["northeast"] = true,
	},
}
Room {
	id = "emei/lengshanlin2",
	name = "冷杉林",
	ways = {
		["southeast"] = "emei/basipan3",
		["southwest"] = "emei/lengshanlin2",
		["northwest"] = "emei/lengshanlin1",
		["northeast"] = "emei/lengshanlin",
	},
}
Room {
	id = "emei/lianhuashi",
	name = "莲花石",
	ways = {
		["eastdown"] = "emei/huayanding",
		["southeast"] = "emei/jiulaodong",
		["westup"] = "emei/zuantianpo",
	},
}
Room {
	id = "emei/lingwenge",
	name = "灵文阁",
	ways = {
		["east"] = "emei/chanfang",
		["west"] = "emei/fushouanzt",
		["out"] = "emei/fushouan",
	},
}
Room {
	id = "emei/lingyunti",
	name = "凌云梯",
	ways = {
		["southup"] = "emei/leidongping",
		["northdown"] = "emei/xixiangchi",
	},
}
Room {
	id = "emei/maji",
	name = "马厩",
	ways = {
		["south"] = "emei/huayanding",
		["move gancao;zuan dong"] = "emei/houshanxl",
	},
	nolooks = {
		["move gancao;zuan dong"] = true,
	},
	lengths = {
		["move gancao;zuan dong"] = 2,
	},
}
Room {
	id = "emei/milin",
	name = "密林",
	ways = {
		["northeast"] = "emei/baoguosi",
		["west"] = "emei/fuhusi",
	},
}
Room {
	id = "emei/milin2",
	name = "密林",
	ways = {
		["eastdown"] = "emei/fuhusi",
		["westup"] = "emei/jietuopo",
	},
}
Room {
	id = "emei/mu",
	name = "郭襄之墓",
	ways = {
		["south"] = "emei/caodi",
		["east"] = "emei/xiaojing2",
	},
}
Room {
	id = "emei/mu2",
	name = "墓室",
	ways = {
		["up"] = "emei/mu",
	},
}
Room {
	id = "emei/mupeng",
	name = "木棚",
	ways = {
		["south"] = "emei/wanfoding",
	},
}
Room {
	id = "emei/muzhuang",
	name = "梅花桩",
	ways = {
		["down"] = "emei/gudelin3",
	},
}
Room {
	id = "emei/podao1",
	name = "坡道",
	ways = {
		["westup"] = "emei/podao2",
		["east"] = "emei/lianhuashi",
	},
}
Room {
	id = "emei/podao2",
	name = "坡道",
	ways = {
		["eastdown"] = "emei/podao1",
		["westup"] = "emei/xixiangchi",
	},
}
Room {
	id = "emei/qianfoan",
	name = "千佛庵",
	ways = {
		["southwest"] = "emei/jiudaoguai1",
		["enter"] = "emei/qianfoandd",
		["north"] = "emei/heilongjiangzd2",
	},
}
Room {
	id = "emei/qianfoandd",
	name = "千佛庵大殿",
	ways = {
		["east"] = "emei/chanfang2",
		["out"] = "emei/qianfoan",
	},
	nolooks = {
		["east"] = true,
	},
	precmds = {
		["east"] = "open door",
	},
}
Room {
	id = "emei/qingshijie",
	name = "青石阶",
	ways = {
		["southup"] = "emei/baoguosm",
		["east"] = "chengdu/tulu1",
		["west"] = "emei/caopeng",
	},
}
Room {
	id = "emei/qingyinge",
	name = "清音阁",
	ways = {
		["southeast"] = "emei/zhongfengsi",
		["southwest"] = "emei/heilongjiangzd",
		["northwest"] = "emei/bailongdong",
	},
}
Room {
	id = "emei/shangu",
	name = "山谷",
	ways = {
		["east"] = "emei/xiaojing",
	},
}
Room {
	id = "emei/shanpo",
	name = "山坡",
	ways = {
		["enter"] = "emei/jiulaodong1",
	},
}
Room {
	id = "emei/shenshuian",
	name = "神水庵",
	ways = {
		["eastdown"] = "emei/chunyangdian",
		["westup"] = "emei/zhongfengsi",
		["south"] = "emei/fushouan",
	},
}
Room {
	id = "emei/sheshenya",
	name = "睹光台舍身崖",
	ways = {
		["east"] = "emei/duguangtai",
	},
}
Room {
	id = "emei/shierpan",
	name = "十二盘",
	ways = {
		["eastdown"] = "emei/wannianan",
		["southwest"] = "emei/shierpan2",
	},
}
Room {
	id = "emei/shierpan2",
	name = "十二盘",
	ways = {
		["westup"] = "emei/shierpan3",
		["northeast"] = "emei/shierpan",
	},
}
Room {
	id = "emei/shierpan3",
	name = "十二盘",
	ways = {
		["eastdown"] = "emei/shierpan2",
		["southwest"] = "emei/shierpan4",
	},
}
Room {
	id = "emei/shierpan4",
	name = "十二盘",
	ways = {
		["northeast"] = "emei/shierpan3",
		["up"] = "emei/huayanding",
	},
}
Room {
	id = "emei/shushang",
	name = "树上",
	ways = {
		["down"] = "emei/jiudaoguai3",
	},
}
Room {
	id = "emei/wanfoding",
	name = "万佛顶",
	ways = {
		["enter"] = "emei/wanfota",
		["north"] = "emei/mupeng",
		["west"] = "emei/jiulaodong",
	},
}
Room {
	id = "emei/wanfota",
	name = "万佛塔",
	ways = {
		["out"] = "emei/wanfoding",
	},
}
Room {
	id = "emei/wannianan",
	name = "万年庵",
	ways = {
		["westup"] = "emei/shierpan",
		["enter"] = "emei/wanniananzd",
		["southdown"] = "emei/bailongdong",
	},
}
Room {
	id = "emei/wanniananzd",
	name = "万年庵砖殿",
	ways = {
		["east"] = "emei/chanfang3",
		["out"] = "emei/wannianan",
	},
	nolooks = {
		["east"] = true,
	},
	precmds = {
		["east"] = "open door",
	},
}
Room {
	id = "emei/wanxingan",
	name = "万行庵",
	ways = {
		["southup"] = "emei/jinding",
		["eastdown"] = "emei/jieyindian",
	},
}
Room {
	id = "emei/woyunan",
	name = "卧云庵",
	ways = {
		["southup"] = "emei/duguangtai",
		["northeast"] = "emei/jinding",
	},
}
Room {
	id = "emei/xcedian",
	name = "西侧殿",
	ways = {
		["east"] = "emei/huazanganzd",
	},
}
Room {
	id = "emei/xcelang",
	name = "西侧廊",
	ways = {
		["south"] = "emei/huazangancf",
		["east"] = "emei/huazangangc",
	},
}
Room {
	id = "emei/xianfengsi",
	name = "仙峰寺",
	ways = {
		["westdown"] = "emei/huayanding",
	},
}
Room {
	id = "emei/xiaojing",
	name = "山谷小径",
	ways = {
		["northeast"] = "emei/caodi",
		["west"] = "emei/shangu",
	},
}
Room {
	id = "emei/xiaojing2",
	name = "小径",
	ways = {
		["southwest"] = "emei/caodi",
		["northdown"] = "emei/jiudaoguai3",
		["west"] = "emei/mu",
	},
}
Room {
	id = "emei/xiaowu",
	name = "小屋",
	ways = {
		["west"] = "emei/caodi",
	},
}
Room {
	id = "emei/xiuxishi",
	name = "休息室",
	no_fight = true,
	ways = {
		["north"] = "emei/huazangancf",
	},
}
Room {
	id = "emei/xiuxishi2",
	name = "休息室",
	no_fight = true,
	ways = {
		["west"] = "emei/daxiongdian",
	},
}
Room {
	id = "emei/xixiangchi",
	name = "洗象池边",
	ways = {
		["southup"] = "emei/lingyunti",
		["eastdown"] = "emei/zuantianpo2",
		["north"] = "emei/xixiangchi2",
	},
	lengths = {
		["southup"] = 10,
		["eastdown"] = 10,
		["north"] = 10,
	},
	precmds = {
		["southup"] = "#waitbusy",
		["eastdown"] = "#waitbusy",
		["north"] = "#waitbusy",
	},
	blocks = {
		["north"] = {
			{id = "hou zi", exp = 10000},
		},
	},
}
Room {
	id = "emei/xixiangchi2",
	name = "洗象池边",
	ways = {
		["south"] = "emei/xixiangchi",
	},
	lengths = {
		["south"] = 10,
	},
	precmds = {
		["south"] = "#waitbusy",
	},
}
Room {
	id = "emei/yunvfeng",
	name = "玉女峰",
	ways = {
		["northdown"] = "emei/guiyunge",
	},
}
Room {
	id = "emei/zhongfengsi",
	name = "中峰寺",
	ways = {
		["eastdown"] = "emei/shenshuian",
		["northwest"] = "emei/qingyinge",
	},
}
Room {
	id = "emei/zhulin",
	name = "小竹林",
	ways = {
		["#outZl"] = "emei/lengshanlin",
		["north"] = "emei/zhulin",
		["south"] = "emei/zhulin",
		["east"] = "emei/zhulin",
		["west"] = "emei/zhulin",
	},
	nolooks = {
		["#outZl"] = true,
		["north"] = true,
	},
}
Room {
	id = "emei/zuantianpo",
	name = "钻天坡",
	ways = {
		["eastdown"] = "emei/lianhuashi",
		["westup"] = "emei/zuantianpo2",
	},
}
Room {
	id = "emei/zuantianpo2",
	name = "钻天坡",
	ways = {
		["eastdown"] = "emei/zuantianpo",
		["westup"] = "emei/xixiangchi",
	},
}
Room {
	id = "fairyland/conglin2",
	name = "雪山丛林",
	outdoor = "昆仑山",
	ways = {
		["westup"] = "fairyland/xuanya",
		["southdown"] = "group/entry/klclin1",
	},
}
Room {
	id = "fairyland/cuigu",
	name = "洞天福地",
	ways = {
		["eastup"] = "fairyland/shanbi",
		["south"] = "fairyland/cuigu3",
		["north"] = "fairyland/shanlu5",
		["west"] = "fairyland/shanlu3",
	},
}
Room {
	id = "fairyland/cuigu1",
	name = "翠谷",
	ways = {
		["south"] = "fairyland/shanlu6",
	},
}
Room {
	id = "fairyland/cuigu3",
	name = "翠谷",
	ways = {
		["north"] = "fairyland/cuigu",
	},
}
Room {
	id = "fairyland/dapingtai",
	name = "大平台",
	ways = {
		["west"] = "fairyland/dashibi",
	},
}
Room {
	id = "fairyland/dashibi",
	name = "大石壁",
	ways = {
		["east"] = "fairyland/dapingtai",
	},
}
Room {
	id = "fairyland/dating",
	name = "大厅",
	ways = {
		["south"] = "fairyland/hmzhuang",
		["north"] = "fairyland/nuange",
		["east"] = "fairyland/houyuan",
	},
}
Room {
	id = "fairyland/hmzhuang",
	name = "红梅山庄",
	ways = {
		["westdown"] = "fairyland/shanxi",
		["east"] = "fairyland/shanlu2",
		["north"] = "fairyland/dating",
	},
}
Room {
	id = "fairyland/houyuan",
	name = "后院",
	ways = {
		["north"] = "fairyland/lggong",
		["west"] = "fairyland/dating",
	},
}
Room {
	id = "fairyland/lggong",
	name = "灵獒宫",
	ways = {
		["south"] = "fairyland/houyuan",
	},
}
Room {
	id = "fairyland/nuange",
	name = "暖阁",
	ways = {
		["south"] = "fairyland/dating",
	},
}
Room {
	id = "fairyland/pubu",
	name = "瀑布",
	ways = {
		["east"] = "fairyland/shanlu4",
		["southdown"] = "fairyland/tanbian",
	},
}
Room {
	id = "fairyland/shanbi",
	name = "山壁",
	ways = {
		["eastdown"] = "fairyland/shangou",
		["westdown"] = "fairyland/cuigu",
	},
}
Room {
	id = "fairyland/shangou",
	name = "山沟",
	ways = {
		["westup"] = "fairyland/shanbi",
	},
}
Room {
	id = "fairyland/shanlu1",
	name = "山路",
	ways = {
		["east"] = "kunlun/klshanlu",
		["southdown"] = "fairyland/xuedi1",
		["west"] = "fairyland/shanlu2",
	},
}
Room {
	id = "fairyland/shanlu2",
	name = "山路",
	ways = {
		["east"] = "fairyland/shanlu1",
		["west"] = "fairyland/hmzhuang",
	},
}
Room {
	id = "fairyland/shanlu3",
	name = "翠谷",
	ways = {
		["east"] = "fairyland/cuigu",
		["west"] = "fairyland/shanlu4",
	},
}
Room {
	id = "fairyland/shanlu4",
	name = "翠谷",
	ways = {
		["east"] = "fairyland/shanlu3",
		["west"] = "fairyland/pubu",
	},
}
Room {
	id = "fairyland/shanlu5",
	name = "翠谷",
	ways = {
		["south"] = "fairyland/cuigu",
		["north"] = "fairyland/shanlu6",
	},
}
Room {
	id = "fairyland/shanlu6",
	name = "翠谷",
	ways = {
		["south"] = "fairyland/shanlu5",
		["north"] = "fairyland/cuigu1",
	},
}
Room {
	id = "fairyland/shanxi",
	name = "山溪边",
	ways = {
		["eastup"] = "fairyland/hmzhuang",
		["westup"] = "group/entry/klclin1",
	},
	nolooks = {
		["down"] = true,
	},
}
Room {
	id = "fairyland/tanbian",
	name = "翠谷",
	no_fight = true,
	ways = {
		["northup"] = "fairyland/pubu",
	},
}
Room {
	id = "fairyland/xuanya",
	name = "悬崖",
	ways = {
		["eastdown"] = "fairyland/conglin2",
	},
}
Room {
	id = "fairyland/xuedi",
	name = "雪地",
	ways = {
		["northeast"] = "fairyland/xuedi1",
	},
}
Room {
	id = "fairyland/xuedi1",
	name = "雪地",
	ways = {
		["northup"] = "fairyland/shanlu1",
		["southwest"] = "fairyland/xuedi",
	},
}
Room {
	id = "foshan/alleyway",
	name = "小巷",
	ways = {
		["south"] = "foshan/zhongjia",
		["west"] = "foshan/nanjie2",
	},
}
Room {
	id = "foshan/beidimiao",
	name = "北帝庙",
	ways = {
		["south"] = "foshan/xijie2",
	},
}
Room {
	id = "foshan/beijie",
	name = "佛山北街",
	ways = {
		["south"] = "foshan/guangchang",
		["north"] = "foshan/beimen",
	},
}
Room {
	id = "foshan/beimen",
	name = "佛山北门",
	ways = {
		["south"] = "foshan/beijie",
		["north"] = "foshan/lingnan",
	},
}
Room {
	id = "foshan/caidi",
	name = "菜地",
	ways = {
		["west"] = "foshan/zhongjia",
	},
}
Room {
	id = "foshan/caomeidi",
	name = "草莓地",
	ways = {
		["south"] = "foshan/dukou_tanbao",
		["northeast"] = "foshan/shulin1",
		["west"] = "foshan/shulin2",
	},
}
Room {
	id = "foshan/dangpu",
	name = "当铺",
	no_fight = true,
	ways = {
		["north"] = "foshan/dongjie3",
	},
}
Room {
	id = "foshan/dating",
	name = "凤府大厅",
	ways = {
		["south"] = "foshan/shufang",
		["west"] = "foshan/dayuan",
	},
}
Room {
	id = "foshan/dayuan",
	name = "凤府大院",
	ways = {
		["east"] = "foshan/dating",
		["west"] = "foshan/villa-gate",
	},
}
Room {
	id = "foshan/dongjie",
	name = "佛山东街",
	ways = {
		["north"] = "foshan/grocer",
		["east"] = "foshan/dongjie2",
		["west"] = "foshan/guangchang",
	},
}
Room {
	id = "foshan/dongjie2",
	name = "佛山东街",
	ways = {
		["south"] = "foshan/ironsmith",
		["north"] = "foshan/shaobing",
		["east"] = "foshan/dongjie3",
		["west"] = "foshan/dongjie",
	},
}
Room {
	id = "foshan/dongjie3",
	name = "佛山东街",
	ways = {
		["south"] = "foshan/dangpu",
		["east"] = "foshan/dongmen",
		["west"] = "foshan/dongjie2",
	},
}
Room {
	id = "foshan/dongmen",
	name = "佛山东门",
	ways = {
		["east"] = "foshan/road8",
		["west"] = "foshan/dongjie3",
	},
}
Room {
	id = "foshan/duchang",
	name = "英雄会馆",
	ways = {
		["north"] = "foshan/xijie",
	},
}
Room {
	id = "foshan/dukou",
	name = "老渡口",
	no_fight = true,
	ways = {
		["north"] = "foshan/shulin_dzd",
	},
}
Room {
	id = "foshan/dukou_tanbao",
	name = "老渡口",
	no_fight = true,
	ways = {
		["north"] = "foshan/caomeidi",
	},
}
Room {
	id = "foshan/fenchang",
	name = "坟场",
	ways = {
		["southwest"] = "foshan/xiaolu1",
	},
}
Room {
	id = "foshan/grocer",
	name = "杂货店",
	ways = {
		["south"] = "foshan/dongjie",
	},
}
Room {
	id = "foshan/guangchang",
	name = "佛山广场",
	ways = {
		["south"] = "foshan/herohotel",
		["east"] = "foshan/dongjie",
		["north"] = "foshan/beijie",
		["west"] = "foshan/xijie",
	},
}
Room {
	id = "foshan/hanghai_room",
	name = "【南海探宝】船只",
	ways = {
		["out"] = "foshan/dukou_tanbao",
	},
}
Room {
	id = "foshan/herohotel",
	name = "英雄楼",
	ways = {
		["south"] = "foshan/nanjie",
		["north"] = "foshan/guangchang",
		["up"] = "foshan/herohotel2",
	},
}
Room {
	id = "foshan/herohotel2",
	name = "英雄楼二楼",
	ways = {
		["down"] = "foshan/herohotel",
	},
}
Room {
	id = "foshan/ironsmith",
	name = "铁匠铺",
	ways = {
		["north"] = "foshan/dongjie2",
	},
}
Room {
	id = "foshan/kedian",
	name = "英雄客栈",
	no_fight = true,
	ways = {
		["east"] = "foshan/nanjie",
	},
	nolooks = {
		["up"] = true,
	},
}
Room {
	id = "foshan/kedian2",
	name = "客栈二楼",
	ways = {
		["enter"] = "foshan/kedian3",
		["down"] = "foshan/kedian",
	},
}
Room {
	id = "foshan/kedian3",
	name = "客店二楼",
	no_fight = true,
	ways = {
		["out"] = "foshan/kedian2",
	},
}
Room {
	id = "foshan/lingnan",
	name = "岭南",
	ways = {
		["south"] = "foshan/beimen",
		["north"] = "foshan/xiaolu1",
	},
}
Room {
	id = "foshan/milin",
	name = "密林",
	ways = {
		["southwest"] = "foshan/xiaolu3",
	},
}
Room {
	id = "foshan/mishi",
	name = "密室",
	ways = {
		["up"] = "foshan/shufang",
	},
}
Room {
	id = "foshan/nanjie",
	name = "佛山南街",
	ways = {
		["south"] = "foshan/nanjie2",
		["east"] = "foshan/villa-gate",
		["north"] = "foshan/herohotel",
		["west"] = "foshan/kedian",
	},
}
Room {
	id = "foshan/nanjie2",
	name = "佛山南街",
	ways = {
		["south"] = "foshan/nanmen",
		["north"] = "foshan/nanjie",
		["east"] = "foshan/alleyway",
		["west"] = "foshan/noshery",
	},
}
Room {
	id = "foshan/nanmen",
	name = "南门",
	ways = {
		["south"] = "foshan/shulin1",
		["north"] = "foshan/nanjie2",
	},
}
Room {
	id = "foshan/noshery",
	name = "小吃店",
	ways = {
		["east"] = "foshan/nanjie2",
	},
}
Room {
	id = "foshan/road1",
	name = "林间道",
	ways = {
		["east"] = "foshan/ximen",
		["west"] = "foshan/road2",
	},
}
Room {
	id = "foshan/road10",
	name = "林间道",
	ways = {
		["southeast"] = "foshan/road12",
		["northeast"] = "foshan/road11",
		["west"] = "foshan/road9",
	},
}
Room {
	id = "foshan/road11",
	name = "林间道",
	ways = {
		["southwest"] = "foshan/road10",
		["northeast"] = "group/entry/fsroad13",
	},
}
Room {
	id = "foshan/road12",
	name = "林间道",
	ways = {
		["northwest"] = "foshan/road10",
	},
}
Room {
	id = "foshan/road14",
	name = "林间道",
	ways = {
		["southwest"] = "group/entry/fsroad13",
		["north"] = "fuzhou/bridge",
	},
}
Room {
	id = "foshan/road2",
	name = "林间道",
	ways = {
		["east"] = "foshan/road1",
		["west"] = "foshan/road3",
	},
}
Room {
	id = "foshan/road3",
	name = "林间道",
	ways = {
		["northwest"] = "foshan/road4",
		["east"] = "foshan/road2",
	},
}
Room {
	id = "foshan/road4",
	name = "林间道",
	ways = {
		["southeast"] = "foshan/road3",
		["southwest"] = "group/entry/fsroad5",
	},
}
Room {
	id = "foshan/road6",
	name = "林间道",
	ways = {
		["east"] = "group/entry/fsroad5",
		["west"] = "dali/dalisouth/jiangbei",
	},
}
Room {
	id = "foshan/road8",
	name = "林间道",
	ways = {
		["east"] = "foshan/road9",
		["west"] = "foshan/dongmen",
	},
}
Room {
	id = "foshan/road9",
	name = "林间道",
	ways = {
		["east"] = "foshan/road10",
		["west"] = "foshan/road8",
	},
}
Room {
	id = "foshan/shaobing",
	name = "烧饼摊",
	ways = {
		["south"] = "foshan/dongjie2",
	},
}
Room {
	id = "foshan/shufang",
	name = "书房",
	ways = {
		["north"] = "foshan/dating",
	},
}
Room {
	id = "foshan/shulin1",
	name = "树林",
	ways = {
		["southeast"] = "foshan/shulin_dzd",
		["southwest"] = "foshan/caomeidi",
		["north"] = "foshan/nanmen",
	},
}
Room {
	id = "foshan/shulin2",
	name = "树林",
	ways = {
		["east"] = "foshan/caomeidi",
	},
}
Room {
	id = "foshan/shulin_dzd",
	name = "树林",
	ways = {
		["south"] = "foshan/dukou",
		["northwest"] = "foshan/shulin1",
	},
}
Room {
	id = "foshan/villa-gate",
	name = "凤府大门",
	ways = {
		["east"] = "foshan/dayuan",
		["west"] = "foshan/nanjie",
	},
}
Room {
	id = "foshan/xiaolu1",
	name = "小路",
	ways = {
		["northup"] = "foshan/xiaolu2",
		["south"] = "foshan/lingnan",
		["northwest"] = "foshan/zumiao",
		["northeast"] = "foshan/fenchang",
	},
}
Room {
	id = "foshan/xiaolu2",
	name = "小路",
	ways = {
		["northup"] = "foshan/xiaolu3",
		["southdown"] = "foshan/xiaolu1",
	},
}
Room {
	id = "foshan/xiaolu3",
	name = "小路",
	ways = {
		["north"] = "fuzhou/wroad10",
		["northeast"] = "foshan/milin",
		["southdown"] = "foshan/xiaolu2",
	},
}
Room {
	id = "foshan/xijie",
	name = "佛山西街",
	ways = {
		["south"] = "foshan/duchang",
		["east"] = "foshan/guangchang",
		["west"] = "foshan/xijie2",
	},
}
Room {
	id = "foshan/xijie2",
	name = "佛山西街",
	ways = {
		["east"] = "foshan/xijie",
		["north"] = "foshan/beidimiao",
		["west"] = "foshan/ximen",
	},
}
Room {
	id = "foshan/ximen",
	name = "西门",
	ways = {
		["east"] = "foshan/xijie2",
		["west"] = "foshan/road1",
	},
}
Room {
	id = "foshan/zhongjia",
	name = "钟家",
	ways = {
		["east"] = "foshan/caidi",
		["north"] = "foshan/alleyway",
	},
	nolooks = {
		["east"] = true,
	},
	precmds = {
		["east"] = "open door",
	},
}
Room {
	id = "foshan/zumiao",
	name = "佛山祖庙",
	ways = {
		["southeast"] = "foshan/xiaolu1",
	},
}
Room {
	id = "fuzhou/bank",
	name = "通宝斋",
	ways = {
		["west"] = "fuzhou/dongxiang2",
	},
}
Room {
	id = "fuzhou/beijie",
	name = "北街",
	ways = {
		["south"] = "fuzhou/zhongxin",
		["north"] = "fuzhou/beimen",
	},
}
Room {
	id = "fuzhou/beimen",
	name = "北门",
	ways = {
		["south"] = "fuzhou/beijie",
		["north"] = "fuzhou/road5",
	},
}
Room {
	id = "fuzhou/biaoju",
	name = "福威镖局",
	ways = {
		["south"] = "fuzhou/zhengting",
		["east"] = "fuzhou/zhangfang",
		["north"] = "fuzhou/xijie",
	},
}
Room {
	id = "fuzhou/bridge",
	name = "南门吊桥",
	ways = {
		["south"] = "foshan/road14",
		["north"] = "fuzhou/nanmen",
	},
	nolooks = {
		["north"] = true,
	},
	lengths = {
		["north"] = "if minutes() > 1080 and minutes() < 1410 then return false else return 1 end",
	},
}
Room {
	id = "fuzhou/chalou",
	name = "茶楼",
	ways = {
		["east"] = "fuzhou/xixiang4",
		["up"] = "fuzhou/chalou2",
	},
}
Room {
	id = "fuzhou/chalou2",
	name = "茶楼二楼",
	ways = {
		["down"] = "fuzhou/chalou",
	},
}
Room {
	id = "fuzhou/dangpu",
	name = "当铺",
	no_fight = true,
	ways = {
		["south"] = "fuzhou/xijie",
	},
}
Room {
	id = "fuzhou/dongjie",
	name = "东街",
	ways = {
		["south"] = "fuzhou/shiqiao",
		["east"] = "fuzhou/haigang",
		["north"] = "fuzhou/dongxiang",
		["west"] = "fuzhou/zhongxin",
	},
}
Room {
	id = "fuzhou/dongxiang",
	name = "东巷",
	ways = {
		["south"] = "fuzhou/dongjie",
		["east"] = "fuzhou/jiuguan",
		["north"] = "fuzhou/dongxiang2",
	},
}
Room {
	id = "fuzhou/dongxiang2",
	name = "东巷",
	ways = {
		["south"] = "fuzhou/dongxiang",
		["east"] = "fuzhou/bank",
	},
}
Room {
	id = "fuzhou/feiyuan",
	name = "废园",
	ways = {
		["west"] = "fuzhou/xyxiang",
	},
}
Room {
	id = "fuzhou/fenduo1",
	name = "船舱",
	ways = {
		["out"] = "fuzhou/yuchuan5",
	},
}
Room {
	id = "fuzhou/haigang",
	name = "海港",
	ways = {
		["east"] = "fuzhou/yugang",
		["west"] = "fuzhou/dongjie",
		["swim"] = "fuzhou/island1",
	},
	nolooks = {
		["swim"] = true,
	},
	lengths = {
		["swim"] = 10,
	},
}
Room {
	id = "fuzhou/houyuan",
	name = "老宅后院",
	ways = {
		["down"] = "fuzhou/well",
	},
}
Room {
	id = "fuzhou/huadian",
	name = "花店",
	ways = {
		["east"] = "fuzhou/xixiang3",
	},
}
Room {
	id = "fuzhou/island1",
	name = "小岛",
	ways = {
		["north"] = "fuzhou/island3",
		["swim"] = "fuzhou/haigang",
	},
	nolooks = {
		["swim"] = true,
		["east"] = true,
		["west"] = true,
		["south"] = true,
	},
	lengths = {
		["swim"] = 10,
	},
}
Room {
	id = "fuzhou/island2",
	name = "沙滩",
	ways = {
		["west"] = "fuzhou/island1",
	},
	nolooks = {
		["east"] = true,
		["south"] = true,
		["north"] = true,
	},
}
Room {
	id = "fuzhou/island3",
	name = "沙滩",
	ways = {
		["north"] = "fuzhou/rock",
		["east"] = "fuzhou/island1",
		["west"] = "fuzhou/island4",
	},
}
Room {
	id = "fuzhou/island4",
	name = "沙滩",
	ways = {
		["south"] = "fuzhou/island5",
		["east"] = "fuzhou/island3",
		["west"] = "fuzhou/island1",
	},
}
Room {
	id = "fuzhou/island5",
	name = "沙滩",
	ways = {
		["eastup"] = "fuzhou/lagoon",
		["north"] = "fuzhou/island4",
	},
}
Room {
	id = "fuzhou/jiuguan",
	name = "酒馆",
	ways = {
		["west"] = "fuzhou/dongxiang",
	},
}
Room {
	id = "fuzhou/kezhan",
	name = "吉祥客栈",
	no_fight = true,
	ways = {
		["north"] = "fuzhou/xixiang4",
		-- ["up"] = "fuzhou/kezhan2",
	},
	nolooks = {
		["up"] = true,
	},
}
Room {
	id = "fuzhou/kezhan2",
	name = "客栈二楼",
	no_fight = true,
	ways = {
		["down"] = "fuzhou/kezhan",
	},
}
Room {
	id = "fuzhou/lagoon",
	name = "礁石",
	ways = {
		["westdown"] = "fuzhou/island5",
	},
}
Room {
	id = "fuzhou/laozhai",
	name = "向阳老宅",
	ways = {
		["west"] = "fuzhou/xyxiang2",
	},
}
Room {
	id = "fuzhou/liang",
	name = "密室房梁",
	ways = {
		["down"] = "fuzhou/mishi",
	},
}
Room {
	id = "fuzhou/midao",
	name = "密道",
	ways = {
		["out"] = "fuzhou/well",
	},
}
Room {
	id = "fuzhou/minzhai",
	name = "民宅",
	ways = {
		["east"] = "fuzhou/xixiang",
	},
}
Room {
	id = "fuzhou/mishi",
	name = "密室",
	ways = {
		["out"] = "fuzhou/midao",
	},
}
Room {
	id = "fuzhou/mupeng",
	name = "小木棚",
	ways = {
		["out"] = "fuzhou/rock",
	},
}
Room {
	id = "fuzhou/nanjie",
	name = "南街",
	ways = {
		["south"] = "fuzhou/nanmen",
		["north"] = "fuzhou/zhongxin",
	},
}
Room {
	id = "fuzhou/nanmen",
	name = "南门",
	ways = {
		["north"] = "fuzhou/nanjie",
		["south"] = "fuzhou/bridge",
	},
	nolooks = {
		["south"] = true,
	},
	lengths = {
		["south"] = "if minutes() > 1080 and minutes() < 1410 then return false else return 1 end",
	},
}
Room {
	id = "fuzhou/road1",
	name = "山路",
	ways = {
		["southwest"] = "fuzhou/road2",
		["northeast"] = "ningbo/ttcsi",
	},
}
Room {
	id = "fuzhou/road2",
	name = "山路",
	ways = {
		["southeast"] = "putian/road01",
		["southwest"] = "group/entry/fzroad3",
		["northeast"] = "fuzhou/road1",
	},
}
Room {
	id = "fuzhou/road4",
	name = "山路",
	ways = {
		["south"] = "fuzhou/road5",
		["north"] = "group/entry/fzroad3",
	},
}
Room {
	id = "fuzhou/road5",
	name = "武夷山路",
	ways = {
		["south"] = "fuzhou/beimen",
		["north"] = "fuzhou/road4",
	},
}
Room {
	id = "fuzhou/rock",
	name = "巨岩",
	ways = {
		["south"] = "fuzhou/island3",
		["enter"] = "fuzhou/mupeng",
	},
}
Room {
	id = "fuzhou/shanpo",
	name = "山坡",
	ways = {
		["south"] = "fuzhou/wroad2",
	},
}
Room {
	id = "fuzhou/shiqiao",
	name = "石桥",
	ways = {
		["south"] = "fuzhou/xyxiang",
		["north"] = "fuzhou/dongjie",
	},
}
Room {
	id = "fuzhou/well",
	name = "井中",
	ways = {
		["down"] = "fuzhou/well1",
		["up"] = "fuzhou/houyuan",
	},
}
Room {
	id = "fuzhou/well1",
	name = "井底",
	ways = {
		["up"] = "fuzhou/well",
	},
}
Room {
	id = "fuzhou/wjiuguan",
	name = "小酒馆",
	ways = {
		["east"] = "fuzhou/wroad2",
	},
}
Room {
	id = "fuzhou/wroad",
	name = "山路",
	ways = {
		["northwest"] = "fuzhou/wroad2",
		["east"] = "fuzhou/ximen",
	},
	nolooks = {
		["east"] = true,
	},
	lengths = {
		["east"] = "if minutes() > 1080 and minutes() < 1410 then return false else return 1 end",
	},
}
Room {
	id = "fuzhou/wroad10",
	name = "山路",
	ways = {
		["south"] = "foshan/xiaolu3",
		["east"] = "fuzhou/wroad9",
	},
}
Room {
	id = "fuzhou/wroad2",
	name = "小路",
	ways = {
		["southeast"] = "fuzhou/wroad",
		["southwest"] = "fuzhou/wroad3",
		["north"] = "fuzhou/shanpo",
		["west"] = "fuzhou/wjiuguan",
	},
}
Room {
	id = "fuzhou/wroad3",
	name = "山路",
	ways = {
		["southwest"] = "fuzhou/wroad4",
		["northeast"] = "fuzhou/wroad2",
	},
}
Room {
	id = "fuzhou/wroad4",
	name = "山路",
	ways = {
		["northeast"] = "fuzhou/wroad3",
		["west"] = "group/entry/fzwroad5",
	},
}
Room {
	id = "fuzhou/wroad6",
	name = "山路",
	ways = {
		["southwest"] = "fuzhou/wroad7",
		["northeast"] = "group/entry/fzwroad5",
	},
}
Room {
	id = "fuzhou/wroad7",
	name = "山路",
	ways = {
		["southwest"] = "fuzhou/wroad8",
		["northeast"] = "fuzhou/wroad6",
	},
}
Room {
	id = "fuzhou/wroad8",
	name = "山路",
	ways = {
		["southwest"] = "fuzhou/wroad9",
		["northeast"] = "fuzhou/wroad7",
	},
}
Room {
	id = "fuzhou/wroad9",
	name = "山路",
	ways = {
		["northeast"] = "fuzhou/wroad8",
		["west"] = "fuzhou/wroad10",
	},
}
Room {
	id = "fuzhou/xijie",
	name = "西街",
	ways = {
		["south"] = "fuzhou/biaoju",
		["east"] = "fuzhou/zhongxin",
		["north"] = "fuzhou/dangpu",
		["west"] = "fuzhou/xijie2",
	},
}
Room {
	id = "fuzhou/xijie2",
	name = "西街",
	ways = {
		["south"] = "fuzhou/xixiang3",
		["north"] = "fuzhou/xixiang2",
		["east"] = "fuzhou/xijie",
		["west"] = "fuzhou/ximen",
	},
}
Room {
	id = "fuzhou/ximen",
	name = "西门",
	ways = {
		["east"] = "fuzhou/xijie2",
		["west"] = "fuzhou/wroad",
	},
	nolooks = {
		["west"] = true,
	},
	lengths = {
		["west"] = "if minutes() > 1080 and minutes() < 1410 then return false else return 1 end",
	},
}
Room {
	id = "fuzhou/xixiang",
	name = "西巷",
	ways = {
		["south"] = "fuzhou/xixiang2",
		["east"] = "fuzhou/zahuopu",
		["west"] = "fuzhou/minzhai",
	},
}
Room {
	id = "fuzhou/xixiang2",
	name = "西巷",
	ways = {
		["south"] = "fuzhou/xijie2",
		["north"] = "fuzhou/xixiang",
		["west"] = "fuzhou/yaopu",
	},
}
Room {
	id = "fuzhou/xixiang3",
	name = "西巷",
	ways = {
		["south"] = "fuzhou/xixiang4",
		["north"] = "fuzhou/xijie2",
		["west"] = "fuzhou/huadian",
	},
}
Room {
	id = "fuzhou/xixiang4",
	name = "西巷",
	ways = {
		["south"] = "fuzhou/kezhan",
		["north"] = "fuzhou/xixiang3",
		["west"] = "fuzhou/chalou",
	},
}
Room {
	id = "fuzhou/xyxiang",
	name = "向阳巷",
	ways = {
		["south"] = "fuzhou/xyxiang2",
		["north"] = "fuzhou/shiqiao",
		["east"] = "fuzhou/feiyuan",
	},
}
Room {
	id = "fuzhou/xyxiang2",
	name = "向阳巷",
	ways = {
		["north"] = "fuzhou/xyxiang",
		["east"] = "fuzhou/laozhai",
	},
}
Room {
	id = "fuzhou/yaopu",
	name = "药铺",
	ways = {
		["east"] = "fuzhou/xixiang2",
	},
}
Room {
	id = "fuzhou/yuchuan1",
	name = "渔船",
	ways = {
		["south"] = "fuzhou/yuchuan1",
		["east"] = "fuzhou/yuchuan2",
		["north"] = "fuzhou/yuchuan1",
		["west"] = "fuzhou/yuchuan1",
		["out"] = "fuzhou/yugang",
	},
}
Room {
	id = "fuzhou/yuchuan2",
	name = "渔船",
	ways = {
		["south"] = "fuzhou/yuchuan2",
		["east"] = "fuzhou/yuchuan3",
		["north"] = "fuzhou/yuchuan2",
		["west"] = "fuzhou/yuchuan1",
	},
}
Room {
	id = "fuzhou/yuchuan3",
	name = "渔船",
	ways = {
		["south"] = "fuzhou/yuchuan3",
		["east"] = "fuzhou/yuchuan4",
		["north"] = "fuzhou/yuchuan3",
		["west"] = "fuzhou/yuchuan2",
	},
}
Room {
	id = "fuzhou/yuchuan4",
	name = "渔船",
	ways = {
		["south"] = "fuzhou/yuchuan4",
		["east"] = "fuzhou/yuchuan5",
		["north"] = "fuzhou/yuchuan4",
		["west"] = "fuzhou/yuchuan3",
	},
}
Room {
	id = "fuzhou/yuchuan5",
	name = "渔船",
	ways = {
		["south"] = "fuzhou/yuchuan5",
		["enter"] = "fuzhou/fenduo1",
		["north"] = "fuzhou/yuchuan5",
		["east"] = "fuzhou/yuchuan2",
		["west"] = "fuzhou/yuchuan4",
	},
}
Room {
	id = "fuzhou/yugang",
	name = "渔港码头",
	ways = {
		["south"] = "fuzhou/yuchuan1",
		["enter"] = "fuzhou/yuchuan1",
		["west"] = "fuzhou/haigang",
	},
}
Room {
	id = "fuzhou/zahuopu",
	name = "杂货铺",
	ways = {
		["west"] = "fuzhou/xixiang",
	},
}
Room {
	id = "fuzhou/zhangfang",
	name = "镖局帐房",
	ways = {
		["west"] = "fuzhou/biaoju",
	},
}
Room {
	id = "fuzhou/zhengting",
	name = "镖局正厅",
	no_fight = true,
	ways = {
		["north"] = "fuzhou/biaoju",
	},
}
Room {
	id = "fuzhou/zhongxin",
	name = "城中心",
	ways = {
		["south"] = "fuzhou/nanjie",
		["east"] = "fuzhou/dongjie",
		["north"] = "fuzhou/beijie",
		["west"] = "fuzhou/xijie",
	},
}
Room {
	id = "gb/duanya",
	name = "断崖",
	ways = {
		["north"] = "shaolin/yidao4",
	},
}
Room {
	id = "gb/houyuan",
	name = "后院",
	ways = {
		["south"] = "gb/pomiao",
	},
	nolooks = {
		["south"] = true,
	},
	precmds = {
		["south"] = "open door",
	},
}
Room {
	id = "gb/kongdi2",
	name = "空地",
	ways = {
		["east"] = "gb/xinglin9",
	},
}
Room {
	id = "gb/liangcang1",
	name = "后仓",
	ways = {
		["northup"] = "gb/xiaodao",
		["south"] = "gb/liangcang2",
	},
}
Room {
	id = "gb/liangcang2",
	name = "中仓",
	ways = {
		["south"] = "gb/liangcang3",
		["east"] = "gb/liangcang4",
		["north"] = "gb/liangcang1",
		["west"] = "gb/liangcang5",
	},
}
Room {
	id = "gb/liangcang3",
	name = "前仓",
	ways = {
		["north"] = "gb/liangcang2",
	},
}
Room {
	id = "gb/liangcang4",
	name = "左仓",
	ways = {
		["west"] = "gb/liangcang2",
	},
}
Room {
	id = "gb/liangcang5",
	name = "右仓",
	ways = {
		["east"] = "gb/liangcang2",
	},
}
Room {
	id = "gb/pomiao",
	name = "土地庙",
	ways = {
		["south"] = "gb/xinglin9",
		["north"] = "gb/houyuan",
	},
	nolooks = {
		["north"] = true,
	},
	precmds = {
		["north"] = "open door",
	},
}
Room {
	id = "gb/tianjing",
	name = "田径",
	ways = {
		["east"] = "suzhou/qsgdao6",
		["north"] = "gb/xinglin1",
	},
}
Room {
	id = "gb/xiaodao",
	name = "小路",
	ways = {
		["northup"] = "gb/yading",
		["southdown"] = "gb/liangcang1",
	},
}
Room {
	id = "gb/xinglin1",
	name = "杏子林",
	ways = {
		["south"] = "gb/tianjing",
		["east"] = "gb/xinglin2",
		["north"] = "gb/xinglin1",
		["west"] = "gb/xinglin1",
	},
}
Room {
	id = "gb/xinglin2",
	name = "杏子林",
	ways = {
		["south"] = "gb/tianjing",
		["north"] = "gb/xinglin3",
		["east"] = "gb/xinglin2",
		["west"] = "gb/xinglin2",
	},
}
Room {
	id = "gb/xinglin3",
	name = "杏子林",
	ways = {
		["south"] = "gb/tianjing",
		["east"] = "gb/xinglin3",
		["north"] = "gb/xinglin3",
		["west"] = "gb/xinglin4",
	},
}
Room {
	id = "gb/xinglin4",
	name = "杏子林",
	ways = {
		["south"] = "gb/tianjing",
		["north"] = "gb/xinglin5",
		["east"] = "gb/xinglin4",
		["west"] = "gb/xinglin4",
	},
}
Room {
	id = "gb/xinglin5",
	name = "杏子林",
	ways = {
		["south"] = "gb/tianjing",
		["east"] = "gb/xinglin6",
		["north"] = "gb/xinglin5",
		["west"] = "gb/xinglin5",
	},
}
Room {
	id = "gb/xinglin6",
	name = "杏子林",
	ways = {
		["south"] = "gb/tianjing",
		["north"] = "gb/xinglin6",
		["east"] = "gb/xinglin6",
		["west"] = "gb/xinglin7",
	},
}
Room {
	id = "gb/xinglin7",
	name = "杏子林",
	ways = {
		["south"] = "gb/tianjing",
		["north"] = "gb/xinglin8",
		["east"] = "gb/xinglin7",
		["west"] = "gb/xinglin7",
	},
}
Room {
	id = "gb/xinglin8",
	name = "杏子林",
	ways = {
		["south"] = "gb/xinglin7",
		["north"] = "gb/xinglin9",
	},
}
Room {
	id = "gb/xinglin9",
	name = "杏子林",
	ways = {
		["south"] = "gb/xinglin8",
		["north"] = "gb/pomiao",
		["west"] = "gb/kongdi2",
	},
}
Room {
	id = "gb/yading",
	name = "崖顶",
	ways = {
		["down"] = "nanyang/duanya",
		["southdown"] = "gb/xiaodao",
	},
}
Room {
	id = "gb/zhongjun1",
	name = "中军辕门",
	ways = {
		["north"] = "gb/zhongjun2",
	},
}
Room {
	id = "gb/zhongjun2",
	name = "中军",
	ways = {
		["south"] = "gb/zhongjun1",
		["north"] = "gb/zhongjun3",
	},
}
Room {
	id = "gb/zhongjun3",
	name = "中军",
	ways = {
		["south"] = "gb/zhongjun2",
		["north"] = "gb/zhongjun4",
	},
}
Room {
	id = "gb/zhongjun4",
	name = "中军",
	ways = {
		["south"] = "gb/zhongjun3",
		["north"] = "gb/zhongjun5",
	},
}
Room {
	id = "gb/zhongjun5",
	name = "中军大帐",
	ways = {
		["south"] = "gb/zhongjun4",
	},
}
Room {
	id = "group/cailiao-hang",
	outdoor = "成都城",
	name = "材料行",
	ways = {
		["south"] = "chengdu/ddajie1",
	},
}
Room {
	id = "group/entry/caeroad3",
	name = "土路",
	outdoor = "长安城",
	ways = {
		["southeast"] = "village/shilu5",
		["west"] = "changan/eastroad2",
	},
}
Room {
	id = "group/entry/canroad6",
	name = "土路",
	outdoor = "长安城",
	ways = {
		["southwest"] = "changan/northroad5",
		["northdown"] = "changan/northroad7",
	},
}
Room {
	id = "group/entry/cderoad4",
	name = "大道",
	outdoor = "成都城",
	ways = {
		["east"] = "xiangyang/xiaolu2",
		["west"] = "chengdu/eroad3",
	},
}
Room {
	id = "group/entry/cdtulu2",
	name = "土路",
	outdoor = "峨嵋山",
	ways = {
		["southwest"] = "chengdu/tulu1",
		["northeast"] = "chengdu/tulu3",
	},
}
Room {
	id = "group/entry/czeroad3",
	name = "大驿道",
	outdoor = "沧州城",
	ways = {
		["southwest"] = "cangzhou/eroad2",
		["northeast"] = "cangzhou/eroad4",
	},
}
Room {
	id = "group/entry/czwroad2",
	name = "驿道",
	outdoor = "沧州城",
	ways = {
		["southwest"] = "cangzhou/wroad3",
		["east"] = "cangzhou/wroad1",
	},
}
Room {
	id = "group/entry/dleyd",
	name = "燕子洞",
	outdoor = "大理城东",
	ways = {
		["enter"] = "dali/dalieast/ydk",
		["northdown"] = "dali/dalieast/chengj",
	},
}
Room {
	id = "group/entry/dlndao2",
	name = "大道",
	outdoor = "大理城北",
	ways = {
		["south"] = "dali/dadao3",
		["north"] = "dali/dadao1",
	},
}
Room {
	id = "group/entry/dlndao5",
	name = "大道",
	outdoor = "玉虚观",
	ways = {
		["southeast"] = "dali/yuxu/shangang",
		["west"] = "dali/yuxu/guanmen",
	},
}
Room {
	id = "group/entry/dlstulin",
	name = "土林",
	outdoor = "大理城南",
	ways = {
		["southup"] = "dali/dalisouth/xiushan",
		["north"] = "dali/dalisouth/dg1",
		["west"] = "dali/yideng/fanpu",
	},
}
Room {
	id = "group/entry/dlwqunsh",
	name = "梅里雪山",
	outdoor = "大理城西",
	ways = {
		["southeast"] = "dali/daliwest/futiao",
		["southwest"] = "dali/daliwest/tianchi1",
	},
}
Room {
	id = "group/entry/fsroad13",
	name = "林间道",
	outdoor = "佛山镇",
	ways = {
		["southwest"] = "foshan/road11",
		["northeast"] = "foshan/road14",
	},
}
Room {
	id = "group/entry/fsroad5",
	name = "林间道",
	outdoor = "佛山镇",
	ways = {
		["northeast"] = "foshan/road4",
		["west"] = "foshan/road6",
	},
}
Room {
	id = "group/entry/fzroad3",
	name = "山路",
	outdoor = "福州城",
	ways = {
		["south"] = "fuzhou/road4",
		["northeast"] = "fuzhou/road2",
	},
}
Room {
	id = "group/entry/fzwroad5",
	name = "山路",
	outdoor = "福州城",
	ways = {
		["southwest"] = "fuzhou/wroad6",
		["east"] = "fuzhou/wroad4",
	},
}
Room {
	id = "group/entry/gmchang",
	name = "终南广场",
	outdoor = "终南山",
	ways = {
		["southeast"] = "gumu/jishi",
		["northwest"] = "gumu/xiaolu2",
	},
}
Room {
	id = "group/entry/hhshulin5",
	name = "树林",
	outdoor = "黄河流域",
	ways = {
		["southeast"] = "huanghe/shulin4",
		["northeast"] = "huanghe/tiandi2",
		["west"] = "huanghe/shulin6",
	},
}
Room {
	id = "group/entry/hjroad",
	name = "小路",
	outdoor = "回疆草原",
	ways = {
		["westup"] = "hj/shanqiu",
		["east"] = "hj/pmchang",
	},
}
Room {
	id = "group/entry/hmyroad2",
	name = "土路",
	outdoor = "平定州",
	ways = {
		["eastup"] = "hmy/pingding/road3",
		["southwest"] = "hmy/pingding/road1",
	},
}
Room {
	id = "group/entry/hmyroad8",
	name = "土路",
	outdoor = "平定州",
	ways = {
		["southeast"] = "hmy/pingding/road9",
		["west"] = "hmy/pingding/road7",
	},
}
Room {
	id = "group/entry/hzqsd7",
	name = "青石大道",
	outdoor = "杭州城",
	ways = {
		["south"] = "hz/beimen",
		["north"] = "hz/shanlu3",
	},
}
Room {
	id = "group/entry/klclin1",
	name = "雪山丛林",
	outdoor = "昆仑山",
	ways = {
		["northup"] = "fairyland/conglin2",
		["eastdown"] = "fairyland/shanxi",
	},
}
Room {
	id = "group/entry/lzroad1",
	name = "大道",
	outdoor = "兰州城",
	ways = {
		["southwest"] = "lanzhou/road5",
		["northeast"] = "lanzhou/jingyuan",
	},
}
Room {
	id = "group/entry/lzshixia",
	name = "石峡子",
	outdoor = "兰州城",
	ways = {
		["southwest"] = "lanzhou/tumenzi",
		["northeast"] = "lanzhou/bingcao",
	},
}
Room {
	id = "group/entry/lzsroad3",
	name = "大道",
	outdoor = "兰州城",
	ways = {
		["southeast"] = "lanzhou/qingcheng",
		["northwest"] = "lanzhou/sroad2",
	},
}
Room {
	id = "group/entry/mjshamo1",
	name = "大沙漠",
	outdoor = "丝绸之路",
	ways = {
		["northeast"] = "xingxiu/silk6",
		["west"] = "mingjiao/shaqiu1",
	},
}
Room {
	id = "group/entry/mjshan2",
	name = "山路",
	outdoor = "襄阳郊外",
	ways = {
		["south"] = "miaojiang/shandao2",
		["northeast"] = "xiangyang/hunanroad2",
	},
}
Room {
	id = "group/entry/nbqsddao",
	name = "青石官道",
	outdoor = "宁波城",
	ways = {
		["southeast"] = "ningbo/shilu",
		["northwest"] = "ningbo/qsddao1",
	},
}
Room {
	id = "group/entry/slxiaoj1",
	name = "山坡",
	outdoor = "嵩山少林",
	ways = {
		["northup"] = "shaolin/xiaojing2",
		["east"] = "shaolin/shijie1",
	},
}
Room {
	id = "group/entry/sztulu2",
	name = "土路",
	outdoor = "苏州城",
	ways = {
		["southwest"] = "suzhou/jiangbian",
		["northeast"] = "suzhou/tulu1",
	},
}
Room {
	id = "group/entry/thdroad1",
	name = "土路",
	outdoor = "牛家村",
	ways = {
		["southeast"] = "thd/niujia/road2",
		["north"] = "thd/niujia/road",
	},
}
Room {
	id = "group/entry/tsyidao3",
	name = "大驿道",
	outdoor = "泰山",
	ways = {
		["north"] = "taishan/daizong",
		["west"] = "taishan/yidao2",
	},
}
Room {
	id = "group/entry/wdroad7",
	name = "黄土路",
	outdoor = "武当山",
	ways = {
		["east"] = "wudang/wdroad6",
		["west"] = "wudang/wdroad8",
	},
}
Room {
	id = "group/entry/xstulu2",
	name = "藏边土路",
	outdoor = "大雪山",
	ways = {
		["southwest"] = "xueshan/tulu3",
		["northeast"] = "xueshan/tulu1",
	},
}
Room {
	id = "group/entry/xsxiao2",
	name = "湖边小路",
	outdoor = "大雪山",
	ways = {
		["northwest"] = "xueshan/xiaolu1",
		["east"] = "xueshan/xiaolu3",
	},
}
Room {
	id = "group/entry/yzeroad1",
	name = "大驿道",
	outdoor = "扬州城",
	ways = {
		["east"] = "city/eroad2",
		["west"] = "city/dongmen",
	},
}
Room {
	id = "gumu/bzy",
	name = "抱子岩",
	ways = {
		["southup"] = "gumu/lyy",
		["eastdown"] = "gumu/ryy",
	},
}
Room {
	id = "gumu/dongkou",
	name = "洞口",
	ways = {
		["out"] = "gumu/shanxia",
	},
}
Room {
	id = "gumu/fang",
	name = "石室",
	ways = {
		["south"] = "gumu/gmcc",
		["east"] = "gumu/yaofang",
		["north"] = "gumu/gmqs",
	},
}
Room {
	id = "gumu/fchuan",
	name = "樊川",
	ways = {
		["east"] = "xiangyang/shanxiroad1",
		["west"] = "gumu/xiaolu1",
	},
}
Room {
	id = "gumu/gmanhe1",
	name = "暗河",
	ways = {
		["northup"] = "gumu/sshi1",
		["westdown"] = "gumu/gmql1",
	},
}
Room {
	id = "gumu/gmanhe2",
	name = "暗河",
	ways = {
		["northup"] = "gumu/dongkou",
		["eastdown"] = "gumu/gmql2",
	},
}
Room {
	id = "gumu/gmcc",
	name = "储藏室",
	ways = {
		["north"] = "gumu/fang",
	},
}
Room {
	id = "gumu/gmht",
	name = "后堂",
	ways = {
		["south"] = "gumu/gmws",
		["north"] = "gumu/gmws1",
		["east"] = "gumu/gmqs",
		["west"] = "gumu/gmzt",
	},
	nolooks = {
		["south"] = true,
	},
	precmds = {
		["south"] = "open door",
	},
}
Room {
	id = "gumu/gmlg1",
	name = "石室",
	ways = {
		["enter"] = "gumu/gmlg4",
		["north"] = "gumu/gmzt",
	},
	nolooks = {
		["north"] = true,
	},
	precmds = {
		["north"] = "open door",
	},
}
Room {
	id = "gumu/gmlg2",
	name = "练功房",
	ways = {
		["south"] = "gumu/gmzt",
	},
}
Room {
	id = "gumu/gmlg4",
	name = "石室",
	ways = {
		["south"] = "gumu/gmlg5",
		["out"] = "gumu/gmlg1",
	},
}
Room {
	id = "gumu/gmlg5",
	name = "石室",
	ways = {
		["north"] = "gumu/gmlg4",
	},
}
Room {
	id = "gumu/gmlw",
	name = "领悟室",
	ways = {
		["south"] = "gumu/gmqt",
	},
}
Room {
	id = "gumu/gmqc",
	name = "切磋室",
	no_fight = true,
	ways = {
		["north"] = "gumu/gmqt",
	},
}
Room {
	id = "gumu/gmql1",
	name = "潜流",
	ways = {
		["eastup"] = "gumu/gmanhe1",
		["west"] = "gumu/gmql2",
	},
}
Room {
	id = "gumu/gmql2",
	name = "潜流",
	ways = {
		["westup"] = "gumu/gmanhe2",
		["east"] = "gumu/gmql1",
	},
}
Room {
	id = "gumu/gmqs",
	name = "琴室",
	ways = {
		["south"] = "gumu/fang",
		["east"] = "gumu/shitou",
		["north"] = "gumu/jianshi",
		["west"] = "gumu/gmht",
	},
	nolooks = {
		["east"] = true,
	},
	precmds = {
		["east"] = "open door",
	},
}
Room {
	id = "gumu/gmqt",
	name = "前厅",
	ways = {
		["south"] = "gumu/gmqc",
		["east"] = "gumu/gmzt",
		["north"] = "gumu/gmlw",
		["out"] = "gumu/rukou",
	},
}
Room {
	id = "gumu/gmws",
	name = "休息室",
	no_fight = true,
	ways = {
		["north"] = "gumu/gmht",
	},
	nolooks = {
		["north"] = true,
	},
	precmds = {
		["north"] = "open door",
	},
}
Room {
	id = "gumu/gmws1",
	name = "卧室",
	ways = {
		["south"] = "gumu/gmht",
		["#goSs"] = "gumu/ss0",
	},
	nolooks = {
		["#goSs"] = true,
	},
	lengths = {
		["#goSs"] = 100,
	},
}
Room {
	id = "gumu/gmzt",
	name = "中堂",
	ways = {
		["south"] = "gumu/gmlg1",
		["north"] = "gumu/gmlg2",
		["east"] = "gumu/gmht",
		["west"] = "gumu/gmqt",
	},
	nolooks = {
		["south"] = true,
	},
	precmds = {
		["south"] = "open door",
	},
}
Room {
	id = "gumu/guolin1",
	name = "果林",
	ways = {
		["south"] = "gumu/guoyuan",
		["north"] = "gumu/guolin1",
		["east"] = "gumu/guolin1",
		["west"] = "gumu/guolin2",
	},
}
Room {
	id = "gumu/guolin2",
	name = "果林",
	ways = {
		["south"] = "gumu/guolin2",
		["east"] = "gumu/guolin3",
		["north"] = "gumu/guolin2",
		["west"] = "gumu/guolin2",
	},
}
Room {
	id = "gumu/guolin3",
	name = "果林",
	ways = {
		["south"] = "gumu/guolin4",
		["north"] = "gumu/guolin3",
		["east"] = "gumu/guolin3",
		["west"] = "gumu/guolin3",
	},
}
Room {
	id = "gumu/guolin4",
	name = "果林",
	ways = {
		["south"] = "gumu/guolin4",
		["east"] = "gumu/huacong",
		["north"] = "gumu/guolin4",
		["west"] = "gumu/guolin4",
	},
}
Room {
	id = "gumu/guolin5",
	name = "果林",
	ways = {
		["east"] = "gumu/guoyuan",
	},
}
Room {
	id = "gumu/guoyuan",
	name = "果园",
	ways = {
		["eastup"] = "gumu/shanpo",
		["south"] = "gumu/rukou",
		["north"] = "gumu/guolin1",
		["west"] = "gumu/guolin5",
	},
}
Room {
	id = "gumu/huacong",
	name = "红花丛",
	no_fight = true,
	ways = {
		["south"] = "gumu/guolin5",
		["west"] = "gumu/guolin4",
	},
}
Room {
	id = "gumu/jianshi",
	name = "剑室",
	ways = {
		["south"] = "gumu/gmqs",
	},
}
Room {
	id = "gumu/jishi",
	name = "集市",
	ways = {
		["northwest"] = "group/entry/gmchang",
	},
}
Room {
	id = "gumu/jlg",
	name = "金莲阁",
	ways = {
		["northup"] = "gumu/ztm",
		["southup"] = "gumu/ryy",
	},
}
Room {
	id = "gumu/jqg/boat2",
	name = "小舟",
	ways = {
		["out"] = "gumu/jqg/xiaoxi",
	},
}
Room {
	id = "gumu/jqg/boat5",
	name = "小舟",
	ways = {
		["out"] = "gumu/jqg/xibian",
	},
}
Room {
	id = "gumu/jqg/cave3",
	name = "隧洞",
	ways = {
		["west"] = "gumu/jqg/shiyao",
	},
}
Room {
	id = "gumu/jqg/danfang",
	name = "丹房",
	ways = {
		["south"] = "gumu/jqg/lang2",
	},
}
Room {
	id = "gumu/jqg/dashi",
	name = "大室",
	ways = {
		["west"] = "gumu/jqg/xiaoshi",
	},
}
Room {
	id = "gumu/jqg/dating",
	name = "大厅",
	ways = {
		["out"] = "gumu/jqg/shiwu",
		["#goHt"] = "gumu/jqg/houtang",
	},
	nolooks = {
		["#goHt"] = true,
	},
	lengths = {
		["#goHt"] = "if getExp() < 200000 then return false else return 10 end",
	},
}
Room {
	id = "gumu/jqg/fyy",
	name = "飞云岩",
	ways = {
		["northup"] = "gumu/jqg/shanjing",
		["southdown"] = "gumu/jqg/xqx",
	},
}
Room {
	id = "gumu/jqg/glt",
	name = "观澜亭",
	ways = {
		["east"] = "gumu/jqg/xqx",
		["southdown"] = "gumu/jqg/xiaoxi",
	},
}
Room {
	id = "gumu/jqg/houtang",
	name = "后堂",
	no_fight = true,
	ways = {
		["south"] = "gumu/jqg/dating",
		["north"] = "gumu/jqg/lang1",
	},
}
Room {
	id = "gumu/jqg/huacong",
	name = "花丛",
	no_fight = true,
	ways = {
		["west"] = "gumu/jqg/xiaolu",
	},
}
Room {
	id = "gumu/jqg/huayuan",
	name = "花园",
	ways = {
		["south"] = "gumu/jqg/lang1",
	},
}
Room {
	id = "gumu/jqg/jianshi",
	name = "剑室",
	ways = {
		["south"] = "gumu/jqg/lang5",
	},
}
Room {
	id = "gumu/jqg/lang1",
	name = "长廊",
	ways = {
		["south"] = "gumu/jqg/houtang",
		["east"] = "gumu/jqg/lang2",
		["north"] = "gumu/jqg/huayuan",
		["west"] = "gumu/jqg/lang4",
	},
}
Room {
	id = "gumu/jqg/lang2",
	name = "东厢长廊",
	ways = {
		["south"] = "gumu/jqg/lgf",
		["east"] = "gumu/jqg/lang3",
		["north"] = "gumu/jqg/danfang",
		["west"] = "gumu/jqg/lang1",
	},
}
Room {
	id = "gumu/jqg/lang3",
	name = "东厢长廊",
	ways = {
		["east"] = "gumu/jqg/shufang",
		["west"] = "gumu/jqg/lang2",
	},
}
Room {
	id = "gumu/jqg/lang4",
	name = "西厢长廊",
	ways = {
		["south"] = "gumu/jqg/sleep2",
		["north"] = "gumu/jqg/sleep1",
		["east"] = "gumu/jqg/lang1",
		["west"] = "gumu/jqg/lang5",
	},
	lengths = {
		["south"] = "if getSex() == '女' then return 1 else return false end",
		["north"] = "if getSex() == '男' then return 1 else return false end",
	},
}
Room {
	id = "gumu/jqg/lang5",
	name = "西厢长廊",
	ways = {
		["south"] = "gumu/jqg/zhifang",
		["east"] = "gumu/jqg/lang4",
		["north"] = "gumu/jqg/jianshi",
	},
}
Room {
	id = "gumu/jqg/lgf",
	name = "练功房",
	ways = {
		["north"] = "gumu/jqg/lang2",
	},
}
Room {
	id = "gumu/jqg/qsroad",
	name = "青石板路",
	ways = {
		["eastup"] = "gumu/jqg/shuitang",
		["north"] = "gumu/jqg/shiwu",
	},
}
Room {
	id = "gumu/jqg/shanding",
	name = "山顶平地",
	ways = {
		["east"] = "gumu/jqg/shanlu4",
		["southdown"] = "gumu/jqg/shanjing1",
		["northdown"] = "gumu/jqg/zhulinn",
		["west"] = "gumu/jqg/xshiwu",
	},
}
Room {
	id = "gumu/jqg/shanjing",
	name = "山径",
	ways = {
		["northup"] = "gumu/jqg/shanjing1",
		["southdown"] = "gumu/jqg/fyy",
	},
}
Room {
	id = "gumu/jqg/shanjing1",
	name = "山径",
	ways = {
		["northup"] = "gumu/jqg/shanding",
		["southdown"] = "gumu/jqg/shanjing",
	},
}
Room {
	id = "gumu/jqg/shanlu1",
	name = "山间小路",
	ways = {
		["southeast"] = "gumu/jqg/shanlu2",
		["north"] = "gumu/jqg/xibian",
	},
}
Room {
	id = "gumu/jqg/shanlu10",
	name = "断肠崖",
	ways = {
		["westdown"] = "gumu/jqg/shanlu9",
		["l ya;jump qiaobi"] = "gumu/jqg/duanchang",
	},
	nolooks = {
		["l ya;jump qiaobi"] = true,
	},
}
Room {
	id = "gumu/jqg/duanchang",
	name = "峭壁",
	ways = {
		["cuo shupi;cuo shupi;cuo shupi;cuo shupi;cuo shupi;cuo shupi;cuo shupi;cuo shupi;cuo shupi;;bang song;pa down;#waitbusy;pa down;#waitbusy;pa down;#waitbusy;pa down;#waitbusy;pa down;#waitbusy;pa down;#waitbusy;pa down;#waitbusy;pa down;#waitbusy"] = "gumu/jqg/gudi",
		["jump back"] = "gumu/jqg/shanlu10",
	},
	nolooks = {
		["cuo shupi;cuo shupi;cuo shupi;cuo shupi;cuo shupi;cuo shupi;cuo shupi;cuo shupi;cuo shupi;;bang song;pa down;#waitbusy;pa down;#waitbusy;pa down;#waitbusy;pa down;#waitbusy;pa down;#waitbusy;pa down;#waitbusy;pa down;#waitbusy;pa down;#waitbusy"] = true,
		["jump back"] = true,
	},
}
Room {
	id = "gumu/jqg/gudi",
	name = "谷底",
	ways = {
		["pa yabi;#waitbusy;pa up;#waitbusy;pa up;#waitbusy;pa up;#waitbusy;pa up;#waitbusy;pa up;#waitbusy;pa up;#waitbusy;pa up;#waitbusy;yun jingli"] = "gumu/jqg/duanchang",
		["#5 jian shi;tiao tan;#waitbusy;qian down;#waitbusy;qian down;#waitbusy;qian down;#waitbusy;#5 drop stone;#waitbusy;qian zuoshang;#waitbusy;qian up;#waitbusy;pa up;yun jingli"] = "gumu/jqg/tanan",
	},
	nolooks = {
		["pa yabi;#waitbusy;pa up;#waitbusy;pa up;#waitbusy;pa up;#waitbusy;pa up;#waitbusy;pa up;#waitbusy;pa up;#waitbusy;pa up;#waitbusy;yun jingli"] = true,
		["#5 jian shi;tiao tan;#waitbusy;qian down;#waitbusy;qian down;#waitbusy;qian down;#waitbusy;#5 drop stone;#waitbusy;qian zuoshang;#waitbusy;qian up;#waitbusy;pa up;yun jingli"] = true,
	},
}
Room {
	id = "gumu/jqg/shanlu2",
	name = "山间小路",
	ways = {
		["southeast"] = "gumu/jqg/shanlu3",
		["northwest"] = "gumu/jqg/shanlu1",
	},
}
Room {
	id = "gumu/jqg/shanlu3",
	name = "山间小路",
	ways = {
		["south"] = "xiangyang/outwroad1",
		["northwest"] = "gumu/jqg/shanlu2",
	},
}
Room {
	id = "gumu/jqg/shanlu4",
	name = "山路",
	ways = {
		["east"] = "gumu/jqg/shanlu5",
		["west"] = "gumu/jqg/shanding",
	},
}
Room {
	id = "gumu/jqg/shanlu5",
	name = "山路",
	ways = {
		["northup"] = "gumu/jqg/shanlu6",
		["eastup"] = "gumu/jqg/shanlu9",
		["west"] = "gumu/jqg/shanlu4",
	},
}
Room {
	id = "gumu/jqg/shanlu6",
	name = "厉鬼峰",
	ways = {
		["southdown"] = "gumu/jqg/shanlu5",
	},
}
Room {
	id = "gumu/jqg/shanlu9",
	name = "山路",
	ways = {
		["westdown"] = "gumu/jqg/shanlu5",
		["eastup"] = "gumu/jqg/shanlu10",
	},
}
Room {
	id = "gumu/jqg/shiwu",
	name = "大石屋",
	ways = {
		["south"] = "gumu/jqg/qsroad",
		["enter"] = "gumu/jqg/dating",
	},
	blocks = {
		["enter"] = {
			{id = "fan yiweng", exp = 400000},
		},
	},
}
Room {
	id = "gumu/jqg/shiyao",
	name = "石窟",
	ways = {
		["east"] = "gumu/jqg/cave3",
	},
}
Room {
	id = "gumu/jqg/shufang",
	name = "书房",
	ways = {
		["west"] = "gumu/jqg/lang3",
	},
}
Room {
	id = "gumu/jqg/shuitang",
	name = "水塘",
	ways = {
		["#stToSd"] = "gumu/jqg/shanding",
		["westdown"] = "gumu/jqg/qsroad",
	},
	nolooks = {
		["#stToSd"] = true,
		["eastup"] = true,
	},
	lengths = {
		["#stToSd"] = 100,
	},
}
Room {
	id = "gumu/jqg/sleep1",
	name = "休息室",
	no_fight = true,
	ways = {
		["south"] = "gumu/jqg/lang4",
	},
}
Room {
	id = "gumu/jqg/sleep2",
	name = "休息室",
	no_fight = true,
	ways = {
		["north"] = "gumu/jqg/lang4",
	},
}
Room {
	id = "gumu/jqg/tanan",
	name = "水潭岸边",
	ways = {
		["north"] = "gumu/jqg/xiaolu",
		["#5 jian shi;tiao tan;#waitbusy;qian down;#waitbusy;qian down;#waitbusy;#5 drop stone;qian up;#waitbusy;qian up;#waitbusy;qian up;#waitbusy;pa up;yun jingli"] = "gumu/jqg/gudi",
	},
	nolooks = {
		["#5 jian shi;tiao tan;#waitbusy;qian down;#waitbusy;qian down;#waitbusy;#5 drop stone;qian up;#waitbusy;qian up;#waitbusy;qian up;#waitbusy;pa up;yun jingli"] = true,
	},
}
Room {
	id = "gumu/jqg/wshi",
	name = "卧室",
	no_fight = true,
	ways = {
		["south"] = "gumu/jqg/zhongtang",
	},
}
Room {
	id = "gumu/jqg/xiaolu",
	name = "谷中小路",
	ways = {
		["south"] = "gumu/jqg/tanan",
		["enter"] = "gumu/jqg/zhongtang",
		["east"] = "gumu/jqg/huacong",
	},
}
Room {
	id = "gumu/jqg/xiaoshi",
	name = "小室",
	ways = {
		["east"] = "gumu/jqg/dashi",
		["west"] = "gumu/jqg/zhongtang",
	},
}
Room {
	id = "gumu/jqg/xiaoxi",
	name = "独峰岭",
	ways = {
		["northup"] = "gumu/jqg/glt",
		["#outJqg"] = "gumu/jqg/xibian",
	},
	nolooks = {
		["#outJqg"] = true,
	},
	lengths = {
		["#outJqg"] = 200,
	},
}
Room {
	id = "gumu/jqg/xibian",
	name = "小溪边",
	ways = {
		["south"] = "gumu/jqg/shanlu1",
		["#enterJqg"] = "gumu/jqg/xiaoxi",
	},
	nolooks = {
		["#enterJqg"] = true,
	},
	lengths = {
		["#enterJqg"] = 200,
	},
}
Room {
	id = "gumu/jqg/xqx",
	name = "响琴榭",
	ways = {
		["northup"] = "gumu/jqg/fyy",
		["west"] = "gumu/jqg/glt",
	},
}
Room {
	id = "gumu/jqg/xshiwu",
	name = "小石屋",
	no_fight = true,
	ways = {
		["east"] = "gumu/jqg/shanding",
	},
}
Room {
	id = "gumu/jqg/zhifang",
	name = "芝房",
	ways = {
		["north"] = "gumu/jqg/lang5",
	},
}
Room {
	id = "gumu/jqg/zhongtang",
	name = "中堂",
	ways = {
		["east"] = "gumu/jqg/xiaoshi",
		["north"] = "gumu/jqg/wshi",
		["out"] = "gumu/jqg/xiaolu",
	},
}
Room {
	id = "gumu/jqg/zhulinn",
	name = "竹林",
	ways = {
		["#zlToSt"] = "gumu/jqg/shuitang",
	},
	nolooks = {
		["#zlToSt"] = true,
		["westdown"] = true,
		["southup"] = true,
		["north"] = true,
		["south"] = true,
		["east"] = true,
		["west"] = true,
	},
	lengths = {
		["#zlToSt"] = 100,
	},
	find = {
		path = {"#findInZl"}, count = 20,
	},
}
Room {
	id = "gumu/lgf",
	name = "练功房",
	ways = {
		["south"] = "gumu/shitou",
	},
}
Room {
	id = "gumu/lingshi",
	name = "灵室",
	ways = {
		["out"] = "gumu/ss5",
		["tui guangai;tang guan"] = "gumu/shiguan",
	},
	nolooks = {
		["tui guangai;tang guan"] = true,
	},
	lengths = {
		["tui guangai;tang guan"] = 2,
	},
}
Room {
	id = "gumu/lyy",
	name = "老妪岩",
	ways = {
		["east"] = "gumu/shulin1",
		["northdown"] = "gumu/bzy",
	},
}
Room {
	id = "gumu/rukou",
	name = "古墓",
	ways = {
		["south"] = "gumu/xuanya",
		["enter"] = "gumu/gmqt",
		["north"] = "gumu/guoyuan",
		["quit;#reset"] = "city/kedian",
	},
	nolooks = {
		["quit;#reset"] = true,
	},
	lengths = {
		["quit;#reset"] = "if getExp() < 100000 then return 1000 else return false end",
	},
}
Room {
	id = "gumu/ryy",
	name = "日月岩",
	ways = {
		["westup"] = "gumu/bzy",
		["northdown"] = "gumu/jlg",
	},
}
Room {
	id = "gumu/shanlu1",
	name = "山麓",
	ways = {
		["southup"] = "gumu/shanlu2",
		["northdown"] = "gumu/xiaolu3",
	},
}
Room {
	id = "gumu/shanlu2",
	name = "岗顶",
	ways = {
		["southup"] = "gumu/shanlu3",
		["northdown"] = "gumu/shanlu1",
	},
}
Room {
	id = "gumu/shanlu3",
	name = "山路",
	ways = {
		["eastup"] = "gumu/ztm",
		["northdown"] = "gumu/shanlu2",
	},
}
Room {
	id = "gumu/shanpo",
	name = "山坡",
	ways = {
		["westdown"] = "gumu/guoyuan",
		["northeast"] = "gumu/shanpo1",
	},
}
Room {
	id = "gumu/shanpo1",
	name = "山坡",
	ways = {
		["southwest"] = "gumu/shanpo",
	},
}
Room {
	id = "gumu/shanxia",
	name = "终南山下",
	ways = {
		["northwest"] = "gumu/xiaolu3",
		["enter"] = "gumu/dongkou",
	},
}
Room {
	id = "gumu/shengou",
	name = "深沟",
	ways = {
		["west"] = "gumu/shulin2",
		["tiao gou"] = "gumu/rukou",
	},
	nolooks = {
		["tiao gou"] = true,
	},
	lengths = {
		["tiao gou"] = "if getParty() == '古墓派' then return 1 else return false end",
	},
}
Room {
	id = "gumu/shiguan",
	name = "石棺内",
	ways = {
		["out"] = "gumu/lingshi",
		["use fire;search;search;search;search;search;search;search;search;search;turn ao left;#waitbusy;ti up"] = "gumu/sshi1",
	},
	nolooks = {
		["use fire;search;search;search;search;search;search;search;search;search;turn ao left;#waitbusy;ti up"] = true,
	},
	lengths = {
		["use fire;search;search;search;search;search;search;search;search;search;turn ao left;#waitbusy;ti up"] = 10,
	},
}
Room {
	id = "gumu/shitou",
	name = "石室",
	ways = {
		["south"] = "gumu/yaofang",
		["north"] = "gumu/lgf",
		["west"] = "gumu/gmqs",
	},
	nolooks = {
		["west"] = true,
	},
	precmds = {
		["west"] = "open door",
	},
}
Room {
	id = "gumu/shulin",
	name = "树林",
	ways = {
		["out"] = "gumu/shulin2",
	},
}
Room {
	id = "gumu/shulin1",
	name = "树林",
	ways = {
		["east"] = "gumu/sln",
		["west"] = "gumu/lyy",
	},
}
Room {
	id = "gumu/shulin2",
	name = "灌木丛",
	ways = {
		["east"] = "gumu/shengou",
		["west"] = "gumu/sln",
	},
}
Room {
	id = "gumu/sln",
	name = "黑林",
	ways = {
		["south"] = "gumu/sln",
		["north"] = "gumu/sln",
		["east"] = "gumu/sln",
		["west"] = "gumu/sln",
		["e;e;e;e;e;e;e;e;e;e;e;e;w"] = "gumu/shulin2",
		["w;w;w;w;w;w;w;w;w;w;w;w;e"] = "gumu/shulin1",
	},
	nolooks = {
		["e;e;e;e;e;e;e;e;e;e;e;e;w"] = true,
		["w;w;w;w;w;w;w;w;w;w;w;w;e"] = true,
	},
	lengths = {
		["e;e;e;e;e;e;e;e;e;e;e;e;w"] = 13,
		["w;w;w;w;w;w;w;w;w;w;w;w;e"] = 13,
	},
	find = {
		path = {"n"}, count = 5,
	},
}
Room {
	id = "gumu/ss0",
	name = "石室",
	ways = {
		["out"] = "gumu/ss1",
	},
}
Room {
	id = "gumu/ss1",
	name = "石室",
	ways = {
		["e;e;e;e;e;e;w;w;w;w;w;w;n;n;n;n;n;n;s;s;s;s;s;s;#waitbusy"] = "gumu/ss5",
	},
	nolooks = {
		["e;e;e;e;e;e;w;w;w;w;w;w;n;n;n;n;n;n;s;s;s;s;s;s;#waitbusy"] = true,
	},
	lengths = {
		["e;e;e;e;e;e;w;w;w;w;w;w;n;n;n;n;n;n;s;s;s;s;s;s;#waitbusy"] = 24,
	},
}
Room {
	id = "gumu/ss4",
	name = "石室",
}
Room {
	id = "gumu/ss5",
	name = "石室",
	ways = {
		["enter"] = "gumu/lingshi",
		["west"] = "gumu/ss4",
	},
}
Room {
	id = "gumu/sshi1",
	name = "石室",
	ways = {
		["up"] = "gumu/shiguan",
		["walk down"] = "gumu/gmanhe1",
	},
	nolooks = {
		["walk down"] = true,
	},
}
Room {
	id = "gumu/xiaolu1",
	name = "田间小路",
	ways = {
		["south"] = "gumu/xiaolu2",
		["east"] = "gumu/fchuan",
	},
}
Room {
	id = "gumu/xiaolu2",
	name = "终南小道",
	ways = {
		["southeast"] = "group/entry/gmchang",
		["south"] = "gumu/xiaolu3",
		["north"] = "gumu/xiaolu1",
	},
}
Room {
	id = "gumu/xiaolu3",
	name = "乡间小道",
	ways = {
		["southup"] = "gumu/shanlu1",
		["southeast"] = "gumu/shanxia",
		["north"] = "gumu/xiaolu2",
	},
}
Room {
	id = "gumu/xuantie/dongkou",
	name = "洞口",
	ways = {
		["southeast"] = "gumu/xuantie/xiaolu3",
		["enter"] = "gumu/xuantie/shandong",
	},
	blocks = {
		["enter"] = {
			{id = "shen diao", exp = 100000},
		},
	},
}
Room {
	id = "gumu/xuantie/linhain",
	name = "树林",
	ways = {
		["#goXtj"] = "gumu/xuantie/xiaolu1",
		["#outXtj"] = "gumu/xuantie/xiaolu4",
	},
	nolooks = {
		["east"] = true,
		["west"] = true,
		["south"] = true,
		["north"] = true,
		["#goXtj"] = true,
		["#outXtj"] = true,
	},
	find = {
		path = {"#xtjStart", "n", "e", "n", "e", "w", "s", "n", "s", "s"},
	},
}
Room {
	id = "gumu/xuantie/pubu",
	name = "瀑布",
	ways = {
		["west"] = "gumu/xuantie/xiaolu3",
	},
}
Room {
	id = "gumu/xuantie/qiaobi",
	name = "峭壁",
	ways = {
		["southdown"] = "gumu/xuantie/shanlu8",
		["l shibi;l shibi;l shibi;l shibi;l shibi;l shibi;l shibi;l shibi;l shibi;l shibi;mo qingtai;cuan up"] = "gumu/xuantie/pingtai",
	},
	nolooks = {
		["l shibi;l shibi;l shibi;l shibi;l shibi;l shibi;l shibi;l shibi;l shibi;l shibi;mo qingtai;cuan up"] = true,
	},
}
Room {
	id = "gumu/xuantie/pingtai",
	name = "平台",
	ways = {
		["enter"] = "gumu/xuantie/jianzhong",
		["tiao down"] = "gumu/xuantie/qiaobi",
	},
	nolooks = {
		["tiao down"] = true,
		["enter"] = true,
	},
	precmds = {
		["enter"] = "move stone",
	},
}
Room {
	id = "gumu/xuantie/jianzhong",
	name = "剑冢",
	ways = {
		["out"] = "gumu/xuantie/pingtai",
	},
	nolooks = {
		["out"] = true,
	},
	precmds = {
		["out"] = "tui shi",
	},
}
Room {
	id = "gumu/xuantie/shandong",
	name = "大山洞",
	ways = {
		["out"] = "gumu/xuantie/dongkou",
	},
}
Room {
	id = "gumu/xuantie/shanlu7",
	name = "深谷",
	ways = {
		["south"] = "gumu/xuantie/shandong",
		["northwest"] = "gumu/xuantie/shanlu8",
	},
}
Room {
	id = "gumu/xuantie/shanlu8",
	name = "深谷",
	ways = {
		["northup"] = "gumu/xuantie/qiaobi",
		["southeast"] = "gumu/xuantie/shanlu7",
	},
}
Room {
	id = "gumu/xuantie/shushang",
	name = "树上",
	ways = {
		["down"] = "gumu/xuantie/shanlu7",
	},
}
Room {
	id = "gumu/xuantie/xiaolu1",
	name = "山路",
	ways = {
		["northup"] = "gumu/xuantie/xiaolu2",
		["south"] = "gumu/xuantie/linhain",
	},
	nolooks = {
		["south"] = true,
	},
}
Room {
	id = "gumu/xuantie/xiaolu2",
	name = "山路",
	ways = {
		["northup"] = "gumu/xuantie/xiaolu3",
		["southdown"] = "gumu/xuantie/xiaolu1",
	},
}
Room {
	id = "gumu/xuantie/xiaolu3",
	name = "山路",
	ways = {
		["northwest"] = "gumu/xuantie/dongkou",
		["east"] = "gumu/xuantie/pubu",
		["southdown"] = "gumu/xuantie/xiaolu2",
	},
}
Room {
	id = "gumu/xuantie/xiaolu4",
	name = "山路",
	ways = {
		["southeast"] = "xiangyang/conglin4",
		["north"] = "gumu/xuantie/linhain",
	},
	nolooks = {
		["north"] = true,
	},
}
Room {
	id = "gumu/xuanya",
	name = "悬崖",
	ways = {
		["north"] = "gumu/rukou",
	},
}
Room {
	id = "gumu/yaofang",
	name = "药房",
	ways = {
		["north"] = "gumu/shitou",
		["west"] = "gumu/fang",
	},
}
Room {
	id = "gumu/ztm",
	name = "中天门",
	ways = {
		["westdown"] = "gumu/shanlu3",
		["southdown"] = "gumu/jlg",
	},
}
Room {
	id = "hengshan/baiyunan",
	name = "白云庵",
	ways = {
		["south"] = "hengshan/square",
	},
}
Room {
	id = "hengshan/beiyuedian",
	name = "北岳殿",
	ways = {
		["northup"] = "hengshan/shandao1",
		["eastup"] = "hengshan/yuyang",
		["westup"] = "hengshan/huixiantai",
		["southdown"] = "hengshan/beiyuemiao",
	},
}
Room {
	id = "hengshan/beiyuemiao",
	name = "北岳庙",
	ways = {
		["northup"] = "hengshan/beiyuedian",
		["east"] = "hengshan/kutianjing",
		["southdown"] = "hengshan/guolaoling",
		["west"] = "hengshan/jijiaoshi",
	},
}
Room {
	id = "hengshan/cuiping1",
	name = "翠屏山道",
	ways = {
		["westup"] = "hengshan/cuiping2",
		["down"] = "hengshan/cuipinggu2",
	},
}
Room {
	id = "hengshan/cuiping2",
	name = "翠屏山道",
	ways = {
		["eastdown"] = "hengshan/cuiping1",
		["eastup"] = "hengshan/xuankong1",
	},
}
Room {
	id = "hengshan/cuipinggu1",
	name = "翠屏谷",
	ways = {
		["southeast"] = "hengshan/cuipinggu2",
		["northeast"] = "hengshan/jinlongxia",
	},
}
Room {
	id = "hengshan/cuipinggu2",
	name = "翠屏谷",
	ways = {
		["northwest"] = "hengshan/cuipinggu1",
		["up"] = "hengshan/cuiping1",
	},
}
Room {
	id = "hengshan/daziling",
	name = "大字岭",
	ways = {
		["northeast"] = "hengshan/hufengkou",
		["west"] = "hengshan/yunge",
	},
}
Room {
	id = "hengshan/guolaoling",
	name = "果老岭",
	ways = {
		["northup"] = "hengshan/beiyuemiao",
		["westdown"] = "hengshan/tongyuangu",
		["southwest"] = "hengshan/hufengkou",
	},
}
Room {
	id = "hengshan/hufengkou",
	name = "虎风口",
	ways = {
		["southwest"] = "hengshan/daziling",
		["northeast"] = "hengshan/guolaoling",
		["west"] = "hengshan/xgsong",
	},
}
Room {
	id = "hengshan/huixiantai",
	name = "会仙台",
	ways = {
		["eastdown"] = "hengshan/beiyuedian",
	},
}
Room {
	id = "hengshan/jijiaoshi",
	name = "鸡叫石",
	ways = {
		["east"] = "hengshan/beiyuemiao",
	},
}
Room {
	id = "hengshan/jinlongxia",
	name = "金龙峡",
	ways = {
		["southwest"] = "hengshan/cuipinggu1",
		["southdown"] = "changan/northroad10",
	},
}
Room {
	id = "hengshan/kutianjing",
	name = "苦甜井",
	ways = {
		["west"] = "hengshan/beiyuemiao",
	},
}
Room {
	id = "hengshan/shandao1",
	name = "见性峰山道",
	ways = {
		["northup"] = "hengshan/shandao2",
		["southdown"] = "hengshan/beiyuedian",
	},
}
Room {
	id = "hengshan/shandao2",
	name = "见性峰山道",
	ways = {
		["eastup"] = "hengshan/square",
		["southdown"] = "hengshan/shandao1",
	},
}
Room {
	id = "hengshan/sjdian",
	name = "三教殿",
	ways = {
		["down"] = "hengshan/xuankong1",
	},
}
Room {
	id = "hengshan/square",
	name = "见性峰广场",
	ways = {
		["westdown"] = "hengshan/shandao2",
		["north"] = "hengshan/baiyunan",
	},
}
Room {
	id = "hengshan/tongyuangu",
	name = "通元谷",
	ways = {
		["eastup"] = "hengshan/guolaoling",
	},
}
Room {
	id = "hengshan/xgsong",
	name = "悬根松",
	ways = {
		["east"] = "hengshan/hufengkou",
	},
}
Room {
	id = "hengshan/xuankong1",
	name = "悬空寺北楼",
	ways = {
		["westdown"] = "hengshan/cuiping2",
		["south"] = "hengshan/zhanqiao",
		["up"] = "hengshan/sjdian",
	},
}
Room {
	id = "hengshan/xuankong2",
	name = "悬空寺南楼",
	ways = {
		["southup"] = "hengshan/zhandao",
		["north"] = "hengshan/zhanqiao",
	},
}
Room {
	id = "hengshan/yunge",
	name = "云阁虹桥",
	ways = {
		["east"] = "hengshan/daziling",
		["northdown"] = "hengshan/zhandao",
	},
}
Room {
	id = "hengshan/yuyang",
	name = "玉羊游云",
	ways = {
		["westdown"] = "hengshan/beiyuedian",
	},
}
Room {
	id = "hengshan/zhandao",
	name = "梯式栈道",
	ways = {
		["southup"] = "hengshan/yunge",
		["northdown"] = "hengshan/xuankong2",
	},
}
Room {
	id = "hengshan/zhanqiao",
	name = "悬空栈桥",
	ways = {
		["south"] = "hengshan/xuankong2",
		["north"] = "hengshan/xuankong1",
	},
}
Room {
	id = "hj/caochang",
	name = "草场",
	ways = {
		["westdown"] = "hj/shuijing",
		["east"] = "hj/caoyuan1",
		["northdown"] = "hj/pmchang",
	},
}
Room {
	id = "hj/caoyuan",
	name = "草原边缘",
	ways = {
		["westup"] = "hj/caoyuan2",
		["southwest"] = "hj/caoyuan1",
		["south"] = "hj/caoyuan",
		["east"] = "xingxiu/shamo",
		["north"] = "hj/caoyuan",
		["s;s;s;s"] = "hj/caoyuan8",
		["n;n;n;n"] = "hj/hswz",
	},
	nolooks = {
		["s;s;s;s"] = true,
		["n;n;n;n"] = true,
	},
	lengths = {
		["s;s;s;s"] = 4,
		["n;n;n;n"] = 4,
	},
}
Room {
	id = "hj/caoyuan1",
	name = "大草原",
	ways = {
		["south"] = "hj/majiu",
		["north"] = "hj/caoyuan2",
		["northeast"] = "hj/caoyuan",
		["west"] = "hj/caochang",
	},
	nolooks = {
		["down"] = true,
	},
}
Room {
	id = "hj/caoyuan10",
	name = "大草原",
	ways = {
		["south"] = "hj/caoyuan",
		["north"] = "hj/caoyuan9",
		["east"] = "hj/caoyuan8",
		["west"] = "hj/caoyuan7",
	},
}
Room {
	id = "hj/caoyuan2",
	name = "草原",
	ways = {
		["northup"] = "hj/road1",
		["eastdown"] = "hj/caoyuan",
		["south"] = "hj/caoyuan1",
		["northwest"] = "hj/shop",
		["north"] = "xueshan/caoyuan/caohai1",
		["west"] = "hj/pmchang",
	},
}
Room {
	id = "hj/caoyuan4",
	name = "大草原",
	ways = {
		["south"] = "hj/caoyuan5",
		["north"] = "hj/caoyuan5",
		["east"] = "hj/caoyuan5",
		["west"] = "hj/caoyuan5",
	},
}
Room {
	id = "hj/caoyuan5",
	name = "大草原",
	ways = {
		["south"] = "hj/caoyuan4",
		["north"] = "hj/caoyuan4",
		["east"] = "hj/caoyuan4",
		["west"] = "hj/road1",
	},
}
Room {
	id = "hj/caoyuan6",
	name = "大草原",
	ways = {
		["southwest"] = "hj/road2",
		["south"] = "hj/caoyuan",
		["northwest"] = "hj/room-ji",
		["east"] = "hj/caoyuan",
	},
}
Room {
	id = "hj/caoyuan7",
	name = "大草原",
	ways = {
		["south"] = "hj/caoyuan8",
		["north"] = "hj/room-su",
		["east"] = "hj/caoyuan",
		["west"] = "hj/caoyuan9",
	},
}
Room {
	id = "hj/caoyuan8",
	name = "大草原",
	ways = {
		["south"] = "hj/caoyuan9",
		["north"] = "hj/room-che",
		["east"] = "hj/caoyuan",
		["west"] = "hj/caoyuan7",
	},
}
Room {
	id = "hj/caoyuan9",
	name = "大草原",
	ways = {
		["south"] = "hj/caoyuan",
		["east"] = "hj/caoyuan8",
		["north"] = "hj/caoyuan",
		["west"] = "hj/caoyuan7",
	},
}
Room {
	id = "hj/gebin",
	name = "大戈壁",
	ways = {
		["#outGb"] = "hj/road2",
	},
	nolooks = {
		["#outGb"] = true,
		["south"] = true,
		["east"] = true,
		["north"] = true,
		["west"] = true,
	},
	lengths = {
		["#outGb"] = 20,
	},
}
Room {
	id = "hj/hsk",
	name = "哈萨克帐篷",
	ways = {
		["southwest"] = "hj/room-che",
		["east"] = "hj/caoyuan",
		["west"] = "hj/majiu",
	},
}
Room {
	id = "hj/hswz",
	name = "黑石围子",
	ways = {
		["southeast"] = "xingxiu/shamo",
		["southwest"] = "hj/caoyuan10",
		["south"] = "xingxiu/shamo",
		["north"] = "hj/gebin",
		["n;n;n;n;n;n;n;w;w;w;w;w"] = "baituo/btshan",
	},
	nolooks = {
		["n;n;n;n;n;n;n;w;w;w;w;w"] = true,
	},
	lengths = {
		["n;n;n;n;n;n;n;w;w;w;w;w"] = 12,
	},
}
Room {
	id = "hj/luzhou",
	name = "回疆绿洲",
	ways = {
		["southeast"] = "hj/gebin",
		["southwest"] = "hj/gebin",
		["northwest"] = "hj/gebin",
		["northeast"] = "hj/gebin",
	},
}
Room {
	id = "hj/majiu",
	name = "马棚",
	ways = {
		["east"] = "hj/hsk",
		["north"] = "hj/caoyuan1",
		["west"] = "hj/caoyuan7",
	},
}
Room {
	id = "hj/mg-door",
	name = "高昌迷宫",
	ways = {
		["eastdown"] = "hj/shulin1",
	},
}
Room {
	id = "hj/mg-indoor",
	name = "高昌迷宫",
	ways = {
		["east"] = "hj/mg3",
		["west"] = "hj/mg4",
	},
}
Room {
	id = "hj/mg-room1",
	name = "迷宫房舍",
	ways = {
		["south"] = "hj/tianjin",
		["northwest"] = "hj/mg-room3",
		["north"] = "hj/mg-room2",
		["northeast"] = "hj/mg-room4",
	},
}
Room {
	id = "hj/mg-room2",
	name = "迷宫房舍",
	ways = {
		["south"] = "hj/mg-room1",
	},
}
Room {
	id = "hj/mg-room3",
	name = "迷宫房舍",
	ways = {
		["southeast"] = "hj/mg-room1",
		["northeast"] = "hj/mg-room5",
	},
}
Room {
	id = "hj/mg-room4",
	name = "迷宫房舍",
	ways = {
		["southwest"] = "hj/mg-room1",
		["northwest"] = "hj/mg-room5",
	},
}
Room {
	id = "hj/mg-room5",
	name = "迷宫房舍",
	ways = {
		["southeast"] = "hj/mg-room4",
		["southwest"] = "hj/mg-room3",
	},
}
Room {
	id = "hj/mg1",
	name = "高昌迷宫",
	ways = {
		["north"] = "hj/mg2",
	},
}
Room {
	id = "hj/mg2",
	name = "高昌迷宫",
	ways = {
		["south"] = "hj/mg1",
		["north"] = "hj/mg4",
	},
}
Room {
	id = "hj/mg3",
	name = "高昌迷宫",
	ways = {
		["south"] = "hj/mg4",
		["east"] = "hj/mg4",
		["north"] = "hj/mg4",
		["west"] = "hj/mg4",
	},
}
Room {
	id = "hj/mg4",
	name = "高昌迷宫",
	ways = {
		["south"] = "hj/mg3",
		["north"] = "hj/mg3",
		["east"] = "hj/mg3",
		["west"] = "hj/mg3",
	},
}
Room {
	id = "hj/pmchang",
	name = "跑马场",
	ways = {
		["southup"] = "hj/caochang",
		["southwest"] = "hj/shuijing",
		["north"] = "hj/shop",
		["east"] = "hj/caoyuan2",
		["west"] = "group/entry/hjroad",
	},
}
Room {
	id = "hj/road1",
	name = "小路",
	ways = {
		["east"] = "hj/caoyuan4",
		["northeast"] = "hj/road2",
		["southdown"] = "hj/caoyuan2",
		["west"] = "hj/shop",
	},
}
Room {
	id = "hj/road2",
	name = "小路",
	ways = {
		["southwest"] = "hj/road1",
		["north"] = "hj/room-ji",
		["northeast"] = "hj/caoyuan6",
	},
}
Room {
	id = "hj/room-che",
	name = "车尔库的家",
	ways = {
		["south"] = "hj/caoyuan8",
		["east"] = "hj/caoyuan8",
		["northeast"] = "hj/hsk",
		["west"] = "hj/caoyuan8",
	},
}
Room {
	id = "hj/room-ji",
	name = "草棚",
	ways = {
		["southeast"] = "hj/caoyuan6",
		["south"] = "hj/road2",
		["enter"] = "hj/room-ji1",
		["northwest"] = "hj/gebin",
	},
}
Room {
	id = "hj/room-ji1",
	name = "小屋",
	ways = {
		["out"] = "hj/room-ji",
	},
}
Room {
	id = "hj/room-su",
	name = "苏鲁克的家",
	ways = {
		["south"] = "hj/caoyuan7",
		["east"] = "hj/caoyuan7",
		["northeast"] = "hj/shuijing",
		["west"] = "hj/caoyuan7",
	},
}
Room {
	id = "hj/senlin",
	name = "针叶林",
	ways = {
		["southeast"] = "hj/shanqiu",
		["northwest"] = "xingxiu/tianshan",
		["northeast"] = "xingxiu/shanjiao",
	},
}
Room {
	id = "hj/senlinn",
	name = "针叶林",
	ways = {
		["#outZyl"] = "hj/senlin",
	},
	nolooks = {
		["#outZyl"] = true,
		["east"] = true,
		["west"] = true,
		["south"] = true,
		["north"] = true,
	},
	lengths = {
		["#outZyl"] = 80,
	},
	find = {
		path = {"#findZyl"}, count = 50,
	},
}
Room {
	id = "hj/shanqiu",
	name = "小山丘",
	ways = {
		["eastdown"] = "group/entry/hjroad",
		["westdown"] = "hj/senlinn",
		["south"] = "hj/caoyuan9",
	},
}
Room {
	id = "hj/shop",
	name = "哈萨克小店",
	ways = {
		["southeast"] = "hj/caoyuan2",
		["south"] = "hj/pmchang",
		["northwest"] = "hj/sroom",
		["east"] = "hj/road1",
	},
}
Room {
	id = "hj/shuijing",
	name = "坎儿井",
	ways = {
		["eastup"] = "hj/caochang",
		["southwest"] = "hj/room-su",
		["northeast"] = "hj/pmchang",
	},
}
Room {
	id = "hj/shulin",
	name = "山陵",
	ways = {
		["south"] = "hj/gebin",
		["northwest"] = "hj/shulin1",
		["east"] = "hj/gebin",
		["north"] = "hj/gebin",
	},
}
Room {
	id = "hj/shulin1",
	name = "山谷",
	ways = {
		["southeast"] = "hj/shulin",
		["westup"] = "hj/mg-door",
	},
}
Room {
	id = "hj/sroom",
	name = "哈萨克帐篷",
	no_fight = true,
	ways = {
		["southeast"] = "hj/shop",
	},
}
Room {
	id = "hj/tianjin",
	name = "天井",
	ways = {
		["north"] = "hj/mg-room1",
	},
}
Room {
	id = "hmy/andao1",
	name = "暗道",
	ways = {
		["north"] = "hmy/andao2",
		["west"] = "hmy/houdian",
	},
}
Room {
	id = "hmy/andao2",
	name = "暗道",
	ways = {
		["south"] = "hmy/andao1",
		["east"] = "hmy/andao3",
	},
}
Room {
	id = "hmy/andao3",
	name = "暗道",
	ways = {
		["north"] = "hmy/andao4",
		["west"] = "hmy/andao2",
	},
}
Room {
	id = "hmy/andao4",
	name = "暗道",
	ways = {
		["south"] = "hmy/andao3",
		["west"] = "hmy/andao5",
	},
}
Room {
	id = "hmy/andao5",
	name = "暗道",
	ways = {
		["east"] = "hmy/andao4",
		["northeast"] = "hmy/andao6",
	},
}
Room {
	id = "hmy/andao6",
	name = "暗道",
	ways = {
		["southwest"] = "hmy/andao5",
		["northwest"] = "hmy/andao7",
	},
}
Room {
	id = "hmy/andao7",
	name = "暗道",
	ways = {
		["southeast"] = "hmy/andao6",
		["north"] = "hmy/andao8",
	},
}
Room {
	id = "hmy/andao8",
	name = "暗道",
	ways = {
		["southeast"] = "hmy/andao7",
		["enter"] = "hmy/jail_gate",
	},
}
Room {
	id = "hmy/baichi",
	name = "三岔口",
	ways = {
		["eastup"] = "hmy/suo",
		["westup"] = "hmy/shijie",
		["south"] = "hmy/meimao",
		["eastdown"] = "hmy/shandao2",
	},
}
Room {
	id = "hmy/baihutang",
	name = "白虎堂",
	ways = {
		["south"] = "hmy/changlang",
		["east"] = "hmy/zhuquetang",
	},
}
Room {
	id = "hmy/baizhang",
	name = "百丈泉",
	ways = {
		["eastup"] = "hmy/yupingpu",
		["south"] = "hmy/qiangu",
	},
}
Room {
	id = "hmy/cddian",
	name = "成德殿",
	ways = {
		["south"] = "hmy/dadian",
		["north"] = "hmy/changlang2",
		["west"] = "hmy/zhuquetang",
	},
}
Room {
	id = "hmy/changlang",
	name = "长廊",
	ways = {
		["south"] = "hmy/fleitang",
		["east"] = "hmy/dadian",
		["north"] = "hmy/baihutang",
		["west"] = "hmy/qiandian",
	},
}
Room {
	id = "hmy/changlang2",
	name = "长廊",
	ways = {
		["south"] = "hmy/cddian",
		["east"] = "hmy/qqiudian",
		["west"] = "hmy/qlongtang",
	},
}
Room {
	id = "hmy/changlang3",
	name = "长廊",
	ways = {
		["south"] = "hmy/shufang",
		["north"] = "hmy/lgfang",
		["east"] = "hmy/changlang4",
		["west"] = "hmy/qqiudian",
	},
}
Room {
	id = "hmy/changlang4",
	name = "长廊",
	ways = {
		["south"] = "hmy/changlang6",
		["north"] = "hmy/xiuxishi",
		["east"] = "hmy/shifang",
		["west"] = "hmy/changlang3",
	},
}
Room {
	id = "hmy/changlang5",
	name = "长廊",
	ways = {
		["south"] = "hmy/houhuayen",
		["east"] = "hmy/houdian",
		["north"] = "hmy/dadian",
		["west"] = "hmy/fleitang",
	},
}
Room {
	id = "hmy/changlang6",
	name = "长廊",
	ways = {
		["south"] = "hmy/houdian",
		["east"] = "hmy/yiting",
		["north"] = "hmy/changlang4",
		["west"] = "hmy/dadian",
	},
}
Room {
	id = "hmy/changtan",
	name = "长滩",
	ways = {
		["east"] = "hmy/shandao",
		["dutan"] = "hmy/xxtan",
	},
	nolooks = {
		["dutan"] = true,
		["enter"] = true,
	},
	lengths = {
		["dutan"] = "if getDodge() < 100 then return false else return 1 end",
	},
}
Room {
	id = "hmy/chengdedian",
	name = "成德殿",
	ways = {
		["south"] = "hmy/dadian",
		["north"] = "hmy/changlang2",
		["west"] = "hmy/zhuquetang",
	},
}
Room {
	id = "hmy/dadian",
	name = "大殿",
	ways = {
		["south"] = "hmy/changlang5",
		["east"] = "hmy/changlang6",
		["north"] = "hmy/cddian",
		["west"] = "hmy/changlang",
	},
}
Room {
	id = "hmy/dedao",
	name = "地道",
	ways = {
		["down"] = "hmy/xhuayuan",
		["up"] = "hmy/shiwu",
	},
}
Room {
	id = "hmy/fengleitang",
	name = "风雷堂",
	ways = {
		["east"] = "hmy/changlang5",
		["north"] = "hmy/changlang",
	},
}
Room {
	id = "hmy/fleitang",
	name = "风雷堂",
	ways = {
		["east"] = "hmy/changlang5",
		["north"] = "hmy/changlang",
	},
}
Room {
	id = "hmy/guanpu",
	name = "观瀑亭",
	ways = {
		["northup"] = "hmy/moyun",
		["south"] = "hmy/yupingpu",
	},
}
Room {
	id = "hmy/houdian",
	name = "后殿",
	ways = {
		["north"] = "hmy/changlang6",
		["west"] = "hmy/changlang5",
	},
}
Room {
	id = "hmy/houhuayen",
	name = "后花园",
	ways = {
		["north"] = "hmy/changlang5",
		["west"] = "hmy/shiwu",
	},
}
Room {
	id = "hmy/jail_gate",
	name = "监狱大门",
	ways = {
		["out"] = "hmy/andao8",
	},
}
Room {
	id = "hmy/lgfang",
	name = "练功房",
	ways = {
		["south"] = "hmy/changlang3",
	},
}
Room {
	id = "hmy/liangting",
	name = "凉亭",
	ways = {
		["west"] = "hmy/shidao2",
	},
}
Room {
	id = "hmy/lianhua",
	name = "碧血崖",
	ways = {
		["eastdown"] = "hmy/xianren",
		["east"] = "hmy/wulao",
		["west"] = "hmy/yupingpu",
	},
}
Room {
	id = "hmy/meimao",
	name = "眉毛崖",
	ways = {
		["north"] = "hmy/baichi",
		["southdown"] = "hmy/taohua",
	},
}
Room {
	id = "hmy/midao6",
	name = "地道",
	ways = {
		["north"] = "hmy/suo",
		["west"] = "hmy/suo",
	},
}
Room {
	id = "hmy/moyun",
	name = "卧云崖",
	ways = {
		["southdown"] = "hmy/guanpu",
	},
}
Room {
	id = "hmy/pailou",
	name = "牌楼",
	ways = {
		["east"] = "hmy/xiangfang",
		["north"] = "hmy/shibanlu",
		["west"] = "hmy/yading",
	},
}
Room {
	id = "hmy/pingding/cj1",
	name = "长街",
	ways = {
		["east"] = "hmy/pingding/cj2",
		["west"] = "hmy/pingding/gate1",
	},
}
Room {
	id = "hmy/pingding/cj2",
	name = "长街",
	ways = {
		["northeast"] = "hmy/pingding/cj3",
		["west"] = "hmy/pingding/cj1",
		["south"] = "hmy/pingding/xchidian",
	},
}
Room {
	id = "hmy/pingding/cj3",
	name = "长街",
	ways = {
		["east"] = "hmy/pingding/cj5",
		["southeast"] = "hmy/pingding/kedian",
		["southwest"] = "hmy/pingding/cj2",
		["north"] = "hmy/pingding/cj4",
		["west"] = "hmy/pingding/yaopu",
	},
}
Room {
	id = "hmy/pingding/cj4",
	name = "长街",
	ways = {
		["south"] = "hmy/pingding/cj3",
		["north"] = "hmy/pingding/gate2",
	},
}
Room {
	id = "hmy/pingding/cj5",
	name = "长街",
	ways = {
		["east"] = "hmy/pingding/dongmen",
		["west"] = "hmy/pingding/cj3",
	},
}
Room {
	id = "hmy/pingding/dongmen",
	name = "东门",
	ways = {
		["east"] = "hmy/pingding/road6",
		["west"] = "hmy/pingding/cj5",
	},
}
Room {
	id = "hmy/pingding/gate1",
	name = "西门",
	ways = {
		["east"] = "hmy/pingding/cj1",
		["west"] = "hmy/pingding/road3",
	},
}
Room {
	id = "hmy/pingding/gate2",
	name = "北门",
	ways = {
		["south"] = "hmy/pingding/cj4",
		["north"] = "hmy/pingding/road4",
	},
}
Room {
	id = "hmy/pingding/kedian",
	name = "平定客店",
	no_fight = true,
	ways = {
		["northwest"] = "hmy/pingding/cj3",
		["north"] = "hmy/pingding/kefang",
	},
	nolooks = {
		["up"] = true,
	},
}
Room {
	id = "hmy/pingding/kedian2",
	name = "客店二楼",
	ways = {
		["enter"] = "hmy/pingding/kedian3",
		["down"] = "hmy/pingding/kedian",
	},
}
Room {
	id = "hmy/pingding/kedian3",
	name = "客店二楼",
	no_fight = true,
	ways = {
		["out"] = "hmy/pingding/kedian2",
	},
}
Room {
	id = "hmy/pingding/kefang",
	name = "客房",
	no_fight = true,
	ways = {
		["south"] = "hmy/pingding/kedian",
	},
}
Room {
	id = "hmy/pingding/road1",
	name = "土路",
	ways = {
		["northeast"] = "group/entry/hmyroad2",
		["west"] = "changan/northroad10",
	},
}
Room {
	id = "hmy/pingding/road3",
	name = "土路",
	ways = {
		["westdown"] = "group/entry/hmyroad2",
		["east"] = "hmy/pingding/gate1",
	},
}
Room {
	id = "hmy/pingding/road4",
	name = "土路",
	ways = {
		["south"] = "hmy/pingding/gate2",
		["northwest"] = "hmy/pingding/road5",
	},
}
Room {
	id = "hmy/pingding/road5",
	name = "土路",
	ways = {
		["northwest"] = "hmy/shidao",
		["southeast"] = "hmy/pingding/road4",
	},
}
Room {
	id = "hmy/pingding/road6",
	name = "土路",
	ways = {
		["eastup"] = "hmy/pingding/road7",
		["west"] = "hmy/pingding/dongmen",
	},
}
Room {
	id = "hmy/pingding/road7",
	name = "土路",
	ways = {
		["westdown"] = "hmy/pingding/road6",
		["east"] = "group/entry/hmyroad8",
	},
}
Room {
	id = "hmy/pingding/road9",
	name = "土路",
	ways = {
		["northwest"] = "group/entry/hmyroad8",
		["east"] = "cangzhou/sancakou",
	},
}
Room {
	id = "hmy/pingding/xchidian",
	name = "小吃店",
	ways = {
		["north"] = "hmy/pingding/cj2",
	},
}
Room {
	id = "hmy/pingding/yaopu",
	name = "药铺",
	ways = {
		["east"] = "hmy/pingding/cj3",
	},
}
Room {
	id = "hmy/qiandian",
	name = "前殿",
	ways = {
		["east"] = "hmy/changlang",
		["west"] = "hmy/shibanlu",
	},
	blocks = {
		["east"] = {
			{id = "shi zhe", exp = 1500000},
		}
	},
}
Room {
	id = "hmy/qiangu",
	name = "千古石",
	ways = {
		["north"] = "hmy/baizhang",
	},
}
Room {
	id = "hmy/qlongtang",
	name = "青龙堂",
	ways = {
		["east"] = "hmy/changlang2",
	},
}
Room {
	id = "hmy/qqiudian",
	name = "千秋殿",
	ways = {
		["east"] = "hmy/changlang3",
		["west"] = "hmy/changlang2",
	},
}
Room {
	id = "hmy/rusheng",
	name = "入胜亭",
	ways = {
		["north"] = "hmy/wulao",
	},
}
Room {
	id = "hmy/ryping",
	name = "日月坪",
	ways = {
		["eastdown"] = "hmy/shimen",
		["#hmy shangya"] = "hmy/yading",
	},
	nolooks = {
		["#hmy shangya"] = true,
		["enter"] = true,
	},
}
Room {
	id = "hmy/shandao",
	name = "山道",
	ways = {
		["westup"] = "hmy/shandao2",
		["west"] = "hmy/changtan",
	},
}
Room {
	id = "hmy/shandao2",
	name = "山道",
	ways = {
		["eastdown"] = "hmy/shandao",
		["westup"] = "hmy/baichi",
	},
}
Room {
	id = "hmy/shibanlu",
	name = "石板路",
	ways = {
		["south"] = "hmy/pailou",
		["east"] = "hmy/qiandian",
	},
	lengths = {
		["east"] = "if getExp() > 1500000 then return 1 else return false end",
	},
}
Room {
	id = "hmy/shidao",
	name = "石道",
	ways = {
		["southeast"] = "hmy/pingding/road5",
		["north"] = "hmy/shidao2",
	},
}
Room {
	id = "hmy/shidao2",
	name = "石道",
	ways = {
		["westdown"] = "hmy/xxtan",
		["south"] = "hmy/shidao",
		["east"] = "hmy/liangting",
	},
}
Room {
	id = "hmy/shifang",
	name = "膳食房",
	no_fight = true,
	ways = {
		["west"] = "hmy/changlang4",
	},
}
Room {
	id = "hmy/shijie",
	name = "石阶",
	ways = {
		["eastdown"] = "hmy/baichi",
		["westup"] = "hmy/shijie2",
	},
}
Room {
	id = "hmy/shijie2",
	name = "石阶",
	ways = {
		["eastdown"] = "hmy/shijie",
		["westup"] = "hmy/shimen",
	},
}
Room {
	id = "hmy/shimen",
	name = "石门",
	ways = {
		["eastdown"] = "hmy/shijie2",
		["#toRyp"] = "hmy/ryping",
	},
	nolooks = {
		["#toRyp"] = true,
		["westup"] = true,
	},
	lengths = {
		["#toRyp"] = 50,
	},
}
Room {
	id = "hmy/shiwu",
	name = "小石屋",
	ways = {
		["east"] = "hmy/houhuayen",
	},
}
Room {
	id = "hmy/shufang",
	name = "书房",
	ways = {
		["north"] = "hmy/changlang3",
	},
}
Room {
	id = "hmy/suo",
	name = "索道",
	ways = {
		["westdown"] = "hmy/baichi",
	},
}
Room {
	id = "hmy/taohua",
	name = "桃花川",
	ways = {
		["northup"] = "hmy/meimao",
		["westup"] = "hmy/zisi",
		["west"] = "hmy/ziyun",
	},
}
Room {
	id = "hmy/wulao",
	name = "五老峰",
	ways = {
		["south"] = "hmy/rusheng",
		["east"] = "hmy/ziyun",
		["north"] = "hmy/yiping",
		["west"] = "hmy/lianhua",
	},
}
Room {
	id = "hmy/xhuayuan",
	name = "小花园",
	ways = {
		["west"] = "hmy/xiaoshe",
		["up"] = "hmy/dedao",
	},
}
Room {
	id = "hmy/xian",
	name = "仙人洞",
	ways = {
		["westdown"] = "hmy/xianren",
	},
}
Room {
	id = "hmy/xiangfang",
	name = "厢房",
	no_fight = true,
	ways = {
		["west"] = "hmy/pailou",
	},
}
Room {
	id = "hmy/xianren",
	name = "仙人指路",
	ways = {
		["eastup"] = "hmy/xian",
		["westup"] = "hmy/lianhua",
	},
}
Room {
	id = "hmy/xiaoshe",
	name = "小舍",
	ways = {
		["east"] = "hmy/xhuayuan",
	},
}
Room {
	id = "hmy/xiuxishi",
	name = "休息室",
	no_fight = true,
	ways = {
		["south"] = "hmy/changlang4",
	},
	lengths = {
		["south"] = "if getSex() == '女' then return 1 else return false end",
	},
}
Room {
	id = "hmy/xxtan",
	name = "猩猩滩",
	ways = {
		["eastup"] = "hmy/shidao2",
		["dutan"] = "hmy/changtan"
	},
	nolooks = {
		["dutan"] = true,
		["enter"] = true,
	},
	lengths = {
		["dutan"] = "if getDodge() < 100 then return false else return 1 end",
	},
}
Room {
	id = "hmy/yading",
	name = "崖顶",
	ways = {
		["east"] = "hmy/pailou",
		["#hmy xiaya"] = "hmy/ryping",
	},
	nolooks = {
		["#hmy xiaya"] = true,
		["enter"] = true,
	},
}
Room {
	id = "hmy/yiping",
	name = "一品崖",
	ways = {
		["south"] = "hmy/wulao",
	},
}
Room {
	id = "hmy/yiting",
	name = "议事厅",
	ways = {
		["west"] = "hmy/changlang6",
	},
}
Room {
	id = "hmy/yupingpu",
	name = "玉屏瀑",
	ways = {
		["westdown"] = "hmy/baizhang",
		["east"] = "hmy/lianhua",
		["north"] = "hmy/guanpu",
	},
}
Room {
	id = "hmy/zhuquetang",
	name = "朱雀堂",
	ways = {
		["east"] = "hmy/cddian",
		["west"] = "hmy/baihutang",
	},
}
Room {
	id = "hmy/zisi",
	name = "紫石崖",
	ways = {
		["eastdown"] = "hmy/taohua",
	},
}
Room {
	id = "hmy/ziyun",
	name = "紫云崖",
	ways = {
		["east"] = "hmy/taohua",
		["west"] = "hmy/wulao",
	},
}
Room {
	id = "huanghe/bingcao",
	name = "冰草湾",
	ways = {
		["southwest"] = "huanghe/shixiazi",
		["northeast"] = "huanghe/yinpanshui",
	},
}
Room {
	id = "huanghe/caodi1",
	name = "草地",
	ways = {
		["south"] = "city/hsroad1",
		["west"] = "huanghe/caodi2",
	},
}
Room {
	id = "huanghe/caodi2",
	name = "草地",
	ways = {
		["east"] = "huanghe/caodi1",
		["west"] = "huanghe/shulin1",
	},
}
Room {
	id = "huanghe/cschang",
	name = "采石场",
	no_fight = true,
	ways = {
		["northup"] = "huanghe/hhgate",
	},
}
Room {
	id = "huanghe/daba",
	name = "黄河大堤",
	no_fight = true,
	ways = {
		["southdown"] = "huanghe/huanghe7",
	},
}
Room {
	id = "huanghe/dacaigou",
	name = "打柴沟",
	ways = {
		["southwest"] = "huanghe/gulang",
		["north"] = "huanghe/wuqiao",
	},
}
Room {
	id = "huanghe/fendi",
	name = "墓地",
	no_fight = true,
	ways = {
		["south"] = "huanghe/shulin6",
	},
}
Room {
	id = "huanghe/gchang",
	name = "广场",
	ways = {
		["east"] = "huanghe/hhgate",
		["west"] = "huanghe/xyting",
	},
}
Room {
	id = "huanghe/guchangcheng",
	name = "古长城",
	ways = {
		["southeast"] = "huanghe/shimen",
		["southwest"] = "huanghe/yinpanshui",
	},
}
Room {
	id = "huanghe/gulang",
	name = "古浪",
	ways = {
		["east"] = "huanghe/yaocaidian",
		["northeast"] = "huanghe/dacaigou",
		["west"] = "huanghe/xiaojiaqiao",
	},
}
Room {
	id = "huanghe/hetao",
	name = "河套",
	ways = {
		["south"] = "huanghe/weifen",
		["northwest"] = "huanghe/huanghe_1",
	},
}
Room {
	id = "huanghe/hhgate",
	name = "黄河帮寨门",
	ways = {
		["east"] = "huanghe/huanghe1",
		["southdown"] = "huanghe/cschang",
		["west"] = "huanghe/gchang",
	},
}
Room {
	id = "huanghe/hongshanxia",
	name = "红山峡",
	ways = {
		["south"] = "huanghe/jingyuan",
		["north"] = "huanghe/shimen",
	},
}
Room {
	id = "huanghe/huanghe1",
	name = "黄河岸边",
	ways = {
		["south"] = "huanghe/tiandi4",
		["north"] = "huanghe/weifen",
		["east"] = "huanghe/huanghe2",
		["west"] = "huanghe/hhgate",
	},
}
Room {
	id = "huanghe/huanghe2",
	name = "黄河岸边",
	ways = {
		["east"] = "huanghe/huanghe3",
		["west"] = "huanghe/huanghe1",
	},
}
Room {
	id = "huanghe/huanghe3",
	name = "黄河岸边",
	ways = {
		["east"] = "huanghe/huanghe4",
		["west"] = "huanghe/huanghe2",
	},
}
Room {
	id = "huanghe/huanghe4",
	name = "黄河岸边",
	ways = {
		["northeast"] = "huanghe/huanghe5",
		["west"] = "huanghe/huanghe3",
	},
}
Room {
	id = "huanghe/huanghe5",
	name = "黄河岸边",
	ways = {
		["southwest"] = "huanghe/huanghe4",
		["east"] = "taishan/daizong",
		["northeast"] = "huanghe/huanghe6",
	},
}
Room {
	id = "huanghe/huanghe6",
	name = "黄河岸边",
	ways = {
		["southwest"] = "huanghe/huanghe5",
		["northeast"] = "huanghe/huanghe7",
	},
}
Room {
	id = "huanghe/huanghe7",
	name = "黄河岸边",
	ways = {
		["northup"] = "huanghe/daba",
		["southwest"] = "huanghe/huanghe6",
		["northwest"] = "huanghe/yyd/damen",
		["northeast"] = "huanghe/huanghe8",
	},
}
Room {
	id = "huanghe/huanghe8",
	name = "黄河入海口",
	ways = {
		["southwest"] = "huanghe/huanghe7",
		["north"] = "huanghe/road2",
	},
}
Room {
	id = "huanghe/huanghe_1",
	name = "黄河",
	ways = {
		["southeast"] = "huanghe/hetao",
		["northwest"] = "huanghe/huangtu",
	},
}
Room {
	id = "huanghe/huanghe_2",
	name = "黄河",
	ways = {
		["northeast"] = "huanghe/huangtu",
		["west"] = "huanghe/huanghe_3",
	},
}
Room {
	id = "huanghe/huanghe_3",
	name = "黄河",
	ways = {
		["east"] = "huanghe/huanghe_2",
	},
}
Room {
	id = "huanghe/huangtu",
	name = "黄土高原",
	ways = {
		["southeast"] = "huanghe/huanghe_1",
		["northwest"] = "changan/road2",
	},
}
Room {
	id = "huanghe/jingyuan",
	name = "靖远",
	ways = {
		["south"] = "huanghe/shamo",
		["north"] = "huanghe/hongshanxia",
	},
}
Room {
	id = "huanghe/kedian",
	name = "客店",
	no_fight = true,
	ways = {
		["up"] = "huanghe/kedian2",
	},
}
Room {
	id = "huanghe/kedian2",
	name = "客店二楼",
	ways = {
		["enter"] = "huanghe/kedian3",
		["down"] = "huanghe/kedian",
	},
}
Room {
	id = "huanghe/kedian3",
	name = "客店二楼",
	no_fight = true,
	ways = {
		["out"] = "huanghe/kedian2",
	},
}
Room {
	id = "huanghe/road2",
	name = "大渡口",
	ways = {
		["south"] = "huanghe/huanghe8",
		["#hhdk n"] = "huanghe/road3",
	},
	lengths = {
		["#hhdk n"] = 10000,
	},
	nolooks = {
		["enter"] = true,
		["#hhdk n"] = true,
	}
}
Room {
	id = "huanghe/road3",
	name = "大渡口",
	ways = {
		["north"] = "cangzhou/sroad4",
		["#hhdk s"] = "huanghe/road2",
	},
	lengths = {
		["#hhdk s"] = 10000,
	},
	nolooks = {
		["enter"] = true,
		["#hhdk s"] = true,
	}
}
Room {
	id = "huanghe/shamo",
	name = "沙漠",
	ways = {
		["south"] = "huanghe/shamo1",
		["east"] = "huanghe/shamo",
		["north"] = "huanghe/shamo",
		["west"] = "huanghe/shamo",
	},
}
Room {
	id = "huanghe/shamo1",
	name = "沙漠",
	ways = {
		["south"] = "huanghe/shamo",
		["enter"] = "huanghe/shidong",
		["east"] = "huanghe/shamo",
		["north"] = "huanghe/shamo",
		["west"] = "huanghe/shamo",
	},
}
Room {
	id = "huanghe/shidong",
	name = "石洞",
	ways = {
		["out"] = "huanghe/shamo1",
	},
}
Room {
	id = "huanghe/shimen",
	name = "石门",
	ways = {
		["south"] = "huanghe/hongshanxia",
		["northwest"] = "huanghe/yinpanshui",
		["north"] = "huanghe/wufosi",
	},
}
Room {
	id = "huanghe/shixiazi",
	name = "石峡子",
	ways = {
		["southwest"] = "huanghe/tumenzi",
		["northeast"] = "huanghe/bingcao",
	},
}
Room {
	id = "huanghe/shulin1",
	name = "树林",
	ways = {
		["north"] = "huanghe/shulin3",
		["east"] = "huanghe/caodi2",
		["west"] = "huanghe/shulin2",
	},
}
Room {
	id = "huanghe/shulin2",
	name = "树林",
	ways = {
		["southwest"] = "zhiye/caikuang-chang0",
		["north"] = "huanghe/shulin4",
		["east"] = "huanghe/shulin1",
	},
}
Room {
	id = "huanghe/shulin3",
	name = "树林",
	ways = {
		["south"] = "huanghe/shulin1",
		["north"] = "huanghe/tiandi1",
		["west"] = "huanghe/shulin4",
	},
}
Room {
	id = "huanghe/shulin4",
	name = "树林",
	ways = {
		["south"] = "huanghe/shulin2",
		["northwest"] = "group/entry/hhshulin5",
		["east"] = "huanghe/shulin3",
	},
}
Room {
	id = "huanghe/shulin6",
	name = "树林",
	ways = {
		["north"] = "huanghe/fendi",
		["east"] = "group/entry/hhshulin5",
	},
	lengths = {
		["north"] = "if getJobbusy() > 0 then return false else return 1 end",
	},
}
Room {
	id = "huanghe/tiandi1",
	name = "田地",
	ways = {
		["south"] = "huanghe/shulin3",
		["east"] = "huanghe/tiandi3",
		["west"] = "huanghe/tiandi2",
	},
}
Room {
	id = "huanghe/tiandi2",
	name = "田地",
	ways = {
		["southwest"] = "group/entry/hhshulin5",
		["east"] = "huanghe/tiandi1",
	},
}
Room {
	id = "huanghe/tiandi3",
	name = "田地",
	ways = {
		["northeast"] = "huanghe/tiandi4",
		["west"] = "huanghe/tiandi1",
	},
}
Room {
	id = "huanghe/tiandi4",
	name = "田地",
	ways = {
		["southwest"] = "huanghe/tiandi3",
		["east"] = "taishan/hsroad2",
		["north"] = "huanghe/huanghe1",
	},
}
Room {
	id = "huanghe/tumenzi",
	name = "土门子",
	ways = {
		["south"] = "huanghe/wuwei",
		["northwest"] = "hengshan/jinlongxia",
		["east"] = "hmy/pingding/road1",
		["northeast"] = "huanghe/shixiazi",
	},
}
Room {
	id = "huanghe/weifen",
	name = "渭汾流域",
	ways = {
		["southwest"] = "nanyang/yidao4",
		["south"] = "huanghe/huanghe1",
		["north"] = "huanghe/hetao",
	},
}
Room {
	id = "huanghe/wufosi",
	name = "五佛寺",
	ways = {
		["south"] = "huanghe/shimen",
	},
}
Room {
	id = "huanghe/wuqiao",
	name = "乌鞘岭",
	ways = {
		["south"] = "huanghe/dacaigou",
		["northwest"] = "huanghe/wuwei",
	},
}
Room {
	id = "huanghe/wuwei",
	name = "武威",
	ways = {
		["southeast"] = "huanghe/wuqiao",
		["north"] = "huanghe/tumenzi",
	},
}
Room {
	id = "huanghe/xiaojiaqiao",
	name = "萧家桥",
	ways = {
		["east"] = "huanghe/gulang",
	},
}
Room {
	id = "huanghe/xyting",
	name = "侠义厅",
	ways = {
		["east"] = "huanghe/gchang",
	},
}
Room {
	id = "huanghe/yaocaidian",
	name = "皮货药材店",
	ways = {
		["west"] = "huanghe/gulang",
	},
}
Room {
	id = "huanghe/yinpanshui",
	name = "营盘水",
	ways = {
		["southwest"] = "huanghe/bingcao",
		["northeast"] = "huanghe/guchangcheng",
	},
}
Room {
	id = "huanghe/yyd/chufang",
	name = "厨房",
	ways = {
		["east"] = "huanghe/yyd/dating",
	},
}
Room {
	id = "huanghe/yyd/damen",
	name = "萧府大门",
	no_fight = true,
	ways = {
		["southeast"] = "huanghe/huanghe7",
		-- ["north"] = "huanghe/yyd/dating",
	},
	nolooks = {
		["north"] = true,
	},
}
Room {
	id = "huanghe/yyd/dating",
	name = "萧府大厅",
	ways = {
		["south"] = "huanghe/yyd/damen",
		["north"] = "huanghe/yyd/houyuan",
		["west"] = "huanghe/yyd/chufang",
		["east"] = "huanghe/yyd/shufang",
	},
}
Room {
	id = "huanghe/yyd/houshan",
	name = "后山",
	ways = {
		["south"] = "huanghe/yyd/houyuan",
	},
}
Room {
	id = "huanghe/yyd/houyuan",
	name = "后院",
	ways = {
		["south"] = "huanghe/yyd/dating",
	},
}
Room {
	id = "huanghe/yyd/shufang",
	name = "书房",
	ways = {
		["west"] = "huanghe/yyd/dating",
	},
}
Room {
	id = "huanghe/yyd/shulin",
	name = "树林",
	nofind = true,
	ways = {
		["southeast"] = "huanghe/yyd/shulin",
		["southwest"] = "huanghe/yyd/shulin",
		["northwest"] = "huanghe/yyd/shulin",
		["northeast"] = "huanghe/yyd/shulin",
	},
}
Room {
	id = "huashan/baichi",
	name = "百尺峡",
	ways = {
		["eastup"] = "huashan/laojun",
		["northdown"] = "huashan/qianchi",
	},
}
Room {
	id = "huashan/canglong",
	name = "苍龙岭",
	ways = {
		["westup"] = "huashan/sheshen",
		["northdown"] = "huashan/husun",
		["southdown"] = "huashan/zhenyue",
	},
}
Room {
	id = "huashan/cave",
	name = "密洞",
	ways = {
		["right"] = "huashan/rukou",
	},
}
Room {
	id = "huashan/celang1",
	name = "侧廊",
	ways = {
		["east"] = "huashan/qianting",
		["west"] = "huashan/lianwu1",
	},
}
Room {
	id = "huashan/celang2",
	name = "侧廊",
	ways = {
		["east"] = "huashan/lianwu2",
		["west"] = "huashan/qianting",
	},
}
Room {
	id = "huashan/celang3",
	name = "侧廊",
	ways = {
		["south"] = "huashan/xiuxi1",
		["east"] = "huashan/houtang",
		["west"] = "huashan/fanting",
	},
	lengths = {
		["south"] = "if getSex() == '女' then return 1 else return false end",
	},
}
Room {
	id = "huashan/celang4",
	name = "侧廊",
	ways = {
		["south"] = "huashan/xiuxi2",
		["east"] = "huashan/shuyuan",
		["west"] = "huashan/houtang",
	},
	lengths = {
		["south"] = "if getSex() == '男' then return 1 else return false end",
	},
}
Room {
	id = "huashan/chaoyang",
	name = "朝阳峰",
	ways = {
		["westdown"] = "huashan/zhenyue",
	},
}
Room {
	id = "huashan/fanting",
	name = "饭厅",
	ways = {
		["north"] = "huashan/yaofang",
		["east"] = "huashan/celang3",
	},
}
Room {
	id = "huashan/hole",
	name = "思过崖洞口",
	ways = {
		["out"] = "huashan/siguoya",
	},
}
Room {
	id = "huashan/hole2",
	name = "石洞",
	ways = {
		["out"] = "huashan/song",
	},
}
Room {
	id = "huashan/houshan",
	name = "后山",
	ways = {
		["northdown"] = "huashan/midong",
	},
}
Room {
	id = "huashan/houtang",
	name = "后堂",
	no_fight = true,
	ways = {
		["south"] = "huashan/qinshi",
		["north"] = "huashan/zhengqi",
		["east"] = "huashan/celang4",
		["west"] = "huashan/celang3",
	},
}
Room {
	id = "huashan/husun",
	name = "猢狲愁",
	ways = {
		["southup"] = "huashan/canglong",
		["northdown"] = "huashan/laojun",
	},
}
Room {
	id = "huashan/jiabi",
	name = "夹山壁",
	ways = {
		["west"] = "huashan/shiwu1",
		["out"] = "huashan/siguoya",
	},
}
Room {
	id = "huashan/jinshe/biding",
	name = "壁顶",
	ways = {
		["down"] = "huashan/husun",
	},
}
Room {
	id = "huashan/jitan",
	name = "祭坛",
	ways = {
		["out"] = "huashan/yunuci",
	},
}
Room {
	id = "huashan/kongdi",
	name = "空地",
	ways = {
		["north"] = "huashan/shulin1",
		["southdown"] = "huashan/v-road-1",
	},
}
Room {
	id = "huashan/laojun",
	name = "老君沟",
	ways = {
		["southup"] = "huashan/husun",
		["westdown"] = "huashan/baichi",
	},
}
Room {
	id = "huashan/lianwu1",
	name = "练武场",
	ways = {
		["south"] = "huashan/yaofang",
		["east"] = "huashan/celang1",
	},
}
Room {
	id = "huashan/lianwu2",
	name = "练武场",
	ways = {
		["south"] = "huashan/wuqiku",
		["west"] = "huashan/celang2",
	},
}
Room {
	id = "huashan/maowu",
	name = "茅屋",
	ways = {
		["southeast"] = "huashan/v-road-1",
	},
}
Room {
	id = "huashan/midao",
	name = "密道",
	ways = {
		["south"] = "huashan/midong",
		["left"] = "huashan/rukou",
	},
}
Room {
	id = "huashan/midong",
	name = "秘洞",
	ways = {
		["southeast"] = "huashan/midong",
		["southwest"] = "huashan/midong",
		["south"] = "huashan/midong",
		["northwest"] = "huashan/midong",
		["north"] = "huashan/midong",
		["east"] = "huashan/midong",
		["northeast"] = "huashan/midong",
		["west"] = "huashan/midong",
	},
}
Room {
	id = "huashan/path1",
	name = "山脚下",
	ways = {
		["southeast"] = "huashan/shaluo",
		["south"] = "huashan/shulin",
		["north"] = "huashan/yuquan",
		["west"] = "village/eexit",
	},
}
Room {
	id = "huashan/pubu",
	name = "瀑布",
	ways = {
		["east"] = "huashan/yunu",
		["tiao tan;#waitbusy"] = "huashan/shuitan",
	},
	nolooks = {
		["tiao tan;#waitbusy"] = true,
	},
	lengths = {
		["tiao tan;#waitbusy"] = 20,
	},
}
Room {
	id = "huashan/shuitan",
	name = "瀑布底",
	ways = {
		["qian up"] = "huashan/pubu",
	},
	nolooks = {
		["qian up"] = true,
	},
}
Room {
	id = "huashan/qianchi",
	name = "千尺幢",
	ways = {
		["southup"] = "huashan/baichi",
		["westdown"] = "huashan/qingke",
	},
}
Room {
	id = "huashan/qianting",
	name = "前厅",
	ways = {
		["south"] = "huashan/zhengqi",
		["east"] = "huashan/celang2",
		["northdown"] = "huashan/taijie",
		["west"] = "huashan/celang1",
	},
}
Room {
	id = "huashan/qingke",
	name = "青柯坪",
	ways = {
		["eastup"] = "huashan/qianchi",
		["northdown"] = "huashan/shaluo",
	},
}
Room {
	id = "huashan/qinshi",
	name = "寝室",
	ways = {
		["north"] = "huashan/houtang",
	},
}
Room {
	id = "huashan/rukou",
	name = "山洞",
}
Room {
	id = "huashan/shaluo",
	name = "莎萝坪",
	ways = {
		["southup"] = "huashan/qingke",
		["northwest"] = "huashan/path1",
		["northeast"] = "huashan/shanhong",
	},
}
Room {
	id = "huashan/shanhong",
	name = "山洪瀑布",
	ways = {
		["southwest"] = "huashan/shaluo",
	},
}
Room {
	id = "huashan/shanlu1",
	name = "山路",
	ways = {
		["southeast"] = "huashan/shanlu2",
		["north"] = "huashan/yunu",
	},
}
Room {
	id = "huashan/shanlu2",
	name = "山路",
	ways = {
		["southup"] = "huashan/taijie",
		["southwest"] = "huashan/xiaoxi",
		["northwest"] = "huashan/shanlu1",
	},
}
Room {
	id = "huashan/shentan",
	name = "山涧",
	ways = {
		["northeast"] = "huashan/v-road-1",
	},
}
Room {
	id = "huashan/sheshen",
	name = "舍身崖",
	ways = {
		["eastdown"] = "huashan/canglong",
	},
}
Room {
	id = "huashan/shiwu",
	name = "石屋",
	ways = {
		["west"] = "huashan/shulin4",
	},
}
Room {
	id = "huashan/shiwu1",
	name = "石屋",
	ways = {
		["east"] = "huashan/jiabi",
	},
}
Room {
	id = "huashan/shulin",
	name = "树林",
	ways = {
		["north"] = "huashan/shulinn",
		["east"] = "huashan/shulin1",
		["west"] = "huashan/shulinn",
	},
}
Room {
	id = "huashan/shulin1",
	name = "松树林",
	ways = {
		["south"] = "huashan/kongdi",
		["north"] = "huashan/shulinn",
		["east"] = "huashan/shulin1",
		["west"] = "huashan/shulin1",
	},
}
Room {
	id = "huashan/shulinn",
	name = "松树林",
	ways = {
		["#outSsl"] = "huashan/shiwu",
	},
	nolooks = {
		["#outSsl"] = true,
		["south"] = true,
		["east"] = true,
		["north"] = true,
		["west"] = true,
	},
	lengths = {
		["#outSsl"] = 50,
	},
	find = {
		path = {"n;w"}, count = 20,
	},
}
Room {
	id = "huashan/shulin4",
	name = "松树林",
	ways = {
		["south"] = "huashan/path1",
		["east"] = "huashan/shiwu",
		["north"] = "huashan/kongdi",
		["west"] = "huashan/shulin4",
	},
}
Room {
	id = "huashan/shuyuan",
	name = "书院",
	ways = {
		["north"] = "huashan/wuqiku",
		["west"] = "huashan/celang4",
	},
}
Room {
	id = "huashan/siguoya",
	name = "思过崖",
	ways = {
		["eastdown"] = "huashan/xiaolu2",
		-- ["enter"] = "huashan/hole",
	},
	nolooks = {
		["enter"] = true,
	},
}
Room {
	id = "huashan/song",
	name = "万年松",
	ways = {
		["enter"] = "huashan/hole2",
		["down"] = "huashan/v-road-5",
	},
}
Room {
	id = "huashan/taijie",
	name = "台阶",
	ways = {
		["southup"] = "huashan/qianting",
		["northdown"] = "huashan/shanlu2",
	},
}
Room {
	id = "huashan/v-road-1",
	name = "山涧",
	ways = {
		["southeast"] = "huashan/v-road-5",
		["southwest"] = "huashan/shentan",
		["northeast"] = "huashan/v-road-2",
	},
}
Room {
	id = "huashan/v-road-2",
	name = "山涧",
	ways = {
		["eastup"] = "huashan/v-road-3",
		["southwest"] = "huashan/v-road-1",
	},
}
Room {
	id = "huashan/v-road-3",
	name = "山涧",
	ways = {
		["westdown"] = "huashan/v-road-2",
		["southeast"] = "huashan/shulinn",
	},
}
Room {
	id = "huashan/v-road-5",
	name = "山涧",
	ways = {
		["northwest"] = "huashan/v-road-1",
	},
}
Room {
	id = "huashan/wuqiku",
	name = "剑房",
	ways = {
		["south"] = "huashan/shuyuan",
		["north"] = "huashan/lianwu2",
	},
}
Room {
	id = "huashan/xiaolu1",
	name = "小山路",
	ways = {
		["southeast"] = "huashan/yunu",
		["northwest"] = "huashan/xiaolu2",
	},
}
Room {
	id = "huashan/xiaolu2",
	name = "小山路",
	ways = {
		["southeast"] = "huashan/xiaolu1",
		["westup"] = "huashan/siguoya",
	},
}
Room {
	id = "huashan/xiaoxi",
	name = "小溪",
	ways = {
		["northeast"] = "huashan/shanlu2",
	},
}
Room {
	id = "huashan/xiuxi1",
	name = "女休息室",
	no_fight = true,
	ways = {
		["north"] = "huashan/celang3",
	},
}
Room {
	id = "huashan/xiuxi2",
	name = "男休息室",
	no_fight = true,
	ways = {
		["north"] = "huashan/celang4",
	},
}
Room {
	id = "huashan/yaofang",
	name = "药房",
	ways = {
		["south"] = "huashan/fanting",
		["north"] = "huashan/lianwu1",
	},
}
Room {
	id = "huashan/yunu",
	name = "玉女峰",
	ways = {
		["south"] = "huashan/shanlu1",
		["northwest"] = "huashan/xiaolu1",
		["east"] = "huashan/yunuci",
		["northdown"] = "huashan/zhenyue",
		["west"] = "huashan/pubu",
	},
}
Room {
	id = "huashan/yunuci",
	name = "玉女祠",
	ways = {
		["enter"] = "huashan/jitan",
		["west"] = "huashan/yunu",
	},
}
Room {
	id = "huashan/yuquan",
	name = "玉泉院",
	ways = {
		["south"] = "huashan/path1",
	},
}
Room {
	id = "huashan/zhengqi",
	name = "正气堂",
	no_fight = true,
	ways = {
		["south"] = "huashan/houtang",
		["north"] = "huashan/qianting",
	},
}
Room {
	id = "huashan/zhenyue",
	name = "镇岳宫",
	ways = {
		["northup"] = "huashan/canglong",
		["southup"] = "huashan/yunu",
		["eastup"] = "huashan/chaoyang",
	},
}
Room {
	id = "hz/baidi",
	name = "白堤",
	ways = {
		["southeast"] = "hz/yuemiao",
		["southwest"] = "hz/gushan",
		["northwest"] = "hz/duanqiao",
		["north"] = "hz/qsddao1",
		["northeast"] = "hz/hubian",
		["west"] = "hz/pinghu",
	},
}
Room {
	id = "hz/baoshuta",
	name = "宝淑塔",
	ways = {
		["northdown"] = "hz/shanlu",
		["southdown"] = "hz/qsddao1",
	},
}
Room {
	id = "hz/beimen",
	name = "北门",
	ways = {
		["south"] = "hz/qsddao6",
		["north"] = "group/entry/hzqsd7",
	},
}
Room {
	id = "hz/changlang1",
	name = "长廊",
	ways = {
		["south"] = "hz/changlang1",
		["north"] = "hz/changlang2",
		["east"] = "hz/changlang1",
		["west"] = "hz/changlang1",
	},
}
Room {
	id = "hz/changlang2",
	name = "长廊",
	ways = {
		["south"] = "hz/changlang3",
		["north"] = "hz/changlang2",
		["east"] = "hz/changlang2",
		["west"] = "hz/changlang2",
	},
}
Room {
	id = "hz/changlang3",
	name = "长廊",
	ways = {
		["south"] = "hz/changlang3",
		["east"] = "hz/changlang4",
		["north"] = "hz/changlang3",
		["west"] = "hz/changlang3",
	},
}
Room {
	id = "hz/changlang4",
	name = "长廊",
	ways = {
		["south"] = "hz/changlang4",
		["north"] = "hz/changlang4",
		["east"] = "hz/changlang4",
		["west"] = "hz/huanglong",
	},
}
Room {
	id = "hz/cuihezhai",
	name = "翠合斋",
	no_fight = true,
	ways = {
		["west"] = "hz/qsddao4",
	},
}
Room {
	id = "hz/duanqiao",
	name = "断桥残雪",
	ways = {
		["southeast"] = "hz/baidi",
	},
}
Room {
	id = "hz/dxbdian",
	name = "大雄宝殿",
	ways = {
		["south"] = "hz/tianwang",
	},
}
Room {
	id = "hz/fangheting",
	name = "放鹤亭",
	ways = {
		["south"] = "hz/gushan",
	},
}
Room {
	id = "hz/feilaifeng",
	name = "飞来峰",
	ways = {
		["southeast"] = "hz/yxsdong",
		["west"] = "hz/qsddao3",
	},
}
Room {
	id = "hz/gushan",
	name = "孤山",
	ways = {
		["south"] = "hz/wenlange",
		["east"] = "meizhuang/hubian",
		["north"] = "hz/fangheting",
		["northeast"] = "hz/baidi",
		["west"] = "hz/xilengqiao",
	},
}
Room {
	id = "hz/hggyu",
	name = "花港观鱼",
	ways = {
		["southeast"] = "hz/hubian1",
		["south"] = "hz/hubian2",
		["north"] = "hz/sudi",
		["east"] = "hz/hongyuchi",
		["west"] = "hz/mudanyuan",
	},
}
Room {
	id = "hz/hongyuchi",
	name = "红鱼池",
	ways = {
		["west"] = "hz/hggyu",
	},
}
Room {
	id = "hz/huanglong",
	name = "黄龙洞",
	ways = {
		["southeast"] = "hz/shuichi",
		["southdown"] = "hz/shanlu",
	},
}
Room {
	id = "hz/hubian",
	name = "西湖边",
	ways = {
		["southwest"] = "hz/baidi",
		["south"] = "hz/llwying",
	},
}
Room {
	id = "hz/hubian1",
	name = "西湖边",
	ways = {
		["southeast"] = "hz/jingcisi",
		["northwest"] = "hz/hggyu",
		["north"] = "hz/llwying",
		["west"] = "hz/hubian2",
	},
}
Room {
	id = "hz/hubian2",
	name = "西湖边",
	ways = {
		["south"] = "hz/hupao",
		["east"] = "hz/hubian1",
		["north"] = "hz/hggyu",
	},
}
Room {
	id = "hz/hubian3",
	name = "西湖边",
	ways = {
		["northwest"] = "hz/baidi",
		["east"] = "hz/yuemiao",
	},
}
Room {
	id = "hz/hupao",
	name = "虎跑",
	ways = {
		["northwest"] = "hz/longjing",
		["north"] = "hz/hubian2",
		["northeast"] = "hz/yuhuang",
	},
}
Room {
	id = "hz/huxinting",
	name = "湖心亭",
	ways = {
		["east"] = "hz/santan",
		["west"] = "hz/ruangong",
	},
}
Room {
	id = "hz/jingcisi",
	name = "净慈寺",
	ways = {
		["southeast"] = "hz/yuhuang",
		["northwest"] = "hz/hubian1",
	},
}
Room {
	id = "hz/jingzhong",
	name = "精忠柏",
	ways = {
		["south"] = "hz/mu",
		["west"] = "hz/yuanmen",
	},
}
Room {
	id = "hz/jinhuazhai",
	name = "金华斋",
	ways = {
		["east"] = "hz/qsddao4",
	},
}
Room {
	id = "hz/jiulou",
	name = "天香楼",
	ways = {
		["east"] = "hz/qsddao6",
	},
}
Room {
	id = "hz/juquqiao",
	name = "九曲桥",
	ways = {
		["south"] = "hz/santan",
		["north"] = "hz/xiaoying",
	},
}
Room {
	id = "hz/kedian2",
	name = "客店二楼",
	ways = {
		["enter"] = "hz/kedian3",
		["down"] = "hz/tianxiang",
	},
}
Room {
	id = "hz/kedian3",
	name = "客店二楼",
	no_fight = true,
	ways = {
		["out"] = "hz/kedian2",
	},
}
Room {
	id = "hz/kuahong",
	name = "跨虹桥",
	ways = {
		["northwest"] = "hz/quyuan",
		["north"] = "hz/yingboqiao",
		["west"] = "hz/sudi",
	},
}
Room {
	id = "hz/leifengta",
	name = "雷峰塔",
	ways = {
		["westdown"] = "hz/shanlu",
	},
}
Room {
	id = "hz/lingyinsi",
	name = "灵隐寺",
	ways = {
		["east"] = "hz/qsddao3",
		["west"] = "hz/tianwang",
	},
}
Room {
	id = "hz/liulin",
	name = "柳林",
	ways = {
		["south"] = "hz/liulin",
		["north"] = "hz/liulin1",
		["east"] = "hz/liulin",
		["west"] = "hz/liulin",
	},
}
Room {
	id = "hz/liulin1",
	name = "柳林",
	ways = {
		["south"] = "hz/liulin1",
		["north"] = "hz/liulin2",
		["east"] = "hz/liulin1",
		["west"] = "hz/liulin1",
	},
}
Room {
	id = "hz/liulin2",
	name = "柳林",
	ways = {
		["south"] = "hz/liulin2",
		["north"] = "hz/shanlu1",
		["east"] = "hz/liulin2",
	},
}
Room {
	id = "hz/llwying",
	name = "柳浪闻莺",
	ways = {
		["south"] = "hz/hubian1",
		["north"] = "hz/hubian",
	},
}
Room {
	id = "hz/longjing",
	name = "龙井",
	ways = {
		["southeast"] = "hz/hupao",
		["northwest"] = "hz/yxsdong2",
	},
}
Room {
	id = "hz/majiu",
	name = "马厩",
	ways = {
		["west"] = "hz/tianxiang",
	},
}
Room {
	id = "hz/maoshe",
	name = "没做好",
	ways = {
		["out"] = "hz/shanquan",
	},
}
Room {
	id = "hz/mu",
	name = "岳飞墓",
	ways = {
		["north"] = "hz/jingzhong",
	},
}
Room {
	id = "hz/mudanyuan",
	name = "牡丹园",
	ways = {
		["east"] = "hz/hggyu",
	},
}
Room {
	id = "hz/pinghu",
	name = "平湖秋月",
	ways = {
		["east"] = "hz/baidi",
	},
}
Room {
	id = "hz/qsddao1",
	name = "青石大道",
	ways = {
		["northup"] = "hz/baoshuta",
		["south"] = "hz/baidi",
	},
}
Room {
	id = "hz/qsddao2",
	name = "青石大道",
	ways = {
		["southeast"] = "hz/qsddao3",
		["south"] = "hz/sudi",
		["northwest"] = "hz/yuemiao",
		["west"] = "hz/yuquan",
	},
}
Room {
	id = "hz/qsddao3",
	name = "青石大道",
	ways = {
		["southeast"] = "thd/niujia/road",
		["northwest"] = "hz/qsddao2",
		["east"] = "hz/feilaifeng",
		["west"] = "hz/lingyinsi",
	},
}
Room {
	id = "hz/qsddao4",
	name = "青石大道",
	ways = {
		["south"] = "hz/tianxiang",
		["north"] = "hz/qsddao5",
		["east"] = "hz/cuihezhai",
		["west"] = "hz/jinhuazhai",
	},
}
Room {
	id = "hz/qsddao5",
	name = "青石大道",
	ways = {
		["south"] = "hz/qsddao4",
		["east"] = "hz/yaopu",
		["north"] = "hz/qsddao6",
		["west"] = "hz/zahuopu",
	},
}
Room {
	id = "hz/qsddao6",
	name = "青石大道",
	ways = {
		["south"] = "hz/qsddao5",
		["east"] = "hz/shuyuan",
		["north"] = "hz/beimen",
		["west"] = "hz/jiulou",
	},
}
Room {
	id = "hz/quanwu",
	name = "泉屋",
	ways = {
		["south"] = "hz/yuquan",
	},
}
Room {
	id = "hz/quyuan",
	name = "曲园风荷",
	ways = {
		["southeast"] = "hz/kuahong",
		["east"] = "hz/yingxunge",
	},
}
Room {
	id = "hz/ruangong",
	name = "阮公墩",
	ways = {
		["east"] = "hz/huxinting",
	},
}
Room {
	id = "hz/santan",
	name = "三潭映月",
	ways = {
		["north"] = "hz/juquqiao",
		["west"] = "hz/huxinting",
	},
}
Room {
	id = "hz/shanlu",
	name = "山路",
	ways = {
		["northup"] = "hz/huanglong",
		["southup"] = "hz/baoshuta",
		["eastup"] = "hz/leifengta",
	},
}
Room {
	id = "hz/shanlu1",
	name = "山路",
	ways = {
		["south"] = "hz/shanlu3",
		["east"] = "hz/liulin",
		["northeast"] = "suzhou/qsgdao2",
		["west"] = "hz/liulin",
	},
}
Room {
	id = "hz/shanlu2",
	name = "山路",
	ways = {
		["eastdown"] = "ningbo/qsddao1",
		["northdown"] = "hz/zilaidong",
	},
}
Room {
	id = "hz/shanlu3",
	name = "山路",
	ways = {
		["south"] = "group/entry/hzqsd7",
		["north"] = "hz/shanlu1",
		["east"] = "hz/liulin",
		["west"] = "hz/liulin",
	},
}
Room {
	id = "hz/shanquan",
	name = "山泉",
	ways = {
		["south"] = "hz/shanlu1",
		["enter"] = "hz/maoshe",
		["east"] = "hz/shanquan",
	},
}
Room {
	id = "hz/shuichi",
	name = "水池",
	ways = {
		["northwest"] = "hz/huanglong",
		["west"] = "hz/xiaozhu",
	},
}
Room {
	id = "hz/shuyuan",
	name = "书院",
	ways = {
		["west"] = "hz/qsddao6",
	},
}
Room {
	id = "hz/sudi",
	name = "苏堤",
	ways = {
		["south"] = "hz/hggyu",
		["north"] = "hz/qsddao2",
		["east"] = "hz/kuahong",
		["west"] = "hz/yingboqiao",
	},
}
Room {
	id = "hz/tianwang",
	name = "天王殿",
	ways = {
		["east"] = "hz/lingyinsi",
		["north"] = "hz/dxbdian",
	},
}
Room {
	id = "hz/tianxiang",
	name = "鸿昌客栈",
	no_fight = true,
	ways = {
		["north"] = "hz/qsddao4",
		["east"] = "hz/majiu",
		["west"] = "hz/yuemiao",
		-- ["up"] = "hz/kedian2",
	},
	nolooks = {
		["up"] = true,
	},
}
Room {
	id = "hz/wenlange",
	name = "文澜阁",
	ways = {
		["north"] = "hz/gushan",
	},
}
Room {
	id = "hz/xiaoying",
	name = "小赢洲",
	ways = {
		["south"] = "hz/juquqiao",
	},
}
Room {
	id = "hz/xiaozhu",
	name = "小筑",
	ways = {
		["southwest"] = "hz/changlang1",
		["east"] = "hz/shuichi",
	},
}
Room {
	id = "hz/xilengqiao",
	name = "西冷桥",
	ways = {
		["east"] = "hz/gushan",
	},
}
Room {
	id = "hz/yaopu",
	name = "万年春",
	ways = {
		["west"] = "hz/qsddao5",
	},
}
Room {
	id = "hz/yingboqiao",
	name = "映波桥",
	ways = {
		["south"] = "hz/kuahong",
		["east"] = "hz/sudi",
	},
}
Room {
	id = "hz/yingxunge",
	name = "迎熏阁",
	ways = {
		["west"] = "hz/quyuan",
	},
}
Room {
	id = "hz/yuanmen",
	name = "园门",
	ways = {
		["east"] = "hz/jingzhong",
		["out"] = "hz/yuemiao",
	},
}
Room {
	id = "hz/yuemiao",
	name = "岳王庙",
	no_fight = true,
	ways = {
		["southeast"] = "hz/qsddao2",
		["enter"] = "hz/yuanmen",
		["northwest"] = "hz/baidi",
		["east"] = "hz/tianxiang",
		["west"] = "hz/hubian3",
	},
}
Room {
	id = "hz/yuhuang",
	name = "玉皇山",
	ways = {
		["southwest"] = "hz/hupao",
		["south"] = "hz/zilaidong",
		["northwest"] = "hz/jingcisi",
	},
}
Room {
	id = "hz/yuquan",
	name = "玉泉",
	ways = {
		["north"] = "hz/quanwu",
		["east"] = "hz/qsddao2",
	},
}
Room {
	id = "hz/yxsdong",
	name = "石屋洞",
	ways = {
		["southeast"] = "hz/yxsdong1",
		["northwest"] = "hz/feilaifeng",
	},
}
Room {
	id = "hz/yxsdong1",
	name = "水乐洞",
	ways = {
		["northwest"] = "hz/yxsdong",
		["west"] = "hz/yxsdong2",
	},
}
Room {
	id = "hz/yxsdong2",
	name = "烟霞洞",
	ways = {
		["southeast"] = "hz/longjing",
		["east"] = "hz/yxsdong1",
	},
}
Room {
	id = "hz/zahuopu",
	name = "杂货铺",
	ways = {
		["east"] = "hz/qsddao5",
	},
}
Room {
	id = "hz/zilaidong",
	name = "紫来洞",
	ways = {
		["southup"] = "hz/shanlu2",
		["north"] = "hz/yuhuang",
	},
}
Room {
	id = "jiaxing/road2",
	name = "青石官道",
	ways = {
		["southeast"] = "jiaxing/road1",
		["northwest"] = "suzhou/qsgdao2",
	},
}
Room {
	id = "jiaxing/road1",
	name = "青石官道",
	ways = {
		["southeast"] = "jiaxing/beimen",
		["northwest"] = "jiaxing/road2",
	},
}
Room {
	id = "jiaxing/beimen",
	name = "北门",
	ways = {
		["south"] = "jiaxing/beijie",
		["northwest"] = "jiaxing/road1",
	},
}
Room {
	id = "jiaxing/beijie",
	name = "北街",
	ways = {
		["north"] = "jiaxing/beimen",
		["south"] = "jiaxing/jiaxing",
	},
}
Room {
	id = "jiaxing/jiaxing",
	name = "市集",
	ways = {
		["south"] = "jiaxing/nanjie",
		["east"] = "jiaxing/dongjie",
		["north"] = "jiaxing/beijie",
		["west"] = "jiaxing/xijie1"
	},
}
Room {
	id = "jiaxing/dongjie",
	name = "东街",
	ways = {
		["west"] = "jiaxing/jiaxing",
		["east"] = "jiaxing/dbianmen",
	},
}
Room {
	id = "jiaxing/dbianmen",
	name = "东边门",
	ways = {
		["north"] = "jiaxing/zahuopu",
		["east"] = "jiaxing/nanhu",
		["west"] = "jiaxing/dongjie",
	},
}
Room {
	id = "jiaxing/nanhu",
	name = "南湖",
	ways = {
		["southeast"] = "jiaxing/nanhu1",
		["east"] = "jiaxing/hubian",
		["west"] = "jiaxing/dbianmen",
	},
}
Room {
	id = "jiaxing/nanhu1",
	name = "南湖",
	ways = {
		["south"] = "jiaxing/jxyanyu",
		["northwest"] = "jiaxing/nanhu",
	},
}
Room {
	id = "jiaxing/yanyu",
	name = "烟雨楼",
	ways = {
		["down"] = "jiaxing/jxyanyu",
	},
}
Room {
	id = "jiaxing/jxyanyu",
	name = "烟雨楼",
	outdoor = "嘉兴城",
	ways = {
		["north"] = "jiaxing/nanhu1",
		["up"] = "jiaxing/yanyu",
	},
}
Room {
	id = "jiaxing/hubian",
	name = "湖边",
	ways = {
		["west"] = "jiaxing/nanhu",
	},
}
Room {
	id = "jiaxing/zahuopu",
	name = "杂货铺",
	ways = {
		["south"] = "jiaxing/dbianmen",
	},
}
Room {
	id = "jiaxing/xijie1",
	name = "西街",
	ways = {
		["east"] = "jiaxing/jiaxing",
		["west"] = "jiaxing/xijie2",
	},
}
Room {
	id = "jiaxing/xijie2",
	name = "西街",
	ways = {
		["east"] = "jiaxing/xijie1",
		["west"] = "jiaxing/ximen",
		["south"] = "jiaxing/xiaoxiang1",
		["north"] = "jiaxing/kedian",
	},
}
Room {
	id = "jiaxing/kedian",
	name = "有间客栈",
	ways = {
		["south"] = "jiaxing/xijie2",
		-- ["up"] = "jiaxing/kedian2",
	},
	nolooks = {
		["up"] = true,
	},
}
Room {
	id = "jiaxing/kedian2",
	name = "客店二楼",
	ways = {
		["down"] = "jiaxing/kedian",
		["enter"] = "jiaxing/kefang",
	},
}
Room {
	id = "jiaxing/kefang",
	name = "客房",
	ways = {
		["out"] = "jiaxing/xijie2",
	},
}
Room {
	id = "jiaxing/ximen",
	name = "西门",
	ways = {
		["east"] = "jiaxing/xijie2",
	},
}
Room {
	id = "jiaxing/xiaoxiang1",
	name = "小巷",
	ways = {
		["north"] = "jiaxing/xijie2",
		["east"] = "jiaxing/xiaoxiang2",
		["south"] = "jiaxing/jiuyuan",
	},
}
Room {
	id = "jiaxing/xiaoxiang2",
	name = "小巷",
	ways = {
		["west"] = "jiaxing/xiaoxiang1",
		["east"] = "jiaxing/nanjie",
	},
}
Room {
	id = "jiaxing/jiuyuan",
	name = "旧园",
	ways = {
		["north"] = "jiaxing/xiaoxiang1",
	},
}
Room {
	id = "jiaxing/nanjie",
	name = "南街",
	ways = {
		["west"] = "jiaxing/xiaoxiang2",
		["north"] = "jiaxing/jiaxing",
		["south"] = "jiaxing/jxnanmen",
	}
}
Room {
	id = "jiaxing/jxnanmen",
	name = "南门",
	ways = {
		["south"] = "jiaxing/xiaojing1",
		["north"] = "jiaxing/nanjie",
	},
}
Room {
	id = "jiaxing/xiaojing1",
	name = "乡间小径",
	ways = {
		["south"] = "jiaxing/xiaojing2",
		["east"] = "jiaxing/tieqiang",
		["north"] = "jiaxing/jxnanmen",
	},
}
Room {
	id = "jiaxing/tieqiang",
	name = "铁枪庙",
	ways = {
		["west"] = "jiaxing/xiaojing1",
	},
}
Room {
	id = "jiaxing/xiaojing2",
	name = "乡间小径",
	ways = {
		["north"] = "jiaxing/xiaojing1",
		["east"] = "jiaxing/river",
		["southeast"] = "jiaxing/shulin1",
	},
}
Room {
	id = "jiaxing/river",
	name = "河岸",
	ways = {
		["west"] = "jiaxing/xiaojing2",
	},
}
Room {
	id = "jiaxing/shulin1",
	name = "树林",
	ways = {
		["south"] = "jiaxing/luzhuang",
		["northwest"] = "jiaxing/xiaojing2",
		["east"] = "jiaxing/lumu",
	},
}
Room {
	id = "jiaxing/lumu",
	name = "坟墓",
	ways = {
		["west"] = "jiaxing/shulin1",
	},
}
Room {
	id = "jiaxing/luzhuang",
	name = "陆家庄",
	ways = {
		["north"] = "jiaxing/shulin1",
		["west"] = "jiaxing/tianjing",
	},
}
Room {
	id = "jiaxing/tianjing",
	name = "天井",
	ways = {
		["east"] = "jiaxing/luzhuang",
		["west"] = "jiaxing/dating",
	},
}
Room {
	id = "jiaxing/dating",
	name = "大厅",
	ways = {
		["south"] = "jiaxing/houyuan",
		["east"] = "jiaxing/tianjing",
	},
}
Room {
	id = "jiaxing/houyuan",
	name = "後院",
	ways = {
		["north"] = "jiaxing/dating",
	},
}
Room {
	id = "kunlun/bainiushan",
	name = "白牛山",
	ways = {
		["southwest"] = "kunlun/fufengshan",
	},
}
Room {
	id = "kunlun/bayankala",
	name = "巴颜喀拉山",
	ways = {
		["northdown"] = "kunlun/shanlu2",
		["west"] = "kunlun/kekexili",
	},
}
Room {
	id = "kunlun/chufang",
	name = "厨房",
	no_fight = true,
	ways = {
		["west"] = "kunlun/shilu2",
	},
}
Room {
	id = "kunlun/conglinggu",
	name = "葱岭谷",
	ways = {
		["out"] = "kunlun/shanlinn",
	},
}
Room {
	id = "kunlun/elang01",
	name = "东走廊",
	ways = {
		["east"] = "kunlun/keting1",
		["west"] = "kunlun/qianting",
	},
}
Room {
	id = "kunlun/fufengshan",
	name = "扶峰山",
	ways = {
		["enter"] = "kunlun/houyuan",
		["northeast"] = "kunlun/bainiushan",
		["#toSsa"] = "kunlun/sanshengao",
	},
	nolooks = {
		["enter"] = true,
		["#toSsa"] = true,
	},
	lengths = {
		["#toSsa"] = 10,
	},
	precmds = {
		["enter"] = "open door",
	},
}
Room {
	id = "kunlun/gate",
	name = "后院门",
	ways = {
		["east"] = "kunlun/shilu2",
		["west"] = "kunlun/lang",
	},
	lengths = {
		["east"] = "if getParty() == '昆仑派' then return 1 else return false end",
	},
}
Room {
	id = "kunlun/guangchang",
	name = "广场",
	ways = {
		["south"] = "kunlun/pingfeng",
		["north"] = "kunlun/shanlu04",
		["east"] = "kunlun/guangchange",
		["west"] = "kunlun/guangchangw",
	},
}
Room {
	id = "kunlun/guangchange",
	name = "广场东",
	ways = {
		["northwest"] = "kunlun/shanlu04",
		["west"] = "kunlun/guangchang",
	},
}
Room {
	id = "kunlun/guangchangw",
	name = "广场西",
	ways = {
		["east"] = "kunlun/guangchang",
		["northeast"] = "kunlun/shanlu04",
	},
}
Room {
	id = "kunlun/houyuan",
	name = "后院",
	ways = {
		["south"] = "kunlun/shanlinn",
		["out"] = "kunlun/fufengshan",
	},
	nolooks = {
		["out"] = true,
	},
	precmds = {
		["out"] = "open door",
	},
}
Room {
	id = "kunlun/huayuan1",
	name = "花园",
	ways = {
		["south"] = "kunlun/lang1",
		["north"] = "kunlun/shilu1",
		["east"] = "kunlun/lang",
		["west"] = "kunlun/shiqiao",
	},
}
Room {
	id = "kunlun/jingshenfeng",
	name = "惊神峰",
	ways = {
		["south"] = "kunlun/sanshengao",
	},
}
Room {
	id = "kunlun/jingxiushi",
	name = "静修室",
	ways = {
		["south"] = "kunlun/shiqiao",
		["east"] = "kunlun/shilu1",
	},
}
Room {
	id = "kunlun/jiuqulang1",
	name = "九曲廊",
	ways = {
		["southwest"] = "kunlun/tieqinju",
		["east"] = "kunlun/shiqiao",
	},
}
Room {
	id = "kunlun/jiuqulang2",
	name = "九曲廊",
	ways = {
		["southwest"] = "kunlun/shanlinn",
		["northeast"] = "kunlun/sanshengtang",
	},
}
Room {
	id = "kunlun/kekexili",
	name = "可可西里山",
	ways = {
		["northwest"] = "kunlun/shankou",
		["east"] = "kunlun/bayankala",
	},
}
Room {
	id = "kunlun/keting1",
	name = "客厅",
	ways = {
		["west"] = "kunlun/elang01",
	},
}
Room {
	id = "kunlun/keting2",
	name = "客厅",
	no_fight = true,
	ways = {
		["east"] = "kunlun/wlang01",
	},
}
Room {
	id = "kunlun/klshanlu",
	name = "昆仑山麓",
	ways = {
		["northup"] = "kunlun/shanmen",
		["east"] = "kunlun/shankou",
		["west"] = "fairyland/shanlu1",
	},
}
Room {
	id = "kunlun/kuhanlou1",
	name = "苦寒楼一层",
	ways = {
		["out"] = "kunlun/shanlinn",
		["up"] = "kunlun/kuhanlou2",
	},
}
Room {
	id = "kunlun/kuhanlou2",
	name = "苦寒楼二层",
	ways = {
		["down"] = "kunlun/kuhanlou1",
		["up"] = "kunlun/kuhanlou3",
	},
}
Room {
	id = "kunlun/kuhanlou3",
	name = "苦寒楼三层",
	ways = {
		["down"] = "kunlun/kuhanlou2",
	},
}
Room {
	id = "kunlun/lang",
	name = "走廊",
	ways = {
		["south"] = "kunlun/lang2",
		["north"] = "kunlun/shufang",
		["east"] = "kunlun/gate",
		["west"] = "kunlun/huayuan1",
	},
}
Room {
	id = "kunlun/lang1",
	name = "走廊",
	ways = {
		["south"] = "kunlun/sanshengtang",
		["east"] = "kunlun/lang2",
		["north"] = "kunlun/huayuan1",
	},
}
Room {
	id = "kunlun/lang2",
	name = "走廊",
	ways = {
		["east"] = "kunlun/liangong",
		["north"] = "kunlun/lang",
		["west"] = "kunlun/lang1",
	},
}
Room {
	id = "kunlun/liangong",
	name = "练功房",
	ways = {
		["west"] = "kunlun/lang2",
	},
}
Room {
	id = "kunlun/pingfeng",
	name = "石屏风",
	ways = {
		["south"] = "kunlun/qianting",
		["north"] = "kunlun/guangchang",
	},
}
Room {
	id = "kunlun/qianting",
	name = "前厅",
	ways = {
		["south"] = "kunlun/shilu1",
		["north"] = "kunlun/pingfeng",
		["east"] = "kunlun/elang01",
		["west"] = "kunlun/wlang01",
	},
	blocks = {
		["south"] = {
			{id = "xi huazi", exp = 400000, party = "昆仑派"},
		},
	},
}
Room {
	id = "kunlun/sanshengao",
	name = "三圣坳",
	ways = {
		["north"] = "kunlun/jingshenfeng",
		["down"] = "kunlun/fufengshan",
	},
}
Room {
	id = "kunlun/sanshengtang",
	name = "三圣堂",
	ways = {
		["southwest"] = "kunlun/jiuqulang2",
		["north"] = "kunlun/lang1",
	},
}
Room {
	id = "kunlun/shankou",
	name = "昆仑山垭口",
	ways = {
		["southeast"] = "kunlun/kekexili",
		["west"] = "kunlun/klshanlu",
	},
}
Room {
	id = "kunlun/shanlinn",
	name = "云杉林",
	ways = {
		["se;e;s;w;e;out;se;e;s;w;e"] = "kunlun/kuhanlou1",
		["se;e;s;w;e;out;se;e;s;s"] = "kunlun/conglinggu",
		["se;e;s;w;e;out;ne"] = "kunlun/jiuqulang2",
		["se;e;s;w;e;out;w;n"] = "kunlun/houyuan",
	},
	nolooks = {
		["se;e;s;w;e;out;se;e;s;w;e"] = true,
		["se;e;s;w;e;out;se;e;s;s"] = true,
		["se;e;s;w;e;out;ne"] = true,
		["se;e;s;w;e;out;w;n"] = true,
		["southeast"] = true,
		["northeast"] = true,
		["west"] = true,
		["east"] = true,
		["north"] = true,
		["south"] = true,
	},
	lengths = {
		["se;e;s;w;e;out;se;e;s;w;e"] = 11,
		["se;e;s;w;e;out;se;e;s;s"] = 10,
		["se;e;s;w;e;out;ne"] = 7,
		["se;e;s;w;e;out;w;n"] = 8,
	},
	find = {
		path = {"w", "e", "se", "e", "s", "w", "e", "out"},
	},
}
Room {
	id = "kunlun/shanlu",
	name = "西域山路",
	ways = {
		["east"] = "kunlun/zhenyuanqiao",
		["west"] = "kunlun/shanlu1",
	},
}
Room {
	id = "kunlun/shanlu01",
	name = "山路",
	ways = {
		["southup"] = "kunlun/shanlu02",
		["westdown"] = "kunlun/shanmen",
	},
}
Room {
	id = "kunlun/shanlu02",
	name = "山路",
	ways = {
		["southup"] = "kunlun/shanlu03",
		["northdown"] = "kunlun/shanlu01",
	},
}
Room {
	id = "kunlun/shanlu03",
	name = "山路",
	ways = {
		["southup"] = "kunlun/shanlu04",
		["northdown"] = "kunlun/shanlu02",
	},
}
Room {
	id = "kunlun/shanlu04",
	name = "山路",
	ways = {
		["southeast"] = "kunlun/guangchange",
		["southwest"] = "kunlun/guangchangw",
		["south"] = "kunlun/guangchang",
		["northdown"] = "kunlun/shanlu03",
	},
}
Room {
	id = "kunlun/shanlu1",
	name = "西域山路",
	ways = {
		["westup"] = "kunlun/shanlu2",
		["east"] = "kunlun/shanlu",
	},
}
Room {
	id = "kunlun/shanlu2",
	name = "西域山路",
	ways = {
		["southup"] = "kunlun/bayankala",
		["eastdown"] = "kunlun/shanlu1",
	},
}
Room {
	id = "kunlun/shanmen",
	name = "昆仑派山门",
	ways = {
		["eastup"] = "kunlun/shanlu01",
		["southdown"] = "kunlun/klshanlu",
	},
}
Room {
	id = "kunlun/shilu1",
	name = "石路",
	ways = {
		["south"] = "kunlun/huayuan1",
		["east"] = "kunlun/shufang",
		["north"] = "kunlun/qianting",
		["west"] = "kunlun/jingxiushi",
	},
}
Room {
	id = "kunlun/shilu2",
	name = "石路",
	ways = {
		["north"] = "kunlun/xiuxishi",
		["east"] = "kunlun/chufang",
		["west"] = "kunlun/gate",
	},
}
Room {
	id = "kunlun/shiqiao",
	name = "小石桥",
	ways = {
		["north"] = "kunlun/jingxiushi",
		["east"] = "kunlun/huayuan1",
		["west"] = "kunlun/jiuqulang1",
	},
}
Room {
	id = "kunlun/shufang",
	name = "书房",
	ways = {
		["south"] = "kunlun/lang",
		["west"] = "kunlun/shilu1",
	},
}
Room {
	id = "kunlun/sleeproom",
	name = "卧室",
	ways = {
		["east"] = "kunlun/tieqinju",
	},
	nolooks = {
		["east"] = true,
	},
	precmds = {
		["east"] = "open door",
	},
}
Room {
	id = "kunlun/tieqinju",
	name = "铁琴居",
	ways = {
		["west"] = "kunlun/sleeproom",
		["northeast"] = "kunlun/jiuqulang1",
	},
	nolooks = {
		["west"] = true,
	},
	precmds = {
		["west"] = "open door",
	},
	blocks = {
		["west"] = {
			{id = "he taichong", exp = 1800000},
		},
	},
}
Room {
	id = "kunlun/wlang01",
	name = "西走廊",
	ways = {
		["east"] = "kunlun/qianting",
		["west"] = "kunlun/keting2",
	},
}
Room {
	id = "kunlun/xiuxishi",
	name = "休息室",
	no_fight = true,
	ways = {
		["south"] = "kunlun/shilu2",
	},
}
Room {
	id = "kunlun/zhenyuanqiao",
	name = "镇远桥",
	ways = {
		["eastdown"] = "mingjiao/shanjiao",
		["west"] = "kunlun/shanlu",
	},
}
Room {
	id = "lanzhou/bingcao",
	name = "冰草湾",
	ways = {
		["southwest"] = "group/entry/lzshixia",
		["northeast"] = "lanzhou/yinpanshui",
	},
}
Room {
	id = "lanzhou/dacaigou",
	name = "打柴沟",
	ways = {
		["southeast"] = "lanzhou/gulang",
		["north"] = "lanzhou/wuqiao",
	},
}
Room {
	id = "lanzhou/dukou2",
	name = "西夏渡口",
	ways = {
		["southeast"] = "lanzhou/shanlu1",
		["#xxdk nw"] = "lanzhou/dukou3",
	},
	nolooks = {
		["#xxdk nw"] = true,
		["enter"] = true,
	},
	lengths = {
		["#xxdk nw"] = 10000,
	},
}
Room {
	id = "lanzhou/dukou3",
	name = "西夏渡口",
	ways = {
		["northwest"] = "lanzhou/huanghe_3",
		["#xxdk se"] = "lanzhou/dukou2",
	},
	nolooks = {
		["#xxdk se"] = true,
		["enter"] = true,
	},
	lengths = {
		["#xxdk se"] = 10000,
	},
}
Room {
	id = "lanzhou/gccheng",
	name = "古长城",
	ways = {
		["east"] = "lanzhou/shimen",
		["west"] = "lanzhou/yinpanshui",
	},
	nolooks = {
		["down"] = true,
	},
}
Room {
	id = "lanzhou/gulang",
	name = "古浪",
	ways = {
		["southeast"] = "lanzhou/xjqiao",
		["northwest"] = "lanzhou/dacaigou",
		["east"] = "lanzhou/yaocaidian",
	},
}
Room {
	id = "lanzhou/hongsx",
	name = "红山峡",
	ways = {
		["southeast"] = "lanzhou/jintai",
		["north"] = "lanzhou/shimen",
	},
}
Room {
	id = "lanzhou/houyuan",
	name = "后院",
	ways = {
		["south"] = "lanzhou/zhenting",
	},
	postcmds = {
		["south"] = "#waitbusy",
	},
}
Room {
	id = "lanzhou/huanghe_2",
	name = "黄河",
	ways = {
		["northwest"] = "lanzhou/jintai",
		["east"] = "lanzhou/huanghe_3",
	},
}
Room {
	id = "lanzhou/huanghe_3",
	name = "黄河",
	ways = {
		["southeast"] = "lanzhou/dukou3",
		["west"] = "lanzhou/huanghe_2",
	},
}
Room {
	id = "lanzhou/jingyuan",
	name = "靖远",
	ways = {
		["eastup"] = "lanzhou/lpshan",
		["southwest"] = "group/entry/lzroad1",
		["northeast"] = "lanzhou/kongdong",
	},
}
Room {
	id = "lanzhou/jintai",
	name = "景泰",
	ways = {
		["southeast"] = "lanzhou/huanghe_2",
		["northwest"] = "lanzhou/hongsx",
	},
}
Room {
	id = "lanzhou/kedian",
	name = "客店",
	ways = {
		["east"] = "lanzhou/yongdeng",
		-- ["up"] = "lanzhou/kedian2",
	},
	nolooks = {
		["up"] = true,
	},
}
Room {
	id = "lanzhou/kedian2",
	name = "客店二楼",
	ways = {
		["enter"] = "lanzhou/kedian3",
		["down"] = "lanzhou/kedian",
	},
}
Room {
	id = "lanzhou/kedian3",
	name = "客店二楼",
	no_fight = true,
	ways = {
		["out"] = "lanzhou/kedian2",
	},
}
Room {
	id = "lanzhou/kongdong",
	name = "崆峒山",
	ways = {
		["southwest"] = "lanzhou/jingyuan",
		["northdown"] = "lanzhou/shanlu1",
	},
}
Room {
	id = "lanzhou/lanzhou",
	name = "城中心",
	ways = {
		["south"] = "lanzhou/lanzhous",
		["east"] = "lanzhou/lanzhoue",
		["west"] = "lanzhou/lanzhouw",
	},
}
Room {
	id = "lanzhou/lanzhoue",
	name = "东城门",
	ways = {
		["east"] = "lanzhou/road5",
		["west"] = "lanzhou/lanzhou",
	},
}
Room {
	id = "lanzhou/lanzhous",
	name = "南城门",
	ways = {
		["south"] = "lanzhou/sroad1",
		["north"] = "lanzhou/lanzhou",
	},
}
Room {
	id = "lanzhou/lanzhouw",
	name = "西城门",
	ways = {
		["northwest"] = "lanzhou/road6",
		["east"] = "lanzhou/lanzhou",
	},
}
Room {
	id = "lanzhou/lpshan",
	name = "六盘山",
	ways = {
		["westdown"] = "lanzhou/jingyuan",
		["southeast"] = "changan/westroad2",
	},
}
Room {
	id = "lanzhou/qianting",
	name = "前厅",
	ways = {
		["north"] = "lanzhou/zhenting",
		["east"] = "lanzhou/zhengmen",
	},
	postcmds = {
		["north"] = "#waitbusy",
	},
}
Room {
	id = "lanzhou/qingcheng",
	name = "青城",
	ways = {
		["south"] = "chengdu/road1",
		["northwest"] = "group/entry/lzsroad3",
		["northeast"] = "lanzhou/shamo",
	},
	nolooks = {
		["down"] = true,
	},
}
Room {
	id = "lanzhou/road2",
	name = "大渡口",
	ways = {
		["#lzdk w"] = "lanzhou/road3",
		["east"] = "lanzhou/road6",
	},
	lengths = {
		["#lzdk w"] = 10000,
	},
	nolooks = {
		["enter"] = true,
		["#lzdk w"] = true,
	}
}
Room {
	id = "lanzhou/road3",
	name = "大渡口",
	ways = {
		["#lzdk e"] = "lanzhou/road2",
		["northwest"] = "lanzhou/road4",
	},
	lengths = {
		["#lzdk e"] = 10000,
	},
	nolooks = {
		["#lzdk e"] = true,
		["enter"] = true,
	}
}
Room {
	id = "lanzhou/road4",
	name = "大道",
	ways = {
		["southeast"] = "lanzhou/road3",
		["west"] = "lanzhou/yongdeng",
	},
}
Room {
	id = "lanzhou/road5",
	name = "大道",
	ways = {
		["northeast"] = "group/entry/lzroad1",
		["west"] = "lanzhou/lanzhoue",
	},
}
Room {
	id = "lanzhou/road6",
	name = "大道",
	ways = {
		["southeast"] = "lanzhou/lanzhouw",
		["west"] = "lanzhou/road2",
	},
}
Room {
	id = "lanzhou/shamo",
	name = "沙漠",
	ways = {
		["south"] = "lanzhou/shamo1",
		["east"] = "lanzhou/shamo",
		["north"] = "lanzhou/shamo",
		["west"] = "lanzhou/shamo",
		["#toQc"] = "lanzhou/qingcheng",
	},
	nolooks = {
		["#toQc"] = true,
	},
	lengths = {
		["#toQc"] = 50,
	},
}
Room {
	id = "lanzhou/shamo1",
	name = "沙漠",
	ways = {
		["south"] = "lanzhou/shamo",
		["enter"] = "lanzhou/shidong",
		["east"] = "lanzhou/shamo",
		["north"] = "lanzhou/shamo",
		["west"] = "lanzhou/shamo",
	},
}
Room {
	id = "lanzhou/shanlu1",
	name = "山脚下",
	ways = {
		["southup"] = "lanzhou/kongdong",
		["northwest"] = "lanzhou/dukou2",
	},
}
Room {
	id = "lanzhou/shidong",
	name = "石洞",
	ways = {
		["out"] = "lanzhou/shamo1",
	},
}
Room {
	id = "lanzhou/shimen",
	name = "石门",
	ways = {
		["south"] = "lanzhou/hongsx",
		["north"] = "lanzhou/wufosi",
		["west"] = "lanzhou/gccheng",
	},
}
Room {
	id = "lanzhou/sroad1",
	name = "大道",
	ways = {
		["south"] = "lanzhou/sroad2",
		["north"] = "lanzhou/lanzhous",
		["west"] = "lanzhou/zhengmen",
	},
}
Room {
	id = "lanzhou/sroad2",
	name = "大道",
	ways = {
		["southeast"] = "group/entry/lzsroad3",
		["north"] = "lanzhou/sroad1",
	},
}
Room {
	id = "lanzhou/tumenzi",
	name = "土门子",
	ways = {
		["northeast"] = "group/entry/lzshixia",
		["west"] = "lanzhou/wuwei",
	},
	nolooks = {
		["down"] = true,
	},
}
Room {
	id = "lanzhou/wufosi",
	name = "五佛寺",
	ways = {
		["south"] = "lanzhou/shimen",
	},
	nolooks = {
		["down"] = true,
	},
}
Room {
	id = "lanzhou/wuqiao",
	name = "乌鞘岭",
	ways = {
		["south"] = "lanzhou/dacaigou",
		["northwest"] = "lanzhou/wuwei",
	},
}
Room {
	id = "lanzhou/wuwei",
	name = "武威",
	ways = {
		["southeast"] = "lanzhou/wuqiao",
		["northwest"] = "xingxiu/road4",
		["east"] = "lanzhou/tumenzi",
	},
}
Room {
	id = "lanzhou/xjqiao",
	name = "萧家桥",
	ways = {
		["southeast"] = "lanzhou/yongdeng",
		["northwest"] = "lanzhou/gulang",
	},
}
Room {
	id = "lanzhou/yaocaidian",
	name = "皮货药材店",
	ways = {
		["west"] = "lanzhou/gulang",
	},
}
Room {
	id = "lanzhou/yinpanshui",
	name = "营盘水",
	ways = {
		["southwest"] = "lanzhou/bingcao",
		["east"] = "lanzhou/gccheng",
	},
}
Room {
	id = "lanzhou/yongdeng",
	name = "永登",
	ways = {
		["northwest"] = "lanzhou/xjqiao",
		["east"] = "lanzhou/road4",
		["west"] = "lanzhou/kedian",
	},
}
Room {
	id = "lanzhou/zhengmen",
	name = "苗家庄门口",
	ways = {
		["east"] = "lanzhou/sroad1",
		["west"] = "lanzhou/qianting",
	},
	lengths = {
		["west"] = "if getStory().xsfh.quest >= 3 then return 1 else return false end",
	},
	precmds = {
		["east"] = "#waitbusy",
		["west"] = "#waitbusy",
	},
}
Room {
	id = "lanzhou/zhenting",
	name = "正厅",
	ways = {
		["south"] = "lanzhou/qianting",
		["north"] = "lanzhou/houyuan",
	},
}
Room {
	id = "meizhuang/ceting2",
	name = "侧厅",
	ways = {
		["west"] = "meizhuang/huilang20",
	},
}
Room {
	id = "meizhuang/ceting3",
	name = "侧厅",
	ways = {
		["east"] = "meizhuang/huilang21",
	},
}
Room {
	id = "meizhuang/door",
	name = "庄院大门",
	ways = {
		["north"] = "meizhuang/road3",
	},
}
Room {
	id = "meizhuang/gushan",
	name = "孤山",
	ways = {
		["east"] = "meizhuang/hubian",
	},
}
Room {
	id = "meizhuang/hall",
	name = "大厅",
	ways = {
		["south"] = "meizhuang/huilang",
		["north"] = "meizhuang/tianjing",
	},
}
Room {
	id = "meizhuang/houtang2",
	name = "后堂",
	ways = {
		["north"] = "meizhuang/huilang12",
	},
}
Room {
	id = "meizhuang/houtang3",
	name = "后堂",
	ways = {
		["north"] = "meizhuang/huilang13",
	},
}
Room {
	id = "meizhuang/huashi",
	name = "画室",
	ways = {
		["east"] = "meizhuang/huilang6",
	},
}
Room {
	id = "meizhuang/hubian",
	name = "西湖边",
	ways = {
		["east"] = "meizhuang/shiji",
		["west"] = "hz/gushan",
	},
}
Room {
	id = "meizhuang/huilang",
	name = "回廊",
	ways = {
		["east"] = "meizhuang/huilang3",
		["north"] = "meizhuang/hall",
		["west"] = "meizhuang/huilang2",
	},
}
Room {
	id = "meizhuang/huilang10",
	name = "回廊",
	ways = {
		["south"] = "meizhuang/huilang12",
		["east"] = "meizhuang/huilang8",
	},
}
Room {
	id = "meizhuang/huilang11",
	name = "回廊",
	ways = {
		["south"] = "meizhuang/huilang13",
		["west"] = "meizhuang/huilang9",
	},
}
Room {
	id = "meizhuang/huilang12",
	name = "回廊",
	ways = {
		["south"] = "meizhuang/houtang2",
		["east"] = "meizhuang/huilang14",
		["north"] = "meizhuang/huilang10",
	},
}
Room {
	id = "meizhuang/huilang13",
	name = "回廊",
	ways = {
		["south"] = "meizhuang/houtang3",
		["north"] = "meizhuang/huilang11",
		["west"] = "meizhuang/huilang15",
	},
}
Room {
	id = "meizhuang/huilang14",
	name = "回廊",
	ways = {
		["east"] = "meizhuang/huilang16",
		["west"] = "meizhuang/huilang12",
	},
}
Room {
	id = "meizhuang/huilang15",
	name = "回廊",
	ways = {
		["east"] = "meizhuang/huilang13",
		["west"] = "meizhuang/huilang17",
	},
}
Room {
	id = "meizhuang/huilang16",
	name = "回廊",
	ways = {
		["east"] = "meizhuang/huilang19",
		["west"] = "meizhuang/huilang14",
	},
}
Room {
	id = "meizhuang/huilang17",
	name = "回廊",
	ways = {
		["east"] = "meizhuang/huilang15",
		["west"] = "meizhuang/huilang19",
	},
}
Room {
	id = "meizhuang/huilang19",
	name = "回廊",
	ways = {
		["north"] = "meizhuang/qinshi",
		["east"] = "meizhuang/huilang17",
		["west"] = "meizhuang/huilang16",
	},
}
Room {
	id = "meizhuang/huilang2",
	name = "回廊",
	ways = {
		["east"] = "meizhuang/huilang",
		["west"] = "meizhuang/huilang4",
	},
}
Room {
	id = "meizhuang/huilang20",
	name = "回廊",
	ways = {
		["south"] = "meizhuang/huilang4",
		["north"] = "meizhuang/huilang22",
		["east"] = "meizhuang/ceting2",
	},
}
Room {
	id = "meizhuang/huilang21",
	name = "回廊",
	ways = {
		["south"] = "meizhuang/huilang5",
		["north"] = "meizhuang/huilang23",
		["west"] = "meizhuang/ceting3",
	},
}
Room {
	id = "meizhuang/huilang22",
	name = "回廊",
	ways = {
		["south"] = "meizhuang/huilang20",
		["east"] = "meizhuang/huilang24",
		["west"] = "meizhuang/xiangfang2",
	},
}
Room {
	id = "meizhuang/huilang23",
	name = "回廊",
	ways = {
		["south"] = "meizhuang/huilang21",
		["east"] = "meizhuang/xiangfang3",
		["west"] = "meizhuang/huilang25",
	},
}
Room {
	id = "meizhuang/huilang24",
	name = "回廊",
	ways = {
		["east"] = "meizhuang/tianjing",
		["west"] = "meizhuang/huilang22",
	},
}
Room {
	id = "meizhuang/huilang25",
	name = "回廊",
	ways = {
		["east"] = "meizhuang/huilang23",
		["west"] = "meizhuang/tianjing",
	},
}
Room {
	id = "meizhuang/huilang3",
	name = "回廊",
	ways = {
		["east"] = "meizhuang/huilang5",
		["west"] = "meizhuang/huilang",
	},
}
Room {
	id = "meizhuang/huilang4",
	name = "回廊",
	ways = {
		["south"] = "meizhuang/huilang6",
		["north"] = "meizhuang/huilang20",
		["east"] = "meizhuang/huilang2",
		["west"] = "meizhuang/jiushi",
	},
}
Room {
	id = "meizhuang/huilang5",
	name = "回廊",
	ways = {
		["south"] = "meizhuang/huilang7",
		["east"] = "meizhuang/qishi",
		["north"] = "meizhuang/huilang21",
		["west"] = "meizhuang/huilang3",
	},
}
Room {
	id = "meizhuang/huilang6",
	name = "回廊",
	ways = {
		["south"] = "meizhuang/huilang8",
		["north"] = "meizhuang/huilang4",
		["west"] = "meizhuang/huashi",
	},
}
Room {
	id = "meizhuang/huilang7",
	name = "回廊",
	ways = {
		["south"] = "meizhuang/huilang9",
		["east"] = "meizhuang/shufang",
		["north"] = "meizhuang/huilang5",
	},
}
Room {
	id = "meizhuang/huilang8",
	name = "回廊",
	ways = {
		["north"] = "meizhuang/huilang6",
		["west"] = "meizhuang/huilang10",
	},
}
Room {
	id = "meizhuang/huilang9",
	name = "回廊",
	ways = {
		["north"] = "meizhuang/huilang7",
		["east"] = "meizhuang/huilang11",
	},
}
Room {
	id = "meizhuang/jiushi",
	name = "酒室",
	ways = {
		["east"] = "meizhuang/huilang4",
	},
}
Room {
	id = "meizhuang/neishi",
	name = "内室",
	ways = {
		["south"] = "meizhuang/qinshi",
	},
}
Room {
	id = "meizhuang/plum_maze",
	name = "梅林",
	ways = {
		["#outMl south"] = "meizhuang/road3",
		["#outMl north"] = "meizhuang/road2",
	},
	nolooks = {
		["#outMl south"] = true,
		["#outMl north"] = true,
		["south"] = true,
		["north"] = true,
		["east"] = true,
		["west"] = true,
	},
	lengths = {
		["#outMl south"] = 10000,
		["#outMl north"] = 10000,
	},
}
Room {
	id = "meizhuang/qinshi",
	name = "琴室",
	ways = {
		["south"] = "meizhuang/huilang19",
		["north"] = "meizhuang/neishi",
	},
}
Room {
	id = "meizhuang/qishi",
	name = "棋室",
	ways = {
		["west"] = "meizhuang/huilang5",
	},
}
Room {
	id = "meizhuang/road1",
	name = "小路",
	ways = {
		["south"] = "meizhuang/road2",
		["west"] = "meizhuang/shiji",
	},
}
Room {
	id = "meizhuang/road2",
	name = "小路",
	ways = {
		["south"] = "meizhuang/plum_maze",
		["north"] = "meizhuang/road1",
	},
	lengths = {
		["south"] = 10000,
	},
}
Room {
	id = "meizhuang/road3",
	name = "青石板大路",
	ways = {
		["south"] = "meizhuang/door",
		["north"] = "meizhuang/plum_maze",
	},
}
Room {
	id = "meizhuang/shiji",
	name = "石级",
	ways = {
		["east"] = "meizhuang/road1",
		["west"] = "meizhuang/hubian",
	},
}
Room {
	id = "meizhuang/shufang",
	name = "书房",
	ways = {
		["west"] = "meizhuang/huilang7",
	},
}
Room {
	id = "meizhuang/tianjing",
	name = "天井",
	ways = {
		["south"] = "meizhuang/hall",
		["east"] = "meizhuang/huilang25",
		["north"] = "meizhuang/door",
		["west"] = "meizhuang/huilang24",
	},
}
Room {
	id = "meizhuang/xiangfang2",
	name = "厢房",
	ways = {
		["east"] = "meizhuang/huilang22",
	},
}
Room {
	id = "meizhuang/xiangfang3",
	name = "厢房",
	ways = {
		["west"] = "meizhuang/huilang23",
	},
}
Room {
	id = "miaojiang/bingqif",
	name = "兵器房",
	ways = {
		["west"] = "miaojiang/qiant",
	},
}
Room {
	id = "miaojiang/chufang",
	name = "厨房",
	ways = {
		["east"] = "miaojiang/qiant",
	},
}
Room {
	id = "miaojiang/gmcong1",
	name = "灌木丛",
	ways = {
		["southwest"] = "miaojiang/gmcong2",
		["down"] = "miaojiang/shanya2",
	},
}
Room {
	id = "miaojiang/gmcong10",
	name = "灌木丛",
	ways = {
		["south"] = "miaojiang/gmcong11",
	},
}
Room {
	id = "miaojiang/gmcong11",
	name = "灌木丛",
}
Room {
	id = "miaojiang/gmcong12",
	name = "灌木丛",
	ways = {
		["north"] = "miaojiang/gmcong13",
	},
}
Room {
	id = "miaojiang/gmcong13",
	name = "灌木丛",
	ways = {
		["northwest"] = "miaojiang/gmcong14",
	},
}
Room {
	id = "miaojiang/gmcong14",
	name = "灌木丛",
	ways = {
		["north"] = "miaojiang/mjqj",
	},
}
Room {
	id = "miaojiang/gmcong2",
	name = "灌木丛",
	ways = {
		["southeast"] = "miaojiang/gmcong3",
	},
}
Room {
	id = "miaojiang/gmcong3",
	name = "灌木丛",
	ways = {
		["north"] = "miaojiang/gmcong4",
	},
}
Room {
	id = "miaojiang/gmcong4",
	name = "灌木丛",
	ways = {
		["south"] = "miaojiang/gmcong5",
	},
}
Room {
	id = "miaojiang/gmcong5",
	name = "灌木丛",
	ways = {
		["west"] = "miaojiang/gmcong6",
	},
}
Room {
	id = "miaojiang/gmcong6",
	name = "灌木丛",
	ways = {
		["east"] = "miaojiang/gmcong7",
	},
}
Room {
	id = "miaojiang/gmcong7",
	name = "灌木丛",
	ways = {
		["west"] = "miaojiang/gmcong8",
	},
}
Room {
	id = "miaojiang/gmcong8",
	name = "灌木丛",
	ways = {
		["east"] = "miaojiang/gmcong9",
	},
}
Room {
	id = "miaojiang/gmcong9",
	name = "灌木丛",
	ways = {
		["east"] = "miaojiang/gmcong10",
	},
}
Room {
	id = "miaojiang/guanmucong1",
	name = "灌木丛",
	ways = {
		["southwest"] = "miaojiang/guanmucong2",
		["down"] = "miaojiang/shanya2",
	},
}
Room {
	id = "miaojiang/guanmucong10",
	name = "灌木丛",
	ways = {
		["south"] = "miaojiang/guanmucong11",
	},
}
Room {
	id = "miaojiang/guanmucong11",
	name = "灌木丛",
}
Room {
	id = "miaojiang/guanmucong12",
	name = "灌木丛",
	ways = {
		["north"] = "miaojiang/guanmucong13",
	},
}
Room {
	id = "miaojiang/guanmucong13",
	name = "灌木丛",
	ways = {
		["northwest"] = "miaojiang/guanmucong14",
	},
}
Room {
	id = "miaojiang/guanmucong14",
	name = "灌木丛",
	ways = {
		["north"] = "miaojiang/mjqj",
	},
}
Room {
	id = "miaojiang/guanmucong2",
	name = "灌木丛",
	ways = {
		["southeast"] = "miaojiang/guanmucong3",
	},
}
Room {
	id = "miaojiang/guanmucong3",
	name = "灌木丛",
	ways = {
		["north"] = "miaojiang/guanmucong4",
	},
}
Room {
	id = "miaojiang/guanmucong4",
	name = "灌木丛",
	ways = {
		["south"] = "miaojiang/guanmucong5",
	},
}
Room {
	id = "miaojiang/guanmucong5",
	name = "灌木丛",
	ways = {
		["west"] = "miaojiang/guanmucong6",
	},
}
Room {
	id = "miaojiang/guanmucong6",
	name = "灌木丛",
	ways = {
		["east"] = "miaojiang/guanmucong7",
	},
}
Room {
	id = "miaojiang/guanmucong7",
	name = "灌木丛",
	ways = {
		["west"] = "miaojiang/guanmucong8",
	},
}
Room {
	id = "miaojiang/guanmucong8",
	name = "灌木丛",
	ways = {
		["east"] = "miaojiang/guanmucong9",
	},
}
Room {
	id = "miaojiang/guanmucong9",
	name = "灌木丛",
	ways = {
		["east"] = "miaojiang/guanmucong10",
	},
}
Room {
	id = "miaojiang/guoyuan",
	name = "果园",
	ways = {
		["west"] = "miaojiang/jiedao5",
	},
}
Room {
	id = "miaojiang/haozhai",
	name = "苗居",
	ways = {
		["north"] = "miaojiang/jiedao3",
	},
}
Room {
	id = "miaojiang/houshan",
	name = "后山",
	ways = {
		["southeast"] = "miaojiang/shanlu",
	},
}
Room {
	id = "miaojiang/jiedao1",
	name = "小镇",
	ways = {
		["south"] = "miaojiang/jiedao2",
		["east"] = "miaojiang/zhd",
		["north"] = "miaojiang/xiaolu2",
	},
}
Room {
	id = "miaojiang/jiedao2",
	name = "小镇",
	ways = {
		["southeast"] = "miaojiang/ywj",
		["south"] = "miaojiang/jiedao3",
		["east"] = "miaojiang/xiaotan",
		["north"] = "miaojiang/jiedao1",
	},
}
Room {
	id = "miaojiang/jiedao3",
	name = "小镇",
	ways = {
		["south"] = "miaojiang/haozhai",
		["east"] = "miaojiang/jiedao5",
		["north"] = "miaojiang/jiedao2",
		["west"] = "miaojiang/jiedao4",
	},
}
Room {
	id = "miaojiang/jiedao4",
	name = "小镇",
	ways = {
		["north"] = "miaojiang/mzhai",
		["east"] = "miaojiang/jiedao3",
		["west"] = "miaojiang/slu1",
	},
}
Room {
	id = "miaojiang/jiedao5",
	name = "小镇",
	ways = {
		["southeast"] = "miaojiang/lianwuc",
		["east"] = "miaojiang/guoyuan",
		["west"] = "miaojiang/jiedao3",
	},
}
Room {
	id = "miaojiang/lianwuc",
	name = "练武场",
	ways = {
		["northwest"] = "miaojiang/jiedao5",
	},
}
Room {
	id = "miaojiang/mjqj",
	name = "苗疆奇境",
	ways = {
		["south"] = "miaojiang/gmcong14",
		["northeast"] = "miaojiang/mjqj1",
		["west"] = "miaojiang/shulin",
	},
}
Room {
	id = "miaojiang/mjqj1",
	name = "苗疆奇境",
	ways = {
		["southwest"] = "miaojiang/mjqj",
	},
}
Room {
	id = "miaojiang/myp",
	name = "明月屏",
	ways = {
		["south"] = "miaojiang/xiaolu1",
		["northeast"] = "miaojiang/shandao1",
	},
}
Room {
	id = "miaojiang/myt",
	name = "明月厅",
	ways = {
		["south"] = "miaojiang/qiant",
		["northwest"] = "miaojiang/shef",
	},
}
Room {
	id = "miaojiang/mzhai",
	name = "苗屋",
	ways = {
		["south"] = "miaojiang/jiedao4",
	},
}
Room {
	id = "miaojiang/qiant",
	name = "前厅",
	ways = {
		["south"] = "miaojiang/wddamen",
		["north"] = "miaojiang/myt",
		["east"] = "miaojiang/bingqif",
		["west"] = "miaojiang/chufang",
	},
}
Room {
	id = "miaojiang/shandao1",
	name = "山道",
	ways = {
		["southwest"] = "miaojiang/myp",
		["west"] = "miaojiang/shandao2",
	},
}
Room {
	id = "miaojiang/shandao2",
	name = "山道",
	ways = {
		["east"] = "miaojiang/shandao1",
		["north"] = "group/entry/mjshan2",
	},
}
Room {
	id = "miaojiang/shandong",
	name = "山洞",
	ways = {
		["out"] = "miaojiang/slu9",
	},
}
Room {
	id = "miaojiang/shanlu",
	name = "山路",
	ways = {
		["southeast"] = "miaojiang/slu1",
		["northwest"] = "miaojiang/houshan",
	},
	nolooks = {
		["northwest"] = true,
	},
	precmds = {
		["northwest"] = "push grass",
	},
}
Room {
	id = "miaojiang/shanlu1",
	name = "小路",
	ways = {
		["southeast"] = "miaojiang/xiaolu1",
	},
}
Room {
	id = "miaojiang/shanya2",
	name = "山坡",
	ways = {
		["west"] = "miaojiang/wddamen",
	},
}
Room {
	id = "miaojiang/shef",
	name = "蛇房",
	ways = {
		["southeast"] = "miaojiang/myt",
		["south"] = "miaojiang/woshi",
	},
}
Room {
	id = "miaojiang/shenchu",
	name = "苗疆奇境",
	ways = {
		["northup"] = "miaojiang/shulin",
	},
}
Room {
	id = "miaojiang/shulin",
	name = "树林",
	ways = {
		["east"] = "miaojiang/mjqj",
		["southdown"] = "miaojiang/shenchu",
	},
}
Room {
	id = "miaojiang/slu1",
	name = "山脚",
	ways = {
		["northwest"] = "miaojiang/shanlu",
		["east"] = "miaojiang/jiedao4",
	},
	nolooks = {
		["northup"] = true,
	},
}
Room {
	id = "miaojiang/slu2",
	name = "山路",
	ways = {
		["northup"] = "miaojiang/slu4",
		["eastup"] = "miaojiang/slu3",
		["southdown"] = "miaojiang/slu1",
	},
}
Room {
	id = "miaojiang/slu3",
	name = "山路",
	ways = {
		["northup"] = "miaojiang/slu6",
		["eastdown"] = "miaojiang/slu5",
		["westdown"] = "miaojiang/slu2",
	},
}
Room {
	id = "miaojiang/slu4",
	name = "山路",
	ways = {
		["northup"] = "miaojiang/wddamen",
		["southdown"] = "miaojiang/slu2",
	},
}
Room {
	id = "miaojiang/slu5",
	name = "山路",
	ways = {
		["northup"] = "miaojiang/slu7",
		["westup"] = "miaojiang/slu3",
	},
}
Room {
	id = "miaojiang/slu6",
	name = "山路",
	ways = {
		["southdown"] = "miaojiang/slu3",
	},
}
Room {
	id = "miaojiang/slu7",
	name = "山路",
	ways = {
		["northwest"] = "miaojiang/slu8",
		["southdown"] = "miaojiang/slu5",
	},
}
Room {
	id = "miaojiang/slu8",
	name = "山路",
	ways = {
		["southeast"] = "miaojiang/slu7",
		["east"] = "miaojiang/slu9",
	},
}
Room {
	id = "miaojiang/slu9",
	name = "山路",
	ways = {
		["enter"] = "miaojiang/shandong",
		["west"] = "miaojiang/slu8",
	},
}
Room {
	id = "miaojiang/wddamen",
	name = "大门",
	ways = {
		["east"] = "miaojiang/shanya2",
		["north"] = "miaojiang/qiant",
		["southdown"] = "miaojiang/slu4",
	},
}
Room {
	id = "miaojiang/woshi",
	name = "卧室",
	ways = {
		["north"] = "miaojiang/shef",
	},
}
Room {
	id = "miaojiang/xiaolu1",
	name = "小路",
	ways = {
		["northwest"] = "miaojiang/shanlu1",
		["east"] = "miaojiang/xiaolu2",
		["north"] = "miaojiang/myp",
	},
}
Room {
	id = "miaojiang/xiaolu2",
	name = "小路",
	ways = {
		["south"] = "miaojiang/jiedao1",
		["west"] = "miaojiang/xiaolu1",
	},
}
Room {
	id = "miaojiang/xiaotan",
	name = "小摊",
	ways = {
		["west"] = "miaojiang/jiedao2",
	},
}
Room {
	id = "miaojiang/yaofang1",
	name = "药房",
	no_fight = true,
	ways = {
		["south"] = "miaojiang/ywj",
	},
}
Room {
	id = "miaojiang/ywj",
	name = "药王居",
	no_fight = true,
	ways = {
		["northwest"] = "miaojiang/jiedao2",
		["north"] = "miaojiang/yaofang1",
	},
}
Room {
	id = "miaojiang/zhd",
	name = "杂货店",
	ways = {
		["west"] = "miaojiang/jiedao1",
	},
}
Room {
	id = "mingjiao/bank",
	name = "勒马斋",
	ways = {
		["east"] = "mingjiao/shejing",
	},
}
Room {
	id = "mingjiao/baota",
	name = "光明宝塔",
	ways = {
		["enter"] = "mingjiao/baota0",
		["southdown"] = "mingjiao/sht",
	},
}
Room {
	id = "mingjiao/baota0",
	name = "宝塔一楼",
	ways = {
		["out"] = "mingjiao/baota",
	},
}
Room {
	id = "mingjiao/bhd/cling",
	name = "丛林",
	ways = {
		["south"] = "mingjiao/bhd/shishan",
		["north"] = "mingjiao/bhd/cling1",
	},
}
Room {
	id = "mingjiao/bhd/cling1",
	name = "丛林",
	ways = {
		["south"] = "mingjiao/bhd/cling",
	},
}
Room {
	id = "mingjiao/bhd/dbshan",
	name = "冰山",
	ways = {
		["east"] = "mingjiao/bhd/dbshan1",
	},
}
Room {
	id = "mingjiao/bhd/dbshan1",
	name = "冰山",
	ways = {
		["west"] = "mingjiao/bhd/dbshan",
	},
}
Room {
	id = "mingjiao/bhd/hsjiao",
	name = "火山脚下",
	ways = {
		["westup"] = "mingjiao/bhd/huoshan1",
		["east"] = "mingjiao/bhd/ysroad2",
	},
}
Room {
	id = "mingjiao/bhd/huoshan1",
	name = "火山",
	ways = {
		["northup"] = "mingjiao/bhd/huoshan2",
		["eastdown"] = "mingjiao/bhd/hsjiao",
	},
}
Room {
	id = "mingjiao/bhd/huoshan2",
	name = "火山口",
	ways = {
		["southdown"] = "mingjiao/bhd/huoshan1",
	},
}
Room {
	id = "mingjiao/bhd/pingyan1",
	name = "绿野",
	ways = {
		["south"] = "mingjiao/bhd/yanshi",
		["north"] = "mingjiao/bhd/pingyan2",
	},
}
Room {
	id = "mingjiao/bhd/pingyan2",
	name = "绿野",
	ways = {
		["south"] = "mingjiao/bhd/yanshi",
		["north"] = "mingjiao/bhd/shishan",
		["east"] = "mingjiao/bhd/pingyan4",
		["west"] = "mingjiao/bhd/pingyan3",
	},
}
Room {
	id = "mingjiao/bhd/pingyan3",
	name = "绿野",
	ways = {
		["south"] = "mingjiao/bhd/pingyan2",
		["east"] = "mingjiao/bhd/pingyan4",
		["north"] = "mingjiao/bhd/pingyan1",
		["west"] = "mingjiao/bhd/pingyan3",
	},
}
Room {
	id = "mingjiao/bhd/pingyan4",
	name = "绿野",
	ways = {
		["south"] = "mingjiao/bhd/pingyan2",
		["east"] = "mingjiao/bhd/pingyan4",
		["north"] = "mingjiao/bhd/pingyan1",
		["west"] = "mingjiao/bhd/pingyan3",
	},
}
Room {
	id = "mingjiao/bhd/shishan",
	name = "石山",
	ways = {
		["south"] = "mingjiao/bhd/pingyan2",
		["east"] = "mingjiao/bhd/shishan1",
		["north"] = "mingjiao/bhd/cling",
		["west"] = "mingjiao/bhd/ysroad1",
	},
}
Room {
	id = "mingjiao/bhd/shishan1",
	name = "小石山",
	ways = {
		["west"] = "mingjiao/bhd/shishan",
	},
}
Room {
	id = "mingjiao/bhd/xdong",
	name = "石洞",
	ways = {
		["out"] = "mingjiao/bhd/shishan1",
	},
}
Room {
	id = "mingjiao/bhd/xiongdong",
	name = "熊洞",
	ways = {
		["out"] = "mingjiao/bhd/shishan",
	},
}
Room {
	id = "mingjiao/bhd/yanshi",
	name = "岩石",
	ways = {
		["north"] = "mingjiao/bhd/pingyan1",
	},
}
Room {
	id = "mingjiao/bhd/ysroad1",
	name = "岩石路",
	ways = {
		["east"] = "mingjiao/bhd/shishan",
		["west"] = "mingjiao/bhd/ysroad2",
	},
}
Room {
	id = "mingjiao/bhd/ysroad2",
	name = "岩石路",
	ways = {
		["east"] = "mingjiao/bhd/ysroad1",
		["west"] = "mingjiao/bhd/hsjiao",
	},
}
Room {
	id = "mingjiao/bingqi",
	name = "兵器库",
	ways = {
		["north"] = "mingjiao/huoqi",
	},
}
Room {
	id = "mingjiao/bishui",
	name = "碧水寒潭",
	ways = {
		["west"] = "mingjiao/shanlu2",
		["jump down"] = "mingjiao/tandi",
	},
	nolooks = {
		["jump down"] = true,
	},
	precmds = {
		["west"] = "#waitbusy",
		["jump down"] = "#waitbusy",
	},
}
Room {
	id = "mingjiao/cl1",
	name = "长廊",
	ways = {
		["east"] = "mingjiao/wu3",
		["west"] = "mingjiao/huoqi",
	},
}
Room {
	id = "mingjiao/cl2",
	name = "长廊",
	ways = {
		["east"] = "mingjiao/shuiqi",
		["west"] = "mingjiao/wu3",
	},
}
Room {
	id = "mingjiao/dashaqiu",
	name = "大沙丘",
	ways = {
		["east"] = "mingjiao/htping",
		["west"] = "mingjiao/shejing",
	},
}
Room {
	id = "mingjiao/didao/bidao1",
	name = "秘道入口",
	ways = {
		["north"] = "mingjiao/didao/bidao2",
		["out"] = "mingjiao/wxiang",
	},
}
Room {
	id = "mingjiao/didao/bidao10",
	name = "秘道",
	ways = {
		["eastdown"] = "mingjiao/didao/bidao11",
		["westup"] = "mingjiao/didao/bidao9",
	},
}
Room {
	id = "mingjiao/didao/bidao11",
	name = "秘道",
	ways = {
		["eastdown"] = "mingjiao/didao/bidao12",
		["westup"] = "mingjiao/didao/bidao10",
	},
}
Room {
	id = "mingjiao/didao/bidao12",
	name = "秘道",
	ways = {
		["westup"] = "mingjiao/didao/bidao11",
		["south"] = "mingjiao/didao/bidao13",
	},
}
Room {
	id = "mingjiao/didao/bidao13",
	name = "藏金室",
	ways = {
		["north"] = "mingjiao/didao/bidao12",
	},
}
Room {
	id = "mingjiao/didao/bidao15",
	name = "秘道",
	ways = {
		["northup"] = "mingjiao/didao/bidao20",
		["eastup"] = "mingjiao/didao/bidao16",
		["north"] = "mingjiao/didao/bidao22",
	},
}
Room {
	id = "mingjiao/didao/bidao16",
	name = "秘道",
	ways = {
		["southup"] = "mingjiao/didao/bidao17",
		["westdown"] = "mingjiao/didao/bidao15",
	},
}
Room {
	id = "mingjiao/didao/bidao17",
	name = "秘道",
	ways = {
		["southup"] = "mingjiao/didao/bidao18",
		["eastdown"] = "mingjiao/didao/bidao4",
		["northdown"] = "mingjiao/didao/bidao16",
	},
}
Room {
	id = "mingjiao/didao/bidao18",
	name = "秘道",
	ways = {
		["westup"] = "mingjiao/didao/bidao19",
		["northdown"] = "mingjiao/didao/bidao17",
	},
}
Room {
	id = "mingjiao/didao/bidao19",
	name = "秘道",
	ways = {
		["eastdown"] = "mingjiao/didao/bidao18",
		["out"] = "mingjiao/shanyao",
	},
}
Room {
	id = "mingjiao/didao/bidao2",
	name = "秘道",
	ways = {
		["south"] = "mingjiao/didao/bidao1",
		["east"] = "mingjiao/didao/bidao3",
	},
}
Room {
	id = "mingjiao/didao/bidao20",
	name = "秘道",
	ways = {
		["east"] = "mingjiao/didao/bidao21",
		["southdown"] = "mingjiao/didao/bidao15",
	},
}
Room {
	id = "mingjiao/didao/bidao21",
	name = "秘道",
	ways = {
		["west"] = "mingjiao/didao/bidao20",
		["out"] = "mingjiao/tuqi",
	},
}
Room {
	id = "mingjiao/didao/bidao22",
	name = "秘室",
	ways = {
		["south"] = "mingjiao/didao/bidao15",
	},
}
Room {
	id = "mingjiao/didao/bidao3",
	name = "秘道",
	ways = {
		["north"] = "mingjiao/didao/bidao4",
		["west"] = "mingjiao/didao/bidao2",
	},
}
Room {
	id = "mingjiao/didao/bidao4",
	name = "秘道",
	ways = {
		["westup"] = "mingjiao/didao/bidao17",
		["south"] = "mingjiao/didao/bidao3",
	},
}
Room {
	id = "mingjiao/didao/bidao5",
	name = "秘道",
	ways = {
		["northdown"] = "mingjiao/didao/bidao6",
	},
}
Room {
	id = "mingjiao/didao/bidao6",
	name = "秘道",
	ways = {
		["southup"] = "mingjiao/didao/bidao5",
		["eastdown"] = "mingjiao/didao/bidao7",
	},
}
Room {
	id = "mingjiao/didao/bidao7",
	name = "秘道",
	ways = {
		["westup"] = "mingjiao/didao/bidao6",
	},
}
Room {
	id = "mingjiao/didao/bidao8",
	name = "秘道",
	ways = {
		["eastdown"] = "mingjiao/didao/bidao9",
		["out"] = "mingjiao/didao/bidao7",
	},
}
Room {
	id = "mingjiao/didao/bidao9",
	name = "秘道",
	ways = {
		["eastdown"] = "mingjiao/didao/bidao10",
		["westup"] = "mingjiao/didao/bidao8",
	},
}
Room {
	id = "mingjiao/didao/mbidao1",
	name = "秘道",
	ways = {
		["west"] = "mingjiao/didao/mbidao2",
	},
}
Room {
	id = "mingjiao/didao/mbidao2",
	name = "秘道",
	ways = {
		["south"] = "mingjiao/didao/mbidao3",
		["east"] = "mingjiao/didao/mbidao1",
	},
}
Room {
	id = "mingjiao/didao/mbidao3",
	name = "秘道",
	ways = {
		["east"] = "mingjiao/didao/mbidao4",
		["north"] = "mingjiao/didao/mbidao2",
	},
}
Room {
	id = "mingjiao/didao/mbidao4",
	name = "秘道",
	ways = {
		["south"] = "mingjiao/didao/mbidao5",
		["west"] = "mingjiao/didao/mbidao3",
	},
}
Room {
	id = "mingjiao/didao/mbidao5",
	name = "秘道",
	ways = {
		["north"] = "mingjiao/didao/mbidao4",
		["west"] = "mingjiao/didao/mbidao6",
	},
}
Room {
	id = "mingjiao/didao/mbidao6",
	name = "秘道",
	ways = {
		["north"] = "mingjiao/didao/mchukou",
		["east"] = "mingjiao/didao/mbidao5",
	},
}
Room {
	id = "mingjiao/didao/mchukou",
	name = "秘道出口",
	ways = {
		["up"] = "mingjiao/didao/bidao7",
	},
}
Room {
	id = "mingjiao/didao/men-di",
	name = "地字门",
	ways = {
		["southeast"] = "mingjiao/didao/senlin",
		["northeast"] = "mingjiao/didao/senlin",
		["northwest"] = "mingjiao/didao/senlin",
		["southwest"] = "mingjiao/didao/senlin",
	},
}
Room {
	id = "mingjiao/didao/men-feng",
	name = "风字门",
	ways = {
		["southeast"] = "mingjiao/didao/senlin",
		["northeast"] = "mingjiao/didao/senlin",
		["northwest"] = "mingjiao/didao/senlin",
		["southwest"] = "mingjiao/didao/senlin",
	},
}
Room {
	id = "mingjiao/didao/men-lei",
	name = "雷字门",
	ways = {
		["southeast"] = "mingjiao/didao/senlin",
		["northeast"] = "mingjiao/didao/senlin",
		["northwest"] = "mingjiao/didao/senlin",
		["southwest"] = "mingjiao/didao/senlin",
	},
}
Room {
	id = "mingjiao/didao/men-tian",
	name = "天字门",
	ways = {
		["southeast"] = "mingjiao/didao/senlin",
		["northeast"] = "mingjiao/didao/senlin",
		["northwest"] = "mingjiao/didao/senlin",
		["southwest"] = "mingjiao/didao/senlin",
	},
}
Room {
	id = "mingjiao/didao/senlin",
	name = "紫杉林",
	ways = {
		["#outzsl"] = "mingjiao/shuiqi",
		["#tianMen"] = "mingjiao/didao/men-tian",
		["#diMen"] = "mingjiao/didao/men-di",
		["#fengMen"] = "mingjiao/didao/men-feng",
		["#leiMen"] = "mingjiao/didao/men-lei",
	},
	nolooks = {
		["#outzsl"] = true,
		["#tianMen"] = true,
		["#diMen"] = true,
		["#fengMen"] = true,
		["#leiMen"] = true,
		["south"] = true,
		["north"] = true,
		["east"] = true,
		["west"] = true,
	},
	lengths = {
		["#outzsl"] = 50,
		["#tianMen"] = 50,
		["#diMen"] = 50,
		["#fengMen"] = 50,
		["#leiMen"] = 50,
	},
	find = {
		path = {"nw;n"}, count = 30,
	},
}
Room {
	id = "mingjiao/didao/shenchu1",
	name = "树林深处",
	ways = {
		["northwest"] = "mingjiao/didao/shenchu2",
		["north"] = "mingjiao/didao/shuling2",
	},
}
Room {
	id = "mingjiao/didao/shenchu2",
	name = "树林深处",
	ways = {
		["southeast"] = "mingjiao/didao/shenchu4",
		["north"] = "mingjiao/didao/shenchu5",
		["northeast"] = "mingjiao/didao/shenchu3",
		["west"] = "mingjiao/didao/shenchu1",
	},
}
Room {
	id = "mingjiao/didao/shenchu3",
	name = "树林深处",
	ways = {
		["southwest"] = "mingjiao/didao/shenchu2",
		["south"] = "mingjiao/didao/shenchu5",
		["northwest"] = "mingjiao/didao/shenchu1",
		["east"] = "mingjiao/didao/shenchu4",
	},
}
Room {
	id = "mingjiao/didao/shenchu4",
	name = "树林深处",
	ways = {
		["northwest"] = "mingjiao/didao/shuling6",
		["west"] = "mingjiao/didao/shenchu3",
	},
}
Room {
	id = "mingjiao/didao/shenchu5",
	name = "树林深处",
	ways = {
		["south"] = "mingjiao/didao/shenchu2",
		["north"] = "mingjiao/didao/shenchu3",
	},
}
Room {
	id = "mingjiao/didao/shuling1",
	name = "树林",
	ways = {
		["south"] = "mingjiao/didao/shuling3",
		["east"] = "mingjiao/muqi",
		["west"] = "mingjiao/didao/shuling4",
	},
	nolooks = {
		["north"] = true,
	},
}
Room {
	id = "mingjiao/didao/shuling2",
	name = "树林",
	ways = {
		["south"] = "mingjiao/didao/shenchu5",
		["north"] = "mingjiao/didao/shuling6",
		["west"] = "mingjiao/muqi",
	},
	nolooks = {
		["east"] = true,
	},
}
Room {
	id = "mingjiao/didao/shuling3",
	name = "树林",
	ways = {
		["east"] = "mingjiao/didao/shuling1",
		["#toSc"] = "mingjiao/didao/shenchu1",
	},
	nolooks = {
		["#toSc"] = true,
		["south"] = true,
		["north"] = true,
		["west"] = true,
	},
	lengths = {
		["#toSc"] = 10,
	},
}
Room {
	id = "mingjiao/didao/shuling4",
	name = "树林",
	ways = {
		["east"] = "mingjiao/didao/shuling4",
		["#toSc"] = "mingjiao/didao/shenchu1",
	},
	nolooks = {
		["#toSc"] = true,
		["south"] = true,
		["north"] = true,
		["west"] = true,
	},
	lengths = {
		["#toSc"] = 10,
	},
}
Room {
	id = "mingjiao/didao/shuling5",
	name = "树林",
	ways = {
		["east"] = "mingjiao/didao/shuling2",
		["#toSc"] = "mingjiao/didao/shenchu4",
	},
	nolooks = {
		["#toSc"] = true,
		["south"] = true,
		["north"] = true,
		["west"] = true,
	},
	lengths = {
		["#toSc"] = 10,
	},
}
Room {
	id = "mingjiao/didao/shuling6",
	name = "树林",
	ways = {
		["east"] = "mingjiao/didao/shuling5",
		["#toSc"] = "mingjiao/didao/shenchu4",
	},
	nolooks = {
		["#toSc"] = true,
		["south"] = true,
		["north"] = true,
		["west"] = true,
	},
	lengths = {
		["#toSc"] = 10,
	},
}
Room {
	id = "mingjiao/eatroom",
	name = "厨房",
	no_fight = true,
	ways = {
		["east"] = "mingjiao/xting",
	},
}
Room {
	id = "mingjiao/gmd",
	name = "光明顶",
	ways = {
		["northup"] = "mingjiao/wu3",
		["southdown"] = "mingjiao/muqi",
	},
}
Room {
	id = "mingjiao/guangc",
	name = "广场",
	ways = {
		["south"] = "mingjiao/wu3",
		["east"] = "mingjiao/zl2",
		["north"] = "mingjiao/wu1",
		["west"] = "mingjiao/zl1",
	},
}
Room {
	id = "mingjiao/hdg/caojing",
	name = "草径",
	ways = {
		["#goNp"] = "mingjiao/hdg/niupeng",
		["east"] = "mingjiao/hdg/xfang1",
		["north"] = "mingjiao/hdg/maowu",
		["west"] = "mingjiao/hdg/maopeng",
	},
	nolooks = {
		["south"] = true,
		["#goNp"] = true,
	},
	lengths = {
		["#goNp"] = 100,
	},
}
Room {
	id = "mingjiao/hdg/caotang",
	name = "草堂",
	ways = {
		["south"] = "mingjiao/hdg/maowu",
		["enter"] = "mingjiao/hdg/xfang4",
		["east"] = "mingjiao/hdg/xfang3",
		["west"] = "mingjiao/hdg/chufang",
	},
	nolooks = {
		["enter"] = true,
	},
	precmds = {
		["enter"] = "open door",
	},
}
Room {
	id = "mingjiao/hdg/chufang",
	name = "厨房",
	ways = {
		["south"] = "mingjiao/hdg/xfang2",
		["north"] = "mingjiao/hdg/huapu4",
		["east"] = "mingjiao/hdg/caotang",
	},
	precmds = {
		["south"] = "drop rice;drop miantang;drop qingcai",
		["north"] = "drop rice;drop miantang;drop qingcai",
		["east"] = "drop rice;drop miantang;drop qingcai",
	},
}
Room {
	id = "mingjiao/hdg/houshan",
	name = "后山",
	ways = {
		["south"] = "mingjiao/hdg/huapu4",
	},
}
Room {
	id = "mingjiao/hdg/huacong1",
	name = "花丛中",
	ways = {
		["north"] = "mingjiao/hdg/xiaojing",
		["out"] = "mingjiao/hdg/shanbi",
	},
}
Room {
	id = "mingjiao/hdg/huapu1",
	name = "花圃",
	ways = {
		["south"] = "mingjiao/hdg/huapu1",
		["north"] = "mingjiao/hdg/huapu1",
		["east"] = "mingjiao/hdg/huapu1",
		["west"] = "mingjiao/hdg/huapu1",
		["#goNp"] = "mingjiao/hdg/niupeng",
		["#goCj"] = "mingjiao/hdg/caojing",
	},
	nolooks = {
		["#goNp"] = true,
		["#goCj"] = true,
	},
	lengths = {
		["#goNp"] = 100,
		["#goCj"] = 100,
	},
}
Room {
	id = "mingjiao/hdg/huapu2",
	name = "花圃",
	ways = {
		["west"] = "mingjiao/hdg/xfang1",
	},
}
Room {
	id = "mingjiao/hdg/huapu3",
	name = "花圃",
	ways = {
		["east"] = "mingjiao/hdg/maopeng",
	},
}
Room {
	id = "mingjiao/hdg/huapu4",
	name = "花圃",
	ways = {
		["south"] = "mingjiao/hdg/chufang",
		["north"] = "mingjiao/hdg/houshan",
	},
}
Room {
	id = "mingjiao/hdg/kongdi",
	name = "空地",
	ways = {
		["southwest"] = "mingjiao/hdg/xiaojing2",
		["northwest"] = "mingjiao/hdg/shanlu2",
		["north"] = "mingjiao/hdg/niupeng",
		["northeast"] = "mingjiao/hdg/shanlu1",
	},
}
Room {
	id = "mingjiao/hdg/maopeng",
	name = "茅棚",
	ways = {
		["north"] = "mingjiao/hdg/xfang2",
		["east"] = "mingjiao/hdg/caojing",
		["west"] = "mingjiao/hdg/huapu3",
	},
}
Room {
	id = "mingjiao/hdg/maowu",
	name = "茅屋",
	ways = {
		["south"] = "mingjiao/hdg/caojing",
		["east"] = "mingjiao/hdg/yaofang",
		["north"] = "mingjiao/hdg/caotang",
		["west"] = "mingjiao/hdg/xfang2",
	},
}
Room {
	id = "mingjiao/hdg/niupeng",
	name = "牛棚",
	ways = {
		["south"] = "mingjiao/hdg/kongdi",
		["#goCj"] = "mingjiao/hdg/caojing",
	},
	nolooks = {
		["northdown"] = true,
		["#goCj"] = true,
	},
	lengths = {
		["#goCj"] = 100,
	},
}
Room {
	id = "mingjiao/hdg/shanbi",
	name = "山壁",
	ways = {
		["south"] = "city/wroad3",
		["right"] = "mingjiao/hdg/huacong1",
	},
	nolooks = {
		["right"] = true,
	},
	lengths = {
		["right"] = "if getParty() == '明教' then return 2 else return false end",
	},
	precmds = {
		["right"] = "bo huacong",
	},
}
Room {
	id = "mingjiao/hdg/shanlu1",
	name = "山路",
	ways = {
		["northup"] = "mingjiao/hdg/shanlu3",
		["southwest"] = "mingjiao/hdg/kongdi",
	},
}
Room {
	id = "mingjiao/hdg/shanlu2",
	name = "山路",
	ways = {
		["northup"] = "mingjiao/hdg/shanlu4",
		["southeast"] = "mingjiao/hdg/kongdi",
	},
}
Room {
	id = "mingjiao/hdg/shanlu3",
	name = "山路",
	ways = {
		["eastdown"] = "mingjiao/hdg/huapu1",
		["southdown"] = "mingjiao/hdg/shanlu1",
	},
}
Room {
	id = "mingjiao/hdg/shanlu4",
	name = "山路",
	ways = {
		["westdown"] = "mingjiao/hdg/huapu1",
		["southdown"] = "mingjiao/hdg/shanlu2",
	},
}
Room {
	id = "mingjiao/hdg/shufang",
	name = "书房",
	ways = {
		["west"] = "mingjiao/hdg/xfang3",
	},
}
Room {
	id = "mingjiao/hdg/xfang1",
	name = "厢房",
	ways = {
		["north"] = "mingjiao/hdg/yaofang",
		["east"] = "mingjiao/hdg/huapu2",
		["west"] = "mingjiao/hdg/caojing",
	},
}
Room {
	id = "mingjiao/hdg/xfang2",
	name = "厢房",
	ways = {
		["south"] = "mingjiao/hdg/maopeng",
		["east"] = "mingjiao/hdg/maowu",
		["north"] = "mingjiao/hdg/chufang",
	},
}
Room {
	id = "mingjiao/hdg/xfang3",
	name = "厢房",
	ways = {
		["south"] = "mingjiao/hdg/yaofang",
		["east"] = "mingjiao/hdg/shufang",
		["west"] = "mingjiao/hdg/caotang",
	},
}
Room {
	id = "mingjiao/hdg/xfang4",
	name = "厢房",
	ways = {
		["out"] = "mingjiao/hdg/caotang",
	},
	nolooks = {
		["out"] = true,
	},
	precmds = {
		["out"] = "open door",
	},
}
Room {
	id = "mingjiao/hdg/xiaojing",
	name = "小径",
	ways = {
		["south"] = "mingjiao/hdg/huacong1",
		["north"] = "mingjiao/hdg/xiaojing1",
	},
}
Room {
	id = "mingjiao/hdg/xiaojing1",
	name = "小径",
	ways = {
		["south"] = "mingjiao/hdg/xiaojing",
		["north"] = "mingjiao/hdg/xiaojing2",
	},
}
Room {
	id = "mingjiao/hdg/xiaojing2",
	name = "小径",
	ways = {
		["south"] = "mingjiao/hdg/xiaojing1",
		["northeast"] = "mingjiao/hdg/kongdi",
	},
}
Room {
	id = "mingjiao/hdg/yaofang",
	name = "药房",
	ways = {
		["south"] = "mingjiao/hdg/xfang1",
		["north"] = "mingjiao/hdg/xfang3",
		["west"] = "mingjiao/hdg/maowu",
	},
}
Room {
	id = "mingjiao/htping",
	name = "黄土坪",
	ways = {
		["southeast"] = "mingjiao/shaqiu4",
		["west"] = "mingjiao/dashaqiu",
	},
	nolooks = {
		["south"] = true,
		["east"] = true,
	}
}
Room {
	id = "mingjiao/huoqi",
	name = "烈火旗",
	ways = {
		["south"] = "mingjiao/bingqi",
		["north"] = "mingjiao/wu2",
		["east"] = "mingjiao/cl1",
		["west"] = "mingjiao/didao/senlin",
	},
	postcmds = {
		["south"] = "#waitbusy",
	},
}
Room {
	id = "mingjiao/jinqi",
	name = "锐金旗",
	ways = {
		["southeast"] = "mingjiao/rukou",
		["south"] = "mingjiao/zl7",
		["east"] = "mingjiao/didao/senlin",
		["west"] = "mingjiao/shiwang",
	},
}
Room {
	id = "mingjiao/jyt",
	name = "聚议厅",
	ways = {
		["northup"] = "mingjiao/sht",
		["south"] = "mingjiao/xting",
		["east"] = "mingjiao/shiwang",
		["west"] = "mingjiao/longwang",
	},
	blocks = {
		["northup"] = {
			{id = "fan yao", exp = 1500000, party = "明教"},
		},
	},
	lengths = {
		["west"] = "if getExp() < 1600000 then return false else return 1 end",
	},
}
Room {
	id = "mingjiao/ljroad1",
	name = "林间小路",
	ways = {
		["westdown"] = "mingjiao/shanyao",
		["northwest"] = "mingjiao/ljroad2",
		["northeast"] = "mingjiao/ljroad2a",
	},
}
Room {
	id = "mingjiao/ljroad2",
	name = "林间小路",
	ways = {
		["southeast"] = "mingjiao/ljroad1",
		["northwest"] = "mingjiao/ljroad3",
	},
}
Room {
	id = "mingjiao/ljroad2a",
	name = "林间小路",
	ways = {
		["southwest"] = "mingjiao/ljroad1",
		["northeast"] = "mingjiao/ljroad3",
	},
}
Room {
	id = "mingjiao/ljroad3",
	name = "林间小路",
	ways = {
		["northup"] = "mingjiao/qianting",
		["southeast"] = "mingjiao/ljroad2",
		["southwest"] = "mingjiao/ljroad2a",
	},
}
Room {
	id = "mingjiao/longwang",
	name = "龙王殿",
	ways = {
		["east"] = "mingjiao/jyt",
		["west"] = "mingjiao/tuqi",
	},
	nolooks = {
		["northwest"] = true,
	},
}
Room {
	id = "mingjiao/lsd/anbian",
	name = "岸边",
	ways = {
		["eastup"] = "mingjiao/lsd/shanguang",
	},
}
Room {
	id = "mingjiao/lsd/lsgu",
	name = "灵蛇谷",
	ways = {
		["southup"] = "mingjiao/lsd/shanguang",
		["north"] = "mingjiao/lsd/sfjiao",
	},
}
Room {
	id = "mingjiao/lsd/sfjiao",
	name = "山峰脚下",
	ways = {
		["northup"] = "mingjiao/lsd/shanfeng",
		["south"] = "mingjiao/lsd/lsgu",
	},
}
Room {
	id = "mingjiao/lsd/shanfeng",
	name = "山峰",
	ways = {
		["southdown"] = "mingjiao/lsd/sfjiao",
	},
}
Room {
	id = "mingjiao/lsd/shanguang",
	name = "山岗",
	ways = {
		["westdown"] = "mingjiao/lsd/anbian",
		["northdown"] = "mingjiao/lsd/lsgu",
	},
}
Room {
	id = "mingjiao/muqi",
	name = "巨木旗",
	ways = {
		["northup"] = "mingjiao/gmd",
		["south"] = "mingjiao/tingtang",
		["east"] = "mingjiao/didao/shuling2",
		["west"] = "mingjiao/didao/shuling1",
	},
}
Room {
	id = "mingjiao/qianting",
	name = "总坛前厅",
	ways = {
		["north"] = "mingjiao/tingtang",
		["southdown"] = "mingjiao/ljroad3",
	},
}
Room {
	id = "mingjiao/rukou",
	name = "监狱入口",
	ways = {
		["southwest"] = "mingjiao/zl7",
		["northwest"] = "mingjiao/jinqi",
	},
}
Room {
	id = "mingjiao/shanjiao",
	name = "山脚下",
	ways = {
		["eastup"] = "mingjiao/sshanlu1",
		["westup"] = "kunlun/zhenyuanqiao",
		["south"] = "mingjiao/shejing",
	},
}
Room {
	id = "mingjiao/shanlu1",
	name = "山间小路",
	ways = {
		["eastdown"] = "mingjiao/shanlu2",
		["westup"] = "mingjiao/shuiqi",
	},
}
Room {
	id = "mingjiao/shanlu2",
	name = "山间小路",
	ways = {
		["westup"] = "mingjiao/shanlu1",
		["east"] = "mingjiao/bishui",
	},
}
Room {
	id = "mingjiao/shanting",
	name = "山亭",
	ways = {
		["westup"] = "mingjiao/sshanlu6",
		["northdown"] = "mingjiao/sshanlu5",
	},
}
Room {
	id = "mingjiao/shanyao",
	name = "半山腰",
	ways = {
		["eastup"] = "mingjiao/ljroad1",
		["northdown"] = "mingjiao/sshanlu6",
	},
}
Room {
	id = "mingjiao/shaqiu1",
	name = "小沙丘",
	ways = {
		["east"] = "group/entry/mjshamo1",
		["west"] = "mingjiao/shaqiu2",
	},
	nolooks = {
		["south"] = true,
		["north"] = true,
	}
}
Room {
	id = "mingjiao/shaqiu2",
	name = "小沙丘",
	ways = {
		["east"] = "mingjiao/shaqiu1",
		["west"] = "mingjiao/shaqiu3",
	},
	nolooks = {
		["south"] = true,
		["north"] = true,
	}
}
Room {
	id = "mingjiao/shaqiu3",
	name = "小沙丘",
	ways = {
		["east"] = "mingjiao/shaqiu2",
		["west"] = "mingjiao/shaqiu4",
	},
	nolooks = {
		["south"] = true,
		["north"] = true,
	}
}
Room {
	id = "mingjiao/shaqiu4",
	name = "小沙丘",
	ways = {
		["northwest"] = "mingjiao/htping",
		["east"] = "mingjiao/shaqiu3",
	},
	nolooks = {
		["south"] = true,
		["north"] = true,
	}
}
Room {
	id = "mingjiao/shejing",
	name = "沙漠绿洲",
	ways = {
		["north"] = "mingjiao/shanjiao",
		["east"] = "mingjiao/dashaqiu",
		["west"] = "mingjiao/bank",
	},
}
Room {
	id = "mingjiao/shiwang",
	name = "狮王殿",
	ways = {
		["east"] = "mingjiao/jinqi",
		["west"] = "mingjiao/jyt",
	},
}
Room {
	id = "mingjiao/sht",
	name = "圣火堂",
	ways = {
		["northup"] = "mingjiao/baota",
		["southdown"] = "mingjiao/jyt",
	},
}
Room {
	id = "mingjiao/shuiqi",
	name = "洪水旗",
	ways = {
		["eastdown"] = "mingjiao/shanlu1",
		["north"] = "mingjiao/wu4",
		["east"] = "mingjiao/didao/senlin",
		["west"] = "mingjiao/cl2",
	},
}
Room {
	id = "mingjiao/shuyuan",
	name = "书院",
	no_fight = true,
	ways = {
		["east"] = "mingjiao/wu1",
	},
}
Room {
	id = "mingjiao/sleeproom",
	name = "休息室",
	no_fight = true,
	ways = {
		["west"] = "mingjiao/xting",
	},
}
Room {
	id = "mingjiao/sshanlu1",
	name = "山路",
	ways = {
		["southup"] = "mingjiao/sshanlu2",
		["westdown"] = "mingjiao/shanjiao",
	},
}
Room {
	id = "mingjiao/sshanlu2",
	name = "山路",
	ways = {
		["westup"] = "mingjiao/sshanlu3",
		["northdown"] = "mingjiao/sshanlu1",
	},
}
Room {
	id = "mingjiao/sshanlu3",
	name = "山路",
	ways = {
		["northup"] = "mingjiao/sshanlu4",
		["eastdown"] = "mingjiao/sshanlu2",
	},
}
Room {
	id = "mingjiao/sshanlu4",
	name = "山路",
	ways = {
		["north"] = "mingjiao/xuanya1",
		["southdown"] = "mingjiao/sshanlu3",
	},
}
Room {
	id = "mingjiao/sshanlu5",
	name = "山路",
	ways = {
		["southup"] = "mingjiao/shanting",
		["westdown"] = "mingjiao/xuanya3",
	},
}
Room {
	id = "mingjiao/sshanlu6",
	name = "山路",
	ways = {
		["southup"] = "mingjiao/shanyao",
		["eastdown"] = "mingjiao/shanting",
	},
}
Room {
	id = "mingjiao/tandi",
	name = "潭底",
	ways = {
		["up"] = "mingjiao/bishui",
	},
}
Room {
	id = "mingjiao/tearoom",
	name = "茶室",
	no_fight = true,
	ways = {
		["east"] = "mingjiao/tingtang",
	},
}
Room {
	id = "mingjiao/tingtang",
	name = "厅堂",
	ways = {
		["south"] = "mingjiao/qianting",
		["east"] = "mingjiao/xiangfang",
		["north"] = "mingjiao/muqi",
		["west"] = "mingjiao/tearoom",
	},
}
Room {
	id = "mingjiao/tuqi",
	name = "厚土旗",
	ways = {
		["south"] = "mingjiao/zl6",
		["east"] = "mingjiao/longwang",
		["west"] = "mingjiao/didao/senlin",
	},
	lengths = {
		["east"] = "if getExp() < 1600000 then return false else return 1 end",
	},
}
Room {
	id = "mingjiao/wu1",
	name = "练武场",
	ways = {
		["south"] = "mingjiao/guangc",
		["east"] = "mingjiao/yaofang",
		["north"] = "mingjiao/xting",
		["west"] = "mingjiao/shuyuan",
	},
}
Room {
	id = "mingjiao/wu2",
	name = "练武场",
	ways = {
		["south"] = "mingjiao/huoqi",
		["east"] = "mingjiao/zl1",
		["north"] = "mingjiao/zl6",
	},
}
Room {
	id = "mingjiao/wu3",
	name = "练武场",
	ways = {
		["north"] = "mingjiao/guangc",
		["east"] = "mingjiao/cl2",
		["southdown"] = "mingjiao/gmd",
		["west"] = "mingjiao/cl1",
	},
	blocks = {
		["north"] = {
			{id = "yin wushou", exp = 350000, party = "明教"},
		},
		["east"] = {
			{id = "yin wushou", exp = 350000, party = "明教"},
		},
		["west"] = {
			{id = "yin wushou", exp = 350000, party = "明教"},
		},
	},
}
Room {
	id = "mingjiao/wu4",
	name = "练武场",
	ways = {
		["south"] = "mingjiao/shuiqi",
		["north"] = "mingjiao/zl7",
		["west"] = "mingjiao/zl2",
	},
}
Room {
	id = "mingjiao/wxiang",
	name = "西厢房",
	ways = {
		["east"] = "mingjiao/yuanzi",
	},
}
Room {
	id = "mingjiao/xiangfang",
	name = "厢房",
	no_fight = true,
	ways = {
		["west"] = "mingjiao/tingtang",
	},
	precmds = {
		["west"] = "#waitbusy",
	},
}
Room {
	id = "mingjiao/xting",
	name = "小厅",
	ways = {
		["south"] = "mingjiao/wu1",
		["east"] = "mingjiao/sleeproom",
		["north"] = "mingjiao/jyt",
		["west"] = "mingjiao/eatroom",
	},
}
Room {
	id = "mingjiao/xuanya1",
	name = "栈道",
	ways = {
		["south"] = "mingjiao/sshanlu4",
		["northwest"] = "mingjiao/xuanya2a",
		["northeast"] = "mingjiao/xuanya2",
	},
}
Room {
	id = "mingjiao/xuanya2",
	name = "栈道",
	ways = {
		["southwest"] = "mingjiao/xuanya1",
		["northeast"] = "mingjiao/xuanya3",
	},
}
Room {
	id = "mingjiao/xuanya2a",
	name = "栈道",
	ways = {
		["southeast"] = "mingjiao/xuanya1",
		["northwest"] = "mingjiao/xuanya3",
	},
}
Room {
	id = "mingjiao/xuanya3",
	name = "栈道",
	ways = {
		["eastup"] = "mingjiao/sshanlu5",
		["southeast"] = "mingjiao/xuanya2a",
		["southwest"] = "mingjiao/xuanya2",
	},
}
Room {
	id = "mingjiao/yaofang",
	name = "药房",
	ways = {
		["west"] = "mingjiao/wu1",
	},
}
Room {
	id = "mingjiao/yuanzi",
	name = "小院子",
	ways = {
		["southeast"] = "mingjiao/longwang",
		["west"] = "mingjiao/wxiang",
	},
}
Room {
	id = "mingjiao/zl1",
	name = "长廊",
	ways = {
		["east"] = "mingjiao/guangc",
		["west"] = "mingjiao/wu2",
	},
}
Room {
	id = "mingjiao/zl2",
	name = "长廊",
	ways = {
		["east"] = "mingjiao/wu4",
		["west"] = "mingjiao/guangc",
	},
}
Room {
	id = "mingjiao/zl6",
	name = "长廊",
	ways = {
		["south"] = "mingjiao/wu2",
		["north"] = "mingjiao/tuqi",
	},
}
Room {
	id = "mingjiao/zl7",
	name = "长廊",
	ways = {
		["south"] = "mingjiao/wu4",
		["north"] = "mingjiao/jinqi",
		["northeast"] = "mingjiao/rukou",
	},
}
Room {
	id = "mr/cangshuge",
	name = "藏书阁",
	no_fight = true,
	ways = {
		["down"] = "mr/yunjinlou",
	},
}
Room {
	id = "mr/chufang",
	name = "厨房",
	ways = {
		["south"] = "mr/xiaoting",
	},
}
Room {
	id = "mr/cl",
	name = "长廊",
	ways = {
		["north"] = "mr/qianyuan",
		["east"] = "mr/cl1",
	},
}
Room {
	id = "mr/cufang",
	name = "厨房",
	ways = {
		["east"] = "mr/didao1",
	},
}
Room {
	id = "mr/didao",
	name = "地道",
	ways = {
		["xiaodao"] = "mr/houtang",
		["north"] = "mr/didao1",
		["yanziwu"] = "mr/yanziwu/shuixie",
		["shanzhuang"] = "mr/mtl/shiqiao1",
		["out"] = "mr/shiqiao",
	},
}
Room {
	id = "mr/didao1",
	name = "地道",
	ways = {
		["south"] = "mr/didao",
		["east"] = "mr/sleeproom",
		["west"] = "mr/cufang",
	},
}
Room {
	id = "mr/didao2",
	name = "地道",
	ways = {
		["north"] = "mr/migong1",
	},
}
Room {
	id = "mr/duchuan3",
	name = "渡船",
	ways = {
		["out"] = "mr/xiaodao",
	},
}
Room {
	id = "mr/houtang",
	name = "后堂",
	ways = {
		["north"] = "mr/xiaoting",
		["zuan didao"] = "mr/didao",
	},
	nolooks = {
		["zuan didao"] = true,
	},
	lengths = {
		["zuan didao"] = "if getParty() == '姑苏慕容' then return 1 else return false end",
	},
}
Room {
	id = "mr/hssg",
	name = "还施水阁",
	ways = {
		["south"] = "mr/jiabi",
	},
}
Room {
	id = "mr/hubian",
	name = "湖边",
	ways = {
		["east"] = "mr/hubian1",
		["west"] = "suzhou/qingshidadao",
	},
}
Room {
	id = "mr/hubian1",
	name = "湖边",
	ways = {
		["east"] = "mr/hubian2",
		["west"] = "mr/hubian",
	},
}
Room {
	id = "mr/hubian2",
	name = "湖边",
	ways = {
		["southeast"] = "mr/shiqiao",
		["west"] = "mr/hubian1",
	},
}
Room {
	id = "mr/jiabi",
	name = "夹壁",
	ways = {
		["north"] = "mr/hssg",
	},
}
Room {
	id = "mr/kongfang",
	name = "空房间",
	ways = {
		["west"] = "mr/migong2",
	},
}
Room {
	id = "mr/migong1",
	name = "迷宫",
	ways = {
		["south"] = "mr/migong1",
		["north"] = "mr/migong4",
		["east"] = "mr/migong2",
		["west"] = "mr/migong3",
	},
}
Room {
	id = "mr/migong2",
	name = "迷宫",
	ways = {
		["south"] = "mr/migong3",
		["east"] = "mr/migong4",
		["north"] = "mr/migong2",
		["west"] = "mr/migong3",
	},
}
Room {
	id = "mr/migong3",
	name = "迷宫",
	ways = {
		["south"] = "mr/migong1",
		["north"] = "mr/migong3",
		["east"] = "mr/migong2",
		["west"] = "mr/migong4",
	},
}
Room {
	id = "mr/migong4",
	name = "迷宫",
	ways = {
		["south"] = "mr/migong3",
		["east"] = "mr/migong4",
		["north"] = "mr/migong4",
		["west"] = "mr/migong1",
	},
}
Room {
	id = "mr/mishi",
	name = "密室",
	ways = {
		["south"] = "mr/fenmu",
	},
}
Room {
	id = "mr/mishi1",
	name = "密室",
	ways = {
		["up"] = "mr/mishi",
	},
}
Room {
	id = "mr/mtl/anbian",
	name = "岸边",
	ways = {
		["south"] = "mr/mtl/hc",
		["east"] = "mr/mtl/hc1",
		["west"] = "mr/mtl/hc2",
	},
}
Room {
	id = "mr/mtl/anbian1",
	name = "岸边",
	ways = {
		["north"] = "mr/mtl/xiaojing11",
		["#szToXz"] = "mr/xiaodao",
		["#szToYzw"] = "mr/yanziwu/anbian2",
	},
	nolooks = {
		["#szToXz"] = true,
		["#szToYzw"] = true,
	},
	lengths = {
		["#szToXz"] = 600,
		["#szToYzw"] = 600,
	},
}
Room {
	id = "mr/mtl/cangshuge",
	name = "藏书阁",
	ways = {
		["down"] = "mr/mtl/yunjinlou",
	},
}
Room {
	id = "mr/mtl/cl",
	name = "长廊",
	ways = {
		["north"] = "mr/mtl/qianyuan",
		["east"] = "mr/mtl/cl1",
	},
}
Room {
	id = "mr/mtl/cl1",
	name = "长廊",
	ways = {
		["east"] = "mr/mtl/cl2",
		["west"] = "mr/mtl/cl",
	},
}
Room {
	id = "mr/mtl/cl2",
	name = "长廊",
	ways = {
		["south"] = "mr/mtl/cl3",
		["north"] = "mr/mtl/xiaojing5",
		["west"] = "mr/mtl/cl1",
	},
}
Room {
	id = "mr/mtl/cl3",
	name = "长廊",
	ways = {
		["south"] = "mr/mtl/xiangfang1",
		["east"] = "mr/mtl/houyuan",
		["north"] = "mr/mtl/cl2",
		["west"] = "mr/mtl/cl3-1",
	},
}
Room {
	id = "mr/mtl/cl3-1",
	name = "长廊",
	ways = {
		["south"] = "mr/mtl/cl3-2",
		["east"] = "mr/mtl/cl3",
	},
}
Room {
	id = "mr/mtl/cl3-2",
	name = "长廊",
	ways = {
		["south"] = "mr/mtl/cl3-3",
		["east"] = "mr/mtl/xiangfang1",
		["north"] = "mr/mtl/cl3-1",
	},
}
Room {
	id = "mr/mtl/cl3-3",
	name = "长廊",
	ways = {
		["east"] = "mr/mtl/hffang",
		["north"] = "mr/mtl/cl3-2",
	},
}
Room {
	id = "mr/mtl/cl4",
	name = "长廊",
	ways = {
		["south"] = "mr/mtl/cl4-2",
		["north"] = "mr/mtl/xiaojing7",
		["east"] = "mr/mtl/cl4-1",
	},
}
Room {
	id = "mr/mtl/cl4-1",
	name = "长廊",
	ways = {
		["eastup"] = "mr/mtl/tingzi",
		["west"] = "mr/mtl/cl4",
	},
}
Room {
	id = "mr/mtl/cl4-2",
	name = "长廊",
	ways = {
		["south"] = "mr/mtl/keting",
		["north"] = "mr/mtl/cl4",
		["east"] = "mr/mtl/cl4-3",
		["west"] = "mr/mtl/houyuan",
	},
}
Room {
	id = "mr/mtl/cl4-3",
	name = "长廊",
	ways = {
		["south"] = "mr/mtl/cl4-4",
		["east"] = "mr/mtl/fanting",
		["west"] = "mr/mtl/cl4-2",
	},
	blocks = {
		["east"] = {
			{id = "jia ding", exp = 30000, party = "姑苏慕容"}
		},
	},
}
Room {
	id = "mr/mtl/cl4-4",
	name = "长廊",
	ways = {
		["south"] = "mr/mtl/cl4-5",
		["east"] = "mr/mtl/guifang",
		["north"] = "mr/mtl/cl4-3",
		["west"] = "mr/mtl/keting",
	},
	blocks = {
		["east"] = {
			{id = "ya huan", exp = 5000},
		},
	},
}
Room {
	id = "mr/mtl/cl4-5",
	name = "长廊",
	ways = {
		["north"] = "mr/mtl/cl4-4",
		["west"] = "mr/mtl/zahuoshi",
	},
}
Room {
	id = "mr/mtl/fanting",
	name = "厨房",
	ways = {
		["west"] = "mr/mtl/cl4-3",
	},
}
Room {
	id = "mr/mtl/guifang",
	name = "闺房",
	ways = {
		["west"] = "mr/mtl/cl4-4",
		["jump window"] = "mr/mtl/ytyuan1"
	},
	nolooks = {
		["jump window"] = true,
	},
}
Room {
	id = "mr/mtl/hc",
	name = "花丛中",
	ways = {
		["east"] = "mr/mtl/zhuangmen",
		["north"] = "mr/mtl/anbian",
		["west"] = "mr/mtl/hc3",
	},
}
Room {
	id = "mr/mtl/hc1",
	name = "花丛中",
	ways = {
		["south"] = "mr/mtl/zhuangmen",
		["east"] = "mr/mtl/hc4",
		["west"] = "mr/mtl/anbian",
	},
}
Room {
	id = "mr/mtl/hc2",
	name = "花丛中",
	ways = {
		["south"] = "mr/mtl/hc3",
		["east"] = "mr/mtl/anbian",
	},
}
Room {
	id = "mr/mtl/hc3",
	name = "花丛中",
	ways = {
		["north"] = "mr/mtl/hc2",
		["east"] = "mr/mtl/hc",
	},
}
Room {
	id = "mr/mtl/hc4",
	name = "花丛中",
	ways = {
		["south"] = "mr/mtl/qianyuan",
		["west"] = "mr/mtl/hc1",
	},
}
Room {
	id = "mr/mtl/hffang",
	name = "花肥房",
	ways = {
		["east"] = "mr/mtl/hhyuan",
		["west"] = "mr/mtl/cl3-3",
	},
}
Room {
	id = "mr/mtl/hhyuan",
	name = "后花园",
	ways = {
		["east"] = "mr/mtl/zahuoshi",
		["north"] = "mr/mtl/yunjinlou",
		["west"] = "mr/mtl/hffang",
	},
}
Room {
	id = "mr/mtl/houyuan",
	name = "后院",
	ways = {
		["south"] = "mr/mtl/yunjinlou",
		["north"] = "mr/mtl/xiaojing8",
		["east"] = "mr/mtl/cl4-2",
		["west"] = "mr/mtl/cl3",
	},
}
Room {
	id = "mr/mtl/huandong",
	name = "娘缳玉洞",
	ways = {
		["north"] = "mr/mtl/ytyuan",
	},
}
Room {
	id = "mr/mtl/keting",
	name = "客厅",
	ways = {
		["east"] = "mr/mtl/cl4-4",
		["north"] = "mr/mtl/cl4-2",
		["west"] = "mr/mtl/yunjinlou",
	},
}
Room {
	id = "mr/mtl/liulin",
	name = "柳树林",
	ways = {
		["south"] = "mr/mtl/xiaojing5",
		["east"] = "mr/mtl/liulin1",
	},
}
Room {
	id = "mr/mtl/liulin1",
	name = "柳树林",
	ways = {
		["south"] = "mr/mtl/xiaojing6",
		["north"] = "mr/mtl/liulin3",
		["east"] = "mr/mtl/liulin2",
		["west"] = "mr/mtl/liulin",
	},
}
Room {
	id = "mr/mtl/liulin2",
	name = "柳树林",
	ways = {
		["south"] = "mr/mtl/xiaojing7",
		["west"] = "mr/mtl/liulin1",
	},
}
Room {
	id = "mr/mtl/liulin3",
	name = "柳树林",
	ways = {
		["south"] = "mr/mtl/liulin1",
	},
}
Room {
	id = "mr/mtl/midao",
	name = "秘道",
	ways = {
		["south"] = "mr/mtl/ytyuan",
		["north"] = "mr/mtl/hhyuan",
	},
}
Room {
	id = "mr/mtl/qianyuan",
	name = "前院",
	ways = {
		["south"] = "mr/mtl/cl",
		["east"] = "mr/mtl/shiqiao1",
		["north"] = "mr/mtl/hc4",
		["west"] = "mr/mtl/zhuangmen",
	},
}
Room {
	id = "mr/mtl/shiqiao1",
	name = "小石桥",
	ways = {
		["east"] = "mr/mtl/xiaojing5",
		["west"] = "mr/mtl/qianyuan",
		["zuan didao"] = "mr/didao",
	},
	nolooks = {
		["zuan didao"] = true,
	},
	lengths = {
		["zuan didao"] = "if getParty() == '姑苏慕容' then return 1 else return false end",
	},
}
Room {
	id = "mr/mtl/shuichi",
	name = "水池",
	ways = {
		["west"] = "mr/mtl/xiaojing7",
	},
}
Room {
	id = "mr/mtl/tingzi",
	name = "亭子",
	ways = {
		["westdown"] = "mr/mtl/cl4-1",
	},
}
Room {
	id = "mr/mtl/xiangfang1",
	name = "厢房",
	ways = {
		["east"] = "mr/mtl/yunjinlou",
		["north"] = "mr/mtl/cl3",
		["west"] = "mr/mtl/cl3-2",
	},
}
Room {
	id = "mr/mtl/xiaojing10",
	name = "小径",
	ways = {
		["south"] = "mr/mtl/xiaojing11",
		["north"] = "mr/mtl/zhuangmen",
	},
}
Room {
	id = "mr/mtl/xiaojing11",
	name = "小径",
	ways = {
		["south"] = "mr/mtl/anbian1",
		["north"] = "mr/mtl/xiaojing10",
	},
}
Room {
	id = "mr/mtl/xiaojing5",
	name = "小径",
	ways = {
		["south"] = "mr/mtl/cl2",
		["east"] = "mr/mtl/xiaojing6",
		["north"] = "mr/mtl/liulin",
		["west"] = "mr/mtl/shiqiao1",
	},
}
Room {
	id = "mr/mtl/xiaojing6",
	name = "小径",
	ways = {
		["south"] = "mr/mtl/xiaojing8",
		["east"] = "mr/mtl/xiaojing7",
		["north"] = "mr/mtl/liulin1",
		["west"] = "mr/mtl/xiaojing5",
	},
}
Room {
	id = "mr/mtl/xiaojing7",
	name = "小径",
	ways = {
		["south"] = "mr/mtl/cl4",
		["east"] = "mr/mtl/shuichi",
		["north"] = "mr/mtl/liulin2",
		["west"] = "mr/mtl/xiaojing6",
	},
}
Room {
	id = "mr/mtl/xiaojing8",
	name = "小径",
	ways = {
		["south"] = "mr/mtl/houyuan",
		["north"] = "mr/mtl/xiaojing6",
	},
}
Room {
	id = "mr/mtl/ytyuan",
	name = "樱桃园",
	no_fight = true,
	ways = {
		["south"] = "mr/mtl/huandong",
		["north"] = "mr/mtl/midao",
		["west"] = "mr/mtl/ytyuan2",
	},
}
Room {
	id = "mr/mtl/ytyuan1",
	name = "樱桃园",
	ways = {
		["south"] = "mr/mtl/huandong",
		["east"] = "mr/mtl/ytyuan2",
		["north"] = "mr/mtl/ytyuan1",
		["west"] = "mr/mtl/ytyuan1",
	},
}
Room {
	id = "mr/mtl/ytyuan2",
	name = "樱桃园",
	ways = {
		["south"] = "mr/mtl/huandong",
		["north"] = "mr/mtl/ytyuan2",
		["east"] = "mr/mtl/ytyuan",
		["west"] = "mr/mtl/ytyuan2",
	},
}
Room {
	id = "mr/mtl/yunjinlou",
	name = "云锦楼",
	ways = {
		["south"] = "mr/mtl/hhyuan",
		["east"] = "mr/mtl/keting",
		["north"] = "mr/mtl/houyuan",
		["west"] = "mr/mtl/xiangfang1",
		-- ["up"] = "mr/mtl/cangshuge",
	},
	nolooks = {
		["up"] = true,
	},
}
Room {
	id = "mr/mtl/zahuoshi",
	name = "杂货室",
	ways = {
		["east"] = "mr/mtl/cl4-5",
		["west"] = "mr/mtl/hhyuan",
	},
}
Room {
	id = "mr/mtl/zhuangmen",
	name = "庄门",
	ways = {
		["south"] = "mr/mtl/xiaojing10",
		["east"] = "mr/mtl/qianyuan",
		["north"] = "mr/mtl/hc1",
		["west"] = "mr/mtl/hc",
	},
}
Room {
	id = "mr/shiqiao",
	name = "小石桥",
	ways = {
		["push 桥栏;d"] = "mr/didao",
		["south"] = "mr/testmatou1",
		["northwest"] = "mr/hubian2",
	},
	nolooks = {
		["push 桥栏;d"] = true,
	},
	lengths = {
		["push 桥栏;d"] = "if getParty() == '姑苏慕容' then return 1 else return false end",
	},
}
Room {
	id = "mr/sleeproom",
	name = "休息室",
	no_fight = true,
	ways = {
		["west"] = "mr/didao1",
	},
}
Room {
	id = "mr/testmatou1",
	name = "码头",
	ways = {
		["north"] = "mr/shiqiao",
		["#quMr"] = "mr/xiaodao",
		["#quYzw"] = "mr/yanziwu/anbian2",
	},
	nolooks = {
		["#quMr"] = true,
		["#quYzw"] = true,
	},
	lengths = {
		["#quMr"] = 600,
		["#quYzw"] = 700,
	},
}
Room {
	id = "mr/tingyuju",
	name = "听雨居",
	ways = {
		["southeast"] = "mr/xiaojing2",
		["#xzToSz"] = "mr/mtl/anbian",
	},
	nolooks = {
		["#xzToSz"] = true,
	},
	lengths = {
		["#xzToSz"] = 500,
	},
}
Room {
	id = "mr/tingzi",
	name = "亭子",
	ways = {
		["westdown"] = "mr/cl4-1",
	},
}
Room {
	id = "mr/xiangfang",
	name = "厢房",
	no_fight = true,
	ways = {
		["west"] = "mr/xiaoting",
	},
}
Room {
	id = "mr/xiaodao",
	name = "小岛边",
	ways = {
		["south"] = "mr/xiaoshe",
		["#outXz"] = "mr/testmatou1",
	},
	nolooks = {
		["#outXz"] = true,
		["enter"] = true,
	},
	lengths = {
		["#outXz"] = 500,
	},
}
Room {
	id = "mr/xiaojing1",
	name = "小径",
	ways = {
		["east"] = "mr/xiaoshe",
		["west"] = "mr/xiaojing2",
	},
}
Room {
	id = "mr/xiaojing2",
	name = "小径",
	ways = {
		["northwest"] = "mr/tingyuju",
		["east"] = "mr/xiaojing1",
	},
}
Room {
	id = "mr/xiaojing3",
	name = "小径",
	ways = {
		["northeast"] = "mr/xiaojing4",
		["west"] = "mr/xiaoshe",
	},
}
Room {
	id = "mr/xiaojing4",
	name = "小径",
	ways = {
		["southwest"] = "mr/xiaojing3",
		["east"] = "mr/xiaoting",
	},
}
Room {
	id = "mr/xiaoshe",
	name = "小舍",
	ways = {
		["east"] = "mr/xiaojing3",
		["north"] = "mr/xiaodao",
		["west"] = "mr/xiaojing1",
	},
	precmds = {
		["west"] = "#handFree",
	},
	postcmds = {
		["west"] = "#wieldWeapon",
	},
}
Room {
	id = "mr/xiaoting",
	name = "小厅",
	ways = {
		["south"] = "mr/houtang",
		["east"] = "mr/xiangfang",
		["north"] = "mr/chufang",
		["west"] = "mr/xiaojing4",
	},
}
Room {
	id = "mr/xiaozhou3",
	name = "渡船",
	ways = {
		["out"] = "mr/mtl/anbian",
	},
}
Room {
	id = "mr/yanziwu/anbian2",
	name = "岸边",
	ways = {
		["south"] = "mr/yanziwu/shuixie",
	},
}
Room {
	id = "mr/yanziwu/anbian3",
	name = "岸边",
	ways = {
		["north"] = "mr/yanziwu/houyuan1",
		["#outYzw"] = "mr/hubian2",
	},
	nolooks = {
		["#outYzw"] = true,
		["enter"] = true,
	},
	lengths = {
		["#outYzw"] = 500,
	},
}
Room {
	id = "mr/yanziwu/anbian4",
	name = "岸边",
	ways = {
		["east"] = "mr/yanziwu/shuixie",
		["#yzwToSz"] = "mr/mtl/anbian1",
	},
	nolooks = {
		["#yzwToSz"] = true,
		["enter"] = true,
	},
	lengths = {
		["#yzwToSz"] = 500,
	},
}
Room {
	id = "mr/yanziwu/bishuiting",
	name = "碧水亭",
	ways = {
		["east"] = "mr/yanziwu/muqiao",
	},
}
Room {
	id = "mr/yanziwu/cl5-0",
	name = "长廊",
	ways = {
		["south"] = "mr/yanziwu/cl5-1",
		["east"] = "mr/yanziwu/fanting1",
		["west"] = "mr/yanziwu/shufang",
	},
	blocks = {
		["east"] = {
			{id = "guan jia", exp = 50000},
		},
	},
}
Room {
	id = "mr/yanziwu/cl5-1",
	name = "长廊",
	ways = {
		["south"] = "mr/yanziwu/cl5-2",
		["east"] = "mr/yanziwu/cl5-3",
		["north"] = "mr/yanziwu/cl5-0",
		["west"] = "mr/yanziwu/xiangfang2",
	},
}
Room {
	id = "mr/yanziwu/cl5-2",
	name = "长廊",
	ways = {
		["north"] = "mr/yanziwu/cl5-1",
		["west"] = "mr/yanziwu/shangyue",
	},
}
Room {
	id = "mr/yanziwu/cl5-3",
	name = "长廊",
	ways = {
		["south"] = "mr/yanziwu/xiaomen",
		["west"] = "mr/yanziwu/cl5-1",
	},
}
Room {
	id = "mr/yanziwu/cl5-4",
	name = "长廊",
	ways = {
		["north"] = "mr/yanziwu/xiaomen",
		["east"] = "mr/yanziwu/xiaojing3",
		["west"] = "mr/yanziwu/cl5-5",
	},
}
Room {
	id = "mr/yanziwu/cl5-5",
	name = "长廊",
	ways = {
		["north"] = "mr/yanziwu/shangyue",
		["east"] = "mr/yanziwu/cl5-4",
		["west"] = "mr/yanziwu/cl5-6",
	},
}
Room {
	id = "mr/yanziwu/cl5-6",
	name = "长廊",
	ways = {
		["east"] = "mr/yanziwu/cl5-5",
		["west"] = "mr/yanziwu/cl6-5",
	},
}
Room {
	id = "mr/yanziwu/cl6-0",
	name = "长廊",
	ways = {
		["south"] = "mr/yanziwu/cl6-1",
		["east"] = "mr/yanziwu/jushi",
	},
}
Room {
	id = "mr/yanziwu/cl6-1",
	name = "长廊",
	ways = {
		["south"] = "mr/yanziwu/cl6-2",
		["east"] = "mr/yanziwu/xiangfang3",
		["north"] = "mr/yanziwu/cl6-0",
		["west"] = "mr/yanziwu/cl6-3",
	},
}
Room {
	id = "mr/yanziwu/cl6-2",
	name = "长廊",
	ways = {
		["east"] = "mr/yanziwu/jingyinge",
		["north"] = "mr/yanziwu/cl6-1",
	},
}
Room {
	id = "mr/yanziwu/cl6-3",
	name = "长廊",
	ways = {
		["south"] = "mr/yanziwu/xiaomen1",
		["east"] = "mr/yanziwu/cl6-1",
	},
}
Room {
	id = "mr/yanziwu/cl6-4",
	name = "长廊",
	ways = {
		["north"] = "mr/yanziwu/xiaomen1",
		["east"] = "mr/yanziwu/cl6-5",
	},
}
Room {
	id = "mr/yanziwu/cl6-5",
	name = "长廊",
	ways = {
		["north"] = "mr/yanziwu/jingyinge",
		["east"] = "mr/yanziwu/cl5-6",
		["west"] = "mr/yanziwu/cl6-4",
	},
}
Room {
	id = "mr/yanziwu/dating",
	name = "大厅",
	ways = {
		["south"] = "mr/yanziwu/houting",
		["north"] = "mr/yanziwu/xiaojing2",
		["east"] = "mr/yanziwu/shufang",
		["west"] = "mr/yanziwu/jushi",
	},
}
Room {
	id = "mr/yanziwu/fanting1",
	name = "厨房",
	ways = {
		["west"] = "mr/yanziwu/cl5-0",
	},
}
Room {
	id = "mr/yanziwu/fenmu",
	name = "墓地",
	ways = {
		["west"] = "mr/yanziwu/xiaojing4",
	},
}
Room {
	id = "mr/yanziwu/guanxing",
	name = "观星台",
	ways = {
		["south"] = "mr/yanziwu/xiaojing4",
	},
	precmds = {
		["south"] = "jump down",
	},
}
Room {
	id = "mr/yanziwu/houting",
	name = "后厅",
	ways = {
		["south"] = "mr/yanziwu/neitang",
		["east"] = "mr/yanziwu/xiangfang2",
		["north"] = "mr/yanziwu/dating",
		["west"] = "mr/yanziwu/xiangfang3",
	},
}
Room {
	id = "mr/yanziwu/houyuan1",
	name = "后院",
	ways = {
		["south"] = "mr/yanziwu/anbian3",
		["east"] = "mr/yanziwu/yanziwu",
		["north"] = "mr/yanziwu/shuixie",
		["west"] = "mr/yanziwu/muqiao",
	},
}
Room {
	id = "mr/yanziwu/hssg",
	name = "还施水阁",
	ways = {
		["south"] = "mr/yanziwu/jiabi",
	},
}
Room {
	id = "mr/yanziwu/jiabi",
	name = "夹壁",
	ways = {
		["north"] = "mr/yanziwu/hssg",
	},
}
Room {
	id = "mr/yanziwu/jingyinge",
	name = "静音阁",
	ways = {
		["south"] = "mr/yanziwu/cl6-5",
		["east"] = "mr/yanziwu/neitang",
		["west"] = "mr/yanziwu/cl6-2",
	},
}
Room {
	id = "mr/yanziwu/jushi",
	name = "局室",
	ways = {
		["south"] = "mr/yanziwu/xiangfang3",
		["east"] = "mr/yanziwu/dating",
		["west"] = "mr/yanziwu/cl6-0",
	},
}
Room {
	id = "mr/yanziwu/mishi",
	name = "密室",
	ways = {
		["south"] = "mr/yanziwu/fenmu",
	},
}
Room {
	id = "mr/yanziwu/mishi1",
	name = "密室",
	ways = {
		["up"] = "mr/yanziwu/mishi",
	},
}
Room {
	id = "mr/yanziwu/muqiao",
	name = "木桥",
	ways = {
		["east"] = "mr/yanziwu/houyuan1",
		["west"] = "mr/yanziwu/bishuiting",
	},
}
Room {
	id = "mr/yanziwu/neitang",
	name = "内堂",
	ways = {
		["east"] = "mr/yanziwu/shangyue",
		["north"] = "mr/yanziwu/houting",
		["west"] = "mr/yanziwu/jingyinge",
	},
}
Room {
	id = "mr/yanziwu/shangyue",
	name = "赏月斋",
	ways = {
		["south"] = "mr/yanziwu/cl5-5",
		["east"] = "mr/yanziwu/cl5-2",
		["west"] = "mr/yanziwu/neitang",
	},
}
Room {
	id = "mr/yanziwu/shufang",
	name = "书房",
	ways = {
		["south"] = "mr/yanziwu/xiangfang2",
		["north"] = "mr/yanziwu/zishu",
		["east"] = "mr/yanziwu/cl5-0",
		["west"] = "mr/yanziwu/dating",
	},
}
Room {
	id = "mr/yanziwu/shuixie",
	name = "听香水榭",
	ways = {
		["south"] = "mr/yanziwu/houyuan1",
		["north"] = "mr/yanziwu/anbian2",
		["zuan didao"] = "mr/didao",
		["west"] = "mr/yanziwu/anbian4",
	},
	nolooks = {
		["zuan didao"] = true,
	},
	lengths = {
		["zuan didao"] = "if getParty() == '姑苏慕容' then return 1 else return false end",
	},
}
Room {
	id = "mr/yanziwu/wuchang",
	name = "练武场",
	ways = {
		["west"] = "mr/yanziwu/yanziwu",
	},
}
Room {
	id = "mr/yanziwu/xiangfang2",
	name = "厢房",
	no_fight = true,
	ways = {
		["north"] = "mr/yanziwu/shufang",
		["east"] = "mr/yanziwu/cl5-1",
		["west"] = "mr/yanziwu/houting",
	},
}
Room {
	id = "mr/yanziwu/xiangfang3",
	name = "厢房",
	no_fight = true,
	ways = {
		["north"] = "mr/yanziwu/jushi",
		["east"] = "mr/yanziwu/houting",
		["west"] = "mr/yanziwu/cl6-1",
	},
}
Room {
	id = "mr/yanziwu/xiaojing2",
	name = "小径",
	ways = {
		["south"] = "mr/yanziwu/dating",
		["north"] = "mr/yanziwu/yanziwu",
	},
}
Room {
	id = "mr/yanziwu/xiaojing3",
	name = "小径",
	ways = {
		["east"] = "mr/yanziwu/xiaojing4",
		["west"] = "mr/yanziwu/cl5-4",
	},
}
Room {
	id = "mr/yanziwu/xiaojing4",
	name = "小径",
	ways = {
		["north"] = "mr/yanziwu/guanxing",
		["east"] = "mr/yanziwu/fenmu",
		["west"] = "mr/yanziwu/xiaojing3",
	},
}
Room {
	id = "mr/yanziwu/xiaomen",
	name = "小门",
	ways = {
		["south"] = "mr/yanziwu/cl5-4",
		["north"] = "mr/yanziwu/cl5-3",
	},
}
Room {
	id = "mr/yanziwu/xiaomen1",
	name = "小门",
	ways = {
		["south"] = "mr/yanziwu/cl6-4",
		["north"] = "mr/yanziwu/cl6-3",
	},
}
Room {
	id = "mr/yanziwu/yanziwu",
	name = "院门",
	ways = {
		["south"] = "mr/yanziwu/xiaojing2",
		["east"] = "mr/yanziwu/wuchang",
		["west"] = "mr/yanziwu/houyuan1",
	},
}
Room {
	id = "mr/yanziwu/zishu",
	name = "私塾",
	ways = {
		["south"] = "mr/yanziwu/shufang",
	},
}
Room {
	id = "mr/zhou3",
	name = "小舟",
	ways = {
		["out"] = "mr/yanziwu/anbian2",
	},
}
Room {
	id = "mr/zhou9",
	name = "小舟",
	ways = {
		["out"] = "mr/xiaodao",
	},
}
Room {
	id = "nanyang/dating",
	name = "聚贤庄大厅",
	no_fight = true,
	ways = {
		["south"] = "nanyang/jxzhuang",
		["east"] = "nanyang/houyuan",
	},
}
Room {
	id = "nanyang/duanya",
	name = "断崖",
	ways = {
		["north"] = "nanyang/yidao4",
	},
}
Room {
	id = "nanyang/houyuan",
	name = "聚贤庄后院",
	ways = {
		["west"] = "nanyang/dating",
	},
}
Room {
	id = "nanyang/jiulou1",
	name = "迎宾楼",
	ways = {
		["east"] = "nanyang/nanyang",
		["up"] = "nanyang/jiulou2",
	},
}
Room {
	id = "nanyang/jiulou2",
	name = "迎宾楼二楼",
	ways = {
		["down"] = "nanyang/jiulou1",
	},
}
Room {
	id = "nanyang/jxzhuang",
	name = "聚贤庄大门",
	ways = {
		["southwest"] = "nanyang/xiaolu3",
		["north"] = "nanyang/dating",
	},
}
Room {
	id = "nanyang/kedian1",
	name = "客栈",
	ways = {
		["west"] = "nanyang/xujiaji",
		-- ["up"] = "nanyang/kedian2",
	},
	nolooks = {
		["up"] = true,
	},
}
Room {
	id = "nanyang/kedian2",
	name = "客店二楼",
	no_fight = true,
	ways = {
		["down"] = "nanyang/kedian1",
	},
}
Room {
	id = "nanyang/nanyang",
	name = "城中心",
	no_fight = true,
	ways = {
		["south"] = "nanyang/yidao2",
		["north"] = "nanyang/yidao3",
		["west"] = "nanyang/jiulou1",
	},
}
Room {
	id = "nanyang/qslu",
	name = "青石路",
	ways = {
		["south"] = "nanyang/xujiaji",
		["east"] = "nanyang/xiaolu3",
		["west"] = "nanyang/xiaolu",
	},
}
Room {
	id = "nanyang/qslu2",
	name = "青石路",
	ways = {
		["north"] = "nanyang/xujiaji",
	},
}
Room {
	id = "nanyang/xiaolu",
	name = "小路",
	ways = {
		["east"] = "nanyang/qslu",
		["west"] = "nanyang/yidao2",
	},
}
Room {
	id = "nanyang/xiaolu2",
	name = "岔路",
	ways = {
		["northeast"] = "nanyang/xujiaji",
		["west"] = "nanyang/yidao",
	},
}
Room {
	id = "nanyang/xiaolu3",
	name = "小路",
	ways = {
		["northeast"] = "nanyang/jxzhuang",
		["west"] = "nanyang/qslu",
	},
}
Room {
	id = "nanyang/xujiaji",
	name = "许家集",
	ways = {
		["southwest"] = "nanyang/xiaolu2",
		["south"] = "nanyang/qslu2",
		["north"] = "nanyang/qslu",
		["east"] = "nanyang/kedian1",
	},
}
Room {
	id = "nanyang/yidao",
	name = "驿道",
	ways = {
		["south"] = "xiangyang/henanroad2",
		["north"] = "nanyang/yidao1",
		["east"] = "nanyang/xiaolu2",
	},
}
Room {
	id = "nanyang/yidao1",
	name = "南门",
	ways = {
		["south"] = "nanyang/yidao",
		["north"] = "nanyang/yidao2",
	},
}
Room {
	id = "nanyang/yidao2",
	name = "石板路",
	ways = {
		["south"] = "nanyang/yidao1",
		["east"] = "nanyang/xiaolu",
		["north"] = "nanyang/nanyang",
	},
}
Room {
	id = "nanyang/yidao3",
	name = "大驿道",
	ways = {
		["south"] = "nanyang/nanyang",
		["north"] = "shaolin/ruzhou",
		["east"] = "nanyang/yidao4",
	},
}
Room {
	id = "nanyang/yidao4",
	name = "密林",
	ways = {
		["south"] = "nanyang/duanya",
		["northeast"] = "huanghe/weifen",
		["west"] = "nanyang/yidao3",
	},
}
Room {
	id = "ningbo/aywsi",
	name = "阿育王寺",
	ways = {
		["southeast"] = "ningbo/ningbo",
		["northwest"] = "ningbo/tianyige",
		["east"] = "ningbo/xikou",
		["west"] = "ningbo/tianfengta",
	},
}
Room {
	id = "ningbo/baoguosi",
	name = "报国寺",
	ways = {
		["northdown"] = "ningbo/shilu",
	},
}
Room {
	id = "ningbo/dongqianhu",
	name = "东钱湖",
	ways = {
		["southwest"] = "ningbo/kedian",
		["south"] = "ningbo/xuedoushan",
		["north"] = "ningbo/xikou",
		["west"] = "ningbo/ningbo",
	},
}
Room {
	id = "ningbo/kedian",
	name = "客店",
	ways = {
		["north"] = "ningbo/ningbo",
		["northeast"] = "ningbo/dongqianhu",
		["west"] = "ningbo/majiu",
		-- ["up"] = "ningbo/kedian2",
	},
	nolooks = {
		["up"] = true,
	},
}
Room {
	id = "ningbo/kedian2",
	name = "客店二楼",
	ways = {
		["enter"] = "ningbo/kedian3",
		["down"] = "ningbo/kedian",
	},
}
Room {
	id = "ningbo/kedian3",
	name = "客店二楼",
	ways = {
		["out"] = "ningbo/kedian2",
	},
}
Room {
	id = "ningbo/majiu",
	name = "马厩",
	ways = {
		["east"] = "ningbo/kedian",
		["northeast"] = "ningbo/ningbo",
	},
}
Room {
	id = "ningbo/ningbo",
	name = "城中心",
	ways = {
		["south"] = "ningbo/kedian",
		["northwest"] = "ningbo/aywsi",
		["east"] = "ningbo/dongqianhu",
		["west"] = "ningbo/ttcsi",
	},
}
Room {
	id = "ningbo/qsddao1",
	name = "青石官道",
	ways = {
		["southeast"] = "group/entry/nbqsddao",
		["westup"] = "hz/shanlu2",
	},
}
Room {
	id = "ningbo/shilu",
	name = "石路",
	ways = {
		["southup"] = "ningbo/baoguosi",
		["south"] = "ningbo/tianfengta",
		["northwest"] = "group/entry/nbqsddao",
		["east"] = "ningbo/tianyige",
	},
}
Room {
	id = "ningbo/tianfengta",
	name = "天封塔",
	ways = {
		["south"] = "ningbo/ttcsi",
		["north"] = "ningbo/shilu",
		["east"] = "ningbo/aywsi",
	},
}
Room {
	id = "ningbo/tianyige",
	name = "天一阁",
	ways = {
		["southeast"] = "ningbo/aywsi",
		["west"] = "ningbo/shilu",
	},
}
Room {
	id = "ningbo/ttcsi",
	name = "天童禅寺",
	ways = {
		["southwest"] = "fuzhou/road1",
		["north"] = "ningbo/tianfengta",
		["east"] = "ningbo/ningbo",
	},
}
Room {
	id = "ningbo/xikou",
	name = "溪口",
	ways = {
		["south"] = "ningbo/dongqianhu",
		["west"] = "ningbo/aywsi",
	},
}
Room {
	id = "ningbo/xuedoushan",
	name = "雪窦山",
	ways = {
		["north"] = "ningbo/dongqianhu",
	},
}
Room {
	id = "putian/cb-dian",
	name = "慈悲殿",
	ways = {
		["south"] = "putian/guangchang",
		["north"] = "putian/qianyuan",
	},
}
Room {
	id = "putian/celang2",
	name = "侧廊",
	ways = {
		["south"] = "putian/xiaoyuan4",
		["north"] = "putian/xiaoyuan2",
	},
}
Room {
	id = "putian/celang3",
	name = "侧廊",
	ways = {
		["south"] = "putian/xiaoyuan5",
		["north"] = "putian/xiaoyuan3",
	},
}
Room {
	id = "putian/celang4",
	name = "侧廊",
	ways = {
		["south"] = "putian/xj4",
		["north"] = "putian/sengshe",
		["west"] = "putian/xiaoyuan4",
	},
}
Room {
	id = "putian/celang5",
	name = "侧廊",
	ways = {
		["south"] = "putian/xj3",
		["east"] = "putian/xiaoyuan5",
		["north"] = "putian/chufang",
	},
}
Room {
	id = "putian/changlang2",
	name = "长廊",
	ways = {
		["east"] = "putian/jcyuan",
		["west"] = "putian/fzshi",
	},
}
Room {
	id = "putian/changlang3",
	name = "长廊",
	ways = {
		["east"] = "putian/nuange",
		["west"] = "putian/jcyuan",
	},
}
Room {
	id = "putian/chufang",
	name = "饭厅",
	ways = {
		["south"] = "putian/celang5",
	},
}
Room {
	id = "putian/cjg",
	name = "藏经阁",
	ways = {
		["northdown"] = "putian/mf-dian",
	},
}
Room {
	id = "putian/dc-dian",
	name = "大乘殿",
	ways = {
		["southup"] = "putian/wgg",
		["north"] = "putian/xj4",
		["west"] = "putian/lhtang",
	},
}
Room {
	id = "putian/dmyuan",
	name = "达摩院",
	ways = {
		["west"] = "putian/mf-dian",
	},
}
Room {
	id = "putian/dxb-dian",
	name = "大雄宝殿",
	ways = {
		["northdown"] = "putian/guangchang",
		["southdown"] = "putian/qiandian",
	},
}
Room {
	id = "putian/fatang2",
	name = "法堂",
	ways = {
		["east"] = "putian/houdian",
	},
}
Room {
	id = "putian/fatang3",
	name = "法堂",
	ways = {
		["west"] = "putian/houdian",
	},
}
Room {
	id = "putian/fzshi",
	name = "方丈室",
	ways = {
		["east"] = "putian/changlang2",
	},
}
Room {
	id = "putian/guangchang",
	name = "广场",
	ways = {
		["southup"] = "putian/dxb-dian",
		["east"] = "putian/xiaoyuan4",
		["north"] = "putian/cb-dian",
		["west"] = "putian/xiaoyuan5",
	},
}
Room {
	id = "putian/houdian",
	name = "后殿",
	ways = {
		["south"] = "putian/xm-dian",
		["north"] = "putian/zhongdian",
		["east"] = "putian/fatang3",
		["west"] = "putian/fatang2",
	},
}
Room {
	id = "putian/jcyuan",
	name = "戒持院",
	ways = {
		["south"] = "putian/jingshi",
		["north"] = "putian/xm-dian",
		["east"] = "putian/changlang3",
		["west"] = "putian/changlang2",
	},
	blocks = {
		["south"] = {
			{id = "dadian dashi", exp = 2200000},
		}
	},
}
Room {
	id = "putian/jingshi",
	name = "静室",
	ways = {
		["north"] = "putian/jcyuan",
	},
}
Room {
	id = "putian/jnlw-dian",
	name = "紧那罗王殿",
	ways = {
		["north"] = "putian/xiaoyuan5",
	},
}
Room {
	id = "putian/lhtang",
	name = "罗汉堂",
	ways = {
		["east"] = "putian/dc-dian",
	},
}
Room {
	id = "putian/liangt",
	name = "凉亭",
	no_fight = true,
	ways = {
		["out"] = "putian/road07",
	},
}
Room {
	id = "putian/lz-dian",
	name = "六祖殿",
	ways = {
		["north"] = "putian/xiaoyuan4",
	},
}
Room {
	id = "putian/mf-dian",
	name = "妙法殿",
	ways = {
		["southup"] = "putian/cjg",
		["north"] = "putian/xj3",
		["east"] = "putian/dmyuan",
	},
	blocks = {
		["southup"] = {
			{id = "wu seng", exp = 200000},
		},
	},
}
Room {
	id = "putian/mtd1",
	name = "麻田地",
	ways = {
		["northup"] = "putian/mtd2",
	},
}
Room {
	id = "putian/mtd2",
	name = "麻田地",
	ways = {
		["north"] = "putian/xl8",
		["southdown"] = "putian/mtd1",
	},
}
Room {
	id = "putian/nuange",
	name = "暖阁",
	ways = {
		["west"] = "putian/changlang3",
	},
}
Room {
	id = "putian/qiandian",
	name = "前殿",
	ways = {
		["northup"] = "putian/dxb-dian",
		["south"] = "putian/zhongdian",
	},
}
Room {
	id = "putian/qianyuan",
	name = "前院",
	ways = {
		["south"] = "putian/cb-dian",
		["east"] = "putian/xiaoyuan2",
		["west"] = "putian/xiaoyuan3",
		["north"] = "putian/shanmen",
	},
	nolooks = {
		["north"] = true,
	},
	precmds = {
		["north"] = "open gate",
	},
}
Room {
	id = "putian/road01",
	name = "山路",
	ways = {
		["south"] = "putian/road02",
		["northwest"] = "fuzhou/road2",
	},
}
Room {
	id = "putian/road02",
	name = "山路",
	ways = {
		["southeast"] = "putian/road03",
		["north"] = "putian/road01",
	},
}
Room {
	id = "putian/road03",
	name = "山路",
	ways = {
		["northwest"] = "putian/road02",
		["east"] = "putian/road04",
	},
}
Room {
	id = "putian/road04",
	name = "山路",
	ways = {
		["northeast"] = "putian/road05",
		["west"] = "putian/road03",
	},
}
Room {
	id = "putian/road05",
	name = "山路",
	ways = {
		["eastup"] = "putian/road06",
		["southwest"] = "putian/road04",
	},
}
Room {
	id = "putian/road06",
	name = "石阶",
	ways = {
		["southup"] = "putian/road07",
		["westdown"] = "putian/road05",
	},
}
Room {
	id = "putian/road07",
	name = "山路",
	ways = {
		["southup"] = "putian/road08",
		["enter"] = "putian/liangt",
		["northdown"] = "putian/road06",
	},
}
Room {
	id = "putian/road08",
	name = "石阶",
	ways = {
		["southup"] = "putian/shanmen",
		["northdown"] = "putian/road07",
	},
}
Room {
	id = "putian/sengshe",
	name = "僧舍",
	no_fight = true,
	ways = {
		["south"] = "putian/celang4",
	},
}
Room {
	id = "putian/shanmen",
	name = "山门",
	ways = {
		["east"] = "putian/xl3",
		["northdown"] = "putian/road08",
		["west"] = "putian/xl2",
		["south"] = "putian/qianyuan",
	},
	nolooks = {
		["south"] = true,
	},
	precmds = {
		["south"] = "knock gate",
	},
}
Room {
	id = "putian/wgg",
	name = "武功阁",
	ways = {
		["northdown"] = "putian/dc-dian",
	},
}
Room {
	id = "putian/xiaoyuan2",
	name = "小院",
	ways = {
		["south"] = "putian/celang2",
		["west"] = "putian/qianyuan",
	},
}
Room {
	id = "putian/xiaoyuan3",
	name = "小院",
	ways = {
		["south"] = "putian/celang3",
		["east"] = "putian/qianyuan",
	},
}
Room {
	id = "putian/xiaoyuan4",
	name = "小院",
	ways = {
		["south"] = "putian/lz-dian",
		["east"] = "putian/celang4",
		["north"] = "putian/celang2",
		["west"] = "putian/guangchang",
	},
}
Room {
	id = "putian/xiaoyuan5",
	name = "小院",
	ways = {
		["south"] = "putian/jnlw-dian",
		["east"] = "putian/guangchang",
		["north"] = "putian/celang3",
		["west"] = "putian/celang5",
	},
}
Room {
	id = "putian/xj3",
	name = "小径",
	ways = {
		["south"] = "putian/mf-dian",
		["north"] = "putian/celang5",
	},
}
Room {
	id = "putian/xj4",
	name = "小径",
	ways = {
		["south"] = "putian/dc-dian",
		["north"] = "putian/celang4",
	},
}
Room {
	id = "putian/xl2",
	name = "小路",
	ways = {
		["east"] = "putian/shanmen",
		["west"] = "putian/xl4",
	},
}
Room {
	id = "putian/xl3",
	name = "小路",
	ways = {
		["east"] = "putian/xl5",
		["west"] = "putian/shanmen",
	},
}
Room {
	id = "putian/xl4",
	name = "小路",
	ways = {
		["east"] = "putian/xl2",
		["west"] = "putian/xl6",
	},
}
Room {
	id = "putian/xl5",
	name = "小路",
	ways = {
		["eastdown"] = "putian/xl7",
		["west"] = "putian/xl3",
	},
}
Room {
	id = "putian/xl6",
	name = "小路",
	ways = {
		["southwest"] = "putian/xl8",
		["east"] = "putian/xl4",
	},
}
Room {
	id = "putian/xl7",
	name = "小路",
	ways = {
		["westup"] = "putian/xl5",
		["north"] = "putian/youcaidi",
	},
}
Room {
	id = "putian/xl8",
	name = "小路",
	ways = {
		["south"] = "putian/mtd2",
		["northeast"] = "putian/xl6",
	},
}
Room {
	id = "putian/xm-dian",
	name = "须弥殿",
	ways = {
		["south"] = "putian/jcyuan",
		["north"] = "putian/houdian",
	},
}
Room {
	id = "putian/youcaidi",
	name = "油菜地",
	ways = {
		["south"] = "putian/xl7",
	},
}
Room {
	id = "putian/zhongdian",
	name = "中殿",
	ways = {
		["south"] = "putian/houdian",
		["north"] = "putian/qiandian",
	},
}
Room {
	id = "shaolin/andao1",
	name = "暗道",
	ways = {
		["south"] = "shaolin/rukou",
		["north"] = "shaolin/jianyu1",
	},
}
Room {
	id = "shaolin/andao2",
	name = "暗道",
	ways = {
		["up"] = "shaolin/gulou1",
	},
}
Room {
	id = "shaolin/bamboon",
	name = "竹林",
	ways = {
		["#dmd"] = "shaolin/damodong",
	},
	nolooks = {
		["east"] = true,
		["west"] = true,
		["south"] = true,
		["north"] = true,
		["northeast"] = true,
		["northwest"] = true,
		["southeast"] = true,
		["southwest"] = true,
		["#dmd"] = true,
	},
	lengths = {
		["#dmd"] = 50,
	},
	find = {
		path = {"#dmd;out", "sw", "se", "n", "s", "w", "e", "w", "e", "e", "s", "w", "n", "nw",},
	},
}
Room {
	id = "shaolin/banruo1",
	name = "般若堂一部",
	ways = {
		["north"] = "shaolin/banruo2",
	},
}
Room {
	id = "shaolin/banruo2",
	name = "般若堂二部",
	ways = {
		["south"] = "shaolin/banruo1",
		["north"] = "shaolin/banruo3",
	},
}
Room {
	id = "shaolin/banruo3",
	name = "般若堂三部",
	ways = {
		["south"] = "shaolin/banruo2",
		["north"] = "shaolin/banruo4",
	},
}
Room {
	id = "shaolin/banruo4",
	name = "般若堂四部",
	ways = {
		["south"] = "shaolin/banruo3",
		["north"] = "shaolin/banruo5",
	},
}
Room {
	id = "shaolin/banruo5",
	name = "般若堂五部",
	ways = {
		["south"] = "shaolin/banruo4",
		["north"] = "shaolin/banruo6",
		["west"] = "shaolin/lwc11",
	},
}
Room {
	id = "shaolin/banruo6",
	name = "般若堂六部",
	ways = {
		["south"] = "shaolin/banruo5",
		["north"] = "shaolin/banruo7",
	},
}
Room {
	id = "shaolin/banruo7",
	name = "般若堂七部",
	ways = {
		["south"] = "shaolin/banruo6",
		["north"] = "shaolin/banruo8",
	},
}
Room {
	id = "shaolin/banruo8",
	name = "般若堂八部",
	ways = {
		["south"] = "shaolin/banruo7",
		["north"] = "shaolin/banruo9",
	},
}
Room {
	id = "shaolin/banruo9",
	name = "般若堂九部",
	ways = {
		["south"] = "shaolin/banruo8",
	},
}
Room {
	id = "shaolin/brtang",
	name = "般若堂",
	ways = {
		["east"] = "shaolin/lwc16",
		["west"] = "shaolin/stoneroad3",
	},
}
Room {
	id = "shaolin/bydian",
	name = "白衣殿",
	ways = {
		["west"] = "shaolin/kchang",
	},
}
Room {
	id = "shaolin/cdian-1",
	name = "东侧殿",
	ways = {
		["west"] = "shaolin/gchang-3",
	},
}
Room {
	id = "shaolin/cdian-2",
	name = "西侧殿",
	ways = {
		["east"] = "shaolin/gchang-2",
	},
}
Room {
	id = "shaolin/celang-1",
	name = "西侧廊",
	ways = {
		["south"] = "shaolin/gchang-2",
		["north"] = "shaolin/celang-2",
		["west"] = "shaolin/gulou",
	},
}
Room {
	id = "shaolin/celang-2",
	name = "西侧廊",
	ways = {
		["south"] = "shaolin/celang-1",
		["northeast"] = "shaolin/sblu-1",
		["west"] = "shaolin/zdyuan",
	},
}
Room {
	id = "shaolin/celang-3",
	name = "东侧廊",
	ways = {
		["south"] = "shaolin/gchang-3",
		["east"] = "shaolin/zhonglou",
		["north"] = "shaolin/celang-4",
	},
}
Room {
	id = "shaolin/celang-4",
	name = "东侧廊",
	ways = {
		["south"] = "shaolin/celang-3",
		["northwest"] = "shaolin/sblu-1",
		["east"] = "shaolin/zhaitang",
	},
}
Room {
	id = "shaolin/celang1",
	name = "侧廊",
	ways = {
		["south"] = "shaolin/stoneroad4",
		["northwest"] = "shaolin/huaishu2",
		["west"] = "shaolin/sengshe4",
	},
}
Room {
	id = "shaolin/celang2",
	name = "侧廊",
	ways = {
		["south"] = "shaolin/stoneroad3",
		["east"] = "shaolin/sengshe1",
		["northeast"] = "shaolin/songshu3",
	},
}
Room {
	id = "shaolin/chanfang-1",
	name = "禅房",
	no_fight = true,
	ways = {
		["south"] = "shaolin/chanfang-3",
		["east"] = "shaolin/zdyuan",
		["north"] = "shaolin/chanfang-2",
	},
}
Room {
	id = "shaolin/chanfang-2",
	name = "禅房",
	no_fight = true,
	ways = {
		["south"] = "shaolin/chanfang-1",
	},
}
Room {
	id = "shaolin/chanfang-3",
	name = "禅房",
	no_fight = true,
	ways = {
		["north"] = "shaolin/chanfang-1",
	},
}
Room {
	id = "shaolin/chufang1",
	name = "香积厨",
	ways = {
		["south"] = "shaolin/chufang2",
		["west"] = "shaolin/fanting1",
	},
}
Room {
	id = "shaolin/chufang2",
	name = "香积厨",
	ways = {
		["south"] = "shaolin/xiaolu-1",
		["north"] = "shaolin/chufang1",
		["west"] = "shaolin/fanting3",
	},
}
Room {
	id = "shaolin/cjlou",
	name = "藏经阁一楼",
	ways = {
		["out"] = "shaolin/xiaoxi1",
		["up"] = "shaolin/cjlou1",
	},
	blocks = {
		["up"] = {
			{id = "daoyi chanshi", exp = 400000, cond = function()
				if getScore().master == "无名老僧" then
					return true
				else
					return false
				end
			end},
		},
	},
}
Room {
	id = "shaolin/cjlou1",
	name = "藏经阁二楼",
	ways = {
		["down"] = "shaolin/cjlou",
		["push chuang;jump chuang"] = "shaolin/xiaojin1",
	},
	nolooks = {
		["push chuang;jump chuang"] = true,
	},
}
Room {
	id = "shaolin/cyzi-1",
	name = "菜园子",
	ways = {
		["south"] = "shaolin/cyzi-2",
		["north"] = "shaolin/xiaolu-3",
		["east"] = "shaolin/cyzi-4",
	},
}
Room {
	id = "shaolin/cyzi-2",
	name = "菜园子",
	ways = {
		["east"] = "shaolin/cyzi-3",
		["north"] = "shaolin/cyzi-1",
	},
}
Room {
	id = "shaolin/cyzi-3",
	name = "菜园子",
	ways = {
		["north"] = "shaolin/cyzi-4",
		["west"] = "shaolin/cyzi-2",
	},
}
Room {
	id = "shaolin/cyzi-4",
	name = "菜园子",
	ways = {
		["south"] = "shaolin/cyzi-3",
		["west"] = "shaolin/cyzi-1",
	},
}
Room {
	id = "shaolin/czan",
	name = "初祖庵",
	ways = {
		["south"] = "shaolin/shanlu4",
		["north"] = "shaolin/shanlu5",
	},
}
Room {
	id = "shaolin/dabeidia",
	name = "大悲殿",
	ways = {
		["south"] = "shaolin/stoneroad1",
		["north"] = "shaolin/hguangz2",
		["west"] = "shaolin/xumidian",
	},
}
Room {
	id = "shaolin/damodong",
	name = "达摩洞",
	ways = {
		["out;s"] = "shaolin/shanlu6",
	},
	nolooks = {
		["out"] = true,
		["out;s"] = true,
	},
	lengths = {
		["out;s"] = 2,
	},
}
Room {
	id = "shaolin/daxiong",
	name = "大雄宝殿",
	no_fight = true,
	ways = {
		["south"] = "shaolin/pingtai",
		["north"] = "shaolin/stoneroad1",
	},
}
Room {
	id = "shaolin/dmyuan",
	name = "达摩院",
	no_fight = true,
	ways = {
		["south"] = "shaolin/huilang4",
		["north"] = "shaolin/dmyuan2",
	},
}
Room {
	id = "shaolin/dmyuan2",
	name = "达摩院后殿",
	no_fight = true,
	ways = {
		["south"] = "shaolin/dmyuan",
	},
}
Room {
	id = "shaolin/duanya",
	name = "断崖坪",
	ways = {
		["south"] = "shaolin/xctang",
		["#goYd"] = "shaolin/yading",
	},
	nolooks = {
		["#goYd"] = true,
	},
	lengths = {
		["#goYd"] = "if getCha()['wuxiang-zhi'].level > 0 and getWeight() < 20 then return 10 else return false end",
	},
}
Room {
	id = "shaolin/dxshijie",
	name = "台阶",
	ways = {
		["northup"] = "shaolin/pingtai",
		["south"] = "shaolin/stoneroad2",
	},
}
Room {
	id = "shaolin/dzdian",
	name = "地藏殿",
	ways = {
		["east"] = "shaolin/kchang",
	},
}
Room {
	id = "shaolin/entrance",
	name = "木人巷入口",
	ways = {
		["north"] = "shaolin/murenxiang",
	},
}
Room {
	id = "shaolin/fangjuku",
	name = "防具库",
	ways = {
		["north"] = "shaolin/lshuyuan",
	},
}
Room {
	id = "shaolin/fanting1",
	name = "饭厅",
	ways = {
		["south"] = "shaolin/fanting3",
		["north"] = "shaolin/fanting2",
		["east"] = "shaolin/chufang1",
		["west"] = "shaolin/zhaitang",
	},
}
Room {
	id = "shaolin/fanting2",
	name = "饭厅",
	ways = {
		["south"] = "shaolin/fanting1",
	},
}
Room {
	id = "shaolin/fanting3",
	name = "饭厅",
	ways = {
		["north"] = "shaolin/fanting1",
		["east"] = "shaolin/chufang2",
	},
}
Room {
	id = "shaolin/fatang",
	name = "法堂",
	ways = {
		["southeast"] = "shaolin/jietan4",
		["southwest"] = "shaolin/jietan3",
		["east"] = "shaolin/xcping",
		["north"] = "shaolin/kchang",
		["west"] = "shaolin/huilang1",
	},
}
Room {
	id = "shaolin/fota1",
	name = "佛塔一层",
	ways = {
		["out"] = "shaolin/fotaout",
		["up"] = "shaolin/fota2",
	},
}
Room {
	id = "shaolin/fota2",
	name = "圣僧塔",
	ways = {
		["down"] = "shaolin/fota1",
		["up"] = "shaolin/fota3",
	},
}
Room {
	id = "shaolin/fota3",
	name = "佛塔三层",
	ways = {
		["down"] = "shaolin/fota2",
	},
}
Room {
	id = "shaolin/fotaout",
	name = "古佛舍利塔",
	ways = {
		["enter"] = "shaolin/fota1",
		["s;ne;se;n;e;sw;e;ne;se;s;se;open door;e"] = "shaolin/slyuan",
	},
	nolooks = {
		["s;ne;se;n;e;sw;e;ne;se;s;se;open door;e"] = true,
		["south"] = true,
	},
	lengths = {
		["s;ne;se;n;e;sw;e;ne;se;s;se;open door;e"] = 13,
	},
}
Room {
	id = "shaolin/fumoquan",
	name = "金刚伏魔圈",
	ways = {
		["out"] = "shaolin/qyping",
	},
}
Room {
	id = "shaolin/fxjing",
	name = "佛心井",
	ways = {
		["westdown"] = "shaolin/shijie9",
	},
}
Room {
	id = "shaolin/fzjs",
	name = "方丈精舍",
	ways = {
		["east"] = "shaolin/xiaolu7",
		["up"] = "shaolin/fzjs1",
	},
}
Room {
	id = "shaolin/fzjs1",
	name = "茶室",
	ways = {
		["north"] = "shaolin/fzjs2",
		["down"] = "shaolin/fzjs",
	},
}
Room {
	id = "shaolin/fzjs2",
	name = "方丈室",
	ways = {
		["south"] = "shaolin/fzjs1",
	},
}
Room {
	id = "shaolin/gchang-1",
	name = "广场",
	ways = {
		["south"] = "shaolin/smdian",
		["north"] = "shaolin/qdian",
		["east"] = "shaolin/gchang-3",
		["west"] = "shaolin/gchang-2",
	},
}
Room {
	id = "shaolin/gchang-2",
	name = "广场西侧",
	ways = {
		["east"] = "shaolin/gchang-1",
		["north"] = "shaolin/celang-1",
		["west"] = "shaolin/cdian-2",
	},
}
Room {
	id = "shaolin/gchang-3",
	name = "广场东侧",
	ways = {
		["north"] = "shaolin/celang-3",
		["east"] = "shaolin/cdian-1",
		["west"] = "shaolin/gchang-1",
	},
}
Room {
	id = "shaolin/gchange",
	name = "寺前广场",
	ways = {
		["west"] = "shaolin/guangchang",
	},
}
Room {
	id = "shaolin/gchangw",
	name = "寺前广场",
	ways = {
		["east"] = "shaolin/guangchang",
	},
}
Room {
	id = "shaolin/guangchang",
	name = "广场",
	ways = {
		["south"] = "shaolin/shifang",
		["east"] = "shaolin/gchange",
		["north"] = "shaolin/smdian",
		["west"] = "shaolin/gchangw",
	},
	nolooks = {
		["north"] = true,
	},
	precmds = {
		["north"] = "knock gate",
	},
}
Room {
	id = "shaolin/gulou",
	name = "鼓楼小院",
	ways = {
		["enter"] = "shaolin/gulou1",
		["east"] = "shaolin/celang-1",
	},
}
Room {
	id = "shaolin/gulou1",
	name = "鼓楼一层",
	ways = {
		["up"] = "shaolin/gulou2",
		["out"] = "shaolin/gulou",
	},
}
Room {
	id = "shaolin/gulou2",
	name = "鼓楼二层",
	ways = {
		["down"] = "shaolin/gulou1",
		["up"] = "shaolin/gulou3",
	},
}
Room {
	id = "shaolin/gulou3",
	name = "鼓楼三层",
	ways = {
		["down"] = "shaolin/gulou2",
		["up"] = "shaolin/gulou4",
	},
}
Room {
	id = "shaolin/gulou4",
	name = "鼓楼四层",
	ways = {
		["down"] = "shaolin/gulou3",
		["up"] = "shaolin/gulou5",
	},
}
Room {
	id = "shaolin/gulou5",
	name = "鼓楼五层",
	ways = {
		["down"] = "shaolin/gulou4",
		["up"] = "shaolin/gulou6",
	},
}
Room {
	id = "shaolin/gulou6",
	name = "鼓楼六层",
	ways = {
		["down"] = "shaolin/gulou5",
		["up"] = "shaolin/gulou7",
	},
}
Room {
	id = "shaolin/gulou7",
	name = "鼓楼七层",
	ways = {
		["down"] = "shaolin/gulou6",
	},
}
Room {
	id = "shaolin/gygu",
	name = "归元谷",
	ways = {
		["southeast"] = "shaolin/xclang",
	},
}
Room {
	id = "shaolin/hguangz1",
	name = "后殿广场",
	ways = {
		["southwest"] = "shaolin/huaishu5",
		["north"] = "shaolin/hguangz4",
		["east"] = "shaolin/hguangz2",
	},
}
Room {
	id = "shaolin/hguangz2",
	name = "后殿广场",
	no_fight = true,
	ways = {
		["south"] = "shaolin/dabeidia",
		["east"] = "shaolin/hguangz3",
		["west"] = "shaolin/hguangz1",
	},
}
Room {
	id = "shaolin/hguangz3",
	name = "后殿广场",
	ways = {
		["southeast"] = "shaolin/songshu1",
		["north"] = "shaolin/hguangz5",
		["west"] = "shaolin/hguangz2",
	},
}
Room {
	id = "shaolin/hguangz4",
	name = "后殿广场",
	ways = {
		["south"] = "shaolin/hguangz1",
		["east"] = "shaolin/houdian",
	},
}
Room {
	id = "shaolin/hguangz5",
	name = "后殿广场",
	ways = {
		["south"] = "shaolin/hguangz3",
		["west"] = "shaolin/houdian",
	},
}
Room {
	id = "shaolin/houdian",
	name = "后殿",
	ways = {
		["north"] = "shaolin/taijie",
		["east"] = "shaolin/hguangz5",
		["west"] = "shaolin/hguangz4",
	},
}
Room {
	id = "shaolin/houshan",
	name = "小院",
	ways = {
		["northwest"] = "shaolin/zhushe",
		["north"] = "shaolin/xiaowu",
		["east"] = "shaolin/xiaojing2",
	},
}
Room {
	id = "shaolin/houshand",
	name = "山洞",
	ways = {
		["out"] = "shaolin/yading",
	},
}
Room {
	id = "shaolin/houyuan",
	name = "小屋",
	ways = {
		["enter"] = "shaolin/liwu",
		["north"] = "shaolin/xiaojin1",
	},
	blocks = {
		["enter"] = {
			{id = "murong bo", exp = 4400000, cond = function()
				if getScore().master == "无名老僧" then
					return true
				else
					return false
				end
			end},
		},
	},
}
Room {
	id = "shaolin/huaishu1",
	name = "槐树林",
	ways = {
		["east"] = "shaolin/huaishu2",
		["west"] = "shaolin/putiyuan",
	},
}
Room {
	id = "shaolin/huaishu2",
	name = "槐树林",
	ways = {
		["southeast"] = "shaolin/celang1",
		["north"] = "shaolin/huaishu4",
		["west"] = "shaolin/huaishu1",
	},
}
Room {
	id = "shaolin/huaishu4",
	name = "槐树林",
	ways = {
		["south"] = "shaolin/huaishu2",
		["east"] = "shaolin/stoneroad1",
		["north"] = "shaolin/huaishu5",
		["west"] = "shaolin/slyuan",
	},
}
Room {
	id = "shaolin/huaishu5",
	name = "槐树林",
	ways = {
		["south"] = "shaolin/huaishu4",
		["northeast"] = "shaolin/hguangz1",
		["west"] = "shaolin/lshuyuan",
	},
}
Room {
	id = "shaolin/huilang1",
	name = "回廊",
	ways = {
		["south"] = "shaolin/huilang1",
		["north"] = "shaolin/huilang2",
		["east"] = "shaolin/fatang",
		["west"] = "shaolin/huilang1",
	},
}
Room {
	id = "shaolin/huilang2",
	name = "回廊",
	ways = {
		["south"] = "shaolin/huilang1",
		["east"] = "shaolin/huilang2",
		["north"] = "shaolin/huilang2",
		["west"] = "shaolin/huilang3",
	},
}
Room {
	id = "shaolin/huilang3",
	name = "回廊",
	ways = {
		["south"] = "shaolin/huilang3",
		["north"] = "shaolin/huilang3",
		["east"] = "shaolin/huilang2",
		["west"] = "shaolin/huilang4",
	},
}
Room {
	id = "shaolin/huilang4",
	name = "回廊",
	ways = {
		["south"] = "shaolin/huilang4",
		["east"] = "shaolin/huilang3",
		["north"] = "shaolin/dmyuan",
		["west"] = "shaolin/huilang4",
	},
}
Room {
	id = "shaolin/huizhizuo",
	name = "晦智圣座",
	ways = {
		["out"] = "shaolin/fota2",
	},
}
Room {
	id = "shaolin/jianyu",
	name = "监狱",
}
Room {
	id = "shaolin/jianyu1",
	name = "监狱",
	ways = {
		["north"] = "shaolin/jianyu",
	},
}
Room {
	id = "shaolin/jieluyua",
	name = "戒律院",
	no_fight = true,
	ways = {
		["west"] = "shaolin/songshu4",
	},
}
Room {
	id = "shaolin/jietan1",
	name = "戒坛",
	ways = {
		["southeast"] = "shaolin/sblu-3",
		["north"] = "shaolin/jietan3",
		["east"] = "shaolin/jietan2",
	},
}
Room {
	id = "shaolin/jietan2",
	name = "戒坛",
	ways = {
		["southwest"] = "shaolin/sblu-3",
		["north"] = "shaolin/jietan4",
		["west"] = "shaolin/jietan1",
	},
}
Room {
	id = "shaolin/jietan3",
	name = "戒坛",
	ways = {
		["south"] = "shaolin/jietan1",
		["east"] = "shaolin/jietan4",
		["northeast"] = "shaolin/fatang",
	},
}
Room {
	id = "shaolin/jietan4",
	name = "戒坛",
	ways = {
		["south"] = "shaolin/jietan2",
		["northwest"] = "shaolin/fatang",
		["west"] = "shaolin/jietan3",
	},
}
Room {
	id = "shaolin/jiulou1",
	name = "迎宾楼",
	ways = {
		["east"] = "shaolin/nanyang",
		["up"] = "shaolin/jiulou2",
	},
}
Room {
	id = "shaolin/jiulou2",
	name = "迎宾楼二楼",
	ways = {
		["down"] = "shaolin/jiulou1",
	},
}
Room {
	id = "shaolin/jnlwang",
	name = "紧那罗王殿",
	ways = {
		["west"] = "shaolin/pingtai",
	},
}
Room {
	id = "shaolin/jxzhuang",
	name = "聚贤庄",
	ways = {
		["west"] = "shaolin/yidao2",
	},
}
Room {
	id = "shaolin/kchang",
	name = "空场",
	ways = {
		["south"] = "shaolin/fatang",
		["north"] = "shaolin/qfdian",
		["east"] = "shaolin/bydian",
		["west"] = "shaolin/dzdian",
	},
}
Room {
	id = "shaolin/kedian1",
	name = "悦来客栈",
	ways = {
		["west"] = "shaolin/nanyang",
		["up"] = "shaolin/kedian2",
	},
}
Room {
	id = "shaolin/kedian2",
	name = "客店二楼",
	ways = {
		["down"] = "shaolin/kedian1",
	},
}
Room {
	id = "shaolin/kuhuiping",
	name = "苦慧坪",
	ways = {
		["out"] = "shaolin/fota2",
	},
}
Room {
	id = "shaolin/lhtang",
	name = "罗汉堂",
	ways = {
		["east"] = "shaolin/stoneroad4",
		["west"] = "shaolin/lwc",
	},
}
Room {
	id = "shaolin/liuzu",
	name = "六祖殿",
	ways = {
		["east"] = "shaolin/pingtai",
	},
}
Room {
	id = "shaolin/liwu",
	name = "里屋",
	ways = {
		["out"] = "shaolin/houyuan",
	},
}
Room {
	id = "shaolin/lshuyuan",
	name = "龙树院",
	ways = {
		["south"] = "shaolin/fangjuku",
		["north"] = "shaolin/wuqiku",
		["east"] = "shaolin/huaishu5",
	},
}
Room {
	id = "shaolin/luohan1",
	name = "罗汉堂一部",
	ways = {
		["north"] = "shaolin/luohan2",
	},
}
Room {
	id = "shaolin/luohan2",
	name = "罗汉堂二部",
	ways = {
		["south"] = "shaolin/luohan1",
		["north"] = "shaolin/luohan3",
	},
}
Room {
	id = "shaolin/luohan3",
	name = "罗汉堂三部",
	ways = {
		["south"] = "shaolin/luohan2",
		["north"] = "shaolin/luohan4",
	},
}
Room {
	id = "shaolin/luohan4",
	name = "罗汉堂四部",
	ways = {
		["south"] = "shaolin/luohan3",
		["north"] = "shaolin/luohan5",
	},
}
Room {
	id = "shaolin/luohan5",
	name = "罗汉堂五部",
	ways = {
		["south"] = "shaolin/luohan4",
		["east"] = "shaolin/lwc6",
		["north"] = "shaolin/luohan6",
		["west"] = "shaolin/yanwutang",
	},
}
Room {
	id = "shaolin/luohan6",
	name = "罗汉堂六部",
	ways = {
		["south"] = "shaolin/luohan5",
		["north"] = "shaolin/luohan7",
	},
}
Room {
	id = "shaolin/luohan7",
	name = "罗汉堂七部",
	ways = {
		["south"] = "shaolin/luohan6",
		["north"] = "shaolin/luohan8",
	},
}
Room {
	id = "shaolin/luohan8",
	name = "罗汉堂八部",
	ways = {
		["south"] = "shaolin/luohan7",
		["north"] = "shaolin/luohan9",
	},
}
Room {
	id = "shaolin/luohan9",
	name = "罗汉堂九部",
	ways = {
		["south"] = "shaolin/luohan8",
	},
}
Room {
	id = "shaolin/lwc",
	name = "练武场",
	ways = {
		["south"] = "shaolin/lwc9",
		["north"] = "shaolin/lwc2",
		["east"] = "shaolin/lhtang",
		["west"] = "shaolin/lwc5",
	},
}
Room {
	id = "shaolin/lwc11",
	name = "练武场",
	ways = {
		["south"] = "shaolin/lwc19",
		["north"] = "shaolin/lwc12",
		["east"] = "shaolin/banruo5",
		["west"] = "shaolin/lwc15",
	},
}
Room {
	id = "shaolin/lwc12",
	name = "练武场",
	ways = {
		["south"] = "shaolin/lwc11",
		["west"] = "shaolin/lwc13",
	},
}
Room {
	id = "shaolin/lwc13",
	name = "练武场",
	ways = {
		["south"] = "shaolin/lwc15",
		["east"] = "shaolin/lwc12",
		["west"] = "shaolin/lwc14",
	},
}
Room {
	id = "shaolin/lwc14",
	name = "练武场",
	ways = {
		["south"] = "shaolin/lwc16",
		["east"] = "shaolin/lwc13",
	},
}
Room {
	id = "shaolin/lwc15",
	name = "中心武场",
	ways = {
		["south"] = "shaolin/lwc18",
		["north"] = "shaolin/lwc13",
		["east"] = "shaolin/lwc11",
		["west"] = "shaolin/lwc16",
	},
}
Room {
	id = "shaolin/lwc16",
	name = "练武场",
	ways = {
		["south"] = "shaolin/lwc17",
		["east"] = "shaolin/lwc15",
		["north"] = "shaolin/lwc14",
		["west"] = "shaolin/brtang",
	},
}
Room {
	id = "shaolin/lwc17",
	name = "练武场",
	ways = {
		["east"] = "shaolin/lwc18",
		["north"] = "shaolin/lwc16",
	},
}
Room {
	id = "shaolin/lwc18",
	name = "练武场",
	ways = {
		["east"] = "shaolin/lwc19",
		["north"] = "shaolin/lwc15",
		["west"] = "shaolin/lwc17",
	},
}
Room {
	id = "shaolin/lwc19",
	name = "练武场",
	ways = {
		["north"] = "shaolin/lwc11",
		["west"] = "shaolin/lwc18",
	},
}
Room {
	id = "shaolin/lwc2",
	name = "练武场",
	ways = {
		["south"] = "shaolin/lwc",
		["west"] = "shaolin/lwc3",
	},
}
Room {
	id = "shaolin/lwc3",
	name = "练武场",
	ways = {
		["south"] = "shaolin/lwc5",
		["east"] = "shaolin/lwc2",
		["west"] = "shaolin/lwc4",
	},
}
Room {
	id = "shaolin/lwc4",
	name = "练武场",
	ways = {
		["south"] = "shaolin/lwc6",
		["east"] = "shaolin/lwc3",
	},
}
Room {
	id = "shaolin/lwc5",
	name = "中心武场",
	ways = {
		["south"] = "shaolin/lwc8",
		["north"] = "shaolin/lwc3",
		["east"] = "shaolin/lwc",
		["west"] = "shaolin/lwc6",
	},
}
Room {
	id = "shaolin/lwc6",
	name = "练武场",
	ways = {
		["south"] = "shaolin/lwc7",
		["east"] = "shaolin/lwc5",
		["north"] = "shaolin/lwc4",
		["west"] = "shaolin/luohan5",
	},
}
Room {
	id = "shaolin/lwc7",
	name = "练武场",
	ways = {
		["east"] = "shaolin/lwc8",
		["north"] = "shaolin/lwc6",
	},
}
Room {
	id = "shaolin/lwc8",
	name = "练武场",
	ways = {
		["east"] = "shaolin/lwc9",
		["north"] = "shaolin/lwc5",
		["west"] = "shaolin/lwc7",
	},
}
Room {
	id = "shaolin/lwc9",
	name = "练武场",
	ways = {
		["north"] = "shaolin/lwc",
		["west"] = "shaolin/lwc8",
	},
}
Room {
	id = "shaolin/lxting",
	name = "立雪亭",
	ways = {
		["north"] = "shaolin/sblu-2",
		["southdown"] = "shaolin/taijie",
	},
	lengths = {
		["north"] = "if getTitle() == '少林派第三十八代弟子' then return false else return 1 end",
	},
}
Room {
	id = "shaolin/murenxiang",
	name = "木人巷",
	ways = {
		["north"] = "shaolin/murenxiang",
	},
}
Room {
	id = "shaolin/nanyang",
	name = "南阳城",
	ways = {
		["south"] = "shaolin/yidao2",
		["north"] = "shaolin/yidao3",
		["east"] = "shaolin/kedian1",
		["west"] = "shaolin/jiulou1",
	},
}
Room {
	id = "shaolin/pingtai",
	name = "平台",
	ways = {
		["east"] = "shaolin/jnlwang",
		["north"] = "shaolin/daxiong",
		["southdown"] = "shaolin/dxshijie",
		["west"] = "shaolin/liuzu",
	},
}
Room {
	id = "shaolin/putiyuan",
	name = "菩提院",
	ways = {
		["east"] = "shaolin/huaishu1",
	},
}
Room {
	id = "shaolin/qdian",
	name = "前殿",
	ways = {
		["south"] = "shaolin/gchang-1",
		["north"] = "shaolin/twdian",
	},
}
Room {
	id = "shaolin/qfdian",
	name = "千佛殿",
	ways = {
		["south"] = "shaolin/kchang",
		["north"] = "shaolin/shanlu1",
	},
}
Room {
	id = "shaolin/qyping",
	name = "青云坪",
	ways = {
		["enter"] = "shaolin/fumoquan",
		["sd;w;e;n;e;s;n;e;w;s"] = "shaolin/shanlu8",
	},
	nolooks = {
		["southdown"] = true,
		["sd;w;e;n;e;s;n;e;w;s"] = true,
	},
}
Room {
	id = "shaolin/rukou",
	name = "五行洞入口",
	ways = {
		["north"] = "shaolin/andao1",
	},
}
Room {
	id = "shaolin/ruzhou",
	name = "汝州城",
	ways = {
		["south"] = "nanyang/yidao3",
		["west"] = "shaolin/shijie1",
	},
}
Room {
	id = "shaolin/sblu-1",
	name = "石板路",
	ways = {
		["southeast"] = "shaolin/celang-4",
		["southwest"] = "shaolin/celang-2",
		["south"] = "shaolin/twdian",
		["north"] = "shaolin/xianglu",
	},
}
Room {
	id = "shaolin/sblu-2",
	name = "石板路",
	ways = {
		["south"] = "shaolin/lxting",
		["east"] = "shaolin/xiaolu1",
		["north"] = "shaolin/sblu-3",
		["west"] = "shaolin/xiaolu5",
	},
}
Room {
	id = "shaolin/sblu-3",
	name = "石板路",
	ways = {
		["south"] = "shaolin/sblu-2",
		["northwest"] = "shaolin/jietan1",
		["northeast"] = "shaolin/jietan2",
	},
}
Room {
	id = "shaolin/sengshe1",
	name = "僧舍",
	ways = {
		["south"] = "shaolin/sengshe3",
		["north"] = "shaolin/sengshe2",
		["west"] = "shaolin/celang2",
	},
}
Room {
	id = "shaolin/sengshe2",
	name = "僧舍",
	no_fight = true,
	ways = {
		["south"] = "shaolin/sengshe1",
	},
}
Room {
	id = "shaolin/sengshe3",
	name = "僧舍",
	no_fight = true,
	ways = {
		["north"] = "shaolin/sengshe1",
	},
}
Room {
	id = "shaolin/sengshe4",
	name = "僧舍",
	ways = {
		["south"] = "shaolin/sengshe6",
		["north"] = "shaolin/sengshe5",
		["east"] = "shaolin/celang1",
	},
}
Room {
	id = "shaolin/sengshe5",
	name = "僧舍",
	no_fight = true,
	ways = {
		["south"] = "shaolin/sengshe4",
	},
}
Room {
	id = "shaolin/sengshe6",
	name = "僧舍",
	no_fight = true,
	ways = {
		["north"] = "shaolin/sengshe4",
	},
}
Room {
	id = "shaolin/shanlu1",
	name = "山路",
	ways = {
		["south"] = "shaolin/qfdian",
		["north"] = "shaolin/shanlu2",
	},
}
Room {
	id = "shaolin/shanlu2",
	name = "山路",
	ways = {
		["northup"] = "shaolin/shanlu3",
		["south"] = "shaolin/shanlu1",
	},
}
Room {
	id = "shaolin/shanlu3",
	name = "山路",
	ways = {
		["north"] = "shaolin/shanlu4",
		["southdown"] = "shaolin/shanlu2",
	},
}
Room {
	id = "shaolin/shanlu4",
	name = "山路",
	ways = {
		["south"] = "shaolin/shanlu3",
		["north"] = "shaolin/czan",
	},
}
Room {
	id = "shaolin/shanlu5",
	name = "山路",
	ways = {
		["northup"] = "shaolin/shanlu6",
		["south"] = "shaolin/czan",
	},
}
Room {
	id = "shaolin/shanlu6",
	name = "山路",
	ways = {
		["northup"] = "shaolin/shanlu7",
		["northwest"] = "shaolin/bamboon",
		["southdown"] = "shaolin/shanlu5",
		["nw;sw;se;n;s;w;e;w;e;e;s;w;n;nw;n"] = "shaolin/damodong",
	},
	nolooks = {
		["nw;sw;se;n;s;w;e;w;e;e;s;w;n;nw;n"] = true,
	},
	lengths = {
		["nw;sw;se;n;s;w;e;w;e;e;s;w;n;nw;n"] = 15,
	},
}
Room {
	id = "shaolin/shanlu7",
	name = "山路",
	ways = {
		["northeast"] = "shaolin/shanlu8",
		["southdown"] = "shaolin/shanlu6",
	},
}
Room {
	id = "shaolin/shanlu8",
	name = "山路",
	ways = {
		["southwest"] = "shaolin/shanlu7",
		["e;w;e;s;e;n;n;e;w;s"] = "shaolin/qyping",
	},
	nolooks = {
		["east"] = true,
		["e;w;e;s;e;n;n;e;w;s"] = true,
	},
}
Room {
	id = "shaolin/shifang",
	name = "石坊",
	ways = {
		["south"] = "shaolin/shijie11",
		["north"] = "shaolin/guangchang",
	},
}
Room {
	id = "shaolin/shijie1",
	name = "石阶",
	ways = {
		["northup"] = "shaolin/shijie2",
		["east"] = "shaolin/ruzhou",
		["west"] = "group/entry/slxiaoj1",
	},
}
Room {
	id = "shaolin/shijie10",
	name = "石阶",
	ways = {
		["northup"] = "shaolin/shijie11",
		["eastdown"] = "shaolin/shijie9",
	},
}
Room {
	id = "shaolin/shijie11",
	name = "石阶",
	ways = {
		["north"] = "shaolin/shifang",
		["southdown"] = "shaolin/shijie10",
	},
}
Room {
	id = "shaolin/shijie2",
	name = "石阶",
	ways = {
		["westup"] = "shaolin/shijie3",
		["southdown"] = "shaolin/shijie1",
	},
}
Room {
	id = "shaolin/shijie3",
	name = "石阶",
	ways = {
		["northup"] = "shaolin/shijie4",
		["eastdown"] = "shaolin/shijie2",
	},
}
Room {
	id = "shaolin/shijie4",
	name = "石阶",
	ways = {
		["northup"] = "shaolin/shijie5",
		["southdown"] = "shaolin/shijie3",
	},
}
Room {
	id = "shaolin/shijie5",
	name = "石阶",
	ways = {
		["northup"] = "shaolin/shijie6",
		["southdown"] = "shaolin/shijie4",
	},
}
Room {
	id = "shaolin/shijie6",
	name = "石阶",
	ways = {
		["westup"] = "shaolin/shijie7",
		["southdown"] = "shaolin/shijie5",
		["up"] = "songshan/shanlu1",
	},
}
Room {
	id = "shaolin/shijie7",
	name = "石阶",
	ways = {
		["eastdown"] = "shaolin/shijie6",
		["westup"] = "shaolin/shijie8",
	},
}
Room {
	id = "shaolin/shijie8",
	name = "石阶",
	ways = {
		["northup"] = "shaolin/ting",
		["eastdown"] = "shaolin/shijie7",
	},
}
Room {
	id = "shaolin/shijie9",
	name = "石阶",
	ways = {
		["eastup"] = "shaolin/fxjing",
		["westup"] = "shaolin/shijie10",
		["southdown"] = "shaolin/ting",
	},
}
Room {
	id = "shaolin/shiting1",
	name = "石亭",
	ways = {
		["north"] = "shaolin/shiting2",
	},
}
Room {
	id = "shaolin/shiting2",
	name = "石亭",
	ways = {
		["south"] = "shaolin/shiting1",
		["north"] = "shaolin/shiting3",
	},
}
Room {
	id = "shaolin/shiting3",
	name = "石亭",
	ways = {
		["south"] = "shaolin/shiting2",
		["north"] = "shaolin/shiting4",
	},
}
Room {
	id = "shaolin/shiting4",
	name = "石亭",
	ways = {
		["south"] = "shaolin/shiting3",
		["north"] = "shaolin/shiting5",
	},
}
Room {
	id = "shaolin/shiting5",
	name = "石亭",
	ways = {
		["south"] = "shaolin/shiting4",
		["north"] = "shaolin/shiting6",
	},
}
Room {
	id = "shaolin/shiting6",
	name = "石亭",
	ways = {
		["south"] = "shaolin/shiting5",
		["north"] = "shaolin/shiting7",
	},
}
Room {
	id = "shaolin/shiting7",
	name = "石亭",
	ways = {
		["south"] = "shaolin/shiting6",
	},
}
Room {
	id = "shaolin/slyuan",
	name = "舍利院",
	no_fight = true,
	ways = {
		["east"] = "shaolin/huaishu4",
		["west"] = "shaolin/talinn",
	},
	nolooks = {
		["west"] = true,
	},
	precmds = {
		["west"] = "open door",
	},
}
Room {
	id = "shaolin/smdian",
	name = "山门殿",
	ways = {
		["south"] = "shaolin/guangchang",
		["north"] = "shaolin/gchang-1",
	},
	nolooks = {
		["south"] = true,
	},
	precmds = {
		["south"] = "open gate",
	},
}
Room {
	id = "shaolin/songshu1",
	name = "松树林",
	ways = {
		["south"] = "shaolin/songshu2",
		["northwest"] = "shaolin/hguangz3",
		["east"] = "shaolin/yaowang",
	},
}
Room {
	id = "shaolin/songshu2",
	name = "松树林",
	ways = {
		["south"] = "shaolin/songshu3",
		["north"] = "shaolin/songshu1",
		["west"] = "shaolin/stoneroad1",
	},
}
Room {
	id = "shaolin/songshu3",
	name = "松树林",
	ways = {
		["southwest"] = "shaolin/celang2",
		["east"] = "shaolin/songshu4",
		["north"] = "shaolin/songshu2",
	},
}
Room {
	id = "shaolin/songshu4",
	name = "松树林",
	ways = {
		["east"] = "shaolin/jieluyua",
		["west"] = "shaolin/songshu3",
	},
	lengths = {
		["east"] = "if getParty() == '少林派' then return 1 else return false end",
	},
}
Room {
	id = "shaolin/stoneroad1",
	name = "石板路",
	ways = {
		["south"] = "shaolin/daxiong",
		["east"] = "shaolin/songshu2",
		["north"] = "shaolin/dabeidia",
		["west"] = "shaolin/huaishu4",
	},
}
Room {
	id = "shaolin/stoneroad2",
	name = "石板路",
	ways = {
		["south"] = "shaolin/xianglu",
		["east"] = "shaolin/stoneroad3",
		["north"] = "shaolin/dxshijie",
		["west"] = "shaolin/stoneroad4",
	},
}
Room {
	id = "shaolin/stoneroad3",
	name = "石板路",
	ways = {
		["north"] = "shaolin/celang2",
		["east"] = "shaolin/brtang",
		["west"] = "shaolin/stoneroad2",
	},
}
Room {
	id = "shaolin/stoneroad4",
	name = "石板路",
	ways = {
		["east"] = "shaolin/stoneroad2",
		["north"] = "shaolin/celang1",
		["west"] = "shaolin/lhtang",
	},
}
Room {
	id = "shaolin/taijie",
	name = "台阶",
	ways = {
		["northup"] = "shaolin/lxting",
		["south"] = "shaolin/houdian",
	},
}
Room {
	id = "shaolin/talinn",
	name = "塔林",
	ways = {
		["#outTl"] = "shaolin/fotaout",
	},
	nolooks = {
		["#outTl"] = true,
		["east"] = true,
		["south"] = true,
		["north"] = true,
		["west"] = true,
		["northeast"] = true,
		["northwest"] = true,
		["southeast"] = true,
		["southwest"] = true,
	},
	lengths = {
		["#outTl"] = 50,
	},
	find = {
		path = {"ne", "n", "nw", "sw", "w", "ne", "w", "s", "nw", "sw",},
	},
}
Room {
	id = "shaolin/tianming",
	name = "天鸣禅台",
	ways = {
		["out"] = "shaolin/fota2",
	},
}
Room {
	id = "shaolin/ting",
	name = "迎客亭",
	ways = {
		["northup"] = "shaolin/shijie9",
		["southdown"] = "shaolin/shijie8",
	},
	precmds = {
		["northup"] = "#handFree",
	},
	postcmds = {
		["northup"] = "#wieldWeapon",
	},
	lengths = {
		["northup"] = "if getParty() == '少林派' or getExp() > 160000 or getSex() == '男' then return 1 else return false end",
	},
}
Room {
	id = "shaolin/twdian",
	name = "天王殿",
	ways = {
		["south"] = "shaolin/qdian",
		["north"] = "shaolin/sblu-1",
	},
}
Room {
	id = "shaolin/woshi",
	name = "卧室",
	ways = {
		["south"] = "shaolin/xiaowu",
	},
}
Room {
	id = "shaolin/wstang1",
	name = "武僧堂",
	ways = {
		["south"] = "shaolin/wstang2",
		["east"] = "shaolin/yanwutang",
	},
}
Room {
	id = "shaolin/wstang2",
	name = "武僧堂",
	ways = {
		["south"] = "shaolin/wstang3",
		["north"] = "shaolin/wstang1",
	},
}
Room {
	id = "shaolin/wstang3",
	name = "武僧堂",
	ways = {
		["south"] = "shaolin/wstang4",
		["north"] = "shaolin/wstang2",
	},
}
Room {
	id = "shaolin/wstang4",
	name = "武僧堂",
	ways = {
		["south"] = "shaolin/wstang5",
		["north"] = "shaolin/wstang3",
	},
}
Room {
	id = "shaolin/wstang5",
	name = "武僧堂",
	ways = {
		["south"] = "shaolin/wstang6",
		["north"] = "shaolin/wstang4",
	},
}
Room {
	id = "shaolin/wstang6",
	name = "武僧堂",
	ways = {
		["north"] = "shaolin/wstang5",
	},
}
Room {
	id = "shaolin/wuqiku",
	name = "武器库",
	ways = {
		["south"] = "shaolin/lshuyuan",
	},
}
Room {
	id = "shaolin/wusetai",
	name = "无色台",
	ways = {
		["out"] = "shaolin/fota2",
	},
}
Room {
	id = "shaolin/wuxiangpai",
	name = "无相牌",
	ways = {
		["out"] = "shaolin/fota2",
	},
}
Room {
	id = "shaolin/wuxing0",
	name = "五行洞",
	ways = {
		["south"] = "shaolin/wuxing3",
		["east"] = "shaolin/wuxing4",
		["north"] = "shaolin/wuxing2",
		["west"] = "shaolin/wuxing1",
	},
}
Room {
	id = "shaolin/wuxing1",
	name = "五行洞",
	ways = {
		["south"] = "shaolin/wuxing3",
		["north"] = "shaolin/wuxing2",
		["east"] = "shaolin/wuxing0",
		["west"] = "shaolin/wuxing4",
	},
}
Room {
	id = "shaolin/wuxing2",
	name = "五行洞",
	ways = {
		["south"] = "shaolin/wuxing4",
		["north"] = "shaolin/wuxing3",
		["east"] = "shaolin/wuxing1",
		["west"] = "shaolin/wuxing0",
	},
}
Room {
	id = "shaolin/wuxing3",
	name = "五行洞",
	ways = {
		["south"] = "shaolin/wuxing2",
		["north"] = "shaolin/wuxing4",
		["east"] = "shaolin/wuxing1",
		["west"] = "shaolin/wuxing0",
	},
}
Room {
	id = "shaolin/wuxing4",
	name = "五行洞",
	ways = {
		["south"] = "shaolin/wuxing3",
		["north"] = "shaolin/wuxing2",
		["east"] = "shaolin/wuxing1",
		["west"] = "shaolin/wuxing0",
	},
}
Room {
	id = "shaolin/xclang",
	name = "石廊",
	ways = {
		["northwest"] = "shaolin/gygu",
		["east"] = "shaolin/xctang",
	},
}
Room {
	id = "shaolin/xcping",
	name = "心禅坪",
	ways = {
		["north"] = "shaolin/xctang",
		["west"] = "shaolin/fatang",
	},
	lengths = {
		["north"] = "if getParty() == '少林派' then return 1 else return false end",
	},
}
Room {
	id = "shaolin/xctang",
	name = "心禅堂",
	ways = {
		["south"] = "shaolin/xcping",
		["north"] = "shaolin/duanya",
		["west"] = "shaolin/xclang",
	},
}
Room {
	id = "shaolin/xianglu",
	name = "香炉",
	ways = {
		["south"] = "shaolin/sblu-1",
		["north"] = "shaolin/stoneroad2",
	},
}
Room {
	id = "shaolin/xiaojin1",
	name = "小径",
	ways = {
		["south"] = "shaolin/houyuan",
		["jump out"] = "shaolin/cjlou1",
	},
	nolooks = {
		["jump out"] = true,
	},
}
Room {
	id = "shaolin/xiaojing2",
	name = "田埂边",
	ways = {
		["southdown"] = "group/entry/slxiaoj1",
		["west"] = "shaolin/houshan",
	},
}
Room {
	id = "shaolin/xiaolu-1",
	name = "小路",
	ways = {
		["southeast"] = "shaolin/xiaolu-2",
		["north"] = "shaolin/chufang2",
	},
}
Room {
	id = "shaolin/xiaolu-2",
	name = "小路",
	ways = {
		["south"] = "shaolin/xiaolu-3",
		["northwest"] = "shaolin/xiaolu-1",
	},
}
Room {
	id = "shaolin/xiaolu-3",
	name = "小路",
	ways = {
		["south"] = "shaolin/cyzi-1",
		["north"] = "shaolin/xiaolu-2",
	},
}
Room {
	id = "shaolin/xiaolu1",
	name = "林中小路",
	ways = {
		["east"] = "shaolin/xiaolu2",
		["west"] = "shaolin/sblu-2",
	},
}
Room {
	id = "shaolin/xiaolu2",
	name = "林中小路",
	ways = {
		["northeast"] = "shaolin/xiaolu3",
		["west"] = "shaolin/xiaolu1",
	},
}
Room {
	id = "shaolin/xiaolu3",
	name = "林中小路",
	ways = {
		["southeast"] = "shaolin/xiaolu4",
		["southwest"] = "shaolin/xiaolu2",
	},
}
Room {
	id = "shaolin/xiaolu4",
	name = "林中小路",
	ways = {
		["northwest"] = "shaolin/xiaolu3",
		["east"] = "shaolin/xiaoxi",
	},
}
Room {
	id = "shaolin/xiaolu5",
	name = "林中小路",
	ways = {
		["east"] = "shaolin/sblu-2",
		["west"] = "shaolin/xiaolu6",
	},
}
Room {
	id = "shaolin/xiaolu6",
	name = "林中小路",
	ways = {
		["east"] = "shaolin/xiaolu5",
		["west"] = "shaolin/xiaolu7",
	},
}
Room {
	id = "shaolin/xiaolu7",
	name = "林中小路",
	ways = {
		["east"] = "shaolin/xiaolu6",
		["west"] = "shaolin/fzjs",
	},
}
Room {
	id = "shaolin/xiaowu",
	name = "小土屋",
	ways = {
		["south"] = "shaolin/houshan",
		["north"] = "shaolin/woshi",
	},
}
Room {
	id = "shaolin/xiaoxi",
	name = "小溪",
	ways = {
		["west"] = "shaolin/xiaolu4",
		["jump river"] = "shaolin/xiaoxi1",
	},
	nolooks = {
		["jump river"] = true,
	},
}
Room {
	id = "shaolin/xiaoxi1",
	name = "溪旁空地",
	ways = {
		["enter"] = "shaolin/cjlou",
		["jump river"] = "shaolin/xiaoxi",
	},
	nolooks = {
		["jump river"] = true,
	},
}
Room {
	id = "shaolin/xjchu",
	name = "粥室",
	no_fight = true,
	ways = {
		["south"] = "shaolin/zhaitang",
	},
}
Room {
	id = "shaolin/xumidian",
	name = "须弥殿",
	ways = {
		["east"] = "shaolin/dabeidia",
	},
}
Room {
	id = "shaolin/yading",
	name = "崖顶",
	ways = {
		["enter"] = "shaolin/houshand",
		["down"] = "shaolin/duanya",
	},
}
Room {
	id = "shaolin/yanwutang",
	name = "演武堂",
	ways = {
		["east"] = "shaolin/luohan5",
		["west"] = "shaolin/wstang1",
	},
	lengths = {
		["west"] = "if getParty() == '少林派' then return 1 else return false end",
	},
}
Room {
	id = "shaolin/yaowang",
	name = "药王院",
	ways = {
		["west"] = "shaolin/songshu1",
	},
}
Room {
	id = "shaolin/yidao",
	name = "大驿道",
	ways = {
		["south"] = "xiangyang/henanroad2",
		["north"] = "shaolin/yidao1",
	},
}
Room {
	id = "shaolin/yidao1",
	name = "大驿道",
	ways = {
		["south"] = "shaolin/yidao",
		["north"] = "shaolin/yidao2",
	},
}
Room {
	id = "shaolin/yidao2",
	name = "大驿道",
	ways = {
		["south"] = "shaolin/yidao1",
		["north"] = "shaolin/nanyang",
		["east"] = "shaolin/jxzhuang",
	},
}
Room {
	id = "shaolin/yidao3",
	name = "大驿道",
	ways = {
		["south"] = "shaolin/nanyang",
		["east"] = "shaolin/yidao4",
		["north"] = "shaolin/ruzhou",
	},
}
Room {
	id = "shaolin/yidao4",
	name = "密林",
	ways = {
		["south"] = "gb/duanya",
		["northeast"] = "huanghe/weifen",
		["west"] = "shaolin/yidao3",
	},
}
Room {
	id = "shaolin/zdyuan",
	name = "证道院",
	ways = {
		["east"] = "shaolin/celang-2",
		["west"] = "shaolin/chanfang-1",
	},
	blocks = {
		["west"] = {
			{id = "xuansheng dashi", exp = 1000000, party = "少林派"},
		},
	},
}
Room {
	id = "shaolin/zhaitang",
	name = "斋堂",
	ways = {
		["north"] = "shaolin/xjchu",
		["east"] = "shaolin/fanting1",
		["west"] = "shaolin/celang-4",
	},
}
Room {
	id = "shaolin/zhlou1",
	name = "钟楼一层",
	ways = {
		["out"] = "shaolin/zhonglou",
		["up"] = "shaolin/zhlou2",
	},
}
Room {
	id = "shaolin/zhlou2",
	name = "钟楼二层",
	ways = {
		["down"] = "shaolin/zhlou1",
		["up"] = "shaolin/zhlou3",
	},
}
Room {
	id = "shaolin/zhlou3",
	name = "钟楼三层",
	ways = {
		["down"] = "shaolin/zhlou2",
		["up"] = "shaolin/zhlou4",
	},
}
Room {
	id = "shaolin/zhlou4",
	name = "钟楼四层",
	ways = {
		["down"] = "shaolin/zhlou3",
		["up"] = "shaolin/zhlou5",
	},
}
Room {
	id = "shaolin/zhlou5",
	name = "钟楼五层",
	ways = {
		["down"] = "shaolin/zhlou4",
		["up"] = "shaolin/zhlou6",
	},
}
Room {
	id = "shaolin/zhlou6",
	name = "钟楼六层",
	ways = {
		["down"] = "shaolin/zhlou5",
		["up"] = "shaolin/zhlou7",
	},
}
Room {
	id = "shaolin/zhlou7",
	name = "钟楼七层",
	ways = {
		["down"] = "shaolin/zhlou6",
	},
}
Room {
	id = "shaolin/zhonglou",
	name = "钟楼小院",
	ways = {
		["enter"] = "shaolin/zhlou1",
		["west"] = "shaolin/celang-3",
	},
}
Room {
	id = "shaolin/zhushe",
	name = "猪舍",
	ways = {
		["southeast"] = "shaolin/houshan",
	},
}
Room {
	id = "sld/blm",
	name = "白龙门议事厅",
	ways = {
		["east"] = "sld/blmws",
		["west"] = "sld/blmlgf",
		["out"] = "sld/sanpo6",
	},
}
Room {
	id = "sld/blmlgf",
	name = "练功房",
	ways = {
		["east"] = "sld/blm",
	},
}
Room {
	id = "sld/blmws",
	name = "卧室",
	no_fight = true,
	ways = {
		["west"] = "sld/blm",
	},
}
Room {
	id = "sld/cf",
	name = "厨房",
	ways = {
		["west"] = "sld/th",
	},
}
Room {
	id = "sld/clm",
	name = "赤龙门议事厅",
	ways = {
		["east"] = "sld/clmws",
		["west"] = "sld/clmlgf",
		["out"] = "sld/sanpo3",
	},
}
Room {
	id = "sld/clmlgf",
	name = "练功房",
	ways = {
		["east"] = "sld/clm",
	},
}
Room {
	id = "sld/clmws",
	name = "卧室",
	no_fight = true,
	ways = {
		["west"] = "sld/clm",
	},
}
Room {
	id = "sld/dt",
	name = "大厅",
	ways = {
		["south"] = "sld/slj",
		["north"] = "sld/th",
	},
}
Room {
	id = "sld/dukou",
	name = "渡口",
	ways = {
		["northwest"] = "sld/sandw",
		["north"] = "sld/trees1",
		["northeast"] = "sld/sande",
	},
}
Room {
	id = "sld/haitan",
	name = "海滩",
	ways = {
		["southwest"] = "sld/xiaolu",
		["#toSld"] = "sld/dukou",
	},
	nolooks = {
		["#toSld"] = true,
	},
	lengths = {
		["#toSld"] = 1000,
	},
}
Room {
	id = "sld/hlm",
	name = "黑龙门议事厅",
	ways = {
		["east"] = "sld/hlmws",
		["west"] = "sld/hlmlgf",
		["out"] = "sld/sanpo2",
	},
}
Room {
	id = "sld/hlmlgf",
	name = "练功房",
	ways = {
		["east"] = "sld/hlm",
	},
}
Room {
	id = "sld/hlmws",
	name = "卧室",
	no_fight = true,
	ways = {
		["west"] = "sld/hlm",
	},
}
Room {
	id = "sld/ht",
	name = "后厅",
	ways = {
		["south"] = "sld/th",
	},
}
Room {
	id = "sld/hulm",
	name = "黄龙门议事厅",
	ways = {
		["east"] = "sld/hulmws",
		["west"] = "sld/hulmlgf",
		["out"] = "sld/sanpo4",
	},
}
Room {
	id = "sld/hulmlgf",
	name = "练功房",
	ways = {
		["east"] = "sld/hulm",
	},
}
Room {
	id = "sld/hulmws",
	name = "卧室",
	no_fight = true,
	ways = {
		["west"] = "sld/hulm",
	},
}
Room {
	id = "sld/jitan",
	name = "祭坛",
	ways = {
		["out"] = "sld/pt",
	},
}
Room {
	id = "sld/kongdi",
	name = "林间空地",
	ways = {
		["northup"] = "sld/sanroad1",
		["south"] = "sld/trees2",
		["enter"] = "sld/lgxroom",
		["north"] = "sld/treen2",
	},
}
Room {
	id = "sld/lgf",
	name = "练功房",
	ways = {
		["south"] = "sld/road2",
	},
}
Room {
	id = "sld/lgxroom",
	name = "陆府正厅",
	ways = {
		["east"] = "sld/lgxys",
		["north"] = "sld/lgxws",
		["out"] = "sld/kongdi",
		["#outSld"] = "sld/haitan",
	},
	nolooks = {
		["#outSld"] = true,
	},
	lengths = {
		["#outSld"] = 500,
	},
}
Room {
	id = "sld/lgxws",
	name = "卧室",
	ways = {
		["south"] = "sld/lgxroom",
	},
}
Room {
	id = "sld/lgxys",
	name = "药室",
	ways = {
		["west"] = "sld/lgxroom",
	},
}
Room {
	id = "sld/pt",
	name = "平台",
	ways = {
		["enter"] = "sld/jitan",
		["east"] = "sld/zl2",
	},
}
Room {
	id = "sld/qlm",
	name = "青龙门议事厅",
	ways = {
		["east"] = "sld/qlmws",
		["west"] = "sld/qlmlgf",
		["out"] = "sld/sanpo5",
	},
}
Room {
	id = "sld/qlmlgf",
	name = "练功房",
	ways = {
		["east"] = "sld/qlm",
	},
}
Room {
	id = "sld/qlmws",
	name = "卧室",
	no_fight = true,
	ways = {
		["west"] = "sld/qlm",
	},
}
Room {
	id = "sld/road1",
	name = "走廊",
	ways = {
		["south"] = "sld/ws",
		["east"] = "sld/slj",
		["west"] = "sld/road2",
	},
}
Room {
	id = "sld/road2",
	name = "走廊",
	ways = {
		["east"] = "sld/road1",
		["north"] = "sld/lgf",
		["west"] = "sld/tz",
	},
}
Room {
	id = "sld/sande",
	name = "沙滩",
	ways = {
		["southwest"] = "sld/dukou",
		["northwest"] = "sld/sandn",
		["west"] = "sld/treee1",
	},
}
Room {
	id = "sld/sandn",
	name = "沙滩",
	ways = {
		["southeast"] = "sld/sande",
		["southwest"] = "sld/sandw",
		["south"] = "sld/treen1",
	},
}
Room {
	id = "sld/sandw",
	name = "沙滩",
	ways = {
		["southeast"] = "sld/dukou",
		["east"] = "sld/treew1",
		["northeast"] = "sld/sandn",
	},
}
Room {
	id = "sld/sanpo1",
	name = "山坡",
	ways = {
		["eastup"] = "sld/sanroad5",
		["north"] = "sld/sanroad6",
		["down"] = "sld/sanroad2",
	},
}
Room {
	id = "sld/sanpo2",
	name = "山坡",
	ways = {
		["westdown"] = "sld/sanroad4",
		["enter"] = "sld/hlm",
	},
}
Room {
	id = "sld/sanpo3",
	name = "山坡",
	ways = {
		["southup"] = "sld/sanroad7",
		["enter"] = "sld/clm",
	},
}
Room {
	id = "sld/sanpo4",
	name = "山坡",
	ways = {
		["enter"] = "sld/hulm",
		["southdown"] = "sld/sanroad9",
	},
}
Room {
	id = "sld/sanpo5",
	name = "山坡",
	ways = {
		["southup"] = "sld/sanroad8",
		["enter"] = "sld/qlm",
	},
}
Room {
	id = "sld/sanpo6",
	name = "山坡",
	ways = {
		["westdown"] = "sld/sanroad8",
		["enter"] = "sld/blm",
		["north"] = "sld/sanroada",
	},
}
Room {
	id = "sld/sanpo7",
	name = "山崖",
	ways = {
		["westdown"] = "sld/sanroad9",
	},
}
Room {
	id = "sld/sanroad1",
	name = "山路",
	ways = {
		["southdown"] = "sld/kongdi",
		["up"] = "sld/sanroad2",
	},
}
Room {
	id = "sld/sanroad2",
	name = "山路",
	ways = {
		["northup"] = "sld/sanroad3",
		["down"] = "sld/sanroad1",
		["up"] = "sld/sanpo1",
	},
}
Room {
	id = "sld/sanroad3",
	name = "山路",
	ways = {
		["eastup"] = "sld/sanroad4",
		["southdown"] = "sld/sanroad2",
	},
}
Room {
	id = "sld/sanroad4",
	name = "山路",
	ways = {
		["westdown"] = "sld/sanroad3",
		["eastup"] = "sld/sanpo2",
	},
}
Room {
	id = "sld/sanroad5",
	name = "山路",
	ways = {
		["northup"] = "sld/sanroad9",
		["eastup"] = "sld/sanroad8",
		["westdown"] = "sld/sanpo1",
	},
}
Room {
	id = "sld/sanroad6",
	name = "山路",
	ways = {
		["south"] = "sld/sanpo1",
		["northdown"] = "sld/sanroad7",
	},
}
Room {
	id = "sld/sanroad7",
	name = "山路",
	ways = {
		["southup"] = "sld/sanroad6",
		["northdown"] = "sld/sanpo3",
	},
}
Room {
	id = "sld/sanroad8",
	name = "山路",
	ways = {
		["westdown"] = "sld/sanroad5",
		["eastup"] = "sld/sanpo6",
		["northdown"] = "sld/sanpo5",
	},
}
Room {
	id = "sld/sanroad9",
	name = "山路",
	ways = {
		["northup"] = "sld/sanpo4",
		["eastup"] = "sld/sanpo7",
		["southdown"] = "sld/sanroad5",
	},
}
Room {
	id = "sld/sanroada",
	name = "山路",
	ways = {
		["south"] = "sld/sanpo6",
		["up"] = "sld/sanroadb",
	},
}
Room {
	id = "sld/sanroadb",
	name = "山路",
	ways = {
		["down"] = "sld/sanroada",
		["up"] = "sld/sfd",
	},
}
Room {
	id = "sld/sfd",
	name = "山峰顶",
	ways = {
		["enter"] = "sld/slj",
		["down"] = "sld/sanroadb",
	},
}
Room {
	id = "sld/sheku",
	name = "蛇窟",
	ways = {
		["southwest"] = "sld/trees2",
		["northwest"] = "sld/treen2",
		["east"] = "sld/sande",
	},
}
Room {
	id = "sld/slj",
	name = "走廊",
	ways = {
		["north"] = "sld/dt",
		["west"] = "sld/road1",
		["out"] = "sld/sfd",
	},
}
Room {
	id = "sld/th",
	name = "厅后",
	ways = {
		["south"] = "sld/dt",
		["north"] = "sld/ht",
		["east"] = "sld/cf",
	},
}
Room {
	id = "sld/treee1",
	name = "树林",
	ways = {
		["southwest"] = "sld/trees2",
		["northwest"] = "sld/treen2",
		["east"] = "sld/sande",
	},
}
Room {
	id = "sld/treen1",
	name = "树林",
	ways = {
		["southeast"] = "sld/treee1",
		["southwest"] = "sld/treew1",
		["south"] = "sld/treen2",
		["north"] = "sld/sandn",
	},
}
Room {
	id = "sld/treen2",
	name = "树林",
	ways = {
		["southeast"] = "sld/treee1",
		["southwest"] = "sld/treew1",
		["south"] = "sld/kongdi",
		["north"] = "sld/treen1",
	},
}
Room {
	id = "sld/trees1",
	name = "树林",
	ways = {
		["south"] = "sld/dukou",
		["northwest"] = "sld/treew1",
		["north"] = "sld/trees2",
		["northeast"] = "sld/treee1",
	},
}
Room {
	id = "sld/trees2",
	name = "树林",
	ways = {
		["south"] = "sld/trees1",
		["northwest"] = "sld/treew1",
		["north"] = "sld/kongdi",
		["northeast"] = "sld/treee1",
	},
}
Room {
	id = "sld/treew1",
	name = "树林",
	ways = {
		["southeast"] = "sld/trees2",
		["northeast"] = "sld/treen2",
		["west"] = "sld/sandw",
	},
}
Room {
	id = "sld/tz",
	name = "走廊",
	ways = {
		["east"] = "sld/road2",
		["out"] = "sld/zl1",
	},
}
Room {
	id = "sld/ws",
	name = "卧室",
	no_fight = true,
	ways = {
		["north"] = "sld/road1",
	},
}
Room {
	id = "sld/xiaolu",
	name = "小路",
	ways = {
		["southwest"] = "tanggu/gangkou",
		["northeast"] = "sld/haitan",
	},
}
Room {
	id = "sld/yaopu1",
	name = "药圃",
	ways = {
		["south"] = "sld/zl1",
		["north"] = "sld/yaopu2",
		["west"] = "sld/yaopu6",
	},
}
Room {
	id = "sld/yaopu2",
	name = "药圃",
	ways = {
		["south"] = "sld/yaopu1",
		["north"] = "sld/yaopu3",
		["west"] = "sld/yaopu5",
	},
}
Room {
	id = "sld/yaopu3",
	name = "药圃",
	ways = {
		["south"] = "sld/yaopu2",
		["west"] = "sld/yaopu4",
	},
}
Room {
	id = "sld/yaopu4",
	name = "药圃",
	ways = {
		["south"] = "sld/yaopu5",
		["east"] = "sld/yaopu3",
		["west"] = "sld/yaopu9",
	},
}
Room {
	id = "sld/yaopu5",
	name = "药圃",
	ways = {
		["south"] = "sld/yaopu6",
		["north"] = "sld/yaopu4",
		["east"] = "sld/yaopu2",
		["west"] = "sld/yaopu8",
	},
}
Room {
	id = "sld/yaopu6",
	name = "药圃",
	ways = {
		["north"] = "sld/yaopu5",
		["east"] = "sld/yaopu1",
		["west"] = "sld/yaopu7",
	},
}
Room {
	id = "sld/yaopu7",
	name = "药圃",
	ways = {
		["north"] = "sld/yaopu8",
		["east"] = "sld/yaopu6",
	},
}
Room {
	id = "sld/yaopu8",
	name = "药圃",
	ways = {
		["south"] = "sld/yaopu7",
		["north"] = "sld/yaopu9",
		["east"] = "sld/yaopu5",
	},
}
Room {
	id = "sld/yaopu9",
	name = "药圃",
	ways = {
		["south"] = "sld/yaopu8",
		["east"] = "sld/yaopu4",
	},
}
Room {
	id = "sld/zl1",
	name = "竹林",
	ways = {
		["enter"] = "sld/tz",
		["west"] = "sld/zl2",
	},
}
Room {
	id = "sld/zl2",
	name = "竹林",
	ways = {
		["east"] = "sld/zl1",
		["west"] = "sld/pt",
	},
}
Room {
	id = "songshan/cangshu-ge",
	name = "藏书阁",
	ways = {
		["south"] = "songshan/yushu-lou",
	},
}
Room {
	id = "songshan/chanyuan",
	name = "峻极禅院",
	ways = {
		["south"] = "songshan/damen",
		["north"] = "songshan/shidao1",
	},
	blocks = {
		["north"] = {
			{id = "ding mian", exp = 1500000, party = "嵩山派"},
		},
	},
}
Room {
	id = "songshan/ctmen",
	name = "朝天门",
	ways = {
		["southeast"] = "songshan/shanlu4",
		["northeast"] = "songshan/shanlu5",
	},
}
Room {
	id = "songshan/damen",
	name = "峻极宫大门",
	no_fight = true,
	ways = {
		["south"] = "songshan/kuangdi",
		["north"] = "songshan/chanyuan",
	},
}
Room {
	id = "songshan/dtlxia",
	name = "大铁梁峡",
	ways = {
		["northup"] = "songshan/xtlxia",
		["southdown"] = "songshan/qgping",
	},
}
Room {
	id = "songshan/fengchantai",
	name = "封禅台",
	ways = {
		["southdown"] = "songshan/peitian-fang",
		["guan ri"] = "songshan/guanrifeng",
	},
	nolooks = {
		["guan ri"] = true,
	},
	lengths = {
		["guan ri"] = "if getParty() == '嵩山派' then return 1 else return false end",
	},
}
Room {
	id = "songshan/gsfxia",
	name = "观胜峰下",
	ways = {
		["southeast"] = "songshan/shanlu2",
		["westup"] = "songshan/guanshengfeng",
	},
}
Room {
	id = "songshan/guanrifeng",
	name = "观日峰",
	ways = {
		["west"] = "songshan/fengchantai",
	},
}
Room {
	id = "songshan/guanshengfeng",
	name = "观胜峰",
	ways = {
		["eastdown"] = "songshan/gsfxia",
		["northdown"] = "songshan/shanlu3",
	},
}
Room {
	id = "songshan/jiange",
	name = "轩辕剑阁",
	ways = {
		["north"] = "songshan/yushu-lou",
	},
}
Room {
	id = "songshan/junji-dian",
	name = "峻极殿",
	ways = {
		["northup"] = "songshan/shidao3",
		["south"] = "songshan/junji-fang",
		["east"] = "songshan/suishilu3",
		["west"] = "songshan/suishilu4",
	},
}
Room {
	id = "songshan/junji-fang",
	name = "崇高峻极坊",
	ways = {
		["north"] = "songshan/junji-dian",
		["southdown"] = "songshan/shidao2",
	},
}
Room {
	id = "songshan/kuangdi",
	name = "旷地",
	ways = {
		["south"] = "songshan/taishi-que",
		["north"] = "songshan/damen",
	},
}
Room {
	id = "songshan/nan-room",
	name = "休息室",
	no_fight = true,
	ways = {
		["north"] = "songshan/qindian",
	},
}
Room {
	id = "songshan/nv-room",
	name = "休息室",
	no_fight = true,
	ways = {
		["south"] = "songshan/qindian",
	},
}
Room {
	id = "songshan/peitian-fang",
	name = "配天作镇坊",
	ways = {
		["northup"] = "songshan/fengchantai",
		["southdown"] = "songshan/shidao3",
	},
}
Room {
	id = "songshan/qgfeng",
	name = "青岗峰",
	ways = {
		["northup"] = "songshan/qgping",
		["southdown"] = "songshan/shanlu3",
	},
}
Room {
	id = "songshan/qgping",
	name = "青岗坪",
	ways = {
		["northup"] = "songshan/dtlxia",
		["southdown"] = "songshan/qgfeng",
	},
}
Room {
	id = "songshan/qindian",
	name = "寝殿",
	ways = {
		["south"] = "songshan/nan-room",
		["east"] = "songshan/zmwshi",
		["north"] = "songshan/nv-room",
		["west"] = "songshan/suishilu3",
	},
	lengths = {
		["north"] = "if getSex() == '女' then return 1 else return false end",
	},
}
Room {
	id = "songshan/shanfang",
	name = "膳房",
	no_fight = true,
	ways = {
		["west"] = "songshan/suishilu1",
	},
}
Room {
	id = "songshan/shanlu1",
	name = "山路",
	ways = {
		["down"] = "shaolin/shijie6",
		["west"] = "songshan/shanlu2",
	},
}
Room {
	id = "songshan/shanlu2",
	name = "山路",
	ways = {
		["northwest"] = "songshan/gsfxia",
		["east"] = "songshan/shanlu1",
	},
}
Room {
	id = "songshan/shanlu3",
	name = "山路",
	ways = {
		["northup"] = "songshan/qgfeng",
		["southup"] = "songshan/guanshengfeng",
	},
}
Room {
	id = "songshan/shanlu4",
	name = "山路",
	ways = {
		["southeast"] = "songshan/xtlxia",
		["northwest"] = "songshan/ctmen",
	},
}
Room {
	id = "songshan/shanlu5",
	name = "山路",
	ways = {
		["northup"] = "songshan/taishi-que",
		["southwest"] = "songshan/ctmen",
	},
}
Room {
	id = "songshan/shidao1",
	name = "石道",
	ways = {
		["south"] = "songshan/chanyuan",
		["north"] = "songshan/yaocan-ting",
	},
}
Room {
	id = "songshan/shidao2",
	name = "石道",
	ways = {
		["northup"] = "songshan/junji-fang",
		["south"] = "songshan/tianzhong-ge",
	},
}
Room {
	id = "songshan/shidao3",
	name = "石道",
	ways = {
		["northup"] = "songshan/peitian-fang",
		["southdown"] = "songshan/junji-dian",
	},
}
Room {
	id = "songshan/shufang",
	name = "掌门书房",
	ways = {
		["east"] = "songshan/yushu-lou",
	},
}
Room {
	id = "songshan/suishilu1",
	name = "碎石路",
	ways = {
		["east"] = "songshan/shanfang",
		["west"] = "songshan/tianzhong-ge",
	},
}
Room {
	id = "songshan/suishilu2",
	name = "碎石路",
	ways = {
		["east"] = "songshan/tianzhong-ge",
		["west"] = "songshan/yaofang",
	},
}
Room {
	id = "songshan/suishilu3",
	name = "碎石路",
	ways = {
		["east"] = "songshan/qindian",
		["west"] = "songshan/junji-dian",
	},
}
Room {
	id = "songshan/suishilu4",
	name = "碎石路",
	ways = {
		["east"] = "songshan/junji-dian",
		["west"] = "songshan/yushu-lou",
	},
}
Room {
	id = "songshan/taishi-que",
	name = "太室阙",
	ways = {
		["north"] = "songshan/kuangdi",
		["southdown"] = "songshan/shanlu5",
	},
}
Room {
	id = "songshan/tianzhong-ge",
	name = "天中阁",
	ways = {
		["south"] = "songshan/yaocan-ting",
		["east"] = "songshan/suishilu1",
		["north"] = "songshan/shidao2",
		["west"] = "songshan/suishilu2",
	},
}
Room {
	id = "songshan/xtlxia",
	name = "小铁梁峡",
	ways = {
		["northwest"] = "songshan/shanlu4",
		["southdown"] = "songshan/dtlxia",
	},
}
Room {
	id = "songshan/yaocan-ting",
	name = "遥参亭",
	ways = {
		["south"] = "songshan/shidao1",
		["north"] = "songshan/tianzhong-ge",
	},
}
Room {
	id = "songshan/yaofang",
	name = "药房",
	no_fight = true,
	ways = {
		["east"] = "songshan/suishilu2",
	},
}
Room {
	id = "songshan/yushu-lou",
	name = "御书楼",
	ways = {
		["south"] = "songshan/jiange",
		["north"] = "songshan/cangshu-ge",
		["east"] = "songshan/suishilu4",
		["west"] = "songshan/shufang",
	},
}
Room {
	id = "songshan/zmwshi",
	name = "掌门卧室",
	ways = {
		["west"] = "songshan/qindian",
	},
}
Room {
	id = "suzhou/bailianchi",
	name = "白莲池",
	ways = {
		["south"] = "suzhou/erxianting",
	},
}
Room {
	id = "suzhou/baiyunquan",
	name = "白云泉",
	ways = {
		["westdown"] = "suzhou/tianpingshan",
	},
}
Room {
	id = "suzhou/baodaiqiao",
	name = "宝带桥",
	ways = {
		["south"] = "suzhou/nandajie1",
		["northwest"] = "suzhou/xidajie1",
		["north"] = "suzhou/canglangting",
		["northeast"] = "suzhou/dongdajie3",
	},
}
Room {
	id = "suzhou/baoheji",
	name = "宝和记",
	no_fight = true,
	ways = {
		["north"] = "suzhou/dongdajie3",
	},
}
Room {
	id = "suzhou/beidajie1",
	name = "北大街",
	ways = {
		["southwest"] = "suzhou/xiyuanzi",
		["south"] = "suzhou/canglangting",
		["east"] = "suzhou/kedian",
		["north"] = "suzhou/beidajie2",
		["west"] = "suzhou/majiu",
	},
}
Room {
	id = "suzhou/beidajie2",
	name = "北大街",
	ways = {
		["south"] = "suzhou/beidajie1",
		["north"] = "suzhou/northgate",
		["east"] = "suzhou/chunzailou",
		["west"] = "suzhou/zijinan",
	},
}
Room {
	id = "suzhou/bingyin",
	name = "兵营",
	ways = {
		["north"] = "suzhou/bingyindamen",
	},
}
Room {
	id = "suzhou/bingyindamen",
	name = "兵营大门",
	ways = {
		["south"] = "suzhou/bingyin",
		["north"] = "suzhou/xidajie1",
	},
	blocks = {
		["south"] = {
			{id = "guan bing", exp = 10000},
		},
	},
}
Room {
	id = "suzhou/bingying",
	name = "北门兵营",
	ways = {
		["east"] = "suzhou/northgate",
		["west"] = "suzhou/jail",
	},
	blocks = {
		["west"] = {
			{id = "zhao liangdong", exp = 450000},
		},
	},
}
Room {
	id = "suzhou/bishuiting",
	name = "碧水亭",
	ways = {
		["south"] = "suzhou/huzhongdao",
	},
}
Room {
	id = "suzhou/caixiangjing",
	name = "采香径",
	ways = {
		["northwest"] = "suzhou/shuiwa",
		["northeast"] = "suzhou/shuiwa1",
	},
}
Room {
	id = "suzhou/caizhu",
	name = "翰林府门",
	ways = {
		["south"] = "suzhou/wjszhuang",
		["north"] = "suzhou/dayuan1",
	},
}
Room {
	id = "suzhou/cangjingge",
	name = "藏经阁",
	ways = {
		["south"] = "suzhou/dxbdian",
	},
}
Room {
	id = "suzhou/canglangting",
	name = "沧浪亭",
	ways = {
		["southeast"] = "suzhou/dongdajie3",
		["southwest"] = "suzhou/xidajie1",
		["south"] = "suzhou/baodaiqiao",
		["north"] = "suzhou/beidajie1",
	},
}
Room {
	id = "suzhou/caoebei",
	name = "曹娥碑",
	ways = {
		["east"] = "suzhou/nongshe",
		["north"] = "suzhou/jiangbian",
	},
}
Room {
	id = "suzhou/chaguan",
	name = "茶馆",
	ways = {
		["southwest"] = "suzhou/nandajie1",
	},
}
Room {
	id = "suzhou/chitang",
	name = "池塘",
	ways = {
		["northeast"] = "suzhou/gumujiaohe",
	},
}
Room {
	id = "suzhou/chunzailou",
	name = "春在楼",
	ways = {
		["west"] = "suzhou/beidajie2",
	},
}
Room {
	id = "suzhou/datiepu",
	name = "打铁铺",
	ways = {
		["north"] = "suzhou/dongdajie2",
	},
}
Room {
	id = "suzhou/dayuan1",
	name = "翰林府院",
	ways = {
		["south"] = "suzhou/caizhu",
		["north"] = "suzhou/houyuan",
	},
}
Room {
	id = "suzhou/dongdajie2",
	name = "东大街",
	ways = {
		["south"] = "suzhou/datiepu",
		["northwest"] = "suzhou/hutong2",
		["north"] = "suzhou/lichuntang",
		["east"] = "suzhou/eastgate",
		["west"] = "suzhou/dongdajie3",
	},
}
Room {
	id = "suzhou/dongdajie3",
	name = "东大街",
	ways = {
		["southwest"] = "suzhou/baodaiqiao",
		["south"] = "suzhou/baoheji",
		["northwest"] = "suzhou/canglangting",
		["north"] = "suzhou/hutong",
		["east"] = "suzhou/dongdajie2",
	},
}
Room {
	id = "suzhou/dongting",
	name = "衙门东厅",
	ways = {
		["west"] = "suzhou/ymzhengting",
	},
}
Room {
	id = "suzhou/dongxiang",
	name = "闺房",
	ways = {
		["south"] = "suzhou/houyuan",
		["west"] = "suzhou/huayuan",
	},
	precmds = {
		["west"] = "ask ling shuanghua about 丁典;#waitbusy",
	},
}
Room {
	id = "suzhou/dxbdian",
	name = "大雄宝殿",
	ways = {
		["north"] = "suzhou/cangjingge",
		["out"] = "suzhou/lingyansi",
	},
}
Room {
	id = "suzhou/eastgate",
	name = "东门",
	ways = {
		["west"] = "suzhou/dongdajie2",
	},
}
Room {
	id = "suzhou/erxianting",
	name = "二仙亭",
	ways = {
		["north"] = "suzhou/bailianchi",
		["west"] = "suzhou/qianrenshi",
	},
}
Room {
	id = "suzhou/fengqiao",
	name = "枫桥",
	ways = {
		["south"] = "suzhou/hanshidian",
		["north"] = "suzhou/tielingguan",
	},
}
Room {
	id = "suzhou/gumujiaohe",
	name = "古木交诃",
	ways = {
		["southwest"] = "suzhou/chitang",
		["east"] = "suzhou/hehuating",
	},
}
Room {
	id = "suzhou/hanhanquan",
	name = "憨憨泉",
	ways = {
		["eastdown"] = "suzhou/wjszhuang",
	},
}
Room {
	id = "suzhou/hanshansi",
	name = "寒山寺门",
	ways = {
		["southeast"] = "suzhou/qsgdao5",
		["enter"] = "suzhou/zhengdian",
	},
}
Room {
	id = "suzhou/hanshidian",
	name = "寒拾殿",
	ways = {
		["west"] = "suzhou/zhengdian",
		["out"] = "suzhou/fengqiao",
	},
}
Room {
	id = "suzhou/hehuating",
	name = "荷花厅",
	ways = {
		["east"] = "suzhou/liuyuan",
		["west"] = "suzhou/gumujiaohe",
	},
}
Room {
	id = "suzhou/houtang",
	name = "后堂",
	ways = {
		["out"] = "suzhou/shuchang",
	},
}
Room {
	id = "suzhou/houyuan",
	name = "后院",
	ways = {
		["south"] = "suzhou/dayuan1",
		-- ["north"] = "suzhou/dongxiang",
	},
	nolooks = {
		["north"] = true,
	},
}
Room {
	id = "suzhou/huayuan",
	name = "花园",
	ways = {
		["east"] = "suzhou/dongxiang",
	},
}
Room {
	id = "suzhou/hubiandadao",
	name = "湖边大道",
	ways = {
		["north"] = "suzhou/qingshidadao2",
		["west"] = "thd/guiyun/road1",
	},
}
Room {
	id = "suzhou/huqiushan",
	name = "虎丘山",
	ways = {
		["south"] = "suzhou/toushanmen",
		["northeast"] = "suzhou/qsgdao6",
	},
}
Room {
	id = "suzhou/hutong",
	name = "胡同",
	ways = {
		["south"] = "suzhou/dongdajie3",
		["northeast"] = "suzhou/hutong1",
	},
}
Room {
	id = "suzhou/hutong1",
	name = "胡同",
	ways = {
		["southwest"] = "suzhou/hutong",
		["east"] = "suzhou/hutong2",
	},
}
Room {
	id = "suzhou/hutong2",
	name = "胡同",
	ways = {
		["southeast"] = "suzhou/dongdajie2",
		["west"] = "suzhou/hutong1",
	},
}
Room {
	id = "suzhou/huzhongdao",
	name = "湖中岛",
	ways = {
		["north"] = "suzhou/bishuiting",
	},
}
Room {
	id = "suzhou/jail",
	name = "监狱",
	ways = {
		["east"] = "suzhou/bingying",
	},
}
Room {
	id = "suzhou/jiangbian",
	name = "江边",
	ways = {
		["south"] = "suzhou/caoebei",
		["northeast"] = "group/entry/sztulu2",
	},
}
Room {
	id = "suzhou/jubaozhai",
	name = "聚宝斋",
	ways = {
		["east"] = "suzhou/nandajie1",
	},
}
Room {
	id = "suzhou/kedian",
	name = "客店",
	ways = {
		["west"] = "suzhou/beidajie1",
		-- ["up"] = "suzhou/kedian2",
	},
	nolooks = {
		["up"] = true,
	},
}
Room {
	id = "suzhou/kedian2",
	name = "客店二楼",
	ways = {
		["enter"] = "suzhou/kedian3",
		["down"] = "suzhou/kedian",
	},
}
Room {
	id = "suzhou/kedian3",
	name = "客店二楼",
	no_fight = true,
	ways = {
		["out"] = "suzhou/kedian2",
	},
}
Room {
	id = "suzhou/lichuntang",
	name = "立春堂",
	ways = {
		["south"] = "suzhou/dongdajie2",
	},
}
Room {
	id = "suzhou/lingyanshan",
	name = "灵岩山",
	ways = {
		["eastup"] = "suzhou/yingxiaoting",
		["south"] = "suzhou/qingshidadao",
		["northwest"] = "suzhou/tianpingshan",
	},
}
Room {
	id = "suzhou/lingyansi",
	name = "灵岩寺",
	ways = {
		["enter"] = "suzhou/dxbdian",
		["east"] = "suzhou/lingyanta",
		["northdown"] = "suzhou/shiyuan",
		["west"] = "suzhou/zhonglou",
	},
}
Room {
	id = "suzhou/lingyanta",
	name = "灵岩塔",
	ways = {
		["west"] = "suzhou/lingyansi",
	},
}
Room {
	id = "suzhou/liuyuan",
	name = "留园",
	ways = {
		["east"] = "suzhou/nandajie2",
		["west"] = "suzhou/hehuating",
	},
}
Room {
	id = "suzhou/lixuetang",
	name = "立雪堂",
	ways = {
		["north"] = "suzhou/wenmeige",
	},
}
Room {
	id = "suzhou/majiu",
	name = "马厩",
	ways = {
		["south"] = "suzhou/xiyuanzi",
		["east"] = "suzhou/beidajie1",
	},
}
Room {
	id = "suzhou/mubei",
	name = "坟墓",
	ways = {
		["northeast"] = "suzhou/shiyuan",
	},
}
Room {
	id = "suzhou/muniangmu",
	name = "真娘墓",
	ways = {
		["southwest"] = "suzhou/shijianshi",
		["north"] = "suzhou/sunwuting",
	},
}
Room {
	id = "suzhou/nandajie1",
	name = "南大街",
	ways = {
		["southwest"] = "suzhou/shuyuan",
		["south"] = "suzhou/nandajie2",
		["east"] = "suzhou/shizilin",
		["north"] = "suzhou/baodaiqiao",
		["northeast"] = "suzhou/chaguan",
		["west"] = "suzhou/jubaozhai",
	},
}
Room {
	id = "suzhou/nandajie2",
	name = "南大街",
	ways = {
		["south"] = "suzhou/southgate",
		["east"] = "suzhou/tingyuxuan",
		["north"] = "suzhou/nandajie1",
		["west"] = "suzhou/liuyuan",
	},
}
Room {
	id = "suzhou/neizhai",
	name = "衙门内宅",
	ways = {
		["south"] = "suzhou/ymzhengting",
	},
}
Room {
	id = "suzhou/nongshe",
	name = "农舍",
	ways = {
		["west"] = "suzhou/caoebei",
	},
}
Room {
	id = "suzhou/northgate",
	name = "北门",
	ways = {
		["south"] = "suzhou/beidajie2",
		["north"] = "suzhou/qsgdao6",
		["west"] = "suzhou/bingying",
	},
}
Room {
	id = "suzhou/qianrenshi",
	name = "千人石",
	ways = {
		["northwest"] = "suzhou/zhishuangge",
		["north"] = "suzhou/shijianshi",
		["east"] = "suzhou/erxianting",
	},
}
Room {
	id = "suzhou/qingshidadao",
	name = "青石大道",
	ways = {
		["south"] = "suzhou/qingshidadao1",
		["north"] = "suzhou/lingyanshan",
		["east"] = "mr/hubian",
	},
}
Room {
	id = "suzhou/qingshidadao1",
	name = "青石大道",
	ways = {
		["south"] = "suzhou/qingshidadao2",
		["north"] = "suzhou/qingshidadao",
	},
}
Room {
	id = "suzhou/qingshidadao2",
	name = "青石大道",
	ways = {
		["south"] = "suzhou/hubiandadao",
		["north"] = "suzhou/qingshidadao1",
	},
}
Room {
	id = "suzhou/qsgdao",
	name = "青石官道",
	ways = {
		["southwest"] = "suzhou/tianpingshan",
		["north"] = "suzhou/qsgdao1",
	},
}
Room {
	id = "suzhou/qsgdao1",
	name = "青石官道",
	ways = {
		["southwest"] = "suzhou/qsgdao2",
		["south"] = "suzhou/qsgdao",
	},
}
Room {
	id = "suzhou/qsgdao2",
	name = "青石官道",
	ways = {
		["southeast"] = "jiaxing/road2",
		["southwest"] = "hz/shanlu1",
		["north"] = "suzhou/southgate",
		["northeast"] = "suzhou/qsgdao1",
	},
}
Room {
	id = "suzhou/qsgdao3",
	name = "西门官道",
	ways = {
		["east"] = "suzhou/westgate",
		["west"] = "suzhou/qsgdao4",
	},
}
Room {
	id = "suzhou/qsgdao4",
	name = "西门外官道",
	ways = {
		["east"] = "suzhou/qsgdao3",
		["west"] = "suzhou/qsgdao5",
	},
}
Room {
	id = "suzhou/qsgdao5",
	name = "枫桥镇",
	ways = {
		["south"] = "suzhou/tulu1",
		["northwest"] = "suzhou/hanshansi",
		["east"] = "suzhou/qsgdao4",
	},
}
Room {
	id = "suzhou/qsgdao6",
	name = "苏州北郊",
	ways = {
		["southwest"] = "suzhou/huqiushan",
		["south"] = "suzhou/northgate",
		["northwest"] = "city/sroad1",
		["west"] = "gb/tianjing",
	},
}
Room {
	id = "suzhou/shihu",
	name = "石湖",
	ways = {
		["south"] = "suzhou/tianpingshan",
		["west"] = "suzhou/xingchunqiao",
	},
}
Room {
	id = "suzhou/shijianshi",
	name = "试剑石",
	ways = {
		["westdown"] = "suzhou/wjszhuang",
		["south"] = "suzhou/qianrenshi",
		["north"] = "suzhou/zhenshi",
		["northeast"] = "suzhou/muniangmu",
	},
}
Room {
	id = "suzhou/shiyuan",
	name = "石鼋",
	ways = {
		["southup"] = "suzhou/lingyansi",
		["eastdown"] = "suzhou/shuiwa",
		["westdown"] = "suzhou/shuiwa1",
		["southwest"] = "suzhou/mubei",
		["northdown"] = "suzhou/yingxiaoting",
	},
}
Room {
	id = "suzhou/shizilin",
	name = "狮子林",
	ways = {
		["east"] = "suzhou/yanyutang",
		["northeast"] = "suzhou/zhibaixuan",
		["west"] = "suzhou/nandajie1",
	},
}
Room {
	id = "suzhou/shuchang",
	name = "书场",
	ways = {
		["south"] = "suzhou/xidajie2",
		["enter"] = "suzhou/houtang",
	},
	nolooks = {
		["enter"] = true,
	},
	precmds = {
		["enter"] = "open door",
	},
}
Room {
	id = "suzhou/shuiwa",
	name = "划船坞",
	ways = {
		["southeast"] = "suzhou/caixiangjing",
		["westup"] = "suzhou/shiyuan",
	},
}
Room {
	id = "suzhou/shuiwa1",
	name = "划船坞",
	ways = {
		["eastup"] = "suzhou/shiyuan",
		["southwest"] = "suzhou/caixiangjing",
	},
}
Room {
	id = "suzhou/shuyuan",
	name = "书院",
	ways = {
		["northeast"] = "suzhou/nandajie1",
	},
}
Room {
	id = "suzhou/southgate",
	name = "南门",
	ways = {
		["south"] = "suzhou/qsgdao2",
		["north"] = "suzhou/nandajie2",
	},
}
Room {
	id = "suzhou/sunwuting",
	name = "孙武亭",
	ways = {
		["south"] = "suzhou/muniangmu",
	},
}
Room {
	id = "suzhou/tianpingshan",
	name = "天平山",
	ways = {
		["eastup"] = "suzhou/baiyunquan",
		["southeast"] = "suzhou/lingyanshan",
		["north"] = "suzhou/shihu",
		["northeast"] = "suzhou/qsgdao",
	},
}
Room {
	id = "suzhou/tielingguan",
	name = "铁玲关",
	ways = {
		["south"] = "suzhou/fengqiao",
	},
}
Room {
	id = "suzhou/tingyuxuan",
	name = "听雨轩",
	ways = {
		["west"] = "suzhou/nandajie2",
	},
}
Room {
	id = "suzhou/toushanmen",
	name = "头门山",
	ways = {
		["north"] = "suzhou/huqiushan",
		["west"] = "suzhou/wjszhuang",
	},
}
Room {
	id = "suzhou/tulu1",
	name = "土路",
	ways = {
		["southwest"] = "group/entry/sztulu2",
		["north"] = "suzhou/qsgdao5",
	},
}
Room {
	id = "suzhou/wenmeige",
	name = "问梅阁",
	ways = {
		["south"] = "suzhou/lixuetang",
		["west"] = "suzhou/zhenquting",
	},
}
Room {
	id = "suzhou/westgate",
	name = "西门",
	ways = {
		["east"] = "suzhou/xidajie2",
		["west"] = "suzhou/qsgdao3",
	},
}
Room {
	id = "suzhou/wjszhuang",
	name = "万景山庄",
	ways = {
		["eastup"] = "suzhou/shijianshi",
		["westup"] = "suzhou/hanhanquan",
		["east"] = "suzhou/toushanmen",
		["north"] = "suzhou/caizhu",
	},
}
Room {
	id = "suzhou/xidajie1",
	name = "西大街",
	ways = {
		["southeast"] = "suzhou/baodaiqiao",
		["south"] = "suzhou/bingyindamen",
		["north"] = "suzhou/yamen",
		["northeast"] = "suzhou/canglangting",
		["west"] = "suzhou/xidajie2",
	},
}
Room {
	id = "suzhou/xidajie2",
	name = "西大街",
	ways = {
		["south"] = "suzhou/xuanmiaoguan",
		["east"] = "suzhou/xidajie1",
		["north"] = "suzhou/shuchang",
		["west"] = "suzhou/westgate",
	},
}
Room {
	id = "suzhou/xingchunqiao",
	name = "行春桥",
	ways = {
		["east"] = "suzhou/shihu",
	},
}
Room {
	id = "suzhou/xiting",
	name = "衙门西厅",
	ways = {
		["east"] = "suzhou/ymzhengting",
	},
}
Room {
	id = "suzhou/xiyuanzi",
	name = "戏园子",
	ways = {
		["north"] = "suzhou/majiu",
		["northeast"] = "suzhou/beidajie1",
	},
}
Room {
	id = "suzhou/xuanmiaoguan",
	name = "玄妙观",
	ways = {
		["north"] = "suzhou/xidajie2",
	},
}
Room {
	id = "suzhou/yamen",
	name = "衙门大门",
	ways = {
		["south"] = "suzhou/xidajie1",
		["north"] = "suzhou/ymzhengting",
	},
	blocks = {
		["north"] = {
			{id = "ya yi", exp = 7500},
		},
	},
}
Room {
	id = "suzhou/yanyutang",
	name = "燕誉堂",
	ways = {
		["southeast"] = "suzhou/zhenquting",
		["west"] = "suzhou/shizilin",
	},
}
Room {
	id = "suzhou/yingxiaoting",
	name = "迎笑亭",
	ways = {
		["southup"] = "suzhou/shiyuan",
		["westdown"] = "suzhou/lingyanshan",
	},
}
Room {
	id = "suzhou/ymzhengting",
	name = "衙门正厅",
	ways = {
		["south"] = "suzhou/yamen",
		["north"] = "suzhou/neizhai",
		["east"] = "suzhou/dongting",
		["west"] = "suzhou/xiting",
	},
}
Room {
	id = "suzhou/zhengdian",
	name = "寒山寺正殿",
	ways = {
		["east"] = "suzhou/hanshidian",
		["out"] = "suzhou/hanshansi",
	},
}
Room {
	id = "suzhou/zhenquting",
	name = "真趣亭",
	ways = {
		["northwest"] = "suzhou/yanyutang",
		["east"] = "suzhou/wenmeige",
	},
}
Room {
	id = "suzhou/zhenshi",
	name = "枕石",
	ways = {
		["south"] = "suzhou/shijianshi",
	},
}
Room {
	id = "suzhou/zhibaixuan",
	name = "揖峰指柏轩",
	ways = {
		["southwest"] = "suzhou/shizilin",
	},
}
Room {
	id = "suzhou/zhishuangge",
	name = "致爽阁",
	ways = {
		["southeast"] = "suzhou/qianrenshi",
	},
}
Room {
	id = "suzhou/zhonglou",
	name = "钟楼小院",
	ways = {
		["east"] = "suzhou/lingyansi",
	},
}
Room {
	id = "suzhou/zijinan",
	name = "紫金庵",
	ways = {
		["east"] = "suzhou/beidajie2",
	},
}
Room {
	id = "taishan/baihe",
	name = "白鹤泉",
	ways = {
		["northup"] = "taishan/yitian",
		["southdown"] = "taishan/daizong",
	},
}
Room {
	id = "taishan/baozang",
	name = "宝藏岭",
	ways = {
		["westup"] = "taishan/weipin",
	},
}
Room {
	id = "taishan/beitian",
	name = "北天门",
	ways = {
		["southdown"] = "taishan/zhangren",
	},
}
Room {
	id = "taishan/bixia",
	name = "碧霞祠",
	ways = {
		["eastdown"] = "taishan/baozang",
		["west"] = "taishan/weipin",
	},
}
Room {
	id = "taishan/daizong",
	name = "岱宗坊",
	ways = {
		["northup"] = "taishan/baihe",
		["south"] = "group/entry/tsyidao3",
		["east"] = "taishan/haitan",
		["west"] = "huanghe/huanghe5",
	},
}
Room {
	id = "taishan/dongtian",
	name = "东天门",
	ways = {
		["west"] = "taishan/tanhai",
	},
}
Room {
	id = "taishan/doumo",
	name = "斗母宫",
	ways = {
		["eastup"] = "taishan/shijin",
		["southdown"] = "taishan/yitian",
	},
}
Room {
	id = "taishan/ertian",
	name = "二天门",
	ways = {
		["northup"] = "taishan/wudafu",
		["southdown"] = "taishan/huima",
	},
}
Room {
	id = "taishan/fengchan",
	name = "封禅台",
	ways = {
		["down"] = "taishan/yuhuang",
	},
}
Room {
	id = "taishan/haitan",
	name = "海滩",
	ways = {
		["west"] = "taishan/daizong",
	},
}
Room {
	id = "taishan/hsroad2",
	name = "青石大道",
	ways = {
		["east"] = "taishan/yidao2",
		["west"] = "huanghe/tiandi4",
	},
}
Room {
	id = "taishan/huima",
	name = "回马岭",
	ways = {
		["northup"] = "taishan/ertian",
		["southdown"] = "taishan/shijin",
	},
}
Room {
	id = "taishan/lianhua",
	name = "莲花峰",
	ways = {
		["northup"] = "taishan/shixin",
		["westup"] = "taishan/tianjie",
	},
}
Room {
	id = "taishan/longmen",
	name = "龙门",
	ways = {
		["northup"] = "taishan/shengxian",
		["southdown"] = "taishan/wudafu",
	},
}
Room {
	id = "taishan/nantian",
	name = "南天门",
	ways = {
		["northup"] = "taishan/yuhuang",
		["southdown"] = "taishan/shengxian",
	},
}
Room {
	id = "taishan/riguan",
	name = "日观峰",
	ways = {
		["eastup"] = "taishan/tanhai",
		["westup"] = "taishan/yuhuang",
	},
}
Room {
	id = "taishan/shengxian",
	name = "升仙坊",
	ways = {
		["northup"] = "taishan/nantian",
		["southdown"] = "taishan/longmen",
	},
}
Room {
	id = "taishan/shijin",
	name = "石经峪",
	ways = {
		["northup"] = "taishan/huima",
		["westdown"] = "taishan/doumo",
	},
}
Room {
	id = "taishan/shixin",
	name = "试心石",
	ways = {
		["southdown"] = "taishan/lianhua",
	},
}
Room {
	id = "taishan/shulin1",
	name = "杨树林",
	ways = {
		["southeast"] = "taishan/yidao2",
		["north"] = "taishan/sjzhuang",
	},
}
Room {
	id = "taishan/sjzhuang",
	name = "单家庄",
	ways = {
		["south"] = "taishan/shulin1",
	},
}
Room {
	id = "taishan/tanhai",
	name = "探海石",
	ways = {
		["westdown"] = "taishan/riguan",
		["east"] = "taishan/dongtian",
	},
}
Room {
	id = "taishan/tianjie",
	name = "天街",
	ways = {
		["eastdown"] = "taishan/lianhua",
		["eastup"] = "taishan/weipin",
		["westdown"] = "taishan/nantian",
	},
}
Room {
	id = "taishan/weipin",
	name = "围屏山",
	ways = {
		["westdown"] = "taishan/tianjie",
		["east"] = "taishan/bixia",
	},
}
Room {
	id = "taishan/wudafu",
	name = "五大夫松",
	ways = {
		["northup"] = "taishan/longmen",
		["southdown"] = "taishan/ertian",
	},
}
Room {
	id = "taishan/xitian",
	name = "西天门",
	ways = {
		["southdown"] = "taishan/yueguan",
	},
}
Room {
	id = "taishan/yidao2",
	name = "大驿道",
	ways = {
		["northwest"] = "taishan/shulin1",
		["east"] = "group/entry/tsyidao3",
		["west"] = "taishan/hsroad2",
	},
}
Room {
	id = "taishan/yitian",
	name = "一天门",
	ways = {
		["northup"] = "taishan/doumo",
		["southdown"] = "taishan/baihe",
	},
}
Room {
	id = "taishan/yueguan",
	name = "月观峰",
	ways = {
		["northup"] = "taishan/xitian",
		["east"] = "taishan/nantian",
	},
}
Room {
	id = "taishan/yuhuang",
	name = "玉皇顶",
	ways = {
		["eastdown"] = "taishan/riguan",
		["southdown"] = "taishan/nantian",
		["west"] = "taishan/zhangren",
		["up"] = "taishan/fengchan",
	},
}
Room {
	id = "taishan/zhangren",
	name = "丈人峰",
	ways = {
		["northup"] = "taishan/beitian",
		["east"] = "taishan/yuhuang",
	},
}
Room {
	id = "tanggu/beimen",
	name = "北城门",
	ways = {
		["south"] = "tanggu/stbeijie2",
	},
}
Room {
	id = "tanggu/center",
	name = "中心广场",
	ways = {
		["south"] = "tanggu/stnanjie2",
		["east"] = "tanggu/stdongjie1",
		["north"] = "tanggu/stbeijie1",
		["west"] = "tanggu/stxijie1",
	},
	nolooks = {
		["southeast"] = true,
	},
}
Room {
	id = "tanggu/dangpu",
	name = "万福典当",
	no_fight = true,
	ways = {
		["west"] = "tanggu/stbeijie1",
	},
}
Room {
	id = "tanggu/dizangmiao",
	name = "地藏庙",
	ways = {
		["west"] = "tanggu/stbeijie2",
	},
}
Room {
	id = "tanggu/gangkou",
	name = "港口",
	ways = {
		["northeast"] = "sld/xiaolu",
		["west"] = "tanggu/stdongjie1",
	},
}
Room {
	id = "tanggu/jiuguan",
	name = "小酒馆",
	ways = {
		["south"] = "tanggu/stxijie2",
	},
}
Room {
	id = "tanggu/kedian",
	name = "喜发客栈",
	no_fight = true,
	ways = {
		["north"] = "tanggu/stxijie1",
		-- ["up"] = "tanggu/kedian2",
	},
	nolooks = {
		["up"] = true,
	},
}
Room {
	id = "tanggu/kedian2",
	name = "客店二楼",
	ways = {
		["enter"] = "tanggu/sleeproom",
		["down"] = "tanggu/kedian",
	},
}
Room {
	id = "tanggu/kongchangdi",
	name = "广场空地",
	no_fight = true,
	ways = {
		["northwest"] = "tanggu/center",
	},
}
Room {
	id = "tanggu/mingju",
	name = "普通人家",
	ways = {
		["east"] = "tanggu/stnanjie1",
	},
}
Room {
	id = "tanggu/mingju1",
	name = "普通人家",
	ways = {
		["west"] = "tanggu/stnanjie1",
	},
}
Room {
	id = "tanggu/muqidian",
	name = "木器店",
	ways = {
		["north"] = "tanggu/stxijie2",
	},
}
Room {
	id = "tanggu/nanmen",
	name = "南城门",
	ways = {
		["north"] = "tanggu/stnanjie1",
	},
}
Room {
	id = "tanggu/qianyunge",
	name = "纤云阁",
	ways = {
		["north"] = "tanggu/stdongjie1",
	},
}
Room {
	id = "tanggu/qianzhuang",
	name = "钱庄",
	ways = {
		["east"] = "tanggu/stnanjie2",
	},
}
Room {
	id = "tanggu/sleeproom",
	name = "客店二楼",
	no_fight = true,
	ways = {
		["out"] = "tanggu/kedian2",
	},
}
Room {
	id = "tanggu/stbeijie1",
	name = "北街",
	ways = {
		["south"] = "tanggu/center",
		["north"] = "tanggu/stbeijie2",
		["east"] = "tanggu/dangpu",
		["west"] = "tanggu/wuqipu",
	},
}
Room {
	id = "tanggu/stbeijie2",
	name = "北街",
	ways = {
		["south"] = "tanggu/stbeijie1",
		["east"] = "tanggu/dizangmiao",
		["north"] = "tanggu/beimen",
		["west"] = "tanggu/xianjialou",
	},
}
Room {
	id = "tanggu/stdongjie1",
	name = "东街",
	ways = {
		["south"] = "tanggu/qianyunge",
		["north"] = "tanggu/zhahuopu",
		["east"] = "tanggu/gangkou",
		["west"] = "tanggu/center",
	},
}
Room {
	id = "tanggu/stnanjie1",
	name = "石头南街",
	ways = {
		["south"] = "tanggu/nanmen",
		["north"] = "tanggu/stnanjie2",
		["east"] = "tanggu/mingju1",
		["west"] = "tanggu/mingju",
	},
}
Room {
	id = "tanggu/stnanjie2",
	name = "石头南街",
	ways = {
		["south"] = "tanggu/stnanjie1",
		["east"] = "tanggu/zhubaohang",
		["north"] = "tanggu/center",
		["west"] = "tanggu/qianzhuang",
	},
}
Room {
	id = "tanggu/stxijie1",
	name = "西街",
	ways = {
		["south"] = "tanggu/kedian",
		["north"] = "tanggu/yaofang",
		["east"] = "tanggu/center",
		["west"] = "tanggu/stxijie2",
	},
}
Room {
	id = "tanggu/stxijie2",
	name = "西街",
	ways = {
		["south"] = "tanggu/muqidian",
		["east"] = "tanggu/stxijie1",
		["north"] = "tanggu/jiuguan",
		["west"] = "tanggu/ximen",
	},
}
Room {
	id = "tanggu/wroad1",
	name = "大驿道",
	ways = {
		["southwest"] = "tanggu/wroad2",
		["east"] = "tanggu/ximen",
	},
}
Room {
	id = "tanggu/wroad2",
	name = "大驿道",
	ways = {
		["northeast"] = "tanggu/wroad1",
		["west"] = "tanggu/wroad3",
	},
}
Room {
	id = "tanggu/wroad3",
	name = "大驿道",
	ways = {
		["east"] = "tanggu/wroad2",
		["west"] = "tanggu/wroad4",
	},
}
Room {
	id = "tanggu/wroad4",
	name = "大驿道",
	ways = {
		["southwest"] = "cangzhou/eroad4",
		["east"] = "tanggu/wroad3",
	},
}
Room {
	id = "tanggu/wuqipu",
	name = "武器铺",
	ways = {
		["east"] = "tanggu/stbeijie1",
	},
}
Room {
	id = "tanggu/xianjialou",
	name = "仙家楼",
	ways = {
		["east"] = "tanggu/stbeijie2",
	},
}
Room {
	id = "tanggu/ximen",
	name = "西城门",
	ways = {
		["east"] = "tanggu/stxijie2",
		["west"] = "tanggu/wroad1",
	},
}
Room {
	id = "tanggu/yaofang",
	name = "大药房",
	ways = {
		["south"] = "tanggu/stxijie1",
	},
}
Room {
	id = "tanggu/zhahuopu",
	name = "杂货铺",
	ways = {
		["south"] = "tanggu/stdongjie1",
	},
}
Room {
	id = "tanggu/zhubaohang",
	name = "金银珠宝行",
	ways = {
		["west"] = "tanggu/stnanjie2",
	},
}
Room {
	id = "thd/bagua0",
	name = "八卦桃花阵",
	ways = {
		["south"] = "thd/bagua0",
		["east"] = "thd/bagua1",
		["north"] = "thd/bagua0",
		["west"] = "thd/bagua1",
	},
}
Room {
	id = "thd/bagua1",
	name = "八卦桃花阵",
	ways = {
		["south"] = "thd/bagua1",
		["north"] = "thd/bagua1",
		["east"] = "thd/bagua0",
		["west"] = "thd/bagua0",
	},
}
Room {
	id = "thd/bookroom",
	name = "书房",
	ways = {
		["west"] = "thd/shilu",
	},
}
Room {
	id = "thd/caodi",
	name = "草地",
	ways = {
		["eastup"] = "thd/shanjiao",
		["south"] = "thd/shangang",
		["north"] = "thd/zhulin1",
		["west"] = "thd/shijian-ting",
	},
}
Room {
	id = "thd/cave",
	name = "岩洞",
	ways = {
		["out"] = "thd/dongkou",
	},
}
Room {
	id = "thd/chafang1",
	name = "茶房",
	no_fight = true,
	ways = {
		["east"] = "thd/fanting1",
	},
}
Room {
	id = "thd/chufang",
	name = "厨房",
	ways = {
		["south"] = "thd/fanting",
		["east"] = "thd/neishi2",
	},
}
Room {
	id = "thd/chufang1",
	name = "厨房",
	ways = {
		["south"] = "thd/fanting1",
	},
}
Room {
	id = "thd/dongkou",
	name = "洞口",
	ways = {
		["south"] = "thd/taohua1",
		["enter"] = "thd/cave",
		["east"] = "thd/taohua1",
		["north"] = "thd/taohua1",
		["west"] = "thd/taohua1",
	},
}
Room {
	id = "thd/entrance",
	name = "入口",
	ways = {
		["down"] = "thd/taiji",
		["west"] = "thd/hill2",
	},
}
Room {
	id = "thd/fanting",
	name = "饭厅",
	ways = {
		["east"] = "thd/neishi1",
		["north"] = "thd/chufang",
	},
}
Room {
	id = "thd/fanting1",
	name = "饭厅",
	no_fight = true,
	ways = {
		["east"] = "thd/lianwuchang",
		["north"] = "thd/chufang1",
		["west"] = "thd/chafang1",
	},
}
Room {
	id = "thd/guiyun/caodi1",
	name = "草地",
	ways = {
		["south"] = "thd/guiyun/road4",
		["north"] = "thd/guiyun/shulin1",
		["east"] = "thd/guiyun/caodi3",
		["west"] = "thd/guiyun/caodi2",
	},
}
Room {
	id = "thd/guiyun/caodi2",
	name = "草地",
	ways = {
		["north"] = "thd/guiyun/shulin2",
		["east"] = "thd/guiyun/caodi1",
	},
}
Room {
	id = "thd/guiyun/caodi3",
	name = "草地",
	ways = {
		["north"] = "thd/guiyun/shulin3",
		["west"] = "thd/guiyun/caodi1",
	},
}
Room {
	id = "thd/guiyun/chafang",
	name = "茶房",
	no_fight = true,
	ways = {
		["east"] = "thd/guiyun/fanting",
	},
}
Room {
	id = "thd/guiyun/chufang",
	name = "厨房",
	ways = {
		["west"] = "thd/guiyun/fanting",
	},
}
Room {
	id = "thd/guiyun/fanting",
	name = "饭厅",
	no_fight = true,
	ways = {
		["north"] = "thd/guiyun/lianwuchang",
		["east"] = "thd/guiyun/chufang",
		["west"] = "thd/guiyun/chafang",
	},
}
Room {
	id = "thd/guiyun/houting",
	name = "后厅",
	ways = {
		["north"] = "thd/guiyun/zoulang3",
		["east"] = "thd/guiyun/shufang",
		["west"] = "thd/guiyun/wofang",
	},
}
Room {
	id = "thd/guiyun/jiugongn",
	name = "九宫桃花阵",
	ways = {
		["#outJgSq"] = "thd/guiyun/shiqiao",
		["#outJgZq"] = "thd/guiyun/road4",
	},
	nolooks = {
		["#outJgSq"] = true,
		["#outJgZq"] = true,
		["south"] = true,
		["east"] = true,
		["north"] = true,
		["west"] = true,
	},
	lengths = {
		["#outJgSq"] = 100,
		["#outJgZq"] = 100,
	},
	find = {
		path = {"w;w;n;n","e","e","s","w","w","s","e","e"},
	},
}
Room {
	id = "thd/guiyun/jiuguan",
	name = "小酒馆",
	ways = {
		["north"] = "thd/guiyun/road2",
	},
	nolooks = {
		["north"] = true,
	},
}
Room {
	id = "thd/guiyun/kefang",
	name = "客房",
	no_fight = true,
	ways = {
		["south"] = "thd/guiyun/zoulang2",
	},
}
Room {
	id = "thd/guiyun/lianwuchang",
	name = "练武场",
	ways = {
		["south"] = "thd/guiyun/fanting",
		["north"] = "thd/guiyun/zoulang6",
		["east"] = "thd/guiyun/xiuxishi-f",
		["west"] = "thd/guiyun/xiuxishi-m",
	},
	lengths = {
		["east"] = "if getSex() == '男' then return false else return 1 end",
		["west"] = "if getSex() == '男' then return 1 else return false end",
	},
}
Room {
	id = "thd/guiyun/qianting",
	name = "前厅",
	ways = {
		["east"] = "thd/guiyun/shiqiao",
		["west"] = "thd/guiyun/zhongting",
	},
}
Room {
	id = "thd/guiyun/rivere",
	name = "小河东岸",
	ways = {
		["east"] = "thd/guiyun/road1",
		["e;w;ask lao zhe about 裘千丈;jump river;#waitbusy"] = "thd/guiyun/riverw",
	},
	nolooks = {
		["e;w;ask lao zhe about 裘千丈;jump river;#waitbusy"] = true,
	},
	lengths = {
		["e;w;ask lao zhe about 裘千丈;jump river;#waitbusy"] = 10,
	},
}
Room {
	id = "thd/guiyun/riverw",
	name = "小河西岸",
	ways = {
		["west"] = "thd/guiyun/road2",
		["w;e;ask lao zhe about 裘千丈;jump river;#waitbusy"] = "thd/guiyun/rivere",
	},
	nolooks = {
		["w;e;ask lao zhe about 裘千丈;jump river;#waitbusy"] = true,
	},
	lengths = {
		["w;e;ask lao zhe about 裘千丈;jump river;#waitbusy"] = 10,
	},
}
Room {
	id = "thd/guiyun/road1",
	name = "湖滨小路",
	ways = {
		["east"] = "suzhou/hubiandadao",
		["west"] = "thd/guiyun/rivere",
	},
}
Room {
	id = "thd/guiyun/road2",
	name = "湖滨小路",
	ways = {
		["south"] = "thd/guiyun/jiuguan",
		["north"] = "thd/guiyun/road3",
		["east"] = "thd/guiyun/riverw",
	},
	nolooks = {
		["south"] = true,
	},
	lengths = {
		["south"] = "if minutes() < 1230 and minutes() > 390 then return 1 else return false end",
	},
}
Room {
	id = "thd/guiyun/road3",
	name = "湖滨小路",
	ways = {
		["s;s;s;s;s;e;n;e"] = "thd/guiyun/riverw",
		["n;n;n;n;n;n;n"] = "thd/guiyun/shulin1",
	},
	nolooks = {
		["s;s;s;s;s;e;n;e"] = true,
		["n;n;n;n;n;n;n"] = true,
		["south"] = true,
		["north"] = true,
	},
}
Room {
	id = "thd/guiyun/road4",
	name = "归云庄前",
	ways = {
		["south"] = "thd/guiyun/road3",
		["north"] = "thd/guiyun/caodi1",
		["west"] = "thd/guiyun/jiugongn",
	},
	nolooks = {
		["west"] = true,
	},
	lengths = {
		["west"] = 100,
	},
}
Room {
	id = "thd/guiyun/shiqiao",
	name = "大石桥",
	ways = {
		["east"] = "thd/guiyun/jiugongn",
		["west"] = "thd/guiyun/qianting",
	},
	nolooks = {
		["east"] = true,
	},
	lengths = {
		["east"] = 100,
	},
}
Room {
	id = "thd/guiyun/shufang",
	name = "书房",
	ways = {
		["west"] = "thd/guiyun/houting",
	},
}
Room {
	id = "thd/guiyun/shulin1",
	name = "树林",
	ways = {
		["south"] = "thd/guiyun/caodi1",
		["east"] = "thd/guiyun/shulin3",
		["west"] = "thd/guiyun/shulin2",
	},
}
Room {
	id = "thd/guiyun/shulin2",
	name = "树林",
	ways = {
		["south"] = "thd/guiyun/caodi2",
		["east"] = "thd/guiyun/shulin1",
	},
}
Room {
	id = "thd/guiyun/shulin3",
	name = "树林",
	ways = {
		["south"] = "thd/guiyun/caodi3",
		["north"] = "thd/guiyun/shulin4",
		["west"] = "thd/guiyun/shulin1",
	},
}
Room {
	id = "thd/guiyun/shulin4",
	name = "树林深处",
	ways = {
		["south"] = "thd/guiyun/shulin3",
		["northwest"] = "thd/guiyun/shulin5",
		["east"] = "thd/guiyun/shulin6",
	},
}
Room {
	id = "thd/guiyun/shulin5",
	name = "树林深处",
	ways = {
		["southeast"] = "thd/guiyun/shulin4",
		["north"] = "thd/guiyun/shulin7",
	},
}
Room {
	id = "thd/guiyun/shulin6",
	name = "树林深处",
	ways = {
		["west"] = "thd/guiyun/shulin4",
	},
}
Room {
	id = "thd/guiyun/shulin7",
	name = "树林深处",
	ways = {
		["south"] = "thd/guiyun/shulin5",
	},
}
Room {
	id = "thd/guiyun/shushang",
	name = "树上",
	ways = {
		["down"] = "thd/guiyun/shulin5",
	},
}
Room {
	id = "thd/guiyun/wofang",
	name = "卧房",
	ways = {
		["east"] = "thd/guiyun/houting",
	},
}
Room {
	id = "thd/guiyun/wofang1",
	name = "卧房",
	ways = {
		["south"] = "thd/guiyun/zoulang3",
	},
}
Room {
	id = "thd/guiyun/xiuxishi-f",
	name = "女休息室",
	no_fight = true,
	ways = {
		["west"] = "thd/guiyun/lianwuchang",
	},
}
Room {
	id = "thd/guiyun/xiuxishi-m",
	name = "男休息室",
	no_fight = true,
	ways = {
		["east"] = "thd/guiyun/lianwuchang",
	},
}
Room {
	id = "thd/guiyun/zhongting",
	name = "中厅",
	ways = {
		["south"] = "thd/guiyun/zoulang4",
		["north"] = "thd/guiyun/zoulang1",
		["east"] = "thd/guiyun/qianting",
	},
}
Room {
	id = "thd/guiyun/zoulang1",
	name = "走廊",
	ways = {
		["south"] = "thd/guiyun/zhongting",
		["west"] = "thd/guiyun/zoulang2",
	},
}
Room {
	id = "thd/guiyun/zoulang2",
	name = "走廊",
	ways = {
		["east"] = "thd/guiyun/zoulang1",
		["north"] = "thd/guiyun/kefang",
		["west"] = "thd/guiyun/zoulang3",
	},
}
Room {
	id = "thd/guiyun/zoulang3",
	name = "走廊",
	ways = {
		["south"] = "thd/guiyun/houting",
		["east"] = "thd/guiyun/zoulang2",
		["north"] = "thd/guiyun/wofang1",
	},
}
Room {
	id = "thd/guiyun/zoulang4",
	name = "走廊",
	ways = {
		["north"] = "thd/guiyun/zhongting",
		["west"] = "thd/guiyun/zoulang5",
	},
}
Room {
	id = "thd/guiyun/zoulang5",
	name = "走廊",
	ways = {
		["south"] = "thd/guiyun/zoulang6",
		["east"] = "thd/guiyun/zoulang4",
	},
}
Room {
	id = "thd/guiyun/zoulang6",
	name = "走廊",
	ways = {
		["south"] = "thd/guiyun/lianwuchang",
		["north"] = "thd/guiyun/zoulang5",
	},
	blocks = {
		["south"] = {
			{id = "zhuang ding", exp = 5000, party = "桃花岛"},
		},
	},
}
Room {
	id = "thd/haibin",
	name = "海滨",
	ways = {
		["west"] = "thd/niujia/jiangpan3",
		["#goThd"] = "thd/shore",
	},
	lengths = {
		["#goThd"] = "if getCha()['qimen-bagua'].level < 50 then return false else return 1000 end",
	},
	nolooks = {
		["#goThd"] = true,
	},
}
Room {
	id = "thd/hall",
	name = "方厅",
	ways = {
		["east"] = "thd/shilu",
		["west"] = "thd/zoulang1",
		["#goBgz"] = "thd/cave",
	},
	lengths = {
		["#goBgz"] = 1000,
	},
	nolooks = {
		["#goBgz"] = true,
	},
}
Room {
	id = "thd/hetang",
	name = "河塘",
	ways = {
		["south"] = "thd/zhulin1",
		["north"] = "thd/shidi",
	},
}
Room {
	id = "thd/hill",
	name = "小山",
	ways = {
		["eastup"] = "thd/hill1",
		["northdown"] = "thd/taohua1",
	},
}
Room {
	id = "thd/hill1",
	name = "山脊",
	ways = {
		["northup"] = "thd/hill2",
		["westdown"] = "thd/hill",
	},
}
Room {
	id = "thd/hill2",
	name = "山顶",
	ways = {
		["east"] = "thd/entrance",
		["southdown"] = "thd/hill1",
	},
}
Room {
	id = "thd/huo",
	name = "火",
	ways = {
		["jin"] = "thd/jin",
		["tu"] = "thd/tu",
		["shui"] = "thd/shui",
		["mu"] = "thd/mu",
	},
}
Room {
	id = "thd/jicui",
	name = "积翠亭",
	ways = {
		["south"] = "thd/zhulin21",
		["enter"] = "thd/room",
		["north"] = "thd/zhulin12",
		["east"] = "thd/kefang",
		["ask huang yaoshi about leave;#waitbusy"] = "thd/haibin",
	},
	lengths = {
		["ask huang yaoshi about leave;#waitbusy"] = 1000,
	},
	nolooks = {
		["ask huang yaoshi about leave;#waitbusy"] = true,
	},
}
Room {
	id = "thd/jin",
	name = "金",
	ways = {
		["huo"] = "thd/huo",
		["tu"] = "thd/tu",
		["shui"] = "thd/shui",
		["mu"] = "thd/mu",
	},
}
Room {
	id = "thd/jingshe",
	name = "精舍",
	ways = {
		["south"] = "thd/shilu",
	},
}
Room {
	id = "thd/kefang",
	name = "客房",
	ways = {
		["west"] = "thd/jicui",
	},
}
Room {
	id = "thd/kefang1",
	name = "客房",
	ways = {
		["south"] = "thd/shijian-ting",
	},
}
Room {
	id = "thd/liandanfang",
	name = "炼丹房",
	ways = {
		["out"] = "thd/jingshe",
	},
}
Room {
	id = "thd/liangyi",
	name = "两仪",
	ways = {
		["southwest"] = "thd/yang",
		["down"] = "thd/sixiang",
		["northeast"] = "thd/yin",
	},
}
Room {
	id = "thd/lianwuchang",
	name = "练武场",
	ways = {
		["south"] = "thd/xiuxishi-f",
		["east"] = "thd/zoulang3",
		["north"] = "thd/xiuxishi-m",
		["west"] = "thd/fanting1",
	},
}
Room {
	id = "thd/mu",
	name = "木",
	ways = {
		["huo"] = "thd/huo",
		["jin"] = "thd/jin",
		["tu"] = "thd/tu",
		["shui"] = "thd/shui",
	},
}
Room {
	id = "thd/mudao1",
	name = "墓道",
	ways = {
		["down"] = "thd/mudao2",
		["out"] = "thd/tomb",
	},
}
Room {
	id = "thd/mudao2",
	name = "墓道",
	ways = {
		["northup"] = "thd/mudao2",
		["southup"] = "thd/mudao2",
		["northwest"] = "thd/mudao2",
		["north"] = "thd/mudao2",
		["northeast"] = "thd/mudao2",
		["up"] = "thd/mudao1",
		["southeast"] = "thd/mudao2",
		["southwest"] = "thd/mudao2",
		["south"] = "thd/mudao2",
		["east"] = "thd/mudao2",
		["northdown"] = "thd/mudao2",
		["southdown"] = "thd/mudao2",
		["west"] = "thd/mudao2",
	},
}
Room {
	id = "thd/mudao3",
	name = "墓道",
	ways = {
		["northup"] = "thd/mudao3",
		["southup"] = "thd/mudao3",
		["northwest"] = "thd/mudao3",
		["north"] = "thd/mudao3",
		["northeast"] = "thd/mudao3",
		["up"] = "thd/mudao1",
		["southeast"] = "thd/mudao3",
		["southwest"] = "thd/mudao3",
		["south"] = "thd/mudao3",
		["east"] = "thd/mudao3",
		["northdown"] = "thd/mudao3",
		["southdown"] = "thd/mudao3",
		["west"] = "thd/mudao3",
	},
}
Room {
	id = "thd/mudao4",
	name = "墓道",
	ways = {
		["down"] = "thd/mushi",
	},
}
Room {
	id = "thd/mushi",
	name = "墓中圹室",
	ways = {
		["up"] = "thd/mudao4",
	},
}
Room {
	id = "thd/neishi1",
	name = "内室",
	ways = {
		["south"] = "thd/zoulang2",
		["east"] = "thd/woshi1",
		["north"] = "thd/neishi2",
		["west"] = "thd/fanting",
	},
}
Room {
	id = "thd/neishi2",
	name = "内室",
	ways = {
		["south"] = "thd/neishi1",
		["east"] = "thd/woshi2",
		["west"] = "thd/chufang",
	},
}
Room {
	id = "thd/niujia/bay",
	name = "小渔港",
	ways = {
		["west"] = "thd/niujia/hbroad",
	},
}
Room {
	id = "thd/niujia/guojia",
	name = "民房",
	ways = {
		["south"] = "thd/niujia/njroad2",
	},
}
Room {
	id = "thd/niujia/hbroad",
	name = "土路",
	ways = {
		["southwest"] = "thd/niujia/njeast",
		["north"] = "thd/niujia/kezhan",
		["east"] = "thd/niujia/bay",
	},
}
Room {
	id = "thd/niujia/jiangpan1",
	name = "江畔",
	ways = {
		["southeast"] = "thd/niujia/jiangpan2",
		["north"] = "thd/niujia/njroad5",
	},
}
Room {
	id = "thd/niujia/jiangpan2",
	name = "江畔",
	ways = {
		["northwest"] = "thd/niujia/jiangpan1",
		["east"] = "thd/niujia/jiangpan3",
	},
}
Room {
	id = "thd/niujia/jiangpan3",
	name = "江畔",
	ways = {
		["west"] = "thd/niujia/jiangpan2",
		["east"] = "thd/haibin",
	},
}
Room {
	id = "thd/niujia/kezhan",
	name = "归来客栈",
	ways = {
		["south"] = "thd/niujia/hbroad",
		-- ["up"] = "thd/niujia/kezhan2",
	},
	nolooks = {
		["up"] = true,
	},
}
Room {
	id = "thd/niujia/kezhan2",
	name = "二楼",
	ways = {
		["east"] = "thd/niujia/kezhan3",
		["down"] = "thd/niujia/kezhan",
	},
}
Room {
	id = "thd/niujia/kezhan3",
	name = "东厢房",
	no_fight = true,
	ways = {
		["west"] = "thd/niujia/kezhan2",
	},
}
Room {
	id = "thd/niujia/kezhan4",
	name = "西厢房",
	ways = {
		["east"] = "thd/niujia/kezhan2",
	},
}
Room {
	id = "thd/niujia/mishi",
	name = "密室",
	ways = {
		["out"] = "thd/niujia/xiaodian",
	},
}
Room {
	id = "thd/niujia/njeast",
	name = "村口",
	ways = {
		["northeast"] = "thd/niujia/hbroad",
		["west"] = "thd/niujia/njroad3",
	},
}
Room {
	id = "thd/niujia/njroad1",
	name = "村中小路",
	ways = {
		["south"] = "thd/niujia/xiaodian",
		["east"] = "thd/niujia/njroad2",
		["west"] = "thd/niujia/njwest",
	},
}
Room {
	id = "thd/niujia/njroad2",
	name = "村中小路",
	ways = {
		["east"] = "thd/niujia/njroad3",
		["north"] = "thd/niujia/guojia",
		["west"] = "thd/niujia/njroad1",
	},
}
Room {
	id = "thd/niujia/njroad3",
	name = "村中小路",
	ways = {
		["south"] = "thd/niujia/njroad4",
		["north"] = "thd/niujia/yangjia",
		["east"] = "thd/niujia/njeast",
		["west"] = "thd/niujia/njroad2",
	},
}
Room {
	id = "thd/niujia/njroad4",
	name = "村中小路",
	ways = {
		["south"] = "thd/niujia/njroad5",
		["north"] = "thd/niujia/njroad3",
	},
}
Room {
	id = "thd/niujia/njroad5",
	name = "村中小路",
	ways = {
		["south"] = "thd/niujia/jiangpan1",
		["north"] = "thd/niujia/njroad4",
	},
}
Room {
	id = "thd/niujia/njwest",
	name = "村口",
	ways = {
		["northwest"] = "thd/niujia/road2",
		["east"] = "thd/niujia/njroad1",
	},
}
Room {
	id = "thd/niujia/road",
	name = "土路",
	ways = {
		["south"] = "group/entry/thdroad1",
		["northwest"] = "hz/qsddao3",
	},
}
Room {
	id = "thd/niujia/road2",
	name = "土路",
	ways = {
		["southeast"] = "thd/niujia/njwest",
		["northwest"] = "group/entry/thdroad1",
	},
}
Room {
	id = "thd/niujia/xiaodian",
	name = "小酒店",
	ways = {
		["north"] = "thd/niujia/njroad1",
	},
}
Room {
	id = "thd/niujia/yangjia",
	name = "民房",
	ways = {
		["south"] = "thd/niujia/njroad3",
	},
}
Room {
	id = "thd/room",
	name = "箫房",
	ways = {
		["out"] = "thd/jicui",
	},
}
Room {
	id = "thd/shangang",
	name = "山冈",
	ways = {
		["south"] = "thd/taohua1",
		["north"] = "thd/caodi",
		["east"] = "thd/bagua1",
		["west"] = "thd/bagua0",
	},
}
Room {
	id = "thd/shanjiao",
	name = "试剑峰山脚",
	ways = {
		["westdown"] = "thd/caodi",
		["up"] = "thd/shanlu1",
	},
}
Room {
	id = "thd/shanlu1",
	name = "山路",
	ways = {
		["northup"] = "thd/shanlu2",
		["down"] = "thd/shanjiao",
	},
}
Room {
	id = "thd/shanlu2",
	name = "山路",
	ways = {
		["eastup"] = "thd/shanyao",
		["southdown"] = "thd/shanlu1",
	},
}
Room {
	id = "thd/shanya",
	name = "断崖",
	ways = {
		["westdown"] = "thd/shanyao",
	},
}
Room {
	id = "thd/shanyao",
	name = "半山腰",
	ways = {
		["eastup"] = "thd/shanya",
		["westdown"] = "thd/shanlu2",
	},
}
Room {
	id = "thd/shaoyang",
	name = "少阳",
	ways = {
		["east"] = "thd/sixiang",
		["down"] = "thd/jin",
	},
}
Room {
	id = "thd/shaoyin",
	name = "少阴",
	ways = {
		["down"] = "thd/mu",
		["west"] = "thd/sixiang",
	},
}
Room {
	id = "thd/shidi",
	name = "小石堤",
	ways = {
		["south"] = "thd/hetang",
		["north"] = "thd/shilu",
	},
}
Room {
	id = "thd/shijian-ting",
	name = "试剑亭",
	ways = {
		["north"] = "thd/kefang1",
		["east"] = "thd/caodi",
	},
}
Room {
	id = "thd/shilu",
	name = "石路",
	ways = {
		["south"] = "thd/shidi",
		["north"] = "thd/jingshe",
		["east"] = "thd/bookroom",
		["west"] = "thd/hall",
	},
}
Room {
	id = "thd/shore",
	name = "岸边",
	ways = {
		["northup"] = "thd/hill",
	},
}
Room {
	id = "thd/shui",
	name = "水",
	ways = {
		["huo"] = "thd/huo",
		["jin"] = "thd/jin",
		["tu"] = "thd/tu",
		["mu"] = "thd/mu",
	},
}
Room {
	id = "thd/sixiang",
	name = "四象",
	ways = {
		["south"] = "thd/taiyang",
		["down"] = "thd/tu",
		["north"] = "thd/taiyin",
		["east"] = "thd/shaoyin",
		["west"] = "thd/shaoyang",
	},
}
Room {
	id = "thd/taiji",
	name = "太极",
	ways = {
		["down"] = "thd/liangyi",
	},
}
Room {
	id = "thd/taiyang",
	name = "太阳",
	ways = {
		["north"] = "thd/sixiang",
		["down"] = "thd/huo",
	},
}
Room {
	id = "thd/taiyin",
	name = "太阴",
	ways = {
		["south"] = "thd/sixiang",
		["down"] = "thd/shui",
	},
}
Room {
	id = "thd/taohua1",
	name = "桃花阵",
	ways = {
		["#outThz"] = "thd/xiaoyuan",
	},
	lengths = {
		["#outThz"] = 1000,
	},
	nolooks = {
		["east"] = true,
		["west"] = true,
		["north"] = true,
		["south"] = true,
		["#outThz"] = true,
	},
}
Room {
	id = "thd/tomb",
	name = "石坟",
	ways = {
		["south"] = "thd/taohua1",
		["east"] = "thd/taohua1",
		["north"] = "thd/taohua1",
		["west"] = "thd/taohua1",
	},
}
Room {
	id = "thd/tu",
	name = "土",
	ways = {
		["huo"] = "thd/huo",
		["jin"] = "thd/jin",
		["shui"] = "thd/shui",
		["mu"] = "thd/mu",
	},
}
Room {
	id = "thd/woshi1",
	name = "卧室",
	ways = {
		["west"] = "thd/neishi1",
	},
}
Room {
	id = "thd/woshi2",
	name = "卧室",
	ways = {
		["west"] = "thd/neishi2",
	},
}
Room {
	id = "thd/xiaoyuan",
	name = "小院",
	ways = {
		["south"] = "thd/taohua1",
		["north"] = "thd/jicui",
		["east"] = "thd/bagua1",
		["west"] = "thd/bagua0",
	},
}
Room {
	id = "thd/xiuxishi-f",
	name = "女休息室",
	no_fight = true,
	ways = {
		["north"] = "thd/lianwuchang",
	},
}
Room {
	id = "thd/xiuxishi-m",
	name = "男休息室",
	no_fight = true,
	ways = {
		["south"] = "thd/lianwuchang",
	},
}
Room {
	id = "thd/yang",
	name = "阳",
	ways = {
		["northeast"] = "thd/liangyi",
	},
}
Room {
	id = "thd/yin",
	name = "阴",
	ways = {
		["southwest"] = "thd/liangyi",
	},
}
Room {
	id = "thd/zhulin1",
	name = "绿竹林",
	ways = {
		["south"] = "thd/caodi",
		["north"] = "thd/jicui",
	},
	nolooks = {
		["north"] = true,
		["west"] = true,
		["east"] = true,
	},
	lengths = {
		["north"] = "if getCha()['qimen-bagua'].level > 80 then return 1 else return false end",
	},
}
Room {
	id = "thd/zhulin10",
	name = "绿竹林",
	ways = {
		["north"] = "thd/zhulin11",
	},
}
Room {
	id = "thd/zhulin11",
	name = "绿竹林",
	ways = {
		["south"] = "thd/jicui",
	},
}
Room {
	id = "thd/zhulin12",
	name = "绿竹林",
	ways = {
		["west"] = "thd/hetang",
	},
	nolooks = {
		["west"] = true,
		["east"] = true,
		["north"] = true,
		["south"] = true,
	},
}
Room {
	id = "thd/zhulin13",
	name = "绿竹林",
	ways = {
		["north"] = "thd/zhulin14",
	},
}
Room {
	id = "thd/zhulin14",
	name = "绿竹林",
	ways = {
		["south"] = "thd/zhulin15",
	},
}
Room {
	id = "thd/zhulin15",
	name = "绿竹林",
	ways = {
		["south"] = "thd/zhulin16",
	},
}
Room {
	id = "thd/zhulin16",
	name = "绿竹林",
	ways = {
		["north"] = "thd/zhulin16",
	},
}
Room {
	id = "thd/zhulin17",
	name = "绿竹林",
	ways = {
		["east"] = "thd/zhulin18",
	},
}
Room {
	id = "thd/zhulin18",
	name = "绿竹林",
	ways = {
		["west"] = "thd/zhulin19",
	},
}
Room {
	id = "thd/zhulin19",
	name = "绿竹林",
	ways = {
		["north"] = "thd/zhulin20",
	},
}
Room {
	id = "thd/zhulin2",
	name = "绿竹林",
	ways = {
		["south"] = "thd/zhulin3",
	},
}
Room {
	id = "thd/zhulin20",
	name = "绿竹林",
	ways = {
		["north"] = "thd/hetang",
	},
}
Room {
	id = "thd/zhulin21",
	name = "绿竹林",
	ways = {
		["south"] = "thd/caodi",
	},
	nolooks = {
		["south"] = true,
	},
	lengths = {
		["south"] = "if getCha()['qimen-bagua'].level > 80 then return 1 else return false end",
	},
}
Room {
	id = "thd/zhulin22",
	name = "绿竹林",
	ways = {
		["south"] = "thd/zhulin23",
	},
}
Room {
	id = "thd/zhulin23",
	name = "绿竹林",
	ways = {
		["west"] = "thd/zhulin24",
	},
}
Room {
	id = "thd/zhulin24",
	name = "绿竹林",
	ways = {
		["north"] = "thd/zhulin25",
	},
}
Room {
	id = "thd/zhulin25",
	name = "绿竹林",
	ways = {
		["south"] = "thd/caodi",
	},
}
Room {
	id = "thd/zhulin3",
	name = "绿竹林",
	ways = {
		["west"] = "thd/zhulin4",
	},
}
Room {
	id = "thd/zhulin4",
	name = "绿竹林",
	ways = {
		["east"] = "thd/zhulin5",
	},
}
Room {
	id = "thd/zhulin5",
	name = "绿竹林",
	ways = {
		["north"] = "thd/zhulin6",
	},
}
Room {
	id = "thd/zhulin6",
	name = "绿竹林",
	ways = {
		["north"] = "thd/zhulin7",
	},
}
Room {
	id = "thd/zhulin7",
	name = "绿竹林",
	ways = {
		["south"] = "thd/zhulin8",
	},
}
Room {
	id = "thd/zhulin8",
	name = "绿竹林",
	ways = {
		["east"] = "thd/zhulin9",
	},
}
Room {
	id = "thd/zhulin9",
	name = "绿竹林",
	ways = {
		["west"] = "thd/zhulin10",
	},
}
Room {
	id = "thd/zoulang1",
	name = "回廊",
	ways = {
		["north"] = "thd/zoulang2",
		["east"] = "thd/hall",
		["west"] = "thd/zoulang3",
	},
}
Room {
	id = "thd/zoulang2",
	name = "回廊",
	ways = {
		["south"] = "thd/zoulang1",
		["north"] = "thd/neishi1",
	},
}
Room {
	id = "thd/zoulang3",
	name = "回廊",
	ways = {
		["east"] = "thd/zoulang1",
		["west"] = "thd/lianwuchang",
	},
}
Room {
	id = "tianshan/banshan",
	name = "半山",
	ways = {
		["southdown"] = "tianshan/shanlu4",
		["west"] = "tianshan/duanhunya",
	},
}
Room {
	id = "tianshan/bctang",
	name = "百草堂",
	ways = {
		["south"] = "tianshan/zoulang3",
	},
}
Room {
	id = "tianshan/bqshi",
	name = "兵器室",
	ways = {
		["north"] = "tianshan/zoulang2",
	},
}
Room {
	id = "tianshan/bzhanjian",
	name = "百丈涧",
	ways = {
		["south"] = "tianshan/shizhuyan",
		["#toXcm"] = "tianshan/xcmen",
	},
	nolooks = {
		["#toXcm"] = true,
	},
	lengths = {
		["#toXcm"] = "if getDodge() < 100 then return false else return 20 end",
	},
}
Room {
	id = "tianshan/chtbu",
	name = "成天部",
	ways = {
		["eastdown"] = "tianshan/dadao9",
	},
}
Room {
	id = "tianshan/chufang",
	name = "厨房",
	ways = {
		["east"] = "tianshan/qiandian",
	},
}
Room {
	id = "tianshan/ctbu",
	name = "赤天部",
	ways = {
		["northdown"] = "tianshan/dadao3",
		["southdown"] = "tianshan/dadao2",
	},
}
Room {
	id = "tianshan/dadao1",
	name = "青石大道",
	ways = {
		["southup"] = "tianshan/pmfeng",
		["north"] = "tianshan/dadao2",
	},
}
Room {
	id = "tianshan/dadao10",
	name = "青石大道",
	ways = {
		["southwest"] = "tianshan/zhtbu",
		["north"] = "tianshan/dadao9",
		["east"] = "tianshan/dadao3",
	},
}
Room {
	id = "tianshan/dadao2",
	name = "青石大道",
	ways = {
		["northup"] = "tianshan/ctbu",
		["south"] = "tianshan/dadao1",
	},
}
Room {
	id = "tianshan/dadao3",
	name = "青石大道",
	ways = {
		["northup"] = "tianshan/jtbu",
		["southup"] = "tianshan/ctbu",
		["east"] = "tianshan/dadao4",
		["west"] = "tianshan/dadao10",
	},
}
Room {
	id = "tianshan/dadao4",
	name = "青石大道",
	ways = {
		["southeast"] = "tianshan/ytbu",
		["north"] = "tianshan/dadao5",
		["west"] = "tianshan/dadao3",
	},
}
Room {
	id = "tianshan/dadao5",
	name = "青石大道",
	ways = {
		["eastup"] = "tianshan/htbu",
		["westup"] = "tianshan/jtbu",
		["south"] = "tianshan/dadao4",
		["north"] = "tianshan/dadao6",
	},
}
Room {
	id = "tianshan/dadao6",
	name = "青石大道",
	ways = {
		["south"] = "tianshan/dadao5",
		["northeast"] = "tianshan/rtbu",
		["west"] = "tianshan/dadao7",
	},
}
Room {
	id = "tianshan/dadao7",
	name = "青石大道",
	ways = {
		["northup"] = "tianshan/xtbu",
		["southup"] = "tianshan/jtbu",
		["east"] = "tianshan/dadao6",
		["west"] = "tianshan/dadao8",
	},
}
Room {
	id = "tianshan/dadao8",
	name = "青石大道",
	ways = {
		["south"] = "tianshan/dadao9",
		["northwest"] = "tianshan/youtbu",
		["east"] = "tianshan/dadao7",
	},
}
Room {
	id = "tianshan/dadao9",
	name = "青石大道",
	ways = {
		["eastup"] = "tianshan/jtbu",
		["westup"] = "tianshan/chtbu",
		["south"] = "tianshan/dadao10",
		["north"] = "tianshan/dadao8",
	},
}
Room {
	id = "tianshan/dadian",
	name = "大殿",
	ways = {
		["south"] = "tianshan/zoulang1",
		["north"] = "tianshan/zoulang6",
		["east"] = "tianshan/zoulang2",
		["west"] = "tianshan/zoulang4",
	},
}
Room {
	id = "tianshan/dsqiao",
	name = "断水桥",
	ways = {
		["south"] = "tianshan/gyting",
		["east"] = "tianshan/jiashan",
		["west"] = "tianshan/huayuan",
	},
}
Room {
	id = "tianshan/duanhunya",
	name = "断魂崖",
	ways = {
		["northup"] = "tianshan/shizhuyan",
		["westdown"] = "tianshan/shanjian",
		["east"] = "tianshan/banshan",
	},
}
Room {
	id = "tianshan/fjshi",
	name = "防具室",
	ways = {
		["south"] = "tianshan/zoulang2",
	},
}
Room {
	id = "tianshan/fqzong",
	name = "封器冢",
	ways = {
		["south"] = "tianshan/zoulang5",
	},
}
Room {
	id = "tianshan/gyting",
	name = "观雨亭",
	ways = {
		["south"] = "tianshan/houyuan",
		["north"] = "tianshan/dsqiao",
	},
}
Room {
	id = "tianshan/houyuan",
	name = "后园",
	ways = {
		["south"] = "tianshan/zoulang6",
		["north"] = "tianshan/gyting",
	},
}
Room {
	id = "tianshan/htbu",
	name = "昊天部",
	ways = {
		["westdown"] = "tianshan/dadao5",
	},
}
Room {
	id = "tianshan/huayuan",
	name = "花园",
	ways = {
		["east"] = "tianshan/dsqiao",
	},
}
Room {
	id = "tianshan/jiashan",
	name = "假山",
	ways = {
		["west"] = "tianshan/dsqiao",
	},
}
Room {
	id = "tianshan/jtbu",
	name = "钧天部",
	ways = {
		["eastdown"] = "tianshan/dadao5",
		["westdown"] = "tianshan/dadao9",
		["enter"] = "tianshan/ljgong",
		["northdown"] = "tianshan/dadao7",
		["southdown"] = "tianshan/dadao3",
	},
}
Room {
	id = "tianshan/kefang",
	name = "客房",
	no_fight = true,
	ways = {
		["south"] = "tianshan/zoulang4",
	},
}
Room {
	id = "tianshan/kongchang",
	name = "空场",
	ways = {
		["east"] = "xingxiu/tianshan",
		["west"] = "tianshan/shanlu1",
	},
}
Room {
	id = "tianshan/lgfang",
	name = "练功房",
	ways = {
		["north"] = "tianshan/zoulang3",
	},
}
Room {
	id = "tianshan/ljgong",
	name = "灵鹫宫",
	ways = {
		["north"] = "tianshan/qiandian",
		["out"] = "tianshan/jtbu",
	},
}
Room {
	id = "tianshan/longtan",
	name = "龙潭",
	no_fight = true,
	ways = {
		["up"] = "tianshan/duanhunya",
	},
}
Room {
	id = "tianshan/lxzai",
	name = "灵心斋",
	ways = {
		["north"] = "tianshan/zoulang4",
	},
}
Room {
	id = "tianshan/pmfeng",
	name = "缥缈峰",
	ways = {
		["northdown"] = "tianshan/dadao1",
		["southdown"] = "tianshan/shanjin6",
	},
}
Room {
	id = "tianshan/qiandian",
	name = "前殿",
	ways = {
		["south"] = "tianshan/ljgong",
		["north"] = "tianshan/zoulang1",
		["west"] = "tianshan/chufang",
	},
}
Room {
	id = "tianshan/qinshi",
	name = "寝室",
	ways = {
		["north"] = "tianshan/zoulang5",
	},
}
Room {
	id = "tianshan/rtbu",
	name = "鸾天部",
	ways = {
		["southwest"] = "tianshan/dadao6",
	},
}
Room {
	id = "tianshan/shandao1",
	name = "山道",
	ways = {
		["south"] = "tianshan/shandao1",
		["east"] = "tianshan/shandao1",
		["north"] = "tianshan/shandao1",
		["west"] = "tianshan/shandao1",
		["#outSd"] = "tianshan/shanjin2",
	},
	nolooks = {
		["#outSd"] = true,
	},
	lengths = {
		["#outSd"] = 20,
	},
}
Room {
	id = "tianshan/shanjian",
	name = "山涧",
	ways = {
		["east;eastdown;eastup;north;northdown;northeast;northup;northwest;south;southdown;southeast;southup;southwest;west;westdown;westup"] = "tianshan/longtan",
	},
	nolooks = {
		["east;eastdown;eastup;north;northdown;northeast;northup;northwest;south;southdown;southeast;southup;southwest;west;westdown;westup"] = true,
		["east"] = true,
		["eastdown"] = true,
		["eastup"] = true,
		["north"] = true,
		["northdown"] = true,
		["northeast"] = true,
		["northup"] = true,
		["northwest"] = true,
		["south"] = true,
		["southdown"] = true,
		["southeast"] = true,
		["southup"] = true,
		["southwest"] = true,
		["west"] = true,
		["westdown"] = true,
		["westup"] = true,
	},
	lengths = {
		["east;eastdown;eastup;north;northdown;northeast;northup;northwest;south;southdown;southeast;southup;southwest;west;westdown;westup"] = 16,
	},
}
Room {
	id = "tianshan/shanjin1",
	name = "山径",
	ways = {
		["northup"] = "tianshan/shanjin2",
		["southdown"] = "tianshan/xcmen",
	},
}
Room {
	id = "tianshan/shanjin2",
	name = "山径",
	ways = {
		["east"] = "tianshan/shanjin3",
		["southdown"] = "tianshan/shanjin1",
	},
}
Room {
	id = "tianshan/shanjin3",
	name = "山径",
	ways = {
		["east"] = "tianshan/shanjin4",
		["west"] = "tianshan/shanjin2",
	},
}
Room {
	id = "tianshan/shanjin4",
	name = "山径",
	ways = {
		["east"] = "tianshan/shanjin5",
		["west"] = "tianshan/shanjin3",
	},
}
Room {
	id = "tianshan/shanjin5",
	name = "山径",
	ways = {
		["northup"] = "tianshan/shanjin6",
		["west"] = "tianshan/shanjin4",
	},
}
Room {
	id = "tianshan/shanjin6",
	name = "山径",
	ways = {
		["northup"] = "tianshan/pmfeng",
		["southdown"] = "tianshan/shanjin5",
	},
}
Room {
	id = "tianshan/shanlu1",
	name = "天山山路",
	ways = {
		["northup"] = "tianshan/shanlu2",
		["east"] = "tianshan/kongchang",
	},
}
Room {
	id = "tianshan/shanlu2",
	name = "山路",
	ways = {
		["northup"] = "tianshan/shanlu3",
		["southdown"] = "tianshan/shanlu1",
	},
}
Room {
	id = "tianshan/shanlu3",
	name = "山路",
	ways = {
		["northup"] = "tianshan/shanlu4",
		["southdown"] = "tianshan/shanlu2",
	},
}
Room {
	id = "tianshan/shanlu4",
	name = "山路",
	ways = {
		["northup"] = "tianshan/banshan",
		["southdown"] = "tianshan/shanlu3",
	},
}
Room {
	id = "tianshan/shanyao",
	name = "山腰",
	ways = {
		["south"] = "tianshan/shanyao",
		["east"] = "tianshan/shanyao",
		["north"] = "tianshan/shanyao",
		["west"] = "tianshan/shanyao",
	},
}
Room {
	id = "tianshan/shiku",
	name = "石窟",
	ways = {
		["south"] = "tianshan/shiku",
		["east"] = "tianshan/shiku",
		["north"] = "tianshan/shiku",
		["west"] = "tianshan/shiku",
	},
}
Room {
	id = "tianshan/shizhuyan",
	name = "失足岩",
	ways = {
		["north"] = "tianshan/bzhanjian",
		["southdown"] = "tianshan/duanhunya",
	},
}
Room {
	id = "tianshan/xcmen",
	name = "仙愁门",
	ways = {
		["northup"] = "tianshan/shanjin1",
		["jump duimian;#waitbusy"] = "tianshan/bzhanjian",
	},
	nolooks = {
		["jump duimian;#waitbusy"] = true,
	},
	lengths = {
		["jump duimian;#waitbusy"] = "if getDodge() < 100 then return false else return 10 end",
	},
}
Room {
	id = "tianshan/xtbu",
	name = "玄天部",
	ways = {
		["southdown"] = "tianshan/dadao7",
	},
}
Room {
	id = "tianshan/youtbu",
	name = "幽天部",
	ways = {
		["southeast"] = "tianshan/dadao8",
	},
}
Room {
	id = "tianshan/ytbu",
	name = "阳天部",
	ways = {
		["northwest"] = "tianshan/dadao4",
	},
}
Room {
	id = "tianshan/zhtbu",
	name = "朱天部",
	ways = {
		["northeast"] = "tianshan/dadao10",
	},
}
Room {
	id = "tianshan/zoulang1",
	name = "走廊",
	ways = {
		["south"] = "tianshan/qiandian",
		["north"] = "tianshan/dadian",
	},
}
Room {
	id = "tianshan/zoulang2",
	name = "走廊",
	ways = {
		["south"] = "tianshan/bqshi",
		["east"] = "tianshan/zoulang3",
		["north"] = "tianshan/fjshi",
		["west"] = "tianshan/dadian",
	},
}
Room {
	id = "tianshan/zoulang3",
	name = "走廊",
	ways = {
		["south"] = "tianshan/lgfang",
		["north"] = "tianshan/bctang",
		["west"] = "tianshan/zoulang2",
	},
}
Room {
	id = "tianshan/zoulang4",
	name = "走廊",
	ways = {
		["south"] = "tianshan/lxzai",
		["north"] = "tianshan/kefang",
		["east"] = "tianshan/dadian",
		["west"] = "tianshan/zoulang5",
	},
}
Room {
	id = "tianshan/zoulang5",
	name = "走廊",
	ways = {
		["south"] = "tianshan/qinshi",
		["east"] = "tianshan/zoulang4",
		["north"] = "tianshan/fqzong",
	},
}
Room {
	id = "tianshan/zoulang6",
	name = "走廊",
	ways = {
		["south"] = "tianshan/dadian",
		["north"] = "tianshan/houyuan",
	},
}
Room {
	id = "tiezhang/bqshi",
	name = "兵器室",
	ways = {
		["south"] = "tiezhang/zoulang-1",
	},
}
Room {
	id = "tiezhang/chufang",
	name = "厨房",
	no_fight = true,
	ways = {
		["south"] = "tiezhang/zoulang-3",
	},
}
Room {
	id = "tiezhang/dashishi",
	name = "大石室",
	ways = {
		["out"] = "tiezhang/taijie-2",
	},
}
Room {
	id = "tiezhang/dezj",
	name = "第二指节",
	ways = {
		["northup"] = "tiezhang/shanlu-8",
		["south"] = "tiezhang/sslin-5",
		["enter"] = "tiezhang/dong-1",
	},
	blocks = {
		["enter"] = {
			{id = "huang lingtian", exp = 600000},
			{id = "ling zhentian", exp = 500000},
		},
	},
}
Room {
	id = "tiezhang/dong-1",
	name = "山洞",
	ways = {
		["enter"] = "tiezhang/dong-2",
		["out"] = "tiezhang/dezj",
	},
}
Room {
	id = "tiezhang/dong-2",
	name = "山洞",
	ways = {
		["enter"] = "tiezhang/dong-3",
		["out"] = "tiezhang/dong-1",
	},
}
Room {
	id = "tiezhang/dong-3",
	name = "山洞",
	ways = {
		["enter"] = "tiezhang/trdx",
		["out"] = "tiezhang/dong-2",
	},
}
Room {
	id = "tiezhang/gjfang",
	name = "工具房",
	ways = {
		["west"] = "tiezhang/zoulang-4",
	},
}
Room {
	id = "tiezhang/guajia",
	name = "瓜架",
	ways = {
		["southeast"] = "tiezhang/shuijing",
		["west"] = "tiezhang/guangchang",
	},
}
Room {
	id = "tiezhang/guangchang",
	name = "广场",
	ways = {
		["northup"] = "tiezhang/wztang",
		["south"] = "tiezhang/shanlu-2",
		["east"] = "tiezhang/guajia",
		["west"] = "tiezhang/lgfang",
	},
	precmds = {
		["northup"] = "halt",
		["south"] = "halt",
		["east"] = "halt",
		["west"] = "halt",
	},
	postcmds = {
		["northup"] = "halt",
	},
}
Room {
	id = "tiezhang/hclu",
	name = "荒草路",
	ways = {
		["northup"] = "tiezhang/hclu-2",
		["southeast"] = "tiezhang/pingtai",
	},
}
Room {
	id = "tiezhang/hclu-2",
	name = "荒草路",
	ways = {
		["northwest"] = "tiezhang/hclu-3",
		["southdown"] = "tiezhang/hclu",
	},
}
Room {
	id = "tiezhang/hclu-3",
	name = "荒草路",
	ways = {
		["northup"] = "tiezhang/hclu-4",
		["southeast"] = "tiezhang/hclu-2",
	},
}
Room {
	id = "tiezhang/hclu-4",
	name = "荒草路",
	ways = {
		["northup"] = "tiezhang/hclu-5",
		["southdown"] = "tiezhang/hclu-3",
	},
}
Room {
	id = "tiezhang/hclu-5",
	name = "荒草路",
	ways = {
		["northwest"] = "tiezhang/hclu-6",
		["southdown"] = "tiezhang/hclu-4",
	},
}
Room {
	id = "tiezhang/hclu-6",
	name = "荒草路",
	ways = {
		["northup"] = "tiezhang/wmfeng",
		["southeast"] = "tiezhang/hclu-5",
	},
}
Room {
	id = "tiezhang/hhyang-2",
	name = "花圃",
	ways = {
		["west"] = "tiezhang/hhyuan-1",
	},
}
Room {
	id = "tiezhang/hhyuan-1",
	name = "后花园",
	ways = {
		["south"] = "tiezhang/hxfang",
		["north"] = "tiezhang/shanlu-3",
		["east"] = "tiezhang/hhyang-2",
		["west"] = "tiezhang/hhyuan-3",
	},
}
Room {
	id = "tiezhang/hhyuan-3",
	name = "假山",
	ways = {
		["east"] = "tiezhang/hhyuan-1",
	},
}
Room {
	id = "tiezhang/hxfang",
	name = "后厢房",
	ways = {
		["south"] = "tiezhang/wztang",
		["north"] = "tiezhang/hhyuan-1",
	},
}
Room {
	id = "tiezhang/juebi-1",
	name = "绝壁",
	ways = {
		["southwest"] = "tiezhang/shangu-2",
	},
}
Room {
	id = "tiezhang/kedian",
	name = "客店",
	ways = {
		["east"] = "tiezhang/lx",
		-- ["up"] = "tiezhang/kedian2",
	},
	nolooks = {
		["up"] = true,
	},
}
Room {
	id = "tiezhang/kedian2",
	name = "客店二楼",
	ways = {
		["enter"] = "tiezhang/kedian3",
		["down"] = "tiezhang/kedian",
	},
}
Room {
	id = "tiezhang/kedian3",
	name = "客店二楼",
	no_fight = true,
	ways = {
		["out"] = "tiezhang/kedian2",
	},
}
Room {
	id = "tiezhang/lgfang",
	name = "练功房",
	ways = {
		["east"] = "tiezhang/guangchang",
	},
}
Room {
	id = "tiezhang/lx",
	name = "泸溪",
	ways = {
		["southwest"] = "tiezhang/road-1",
		["north"] = "xiangyang/hunanroad2",
		["west"] = "tiezhang/kedian",
	},
}
Room {
	id = "tiezhang/mishi",
	name = "密室",
	ways = {
		["out"] = "tiezhang/hhyuan-3",
	},
}
Room {
	id = "tiezhang/mzfeng",
	name = "拇指峰",
	ways = {
		["southdown"] = "tiezhang/sslu-3",
	},
}
Room {
	id = "tiezhang/pingtai",
	name = "山间平台",
	ways = {
		["northup"] = "tiezhang/shanlu-6",
		["eastup"] = "tiezhang/sslu-1",
		["westup"] = "tiezhang/shanlu-5",
		["northwest"] = "tiezhang/hclu",
		["northeast"] = "tiezhang/shangu-1",
		["southdown"] = "tiezhang/shanlu-4",
	},
}
Room {
	id = "tiezhang/pubu",
	name = "瀑布",
	ways = {
		["northup"] = "tiezhang/xzfeng",
		["eastdown"] = "tiezhang/sblu-1",
	},
}
Room {
	id = "tiezhang/road-1",
	name = "黄土路",
	ways = {
		["southwest"] = "tiezhang/road-2",
		["northeast"] = "tiezhang/lx",
	},
}
Room {
	id = "tiezhang/road-2",
	name = "黄土路",
	ways = {
		["northeast"] = "tiezhang/road-1",
		["west"] = "tiezhang/road-3",
	},
}
Room {
	id = "tiezhang/road-3",
	name = "黄土路",
	ways = {
		["northwest"] = "tiezhang/shanjiao",
		["east"] = "tiezhang/road-2",
	},
}
Room {
	id = "tiezhang/sblu-1",
	name = "石板路",
	ways = {
		["eastdown"] = "tiezhang/shanlu-5",
		["westup"] = "tiezhang/pubu",
	},
}
Room {
	id = "tiezhang/shangu-1",
	name = "山谷",
	ways = {
		["southwest"] = "tiezhang/pingtai",
		["northeast"] = "tiezhang/shangu-2",
	},
}
Room {
	id = "tiezhang/shangu-2",
	name = "山谷",
	ways = {
		["southwest"] = "tiezhang/shangu-1",
		["northeast"] = "tiezhang/juebi-1",
	},
}
Room {
	id = "tiezhang/shanjiao",
	name = "山脚下",
	ways = {
		["northup"] = "tiezhang/shanmen",
		["southeast"] = "tiezhang/road-3",
	},
}
Room {
	id = "tiezhang/shanlu-1",
	name = "山路",
	ways = {
		["north"] = "tiezhang/shanlu-2",
		["southdown"] = "tiezhang/shanmen",
	},
}
Room {
	id = "tiezhang/shanlu-2",
	name = "山路",
	ways = {
		["south"] = "tiezhang/shanlu-1",
		["north"] = "tiezhang/guangchang",
	},
}
Room {
	id = "tiezhang/shanlu-3",
	name = "山路",
	ways = {
		["northup"] = "tiezhang/shanlu-4",
		["south"] = "tiezhang/hhyuan-1",
	},
}
Room {
	id = "tiezhang/shanlu-4",
	name = "山路",
	ways = {
		["northup"] = "tiezhang/pingtai",
		["southdown"] = "tiezhang/shanlu-3",
	},
}
Room {
	id = "tiezhang/shanlu-5",
	name = "石板路",
	ways = {
		["eastdown"] = "tiezhang/pingtai",
		["westup"] = "tiezhang/sblu-1",
	},
}
Room {
	id = "tiezhang/shanlu-6",
	name = "山路",
	ways = {
		["northup"] = "tiezhang/shanlu-7",
		["southdown"] = "tiezhang/pingtai",
	},
}
Room {
	id = "tiezhang/shanlu-7",
	name = "山路",
	ways = {
		["north"] = "tiezhang/sslin-1",
		["southdown"] = "tiezhang/shanlu-6",
	},
}
Room {
	id = "tiezhang/shanlu-8",
	name = "山路",
	ways = {
		["northup"] = "tiezhang/shanlu-9",
		["southdown"] = "tiezhang/dezj",
	},
}
Room {
	id = "tiezhang/shanlu-9",
	name = "山路",
	ways = {
		["northup"] = "tiezhang/zzfeng",
		["southdown"] = "tiezhang/shanlu-8",
	},
}
Room {
	id = "tiezhang/shanmen",
	name = "山门",
	ways = {
		["northup"] = "tiezhang/shanlu-1",
		["east"] = "tiezhang/zhaigou3",
		["southdown"] = "tiezhang/shanjiao",
		["west"] = "tiezhang/zhaigou1",
	},
	blocks = {
		["northup"] = {
			{id = "heiyi bangzhong", exp = 60000, party = "铁掌帮"},
		},
	},
}
Room {
	id = "tiezhang/shijie-1",
	name = "石阶",
	ways = {
		["eastdown"] = "tiezhang/shijie-2",
		["out"] = "tiezhang/wmfeng",
	},
}
Room {
	id = "tiezhang/shijie-2",
	name = "石阶",
	ways = {
		["westup"] = "tiezhang/shijie-1",
		["northdown"] = "tiezhang/shijie-3",
	},
}
Room {
	id = "tiezhang/shijie-3",
	name = "石阶",
	ways = {
		["southup"] = "tiezhang/shijie-2",
		["westdown"] = "tiezhang/shishi",
	},
}
Room {
	id = "tiezhang/shishi",
	name = "石室",
	ways = {
		["eastup"] = "tiezhang/shijie-3",
	},
}
Room {
	id = "tiezhang/shufang",
	name = "书房",
	ways = {
		["south"] = "tiezhang/zoulang-2",
	},
}
Room {
	id = "tiezhang/shuijing",
	name = "蝴蝶泉",
	ways = {
		["northwest"] = "tiezhang/guajia",
	},
}
Room {
	id = "tiezhang/sslin-1",
	name = "松树林",
	ways = {
		["south"] = "tiezhang/shanlu-7",
		["north"] = "tiezhang/sslin-1",
		["east"] = "tiezhang/sslin-2",
		["west"] = "tiezhang/sslin-1",
	},
}
Room {
	id = "tiezhang/sslin-2",
	name = "松树林",
	ways = {
		["south"] = "tiezhang/sslin-2",
		["north"] = "tiezhang/sslin-3",
		["east"] = "tiezhang/sslin-2",
		["west"] = "tiezhang/sslin-1",
	},
}
Room {
	id = "tiezhang/sslin-3",
	name = "松树林",
	ways = {
		["south"] = "tiezhang/sslin-2",
		["north"] = "tiezhang/sslin-3",
		["east"] = "tiezhang/sslin-3",
		["west"] = "tiezhang/sslin-4",
	},
}
Room {
	id = "tiezhang/sslin-4",
	name = "松树林",
	ways = {
		["south"] = "tiezhang/sslin-4",
		["north"] = "tiezhang/sslin-5",
		["east"] = "tiezhang/sslin-3",
		["west"] = "tiezhang/sslin-4",
	},
}
Room {
	id = "tiezhang/sslin-5",
	name = "松树林",
	ways = {
		["south"] = "tiezhang/sslin-4",
		["east"] = "tiezhang/sslin-5",
		["north"] = "tiezhang/dezj",
		["west"] = "tiezhang/sslin-5",
	},
}
Room {
	id = "tiezhang/sslu-1",
	name = "碎石路",
	ways = {
		["eastup"] = "tiezhang/sslu-2",
		["westdown"] = "tiezhang/pingtai",
	},
}
Room {
	id = "tiezhang/sslu-2",
	name = "碎石路",
	ways = {
		["eastup"] = "tiezhang/sslu-3",
		["westdown"] = "tiezhang/sslu-1",
	},
}
Room {
	id = "tiezhang/sslu-3",
	name = "碎石路",
	ways = {
		["northup"] = "tiezhang/mzfeng",
		["westdown"] = "tiezhang/sslu-2",
	},
}
Room {
	id = "tiezhang/taijie-1",
	name = "石阶",
	ways = {
		["westdown"] = "tiezhang/taijie-2",
		["out"] = "tiezhang/trdx",
	},
}
Room {
	id = "tiezhang/taijie-2",
	name = "石阶",
	ways = {
		["eastup"] = "tiezhang/taijie-1",
	},
}
Room {
	id = "tiezhang/trdx",
	name = "天然洞穴",
	ways = {
		["out"] = "tiezhang/dong-3",
	},
}
Room {
	id = "tiezhang/wmfeng",
	name = "无名峰",
	ways = {
		["southdown"] = "tiezhang/hclu-6",
	},
}
Room {
	id = "tiezhang/wztang",
	name = "五指堂",
	ways = {
		["east"] = "tiezhang/zoulang-1",
		["north"] = "tiezhang/hxfang",
		["southdown"] = "tiezhang/guangchang",
		["west"] = "tiezhang/zoulang-2",
	},
	precmds = {
		["east"] = "halt",
		["north"] = "halt",
		["southdown"] = "halt",
		["west"] = "halt",
	},
	postcmds = {
		["southdown"] = "halt",
	},
	blocks = {
		["east"] = {
			{id = "hong xiaotian", exp = 500000, party = "铁掌帮"},
		},
		["west"] = {
			{id = "hong xiaotian", exp = 500000, party = "铁掌帮"},
		},
		["north"] = {
			{id = "hong xiaotian", exp = 500000, party = "铁掌帮"},
		},
	},
}
Room {
	id = "tiezhang/xxsnan",
	name = "男休息室",
	no_fight = true,
	ways = {
		["south"] = "tiezhang/zoulang-4",
	},
}
Room {
	id = "tiezhang/xxsnv",
	name = "女休息室",
	no_fight = true,
	ways = {
		["north"] = "tiezhang/zoulang-4",
	},
}
Room {
	id = "tiezhang/xzfeng",
	name = "小指峰",
	ways = {
		["southdown"] = "tiezhang/pubu",
	},
}
Room {
	id = "tiezhang/zhaigou1",
	name = "寨沟",
	ways = {
		["east"] = "tiezhang/shanmen",
		["west"] = "tiezhang/zhaigou2",
	},
}
Room {
	id = "tiezhang/zhaigou2",
	name = "寨沟",
	ways = {
		["east"] = "tiezhang/zhaigou1",
	},
}
Room {
	id = "tiezhang/zhaigou3",
	name = "寨沟",
	ways = {
		["east"] = "tiezhang/zhaigou4",
		["west"] = "tiezhang/shanmen",
	},
}
Room {
	id = "tiezhang/zhaigou4",
	name = "寨沟",
	ways = {
		["west"] = "tiezhang/zhaigou3",
	},
}
Room {
	id = "tiezhang/zoulang-1",
	name = "走廊",
	ways = {
		["east"] = "tiezhang/zoulang-4",
		["north"] = "tiezhang/bqshi",
		["west"] = "tiezhang/wztang",
	},
}
Room {
	id = "tiezhang/zoulang-2",
	name = "走廊",
	ways = {
		["east"] = "tiezhang/wztang",
		["north"] = "tiezhang/shufang",
		["west"] = "tiezhang/zoulang-3",
	},
}
Room {
	id = "tiezhang/zoulang-3",
	name = "走廊",
	ways = {
		["east"] = "tiezhang/zoulang-2",
		["north"] = "tiezhang/chufang",
	},
}
Room {
	id = "tiezhang/zoulang-4",
	name = "走廊",
	ways = {
		["south"] = "tiezhang/xxsnv",
		["north"] = "tiezhang/xxsnan",
		["east"] = "tiezhang/gjfang",
		["west"] = "tiezhang/zoulang-1",
	},
	lengths = {
		["south"] = "if getSex() == '女' then return 1 else return false end",
		["north"] = "if getSex() == '男' then return 1 else return false end",
	},
}
Room {
	id = "tiezhang/zzfeng",
	name = "中指峰",
	ways = {
		["southdown"] = "tiezhang/shanlu-9",
	},
}
Room {
	id = "tls/3wg",
	name = "三无宫",
	ways = {
		["northup"] = "tls/shiyuan",
		["westup"] = "tls/longxiang1",
		["east"] = "tls/men4",
	},
}
Room {
	id = "tls/banruo",
	name = "般若台",
	ways = {
		["westdown"] = "tls/yaotai",
		["northwest"] = "tls/road2",
		["east"] = "tls/banruo1",
	},
}
Room {
	id = "tls/banruo1",
	name = "般若台",
	ways = {
		["west"] = "tls/banruo",
	},
}
Room {
	id = "tls/baodian",
	name = "大雄宝殿",
	ways = {
		["east"] = "tls/yaoshidian",
		["north"] = "tls/gfd",
		["southdown"] = "tls/road1",
		["west"] = "tls/dizangdian",
	},
}
Room {
	id = "tls/bingqi",
	name = "兵器房",
	ways = {
		["west"] = "tls/cby",
	},
}
Room {
	id = "tls/bzq",
	name = "百丈桥",
	ways = {
		["south"] = "tls/bzqs",
		["north"] = "tls/bzqn",
	},
}
Room {
	id = "tls/bzqn",
	name = "百丈桥",
	ways = {
		["south"] = "tls/bzq",
		["east"] = "tls/wxj",
		["north"] = "tls/fqg",
	},
}
Room {
	id = "tls/bzqs",
	name = "百丈桥边",
	ways = {
		["south"] = "tls/road5",
		["north"] = "tls/bzq",
	},
	blocks = {
		["north"] = {
			{id = "liaokuan chanshi", exp = 500000},
		},
	},
}
Room {
	id = "tls/cby",
	name = "慈悲院",
	ways = {
		["north"] = "tls/wuping",
		["east"] = "tls/bingqi",
		["west"] = "tls/road4",
	},
}
Room {
	id = "tls/chufang",
	name = "厨房",
	no_fight = true,
	ways = {
		["east"] = "tls/zt1",
	},
}
Room {
	id = "tls/dc1",
	name = "点苍十九峰",
	ways = {
		["north"] = "tls/ylf1",
		["southdown"] = "tls/dc2",
	},
}
Room {
	id = "tls/dc2",
	name = "点苍十九峰",
	ways = {
		["northup"] = "tls/dc1",
		["eastdown"] = "tls/dc3",
	},
}
Room {
	id = "tls/dc3",
	name = "点苍十九峰",
	ways = {
		["westup"] = "tls/dc2",
		["southdown"] = "tls/diancang",
	},
}
Room {
	id = "tls/diancang",
	name = "点苍山",
	ways = {
		["northup"] = "tls/dc3",
		["eastdown"] = "dali/ximen",
		["eastup"] = "tls/dc3",
		["westup"] = "tls/dc3",
		["southwest"] = "dali/daliwest/nj",
	},
}
Room {
	id = "tls/dizangdian",
	name = "地藏殿",
	ways = {
		["south"] = "tls/zhonglou",
		["northwest"] = "tls/yz5",
		["east"] = "tls/baodian",
	},
}
Room {
	id = "tls/dmg",
	name = "斗母宫",
	ways = {
		["northup"] = "tls/road6",
		["east"] = "tls/road4",
	},
}
Room {
	id = "tls/fqg",
	name = "飞泉沟",
	ways = {
		["northup"] = "tls/wxt",
		["south"] = "tls/bzqn",
	},
}
Room {
	id = "tls/gate",
	name = "崇圣寺",
	ways = {
		["south"] = "tls/shanlu",
		["enter"] = "tls/road",
	},
}
Room {
	id = "tls/gfd",
	name = "光佛宝殿",
	ways = {
		["south"] = "tls/baodian",
		["east"] = "tls/men1",
		["northdown"] = "tls/yz6",
		["west"] = "tls/men2",
	},
	blocks = {
		["northdown"] = {
			{id = "benyin dashi", exp = 1350000},
		},
	},
}
Room {
	id = "tls/gmd",
	name = "大光明殿",
	ways = {
		["south"] = "tls/sjt",
		["east"] = "tls/yz3",
	},
}
Room {
	id = "tls/goudi",
	name = "百丈桥底",
	ways = {
		["eastup"] = "tls/road5",
	},
}
Room {
	id = "tls/guanchong",
	name = "关冲",
}
Room {
	id = "tls/gulou",
	name = "鼓楼",
	ways = {
		["south"] = "tls/zt",
		["north"] = "tls/yaoshidian",
		["west"] = "tls/road1",
	},
}
Room {
	id = "tls/lang",
	name = "长廊",
	ways = {
		["east"] = "tls/songlin",
		["west"] = "tls/road3",
	},
}
Room {
	id = "tls/lang2",
	name = "长廊",
	ways = {
		["south"] = "tls/songlin-n",
		["enter"] = "tls/monitang",
		["north"] = "tls/songlin-n",
		["west"] = "tls/songlin",
	},
}
Room {
	id = "tls/longxiang1",
	name = "龙象台",
	ways = {
		["northup"] = "tls/longxiang2",
		["eastdown"] = "tls/3wg",
		["southdown"] = "tls/longxiang3",
		["west"] = "tls/longxiang4",
	},
}
Room {
	id = "tls/longxiang2",
	name = "西练武场",
	ways = {
		["southdown"] = "tls/longxiang1",
	},
}
Room {
	id = "tls/longxiang3",
	name = "西练武场",
	ways = {
		["northup"] = "tls/longxiang1",
	},
}
Room {
	id = "tls/longxiang4",
	name = "西练武场",
	ways = {
		["east"] = "tls/longxiang1",
		["west"] = "tls/shanlu-1",
	},
	blocks = {
		["west"] = {
			{id = "liaoxing chanshi", exp = 600000,}
		},
	},
}
Room {
	id = "tls/lsy",
	name = "龙树院",
	ways = {
		["out"] = "tls/songlin-n",
	},
}
Room {
	id = "tls/men1",
	name = "瑞鹤门",
	ways = {
		["east"] = "tls/yz4",
		["north"] = "tls/wujingge",
		["west"] = "tls/gfd",
	},
	lengths = {
		["north"] = "if getSex() == '女' then return 1 else return false end",
	},
}
Room {
	id = "tls/men2",
	name = "翔鹤门",
	ways = {
		["north"] = "tls/wuwoge",
		["east"] = "tls/gfd",
		["west"] = "tls/yz5",
	},
	lengths = {
		["north"] = "if getSex() == '男' then return 1 else return false end",
	},
}
Room {
	id = "tls/men3",
	name = "晃天门",
	ways = {
		["east"] = "tls/yaotai",
		["west"] = "tls/yz4",
	},
	nolooks = {
		["south"] = true,
		["east"] = true,
	},
	precmds = {
		["east"] = "open door",
	},
}
Room {
	id = "tls/men4",
	name = "荡天门",
	ways = {
		-- ["south"] = "tls/xiuxishi2",
		["east"] = "tls/yz5",
		["west"] = "tls/3wg",
	},
	nolooks = {
		["south"] = true,
		["west"] = true,
	},
	precmds = {
		["west"] = "open door",
	},
}
Room {
	id = "tls/monitang",
	name = "牟尼堂",
	ways = {
		["out"] = "tls/lang2",
	},
}
Room {
	id = "tls/pyd",
	name = "普云洞",
	no_fight = true,
	ways = {
		["northup"] = "tls/shaoshang",
		["southeast"] = "tls/shaochong",
		["southwest"] = "tls/shaoze",
		["northwest"] = "tls/guanchong",
		["north"] = "tls/shangyang",
		["northeast"] = "tls/zhongchong",
		["out"] = "tls/lsy",
	},
}
Room {
	id = "tls/pyd/guanchong",
	name = "关冲",
	ways = {
		["southeast"] = "tls/pyd/pyd",
	},
}
Room {
	id = "tls/pyd/pyd",
	name = "普云洞",
	ways = {
		["northup"] = "tls/pyd/shaoshang",
		["southeast"] = "tls/pyd/shaochong",
		["southwest"] = "tls/pyd/shaoze",
		["northwest"] = "tls/pyd/guanchong",
		["north"] = "tls/pyd/shangyang",
		["northeast"] = "tls/pyd/zhongchong",
	},
}
Room {
	id = "tls/pyd/shangyang",
	name = "商阳",
	ways = {
		["south"] = "tls/pyd/pyd",
	},
}
Room {
	id = "tls/pyd/shaochong",
	name = "少冲",
	ways = {
		["northwest"] = "tls/pyd/shaochong",
	},
}
Room {
	id = "tls/pyd/shaoshang",
	name = "少商",
	ways = {
		["southdown"] = "tls/pyd/pyd",
	},
}
Room {
	id = "tls/pyd/shaoze",
	name = "少泽",
	ways = {
		["northeast"] = "tls/pyd/shaoze",
	},
}
Room {
	id = "tls/pyd/zhongchong",
	name = "中冲",
	ways = {
		["southwest"] = "tls/pyd/pyd",
	},
}
Room {
	id = "tls/qxg",
	name = "清心阁",
	no_fight = true,
	ways = {
		["east"] = "tls/shiyuan",
	},
}
Room {
	id = "tls/road",
	name = "白石路",
	ways = {
		["northup"] = "tls/twd",
		["east"] = "tls/yz2",
		["west"] = "tls/yz1",
		["out"] = "tls/gate",
	},
	blocks = {
		["northup"] = {
			{id = "liaohuo chanshi", exp = 500000},
			{id = "wu seng", exp = 40000},
		},
		["east"] = {
			{id = "liaohuo chanshi", exp = 500000},
			{id = "wu seng", exp = 40000},
		},
		["west"] = {
			{id = "liaohuo chanshi", exp = 500000},
			{id = "wu seng", exp = 40000},
		},
	},
}
Room {
	id = "tls/road1",
	name = "白石路",
	ways = {
		["northup"] = "tls/baodian",
		["southup"] = "tls/twd",
		["east"] = "tls/gulou",
		["west"] = "tls/zhonglou",
	},
}
Room {
	id = "tls/road2",
	name = "白石路",
	ways = {
		["southeast"] = "tls/banruo",
		["north"] = "tls/wwj",
		["southdown"] = "tls/yaotai",
	},
}
Room {
	id = "tls/road3",
	name = "白石路",
	ways = {
		["east"] = "tls/lang",
		["west"] = "tls/wwj",
	},
}
Room {
	id = "tls/road4",
	name = "白石路",
	ways = {
		["north"] = "tls/sroom",
		["east"] = "tls/cby",
		["southdown"] = "tls/yz3",
		["west"] = "tls/dmg",
	},
}
Room {
	id = "tls/road5",
	name = "石板路",
	ways = {
		["south"] = "tls/shiyuan",
		["north"] = "tls/bzqs",
	},
}
Room {
	id = "tls/road6",
	name = "白石阶",
	ways = {
		["southdown"] = "tls/dmg",
	},
}
Room {
	id = "tls/road7",
	name = "石板路",
	ways = {
		["south"] = "tls/yuhua1",
		["north"] = "tls/songlin-n",
	},
}
Room {
	id = "tls/shangyang",
	name = "商阳",
}
Room {
	id = "tls/shanlu",
	name = "山路",
	ways = {
		["south"] = "tls/ylf2",
		["north"] = "tls/gate",
	},
}
Room {
	id = "tls/shanlu-1",
	name = "石板路",
	ways = {
		["east"] = "tls/longxiang4",
		["west"] = "tls/shanlu-2",
	},
}
Room {
	id = "tls/shanlu-2",
	name = "石板路",
	ways = {
		["east"] = "tls/shanlu-1",
		["west"] = "tls/shanlu-3",
	},
}
Room {
	id = "tls/shanlu-3",
	name = "石板路",
	ways = {
		["east"] = "tls/shanlu-2",
		["west"] = "tls/shanlu-4",
	},
}
Room {
	id = "tls/shanlu-4",
	name = "石板路",
	ways = {
		["east"] = "tls/shanlu-3",
		["west"] = "tls/talin",
	},
}
Room {
	id = "tls/shaochong",
	name = "少冲",
}
Room {
	id = "tls/shaoshang",
	name = "少商",
}
Room {
	id = "tls/shaoze",
	name = "少泽",
}
Room {
	id = "tls/shiyuan",
	name = "兜率大士院",
	ways = {
		["north"] = "tls/road5",
		["southdown"] = "tls/3wg",
		["west"] = "tls/qxg",
	},
}
Room {
	id = "tls/sjt",
	name = "诵经堂",
	no_fight = true,
	ways = {
		["east"] = "tls/yz6",
		["north"] = "tls/gmd",
	},
}
Room {
	id = "tls/songlin",
	name = "松树林",
	ways = {
		["south"] = "tls/songlin-n",
		["north"] = "tls/songlin-n",
		["east"] = "tls/lang2",
		["west"] = "tls/lang",
	},
}
Room {
	id = "tls/songlin-n",
	name = "松树林",
	ways = {
		["#outTlsSsl"] = "tls/yuhua1",
		["south"] = "tls/songlin-n",
		["north"] = "tls/songlin-n",
		["east"] = "tls/songlin-n",
		["west"] = "tls/songlin-n",
	},
	nolooks = {
		["#outTlsSsl"] = true,
	},
	lengths = {
		["#outTlsSsl"] = 11,
	},
	find = {
		path = {"#outTlsSsl;out;s;#3 e", "s", "s", "w", "w", "w", "e"}
	},
}
Room {
	id = "tls/sroom",
	name = "休息室",
	no_fight = true,
	ways = {
		["south"] = "tls/road4",
		["east"] = "tls/sroom2",
		["west"] = "tls/sroom1",
	},
}
Room {
	id = "tls/sroom1",
	name = "休息室",
	no_fight = true,
	ways = {
		["south"] = "tls/road4",
		["east"] = "tls/sroom",
	},
}
Room {
	id = "tls/sroom2",
	name = "休息室",
	no_fight = true,
	ways = {
		["south"] = "tls/road4",
		["west"] = "tls/sroom",
	},
}
Room {
	id = "tls/ta1",
	name = "千寻宝塔",
	ways = {
		["south"] = "tls/yz6",
		["north"] = "tls/yz3",
	},
}
Room {
	id = "tls/ta2",
	name = "无相宝塔",
	ways = {
		["south"] = "tls/yz4",
	},
}
Room {
	id = "tls/ta3",
	name = "无住宝塔",
	ways = {
		["south"] = "tls/yz5",
	},
}
Room {
	id = "tls/talin",
	name = "灵塔林",
	ways = {
		["east"] = "tls/shanlu-4",
	},
}
Room {
	id = "tls/twd",
	name = "天王殿",
	ways = {
		["northdown"] = "tls/road1",
		["southdown"] = "tls/road",
	},
}
Room {
	id = "tls/wfd",
	name = "万佛洞",
	ways = {
		["enter"] = "tls/wfd2",
		["up"] = "tls/wxt",
	},
}
Room {
	id = "tls/wfd2",
	name = "万佛洞",
	ways = {
		["north"] = "tls/wfd3",
		["out"] = "tls/wfd",
	},
}
Room {
	id = "tls/wfd3",
	name = "万佛洞内洞",
	ways = {
		["south"] = "tls/wfd2",
	},
}
Room {
	id = "tls/wujingge",
	name = "无净阁",
	no_fight = true,
	ways = {
		["south"] = "tls/men1",
	},
}
Room {
	id = "tls/wuping",
	name = "物品房",
	ways = {
		["south"] = "tls/cby",
	},
}
Room {
	id = "tls/wuwoge",
	name = "无我阁",
	no_fight = true,
	ways = {
		["south"] = "tls/men2",
	},
}
Room {
	id = "tls/wwj",
	name = "无无境",
	ways = {
		["south"] = "tls/road2",
		["north"] = "tls/yuhua",
		["east"] = "tls/road3",
	},
}
Room {
	id = "tls/wxj",
	name = "无心井",
	ways = {
		["west"] = "tls/bzqn",
	},
}
Room {
	id = "tls/wxt",
	name = "忘雪亭",
	ways = {
		["down"] = "tls/wfd",
		["southdown"] = "tls/fqg",
	},
}
Room {
	id = "tls/xdt",
	name = "小洞天",
	ways = {
		["west"] = "tls/songlin-n",
	},
}
Room {
	id = "tls/xiuxishi1",
	name = "休息室",
	no_fight = true,
	ways = {
		["north"] = "tls/men3",
	},
}
Room {
	id = "tls/xiuxishi2",
	name = "休息室",
	no_fight = true,
	ways = {
		["north"] = "tls/men4",
	},
}
Room {
	id = "tls/xmd",
	name = "须弥殿",
	ways = {
		["south"] = "tls/ytd",
		["west"] = "tls/yz3",
	},
}
Room {
	id = "tls/yaofang",
	name = "药房",
	ways = {
		["north"] = "tls/yaotai",
	},
}
Room {
	id = "tls/yaoshidian",
	name = "药师殿",
	ways = {
		["south"] = "tls/gulou",
		["northeast"] = "tls/yz4",
		["west"] = "tls/baodian",
	},
}
Room {
	id = "tls/yaotai",
	name = "清都瑶台",
	ways = {
		["northup"] = "tls/road2",
		["eastup"] = "tls/banruo",
		["south"] = "tls/yaofang",
		["west"] = "tls/men3",
	},
	nolooks = {
		["west"] = true,
	},
	blocks = {
		["northup"] = {
			{id = "liaoqing chanshi", exp = 500000, party = "天龙寺"},
		},
		["eastup"] = {
			{id = "liaoqing chanshi", exp = 500000, party = "天龙寺"},
		},
	},
	precmds = {
		["west"] = "open door",
	},
}
Room {
	id = "tls/ylf",
	name = "应乐峰",
	ways = {
		["northdown"] = "tls/ylf2",
		["southdown"] = "tls/ylf1",
	},
}
Room {
	id = "tls/ylf1",
	name = "应乐峰南",
	ways = {
		["northup"] = "tls/ylf",
		["south"] = "tls/dc1",
	},
}
Room {
	id = "tls/ylf2",
	name = "应乐峰北",
	ways = {
		["southup"] = "tls/ylf",
		["north"] = "tls/shanlu",
	},
}
Room {
	id = "tls/ytd",
	name = "圆通殿",
	ways = {
		["north"] = "tls/xmd",
		["west"] = "tls/yz6",
	},
}
Room {
	id = "tls/yuhua",
	name = "雨花院",
	ways = {
		["south"] = "tls/wwj",
		["enter"] = "tls/yuhua1",
		["east"] = "tls/songlin-n",
	},
}
Room {
	id = "tls/yuhua1",
	name = "雨花阁",
	ways = {
		["north"] = "tls/road7",
		["out"] = "tls/yuhua",
		["n;n;n;n;n;n;n;n;w;w;w;w;w"] = "tls/lsy",
		["#toXdt"] = "tls/xdt",
	},
	nolooks = {
		["n;n;n;n;n;n;n;n;w;w;w;w;w"] = true,
		["#toXdt"] = true,
	},
	lengths = {
		["n;n;n;n;n;n;n;n;w;w;w;w;w"] = 13,
		["#toXdt"] = "if getScore().born_int < 22 then return false else return 50 end",
	},
}
Room {
	id = "tls/yz1",
	name = "松树院",
	ways = {
		["north"] = "tls/zt1",
		["east"] = "tls/road",
	},
}
Room {
	id = "tls/yz2",
	name = "斑竹院",
	ways = {
		["north"] = "tls/zt",
		["west"] = "tls/road",
	},
}
Room {
	id = "tls/yz3",
	name = "青竹院",
	ways = {
		["northup"] = "tls/road4",
		["south"] = "tls/ta1",
		["east"] = "tls/xmd",
		["west"] = "tls/gmd",
	},
}
Room {
	id = "tls/yz4",
	name = "青竹院",
	ways = {
		["southwest"] = "tls/yaoshidian",
		["north"] = "tls/ta2",
		["east"] = "tls/men3",
		["west"] = "tls/men1",
	},
}
Room {
	id = "tls/yz5",
	name = "青竹院",
	ways = {
		["southeast"] = "tls/dizangdian",
		["north"] = "tls/ta3",
		["east"] = "tls/men2",
		["west"] = "tls/men4",
	},
}
Room {
	id = "tls/yz6",
	name = "松树院",
	ways = {
		["southup"] = "tls/gfd",
		["east"] = "tls/ytd",
		["north"] = "tls/ta1",
		["west"] = "tls/sjt",
	},
}
Room {
	id = "tls/zhongchong",
	name = "中冲",
}
Room {
	id = "tls/zhonglou",
	name = "钟楼",
	ways = {
		["south"] = "tls/zt1",
		["east"] = "tls/road1",
		["north"] = "tls/dizangdian",
	},
}
Room {
	id = "tls/zt",
	name = "天龙寺斋堂",
	no_fight = true,
	ways = {
		["south"] = "tls/yz2",
		["north"] = "tls/gulou",
	},
}
Room {
	id = "tls/zt1",
	name = "天龙寺斋堂",
	no_fight = true,
	ways = {
		["south"] = "tls/yz1",
		["north"] = "tls/zhonglou",
		["west"] = "tls/chufang",
	},
}
Room {
	id = "village/caidi",
	name = "菜地",
	ways = {
		["#outcd"] = "village/zhongxin",
	},
	nolooks = {
		["#outcd"] = true,
		["south"] = true,
		["north"] = true,
		["east"] = true,
		["west"] = true,
	},
	lengths = {
		["#outcd"] = 500,
	},
}
Room {
	id = "village/eexit",
	name = "东村口",
	ways = {
		["east"] = "huashan/path1",
		["west"] = "village/shilu6",
	},
}
Room {
	id = "village/hsroad3",
	name = "黄土路",
	ways = {
		["south"] = "xiangyang/shanxiroad2",
		["north"] = "village/sexit",
	},
}
Room {
	id = "village/jiusi",
	name = "酒肆",
	ways = {
		["south"] = "village/shilu3",
	},
}
Room {
	id = "village/miaoyu",
	name = "玄坛庙",
	ways = {
		["north"] = "village/shilu5",
	},
}
Room {
	id = "village/minfang1",
	name = "民房",
	ways = {
		["east"] = "village/shilu1",
	},
}
Room {
	id = "village/minfang2",
	name = "民房",
	ways = {
		["north"] = "village/shilu6",
	},
}
Room {
	id = "village/sexit",
	name = "南村口",
	ways = {
		["south"] = "village/hsroad3",
		["north"] = "village/shilu1",
	},
}
Room {
	id = "village/shilu1",
	name = "碎石路",
	ways = {
		["south"] = "village/sexit",
		["north"] = "village/shilu2",
		["west"] = "village/minfang1",
	},
}
Room {
	id = "village/shilu2",
	name = "碎石路",
	ways = {
		["south"] = "village/shilu1",
		["north"] = "village/zhongxin",
		["east"] = "village/tiejiangpu",
	},
}
Room {
	id = "village/shilu3",
	name = "碎石路",
	ways = {
		["east"] = "village/zhongxin",
		["north"] = "village/jiusi",
		["west"] = "village/shilu5",
	},
}
Room {
	id = "village/shilu4",
	name = "碎石路",
	ways = {
		["north"] = "village/zahuopu",
		["east"] = "village/shilu6",
		["west"] = "village/zhongxin",
	},
}
Room {
	id = "village/shilu5",
	name = "碎石路",
	ways = {
		["south"] = "village/miaoyu",
		["northwest"] = "group/entry/caeroad3",
		["east"] = "village/shilu3",
	},
}
Room {
	id = "village/shilu6",
	name = "碎石路",
	ways = {
		["south"] = "village/minfang2",
		["east"] = "village/eexit",
		["west"] = "village/shilu4",
	},
}
Room {
	id = "village/tiejiangpu",
	name = "铁匠铺",
	ways = {
		["west"] = "village/shilu2",
	},
}
Room {
	id = "village/zahuopu",
	name = "杂货铺",
	ways = {
		["south"] = "village/shilu4",
	},
}
Room {
	id = "village/zhongxin",
	name = "村中心",
	ways = {
		["south"] = "village/shilu2",
		["east"] = "village/shilu4",
		["west"] = "village/shilu3",
		["northwest"] = "village/caidi",
		["northeast"] = "village/caidi",
	},
	postcmds = {
		["northwest"] = "#waitbusy",
		["northeast"] = "#waitbusy",
	},
}
Room {
	id = "wizard/center",
	name = "武林幻境",
	ways = {
		["kd"] = "city/kedian",
	},
}
Room {
	id = "wizard/guest_room",
	name = "会客室",
	ways = {
		["southeast"] = "city/chmiao",
		-- ["up"] = "wizard/wizard_room",
	},
	nolooks = {
		["up"] = true,
	},
}
Room {
	id = "wizard/lt",
	name = "天地门",
	ways = {
		["south"] = "wizard/ltc",
		["north"] = "wizard/ltd",
		["east"] = "wizard/lta",
		["west"] = "wizard/ltb",
		["out"] = "xiangyang/guangc",
	},
}
Room {
	id = "wizard/lt1",
	name = "风云门",
	ways = {
		["south"] = "wizard/lt1c",
		["north"] = "wizard/lt1d",
		["east"] = "wizard/lt1a",
		["west"] = "wizard/lt1b",
		["out"] = "xiangyang/guangc",
	},
}
Room {
	id = "wizard/lt1a",
	name = "风云门东看台",
	ways = {
		["west"] = "wizard/lt1",
	},
}
Room {
	id = "wizard/lt1b",
	name = "风云门东看台",
	ways = {
		["east"] = "wizard/lt1",
	},
}
Room {
	id = "wizard/lt1c",
	name = "风云门东看台",
	ways = {
		["north"] = "wizard/lt1",
	},
}
Room {
	id = "wizard/lt1d",
	name = "风云门东看台",
	ways = {
		["south"] = "wizard/lt1",
	},
}
Room {
	id = "wizard/lt2",
	name = "龙虎门",
	ways = {
		["south"] = "wizard/lt2c",
		["north"] = "wizard/lt2d",
		["east"] = "wizard/lt2a",
		["west"] = "wizard/lt2b",
		["out"] = "xiangyang/guangc",
	},
}
Room {
	id = "wizard/lt2a",
	name = "龙虎门东看台",
	ways = {
		["west"] = "wizard/lt2",
	},
}
Room {
	id = "wizard/lt2b",
	name = "龙虎门东看台",
	ways = {
		["east"] = "wizard/lt2",
	},
}
Room {
	id = "wizard/lt2c",
	name = "龙虎门东看台",
	ways = {
		["north"] = "wizard/lt2",
	},
}
Room {
	id = "wizard/lt2d",
	name = "龙虎门东看台",
	ways = {
		["south"] = "wizard/lt2",
	},
}
Room {
	id = "wizard/lta",
	name = "天地门东看台",
	ways = {
		["west"] = "wizard/lt",
	},
}
Room {
	id = "wizard/ltb",
	name = "天地门西看台",
	ways = {
		["east"] = "wizard/lt",
	},
}
Room {
	id = "wizard/ltc",
	name = "天地门南看台",
	ways = {
		["north"] = "wizard/lt",
	},
}
Room {
	id = "wizard/ltd",
	name = "天地门北看台",
	ways = {
		["south"] = "wizard/lt",
	},
}
Room {
	id = "wizard/wizard_meet",
	name = "巫师会议室",
	ways = {
		["down"] = "wizard/guest_room",
		["west"] = "wizard/wizard_room",
	},
}
Room {
	id = "wizard/wizard_room",
	name = "巫师休息室",
	ways = {
		["down"] = "wizard/guest_room",
		["up"] = "wizard/zoulang",
	},
}
Room {
	id = "wizard/zoulang",
	name = "走廊",
}
Room {
	id = "wudang/caihong",
	name = "雨后彩虹",
	ways = {
		["northup"] = "wudang/wangbei",
		["southup"] = "wudang/shibapan",
	},
}
Room {
	id = "wudang/chating",
	name = "茶亭",
	ways = {
		["northwest"] = "wudang/wdroad8",
	},
	precmds = {
		["northwest"] = "drop mi tao",
	},
}
Room {
	id = "wudang/chufang",
	name = "厨房",
	no_fight = true,
	ways = {
		["west"] = "wudang/donglang2",
	},
}
Room {
	id = "wudang/clbianyuan1",
	name = "丛林边缘",
	ways = {
		["northwest"] = "wudang/gudi",
	},
}
Room {
	id = "wudang/clbianyuan2",
	name = "丛林边缘",
}
Room {
	id = "wudang/conglin1",
	name = "烈火丛林",
	ways = {
		["southeast"] = "wudang/conglin4",
		["west"] = "wudang/conglin2",
	},
}
Room {
	id = "wudang/conglin10",
	name = "积雪丛林",
	ways = {
		["north"] = "wudang/conglin9",
		["northeast"] = "wudang/conglin11",
	},
}
Room {
	id = "wudang/conglin11",
	name = "积雪丛林",
	ways = {
		["southwest"] = "wudang/conglin10",
		["south"] = "wudang/conglin12",
	},
}
Room {
	id = "wudang/conglin12",
	name = "积雪丛林",
	ways = {
		["east"] = "wudang/conglin13",
		["north"] = "wudang/conglin11",
	},
}
Room {
	id = "wudang/conglin13",
	name = "阔叶丛林",
	ways = {
		["east"] = "wudang/conglin12",
		["northeast"] = "wudang/conglin14",
	},
}
Room {
	id = "wudang/conglin14",
	name = "阔叶丛林",
	ways = {
		["southeast"] = "wudang/conglin15",
		["southwest"] = "wudang/conglin13",
	},
}
Room {
	id = "wudang/conglin15",
	name = "阔叶丛林",
	ways = {
		["south"] = "wudang/conglin14",
		["east"] = "wudang/conglin16",
		["northeast"] = "wudang/clbianyuan2",
	},
}
Room {
	id = "wudang/conglin16",
	name = "阔叶丛林",
	ways = {
		["south"] = "wudang/clbianyuan2",
		["east"] = "wudang/conglin15",
	},
}
Room {
	id = "wudang/conglin2",
	name = "烈火丛林",
	ways = {
		["southeast"] = "wudang/conglin1",
		["north"] = "wudang/conglin3",
	},
}
Room {
	id = "wudang/conglin3",
	name = "烈火丛林",
	ways = {
		["south"] = "wudang/conglin3",
		["north"] = "wudang/conglin4",
	},
}
Room {
	id = "wudang/conglin4",
	name = "烈火丛林",
	ways = {
		["northeast"] = "wudang/conglin3",
		["west"] = "wudang/conglin5",
	},
}
Room {
	id = "wudang/conglin5",
	name = "落叶丛林",
	ways = {
		["southeast"] = "wudang/conglin4",
		["northwest"] = "wudang/conglin6",
	},
}
Room {
	id = "wudang/conglin6",
	name = "落叶丛林",
	ways = {
		["south"] = "wudang/conglin5",
		["north"] = "wudang/conglin7",
	},
}
Room {
	id = "wudang/conglin7",
	name = "落叶丛林",
	ways = {
		["southwest"] = "wudang/conglin8",
		["northeast"] = "wudang/conglin6",
	},
}
Room {
	id = "wudang/conglin8",
	name = "落叶丛林",
	ways = {
		["southeast"] = "wudang/conglin7",
		["north"] = "wudang/conglin9",
	},
}
Room {
	id = "wudang/conglin9",
	name = "积雪丛林",
	ways = {
		["southeast"] = "wudang/conglin10",
		["west"] = "wudang/conglin8",
	},
}
Room {
	id = "wudang/donglang1",
	name = "西厢走廊",
	ways = {
		["south"] = "wudang/xiuxishi2",
		["east"] = "wudang/xiaolu1",
		["west"] = "wudang/jingge",
	},
	lengths = {
		["south"] = "if getSex() == '女' then return 1 else return false end",
	},
}
Room {
	id = "wudang/donglang2",
	name = "东厢走廊",
	ways = {
		["south"] = "wudang/xiuxishi1",
		["east"] = "wudang/chufang",
		["west"] = "wudang/xiaolu1",
	},
}
Room {
	id = "wudang/feisheng",
	name = "飞升崖",
	ways = {
		["northeast"] = "wudang/zhenqing",
	},
}
Room {
	id = "wudang/fuzhen",
	name = "复真观",
	ways = {
		["westup"] = "wudang/shijie2",
		["northdown"] = "wudang/shibapan",
		["west"] = "wudang/laojun",
	},
}
Room {
	id = "wudang/gchang",
	name = "武当广场",
	ways = {
		["south"] = "wudang/zhenqing",
		["north"] = "wudang/nanyan",
	},
}
Room {
	id = "wudang/gsdao1",
	name = "古神道",
	ways = {
		["southup"] = "wudang/yuanhe",
		["northdown"] = "wudang/shijie1",
	},
}
Room {
	id = "wudang/gsdao2",
	name = "古神道",
	ways = {
		["southup"] = "wudang/yuzhen",
		["northdown"] = "wudang/yuanhe",
	},
}
Room {
	id = "wudang/gsdao3",
	name = "古神道",
	ways = {
		["southwest"] = "wudang/leishen",
		["east"] = "wudang/zhanqi",
	},
}
Room {
	id = "wudang/gsdao4",
	name = "古神道",
	ways = {
		["southup"] = "wudang/shijie4",
		["northdown"] = "wudang/zhenqing",
	},
}
Room {
	id = "wudang/gsdao5",
	name = "古神道",
	ways = {
		["southup"] = "wudang/langmei",
		["northdown"] = "wudang/shijie4",
	},
}
Room {
	id = "wudang/gsdao6",
	name = "古神道",
	ways = {
		["westdown"] = "wudang/qtguan",
		["eastup"] = "wudang/hldong",
	},
}
Room {
	id = "wudang/gudao1",
	name = "古道",
	ways = {
		["westdown"] = "wudang/shanlu2",
		["eastup"] = "wudang/gudao2",
	},
}
Room {
	id = "wudang/gudao2",
	name = "古道",
	ways = {
		["southup"] = "wudang/husunchou",
		["westdown"] = "wudang/gudao1",
		["northdown"] = "wudang/gudao3",
	},
}
Room {
	id = "wudang/gudao3",
	name = "古道",
	ways = {
		["southup"] = "wudang/gudao2",
	},
}
Room {
	id = "wudang/gudi",
	name = "谷底",
	ways = {
		["southeast"] = "wudang/clbianyuan1",
	},
}
Room {
	id = "wudang/hldong",
	name = "黄龙洞",
	ways = {
		["southup"] = "wudang/taihe",
		["westdown"] = "wudang/gsdao6",
	},
}
Room {
	id = "wudang/houshan/clbianyuan1",
	name = "丛林边缘",
	ways = {
		["northwest"] = "wudang/houshan/gudi",
	},
}
Room {
	id = "wudang/houshan/clbianyuan2",
	name = "丛林边缘",
}
Room {
	id = "wudang/houshan/conglin1",
	name = "烈火丛林",
	ways = {
		["southeast"] = "wudang/houshan/conglin4",
		["west"] = "wudang/houshan/conglin2",
	},
}
Room {
	id = "wudang/houshan/conglin10",
	name = "积雪丛林",
	ways = {
		["north"] = "wudang/houshan/conglin9",
		["northeast"] = "wudang/houshan/conglin11",
	},
}
Room {
	id = "wudang/houshan/conglin11",
	name = "积雪丛林",
	ways = {
		["southwest"] = "wudang/houshan/conglin10",
		["south"] = "wudang/houshan/conglin12",
	},
}
Room {
	id = "wudang/houshan/conglin12",
	name = "积雪丛林",
	ways = {
		["east"] = "wudang/houshan/conglin13",
		["north"] = "wudang/houshan/conglin11",
	},
}
Room {
	id = "wudang/houshan/conglin13",
	name = "阔叶丛林",
	ways = {
		["east"] = "wudang/houshan/conglin12",
		["northeast"] = "wudang/houshan/conglin14",
	},
}
Room {
	id = "wudang/houshan/conglin14",
	name = "阔叶丛林",
	ways = {
		["southeast"] = "wudang/houshan/conglin15",
		["southwest"] = "wudang/houshan/conglin13",
	},
}
Room {
	id = "wudang/houshan/conglin15",
	name = "阔叶丛林",
	ways = {
		["south"] = "wudang/houshan/conglin14",
		["east"] = "wudang/houshan/conglin16",
		["northeast"] = "wudang/houshan/clbianyuan2",
	},
}
Room {
	id = "wudang/houshan/conglin16",
	name = "阔叶丛林",
	ways = {
		["south"] = "wudang/houshan/clbianyuan2",
		["east"] = "wudang/houshan/conglin15",
	},
}
Room {
	id = "wudang/houshan/conglin2",
	name = "烈火丛林",
	ways = {
		["southeast"] = "wudang/houshan/conglin1",
		["north"] = "wudang/houshan/conglin3",
	},
}
Room {
	id = "wudang/houshan/conglin3",
	name = "烈火丛林",
	ways = {
		["south"] = "wudang/houshan/conglin3",
		["north"] = "wudang/houshan/conglin4",
	},
}
Room {
	id = "wudang/houshan/conglin4",
	name = "烈火丛林",
	ways = {
		["northeast"] = "wudang/houshan/conglin3",
		["west"] = "wudang/houshan/conglin5",
	},
}
Room {
	id = "wudang/houshan/conglin5",
	name = "落叶丛林",
	ways = {
		["southeast"] = "wudang/houshan/conglin4",
		["northwest"] = "wudang/houshan/conglin6",
	},
}
Room {
	id = "wudang/houshan/conglin6",
	name = "落叶丛林",
	ways = {
		["south"] = "wudang/houshan/conglin5",
		["north"] = "wudang/houshan/conglin7",
	},
}
Room {
	id = "wudang/houshan/conglin7",
	name = "落叶丛林",
	ways = {
		["southwest"] = "wudang/houshan/conglin8",
		["northeast"] = "wudang/houshan/conglin6",
	},
}
Room {
	id = "wudang/houshan/conglin8",
	name = "落叶丛林",
	ways = {
		["southeast"] = "wudang/houshan/conglin7",
		["north"] = "wudang/houshan/conglin9",
	},
}
Room {
	id = "wudang/houshan/conglin9",
	name = "积雪丛林",
	ways = {
		["southeast"] = "wudang/houshan/conglin10",
		["west"] = "wudang/houshan/conglin8",
	},
}
Room {
	id = "wudang/houshan/gudao1",
	name = "古道",
	ways = {
		["westdown"] = "wudang/shanlu2",
		["eastup"] = "wudang/houshan/gudao2",
	},
}
Room {
	id = "wudang/houshan/gudao2",
	name = "古道",
	ways = {
		["southup"] = "wudang/houshan/husunchou",
		["westdown"] = "wudang/houshan/gudao1",
		["northdown"] = "wudang/houshan/gudao3",
	},
}
Room {
	id = "wudang/houshan/gudao3",
	name = "古道",
	ways = {
		["southup"] = "wudang/houshan/gudao2",
	},
}
Room {
	id = "wudang/houshan/gudi",
	name = "谷底",
	ways = {
		["southeast"] = "wudang/houshan/clbianyuan1",
	},
}
Room {
	id = "wudang/houshan/hsxl1",
	name = "小路",
	ways = {
		["northdown"] = "wudang/houshan/hsxl2",
		["pa up"] = "wudang/houshan/taoyuan1",
	},
	nolooks = {
		["pa up"] = true,
	},
}
Room {
	id = "wudang/houshan/hsxl2",
	name = "山路",
	ways = {
		["southup"] = "wudang/houshan/hsxl1",
		["northdown"] = "wudang/houshan/hsxl3",
	},
}
Room {
	id = "wudang/houshan/hsxl3",
	name = "山路",
	ways = {
		["southup"] = "wudang/houshan/hsxl2",
		["northdown"] = "wudang/houshan/hsxl4",
	},
}
Room {
	id = "wudang/houshan/hsxl4",
	name = "山路",
	ways = {
		["southup"] = "wudang/houshan/hsxl3",
		["northdown"] = "wudang/houshan/hsxl5",
	},
}
Room {
	id = "wudang/houshan/hsxl5",
	name = "小路",
	ways = {
		["southup"] = "wudang/houshan/hsxl4",
		["northwest"] = "wudang/shanlu2",
	},
}
Room {
	id = "wudang/houshan/husunchou",
	name = "猢狲愁",
	ways = {
		["northdown"] = "wudang/houshan/gudao2",
	},
}
Room {
	id = "wudang/houshan/lwhole",
	name = "石壁岩洞",
	ways = {
		["out"] = "wudang/houshan/wanniansong",
	},
}
Room {
	id = "wudang/houshan/maowu",
	name = "茅屋",
	ways = {
		["north"] = "wudang/houshan/taoyuan3",
	},
}
Room {
	id = "wudang/houshan/taoyuan1",
	name = "峰顶",
	ways = {
		["east"] = "wudang/houshan/taoyuan3",
		["down"] = "wudang/houshan/hsxl1",
		["west"] = "wudang/houshan/taoyuan2",
	},
}
Room {
	id = "wudang/houshan/taoyuan2",
	name = "山顶",
	ways = {
		["east"] = "wudang/houshan/taoyuan1",
	},
}
Room {
	id = "wudang/houshan/taoyuan3",
	name = "山顶",
	ways = {
		["west"] = "wudang/houshan/taoyuan1",
	},
}
Room {
	id = "wudang/houshan/wanniansong",
	name = "万年松",
	ways = {
		["enter"] = "wudang/houshan/lwhole",
	},
}
Room {
	id = "wudang/houyuan",
	name = "后山小院",
	ways = {
		["north"] = "wudang/yuanmen",
	},
	nolooks = {
		["north"] = true,
	},
	precmds = {
		["north"] = "open door",
	},
}
Room {
	id = "wudang/husunchou",
	name = "猢狲愁",
	ways = {
		["northdown"] = "wudang/gudao2",
	},
}
Room {
	id = "wudang/jindian",
	name = "金殿",
	ways = {
		["east"] = "wudang/taihe",
	},
}
Room {
	id = "wudang/jingge",
	name = "藏经阁",
	ways = {
		["east"] = "wudang/donglang1",
	},
}
Room {
	id = "wudang/langmei",
	name = "榔梅祠",
	ways = {
		["westup"] = "wudang/qtguan",
		["northwest"] = "wudang/yxyan",
		["east"] = "wudang/shanlu2",
		["northdown"] = "wudang/gsdao5",
	},
}
Room {
	id = "wudang/laojun",
	name = "老君岩",
	ways = {
		["east"] = "wudang/fuzhen",
	},
}
Room {
	id = "wudang/ldfang",
	name = "炼丹房",
	ways = {
		["west"] = "wudang/zoulang2",
	},
}
Room {
	id = "wudang/leishen",
	name = "雷神洞",
	ways = {
		["northeast"] = "wudang/gsdao3",
	},
}
Room {
	id = "wudang/lgfang",
	name = "练功房",
	ways = {
		["south"] = "wudang/zoulang1",
	},
}
Room {
	id = "wudang/lwhole",
	name = "石壁岩洞",
	no_fight = true,
	ways = {
		["out"] = "wudang/wanniansong",
	},
}
Room {
	id = "wudang/mozhen",
	name = "磨针井",
	ways = {
		["southup"] = "wudang/wangbei",
		["eastup"] = "wudang/yuxuyan",
		["northdown"] = "wudang/yuxu",
	},
}
Room {
	id = "wudang/nanyan",
	name = "大圣南岩宫",
	ways = {
		["south"] = "wudang/gchang",
		["northdown"] = "wudang/zixia",
	},
}
Room {
	id = "wudang/qtguan",
	name = "琼台观",
	ways = {
		["eastdown"] = "wudang/langmei",
		["eastup"] = "wudang/gsdao6",
	},
}
Room {
	id = "wudang/sanqing",
	name = "三清殿",
	no_fight = true,
	ways = {
		["south"] = "wudang/xiaolu1",
		["north"] = "wudang/zoulang1",
		["out"] = "wudang/zhenqing",
	},
}
Room {
	id = "wudang/shanlu1",
	name = "山路",
	ways = {
		["westup"] = "wudang/yuxu",
		["northdown"] = "wudang/wdbolin",
	},
}
Room {
	id = "wudang/shanlu2",
	name = "山路",
	ways = {
		["southeast"] = "wudang/houshan/hsxl5",
		["west"] = "wudang/langmei",
	},
}
Room {
	id = "wudang/shanlu3",
	name = "灌木丛",
	ways = {
		["west"] = "wudang/shanlu2",
	},
}
Room {
	id = "wudang/shibapan",
	name = "十八盘",
	ways = {
		["southup"] = "wudang/fuzhen",
		["northdown"] = "wudang/caihong",
	},
}
Room {
	id = "wudang/shijie1",
	name = "石阶",
	ways = {
		["southup"] = "wudang/gsdao1",
		["northdown"] = "wudang/xuanyue",
	},
}
Room {
	id = "wudang/shijie2",
	name = "石阶",
	ways = {
		["southup"] = "wudang/zhanqi",
		["eastdown"] = "wudang/fuzhen",
	},
}
Room {
	id = "wudang/shijie3",
	name = "石阶",
	ways = {
		["southup"] = "wudang/zxgdamen",
		["northdown"] = "wudang/zhanqi",
	},
}
Room {
	id = "wudang/shijie4",
	name = "石阶",
	ways = {
		["southup"] = "wudang/gsdao5",
		["northdown"] = "wudang/gsdao4",
	},
}
Room {
	id = "wudang/taihe",
	name = "大岳太和宫",
	ways = {
		["northdown"] = "wudang/hldong",
		["west"] = "wudang/jindian",
	},
}
Room {
	id = "wudang/wangbei",
	name = "望背坡",
	ways = {
		["northdown"] = "wudang/mozhen",
		["southdown"] = "wudang/caihong",
	},
}
Room {
	id = "wudang/wanniansong",
	name = "万年松",
	ways = {
		["enter"] = "wudang/lwhole",
	},
}
Room {
	id = "wudang/wdbolin",
	name = "武当柏林",
	ways = {
		["southup"] = "wudang/shanlu1",
		["eastdown"] = "wudang/yuzhen",
	},
}
Room {
	id = "wudang/wdroad1",
	name = "通知",
	ways = {
		["north"] = "city/nanmen",
	},
}
Room {
	id = "wudang/wdroad2",
	name = "青石大道",
	ways = {
		["south"] = "wudang/wdroad3",
		["north"] = "wudang/wdroad1",
	},
}
Room {
	id = "wudang/wdroad3",
	name = "青石大道",
	ways = {
		["south"] = "wudang/wdroad4",
		["north"] = "wudang/wdroad2",
	},
}
Room {
	id = "wudang/wdroad4",
	name = "青石大道",
	ways = {
		["south"] = "wudang/wdroad5",
		["north"] = "wudang/wdroad3",
	},
}
Room {
	id = "wudang/wdroad5",
	name = "青石大道",
	ways = {
		["southwest"] = "wudang/wdroad6",
		["north"] = "wudang/wdroad4",
	},
}
Room {
	id = "wudang/wdroad6",
	name = "黄土路",
	ways = {
		["east"] = "xiangyang/hanshui2",
		["west"] = "group/entry/wdroad7",
	},
}
Room {
	id = "wudang/wdroad8",
	name = "山脚下",
	ways = {
		["southeast"] = "wudang/chating",
		["east"] = "group/entry/wdroad7",
		["west"] = "wudang/xuanyue",
	},
}
Room {
	id = "wudang/wulong",
	name = "五龙宫",
	ways = {
		["eastdown"] = "wudang/yxyan",
	},
}
Room {
	id = "wudang/xiaolu1",
	name = "小径",
	ways = {
		["south"] = "wudang/xiaolu2",
		["north"] = "wudang/sanqing",
		["east"] = "wudang/donglang2",
		["west"] = "wudang/donglang1",
	},
	blocks = {
		["south"] = {
			{id = "yu lianzhou", exp = 2000000, party = "武当派"},
		},
		["east"] = {
			{id = "yu lianzhou", exp = 2000000, party = "武当派"},
		},
		["west"] = {
			{id = "yu lianzhou", exp = 2000000, party = "武当派"},
		},
	},
}
Room {
	id = "wudang/xiaolu2",
	name = "小径",
	ways = {
		["south"] = "wudang/xiaolun",
		["north"] = "wudang/xiaolu1",
	},
}
Room {
	id = "wudang/xiaolun",
	name = "小径",
	ways = {
		["south"] = "wudang/xiaolun",
		["north"] = "wudang/xiaolun",
		["east"] = "wudang/xiaolun",
		["west"] = "wudang/xiaolun",
		["#wdYm"] = "wudang/yuanmen",
		["#wdSqd"] = "wudang/sanqing",
	},
	nolooks = {
		["#wdYm"] = true,
		["#wdSqd"] = true,
	},
	lengths = {
		["#wdYm"] = 200,
		["#wdSqd"] = 50,
	},
	find = {
		path = {"n;e", "e", "w", "s"},
	},
}
Room {
	id = "wudang/xiuxishi1",
	name = "男休息室",
	no_fight = true,
	ways = {
		["north"] = "wudang/donglang2",
	},
}
Room {
	id = "wudang/xiuxishi2",
	name = "女休息室",
	no_fight = true,
	ways = {
		["north"] = "wudang/donglang1",
	},
}
Room {
	id = "wudang/xuanyue",
	name = "玄岳门",
	ways = {
		["southup"] = "wudang/shijie1",
		["east"] = "wudang/wdroad8",
	},
}
Room {
	id = "wudang/yaofang",
	name = "药房",
	no_fight = true,
	ways = {
		["east"] = "wudang/zoulang3",
	},
}
Room {
	id = "wudang/yuanhe",
	name = "元和观",
	ways = {
		["southup"] = "wudang/gsdao2",
		["east"] = "wudang/yuanhe1",
		["northdown"] = "wudang/gsdao1",
	},
}
Room {
	id = "wudang/yuanhe1",
	name = "元和观大殿",
	ways = {
		["west"] = "wudang/yuanhe",
	},
}
Room {
	id = "wudang/yuanmen",
	name = "院门",
	ways = {
		["south"] = "wudang/houyuan",
		["north"] = "wudang/xiaolu2",
	},
	nolooks = {
		["south"] = true,
	},
	precmds = {
		["south"] = "open door",
	},
	blocks = {
		["south"] = {
			{id = "yin liting", exp = 900000,}
		},
	},
}
Room {
	id = "wudang/yuxu",
	name = "玉虚宫",
	ways = {
		["southup"] = "wudang/mozhen",
		["eastdown"] = "wudang/shanlu1",
	},
}
Room {
	id = "wudang/yuxuyan",
	name = "玉虚岩",
	ways = {
		["westdown"] = "wudang/mozhen",
	},
}
Room {
	id = "wudang/yuzhen",
	name = "遇真宫",
	ways = {
		["westup"] = "wudang/wdbolin",
		["northdown"] = "wudang/gsdao2",
	},
}
Room {
	id = "wudang/yxyan",
	name = "隐仙岩",
	ways = {
		["southeast"] = "wudang/langmei",
		["westup"] = "wudang/wulong",
	},
}
Room {
	id = "wudang/zhanqi",
	name = "展旗峰",
	ways = {
		["southup"] = "wudang/shijie3",
		["northdown"] = "wudang/shijie2",
		["west"] = "wudang/gsdao3",
	},
}
Room {
	id = "wudang/zhenqing",
	name = "天乙真庆宫",
	ways = {
		["southup"] = "wudang/gsdao4",
		["southwest"] = "wudang/feisheng",
		["enter"] = "wudang/sanqing",
		["north"] = "wudang/gchang",
	},
}
Room {
	id = "wudang/zixia",
	name = "紫霄宫",
	ways = {
		["southup"] = "wudang/nanyan",
		["out"] = "wudang/zxgdamen",
	},
}
Room {
	id = "wudang/zoulang1",
	name = "走廊",
	ways = {
		["south"] = "wudang/sanqing",
		["east"] = "wudang/zoulang2",
		["north"] = "wudang/lgfang",
		["west"] = "wudang/zoulang3",
	},
	blocks = {
		["north"] = {
			{id = "zhang songxi", exp = 800000, party = "武当派",},
		},
		["east"] = {
			{id = "zhang songxi", exp = 800000, party = "武当派",},
		},
		["west"] = {
			{id = "zhang songxi", exp = 800000, party = "武当派",},
		},
	},
}
Room {
	id = "wudang/zoulang2",
	name = "东厢走廊",
	ways = {
		["east"] = "wudang/ldfang",
		["west"] = "wudang/zoulang1",
	},
}
Room {
	id = "wudang/zoulang3",
	name = "西厢走廊",
	ways = {
		["east"] = "wudang/zoulang1",
		["west"] = "wudang/yaofang",
	},
}
Room {
	id = "wudang/zxgdamen",
	name = "紫霄宫大门",
	ways = {
		["enter"] = "wudang/zixia",
		["northdown"] = "wudang/shijie3",
	},
}
Room {
	id = "wuguan/bingqiku",
	name = "兵器库",
	ways = {
		["north"] = "wuguan/wuchang3",
	},
}
Room {
	id = "wuguan/caidi",
	name = "菜地",
	ways = {
		["south"] = "wuguan/houyuan",
	},
}
Room {
	id = "wuguan/caiyuan",
	name = "菜园",
	ways = {
		["west"] = "wuguan/houyuan",
	},
}
Room {
	id = "wuguan/chaifang",
	name = "柴房",
	ways = {
		["east"] = "wuguan/houyuan",
	},
}
Room {
	id = "wuguan/chufang",
	name = "厨房",
	ways = {
		["east"] = "wuguan/zoulang1",
	},
}
Room {
	id = "wuguan/citang",
	name = "破祠堂",
	ways = {
		["southwest"] = "wuguan/houhuayuan",
	},
}
Room {
	id = "wuguan/dating",
	name = "武馆大厅",
	ways = {
		["eastdown"] = "wuguan/zoulang5",
		["westdown"] = "wuguan/zoulang2",
		["southeast"] = "wuguan/wupinfang",
		["enter"] = "wuguan/zoulang4",
		["southdown"] = "wuguan/dayuan",
	},
}
Room {
	id = "wuguan/dayuan",
	name = "武馆前院",
	ways = {
		["northup"] = "wuguan/dating",
		["south"] = "wuguan/qianting",
		["east"] = "wuguan/shilu4",
		["west"] = "wuguan/shilu3",
	},
}
Room {
	id = "wuguan/houhuayuan",
	name = "后花园",
	ways = {
		["south"] = "wuguan/xiaojing1",
		["northeast"] = "wuguan/citang",
	},
}
Room {
	id = "wuguan/houyuan",
	name = "后院",
	ways = {
		["south"] = "wuguan/shilu1",
		["east"] = "wuguan/caiyuan",
		["north"] = "wuguan/caidi",
		["west"] = "wuguan/chaifang",
	},
}
Room {
	id = "wuguan/huilang",
	name = "回廊",
	ways = {
		["east"] = "wuguan/xiaojing2",
		["west"] = "wuguan/zoulang7",
	},
}
Room {
	id = "wuguan/jiashan",
	name = "假山",
	ways = {
		["south"] = "wuguan/zhulin1",
		["north"] = "wuguan/wxting",
	},
}
Room {
	id = "wuguan/jiashan1",
	name = "假山",
}
Room {
	id = "wuguan/liangong",
	name = "练功房",
	ways = {
		["north"] = "wuguan/shilu4",
	},
}
Room {
	id = "wuguan/mafang",
	name = "马厩",
	ways = {
		["north"] = "wuguan/shilu2",
	},
}
Room {
	id = "wuguan/menlang",
	name = "门廊",
	ways = {
		["north"] = "wuguan/qianting",
		["west"] = "wuguan/yiguan",
		["out"] = "xiangyang/damen",
	},
	precmds = {
		["out"] = "#outWg";
	},
}
Room {
	id = "wuguan/mishi",
	name = "密室",
	ways = {
		["out"] = "wuguan/jiashan1",
	},
}
Room {
	id = "wuguan/mufang",
	name = "木房",
	ways = {
		["east"] = "wuguan/shilu2",
	},
}
Room {
	id = "wuguan/pianting1",
	name = "偏厅",
	ways = {
		["south"] = "wuguan/zoulang5",
	},
}
Room {
	id = "wuguan/qianting",
	name = "武馆前厅",
	ways = {
		["south"] = "wuguan/menlang",
		["north"] = "wuguan/dayuan",
	},
}
Room {
	id = "wuguan/shilu1",
	name = "白石路",
	ways = {
		["south"] = "wuguan/zoulang1",
		["north"] = "wuguan/houyuan",
	},
}
Room {
	id = "wuguan/shilu2",
	name = "小路",
	ways = {
		["south"] = "wuguan/mafang",
		["north"] = "wuguan/wuchang2",
		["east"] = "wuguan/shuifang",
		["west"] = "wuguan/mufang",
	},
}
Room {
	id = "wuguan/shilu3",
	name = "小石路",
	ways = {
		["east"] = "wuguan/dayuan",
		["west"] = "wuguan/wuchang2",
	},
}
Room {
	id = "wuguan/shilu4",
	name = "碎石路",
	ways = {
		["south"] = "wuguan/liangong",
		["east"] = "wuguan/wuchang3",
		["west"] = "wuguan/dayuan",
	},
}
Room {
	id = "wuguan/shufang",
	name = "书房",
	ways = {
		["south"] = "wuguan/zoulang6",
	},
}
Room {
	id = "wuguan/shuifang",
	name = "水房",
	ways = {
		["west"] = "wuguan/shilu2",
	},
}
Room {
	id = "wuguan/woshi",
	name = "冬暖阁",
	ways = {
		["south"] = "wuguan/zoulang3",
	},
}
Room {
	id = "wuguan/wuchang1",
	name = "西武场",
	ways = {
		["east"] = "wuguan/wuchang2",
	},
}
Room {
	id = "wuguan/wuchang2",
	name = "西练武场",
	ways = {
		["south"] = "wuguan/shilu2",
		["north"] = "wuguan/zoulang1",
		["east"] = "wuguan/shilu3",
		["west"] = "wuguan/wuchang1",
	},
}
Room {
	id = "wuguan/wuchang3",
	name = "东练武场",
	ways = {
		["south"] = "wuguan/bingqiku",
		["east"] = "wuguan/wuchang4",
		["west"] = "wuguan/shilu4",
	},
}
Room {
	id = "wuguan/wuchang4",
	name = "东武场",
	ways = {
		["west"] = "wuguan/wuchang3",
	},
}
Room {
	id = "wuguan/wupinfang",
	name = "物品房",
	ways = {
		["northwest"] = "wuguan/dating",
	},
}
Room {
	id = "wuguan/wxting",
	name = "文霞亭",
	ways = {
		["south"] = "wuguan/jiashan",
		["west"] = "wuguan/xiaojing2",
	},
}
Room {
	id = "wuguan/xiangfang1",
	name = "东厢房",
	ways = {
		["east"] = "wuguan/xiangfang2",
		["west"] = "wuguan/zoulang3",
	},
}
Room {
	id = "wuguan/xiangfang2",
	name = "睡房",
	ways = {
		["west"] = "wuguan/xiangfang1",
	},
}
Room {
	id = "wuguan/xiaojing1",
	name = "小径",
	ways = {
		["south"] = "wuguan/xiaojing2",
		["north"] = "wuguan/houhuayuan",
	},
}
Room {
	id = "wuguan/xiaojing2",
	name = "石径",
	ways = {
		["north"] = "wuguan/xiaojing1",
		["east"] = "wuguan/wxting",
		["west"] = "wuguan/huilang",
	},
}
Room {
	id = "wuguan/xxshi1",
	name = "男休息室",
	ways = {
		["south"] = "wuguan/zoulang7",
	},
}
Room {
	id = "wuguan/xxshi2",
	name = "女休息室",
	ways = {
		["north"] = "wuguan/zoulang7",
	},
}
Room {
	id = "wuguan/yiguan",
	name = "驿馆",
	ways = {
		["east"] = "wuguan/menlang",
	},
}
Room {
	id = "wuguan/zhangfang",
	name = "帐房",
	ways = {
		["north"] = "wuguan/zoulang6",
	},
}
Room {
	id = "wuguan/zhulin1",
	name = "竹林",
	ways = {
		["south"] = "wuguan/zhulin1",
		["east"] = "wuguan/zhulin2",
		["north"] = "wuguan/zhulin1",
		["west"] = "wuguan/zhulin1",
	},
}
Room {
	id = "wuguan/zhulin2",
	name = "竹林",
	ways = {
		["south"] = "wuguan/zhulin2",
		["north"] = "wuguan/zhulin3",
		["east"] = "wuguan/zhulin2",
		["west"] = "wuguan/zhulin2",
	},
}
Room {
	id = "wuguan/zhulin3",
	name = "竹林",
	ways = {
		["south"] = "wuguan/zhulin3",
		["north"] = "wuguan/zhulin4",
		["east"] = "wuguan/zhulin3",
		["west"] = "wuguan/zhulin3",
	},
}
Room {
	id = "wuguan/zhulin4",
	name = "竹林",
	ways = {
		["south"] = "wuguan/zhulin4",
		["east"] = "wuguan/zhulin4",
		["north"] = "wuguan/zhulin4",
		["west"] = "wuguan/jiashan",
	},
}
Room {
	id = "wuguan/zoulang1",
	name = "西廊",
	ways = {
		["south"] = "wuguan/wuchang2",
		["east"] = "wuguan/zoulang2",
		["north"] = "wuguan/shilu1",
		["west"] = "wuguan/chufang",
	},
}
Room {
	id = "wuguan/zoulang2",
	name = "西廊",
	ways = {
		["eastup"] = "wuguan/dating",
		["west"] = "wuguan/zoulang1",
	},
}
Room {
	id = "wuguan/zoulang3",
	name = "走廊",
	ways = {
		["south"] = "wuguan/zoulang4",
		["east"] = "wuguan/xiangfang1",
		["north"] = "wuguan/woshi",
	},
}
Room {
	id = "wuguan/zoulang4",
	name = "走廊",
	ways = {
		["north"] = "wuguan/zoulang3",
		["out"] = "wuguan/dating",
	},
}
Room {
	id = "wuguan/zoulang5",
	name = "东廊",
	ways = {
		["westup"] = "wuguan/dating",
		["east"] = "wuguan/zoulang6",
		["north"] = "wuguan/pianting1",
	},
}
Room {
	id = "wuguan/zoulang6",
	name = "东廊",
	ways = {
		["south"] = "wuguan/zhangfang",
		["east"] = "wuguan/zoulang7",
		["north"] = "wuguan/shufang",
		["west"] = "wuguan/zoulang5",
	},
}
Room {
	id = "wuguan/zoulang7",
	name = "东廊",
	ways = {
		["south"] = "wuguan/xxshi2",
		["north"] = "wuguan/xxshi1",
		["east"] = "wuguan/huilang",
		["west"] = "wuguan/zoulang6",
	},
}
Room {
	id = "xiakedao/chashi",
	name = "茶室",
	ways = {
		["east"] = "xiakedao/neiting",
	},
}
Room {
	id = "xiakedao/dating",
	name = "大厅",
	ways = {
		["east"] = "xiakedao/shufang",
		["north"] = "xiakedao/shidong5",
		["west"] = "xiakedao/wuqiku",
	},
}
Room {
	id = "xiakedao/dongmen",
	name = "洞门",
	ways = {
		["enter"] = "xiakedao/yingbin",
		["west"] = "xiakedao/shidong1",
	},
}
Room {
	id = "xiakedao/haigang",
	name = "渔港",
	ways = {
		["east"] = "xiakedao/xkroad4",
	},
}
Room {
	id = "xiakedao/haitan",
	name = "海滩",
	ways = {
		["south"] = "xiakedao/lin1",
	},
}
Room {
	id = "xiakedao/lin1",
	name = "树林",
	ways = {
		["south"] = "xiakedao/lin2",
		["east"] = "xiakedao/lin1",
		["north"] = "xiakedao/haitan",
		["west"] = "xiakedao/lin1",
	},
}
Room {
	id = "xiakedao/lin2",
	name = "树林",
	ways = {
		["southeast"] = "xiakedao/lin2",
		["south"] = "xiakedao/lin2",
		["east"] = "xiakedao/lin3",
		["north"] = "xiakedao/lin2",
		["northeast"] = "xiakedao/lin2",
		["west"] = "xiakedao/lin1",
	},
}
Room {
	id = "xiakedao/lin3",
	name = "树林",
	ways = {
		["southeast"] = "xiakedao/lin4",
		["south"] = "xiakedao/lin3",
		["east"] = "xiakedao/lin3",
		["north"] = "xiakedao/lin3",
		["northeast"] = "xiakedao/lin3",
		["west"] = "xiakedao/lin2",
	},
}
Room {
	id = "xiakedao/lin4",
	name = "树林",
	ways = {
		["southeast"] = "xiakedao/lin4",
		["south"] = "xiakedao/lin4",
		["northwest"] = "xiakedao/lin3",
		["east"] = "xiakedao/lin4",
		["north"] = "xiakedao/lin4",
		["west"] = "xiakedao/lin5",
	},
}
Room {
	id = "xiakedao/lin5",
	name = "树林",
	ways = {
		["southeast"] = "xiakedao/lin5",
		["south"] = "xiakedao/lin5",
		["northwest"] = "xiakedao/lin6",
		["north"] = "xiakedao/lin5",
		["east"] = "xiakedao/lin4",
		["west"] = "xiakedao/lin5",
	},
}
Room {
	id = "xiakedao/lin6",
	name = "树林",
	ways = {
		["southeast"] = "xiakedao/lin5",
		["south"] = "xiakedao/lin6",
		["northwest"] = "xiakedao/lin6",
		["east"] = "xiakedao/lin7",
		["north"] = "xiakedao/lin6",
		["west"] = "xiakedao/lin6",
	},
}
Room {
	id = "xiakedao/lin7",
	name = "树林",
	ways = {
		["southeast"] = "xiakedao/lin7",
		["south"] = "xiakedao/lin8",
		["northwest"] = "xiakedao/lin7",
		["north"] = "xiakedao/lin7",
		["east"] = "xiakedao/lin7",
		["west"] = "xiakedao/lin6",
	},
}
Room {
	id = "xiakedao/lin8",
	name = "树林",
	ways = {
		["south"] = "xiakedao/shanmen",
		["north"] = "xiakedao/lin7",
	},
}
Room {
	id = "xiakedao/midao1",
	name = "秘密通道",
	ways = {
		["south"] = "xiakedao/midao1",
		["east"] = "xiakedao/midao2",
		["north"] = "xiakedao/midao1",
		["west"] = "xiakedao/midao1",
	},
}
Room {
	id = "xiakedao/midao2",
	name = "秘密通道",
	ways = {
		["south"] = "xiakedao/midao3",
		["north"] = "xiakedao/midao2",
		["east"] = "xiakedao/midao2",
		["west"] = "xiakedao/midao1",
	},
}
Room {
	id = "xiakedao/midao3",
	name = "秘密通道",
	ways = {
		["south"] = "xiakedao/midao3",
		["east"] = "xiakedao/midao3",
		["north"] = "xiakedao/midao2",
		["west"] = "xiakedao/midao4",
	},
}
Room {
	id = "xiakedao/midao4",
	name = "密道",
	ways = {
		["east"] = "xiakedao/midao3",
	},
}
Room {
	id = "xiakedao/midao5",
	name = "秘密通道",
	ways = {
		["east"] = "xiakedao/midao4",
		["out"] = "xiakedao/neiting",
	},
}
Room {
	id = "xiakedao/midao6",
	name = "石洞",
	ways = {
		["west"] = "xiakedao/midao7",
	},
}
Room {
	id = "xiakedao/midao7",
	name = "秘密通道",
	ways = {
		["northup"] = "xiakedao/midao8",
		["east"] = "xiakedao/midao6",
		["out"] = "xiakedao/dating",
	},
}
Room {
	id = "xiakedao/midao8",
	name = "密道",
}
Room {
	id = "xiakedao/mtdating",
	name = "大厅",
	ways = {
		["down"] = "xiakedao/mtyadi",
		["east"] = "xiakedao/mtxiaowu",
	},
}
Room {
	id = "xiakedao/mtroad",
	name = "山路",
	ways = {
		["south"] = "xiakedao/mtyadi",
		["east"] = "xiakedao/mtroad1",
	},
}
Room {
	id = "xiakedao/mtroad1",
	name = "树林",
	ways = {
		["south"] = "xiakedao/mtroad2",
		["north"] = "xiakedao/mtroad1",
		["west"] = "xiakedao/mtroad",
	},
}
Room {
	id = "xiakedao/mtroad2",
	name = "树林",
	ways = {
		["south"] = "xiakedao/mtroad2",
		["north"] = "xiakedao/mtroad3",
		["east"] = "xiakedao/mtroad1",
		["west"] = "xiakedao/mtroad2",
	},
}
Room {
	id = "xiakedao/mtroad3",
	name = "树林",
	ways = {
		["south"] = "xiakedao/mtroad4",
		["north"] = "xiakedao/mtroad3",
		["east"] = "xiakedao/mtroad2",
		["west"] = "xiakedao/mtroad3",
	},
}
Room {
	id = "xiakedao/mtroad4",
	name = "树林",
	ways = {
		["south"] = "xiakedao/mtroad4",
		["north"] = "xiakedao/mtroad6",
		["east"] = "xiakedao/mtroad3",
		["west"] = "xiakedao/mtroad5",
	},
}
Room {
	id = "xiakedao/mtroad5",
	name = "树林",
	ways = {
		["south"] = "xiakedao/mtroad5",
		["north"] = "xiakedao/mtroad5",
		["east"] = "xiakedao/mtroad4",
		["west"] = "xiakedao/mtroad5",
	},
}
Room {
	id = "xiakedao/mtroad6",
	name = "树林",
	ways = {
		["south"] = "xiakedao/mtroad4",
		["north"] = "xiakedao/mtroad4",
		["east"] = "xiakedao/mtroad4",
		["west"] = "xiakedao/mtroad4",
	},
}
Room {
	id = "xiakedao/mtxiaowu",
	name = "木屋",
	ways = {
		["west"] = "xiakedao/mtdating",
	},
}
Room {
	id = "xiakedao/mtyadi",
	name = "崖底",
	ways = {
		["north"] = "xiakedao/mtroad",
	},
}
Room {
	id = "xiakedao/neiting",
	name = "内厅",
	ways = {
		["enter"] = "xiakedao/shihole1",
		["north"] = "xiakedao/xiuxis2",
		["east"] = "xiakedao/shibi",
		["west"] = "xiakedao/chashi",
	},
}
Room {
	id = "xiakedao/pubu",
	name = "瀑布",
	ways = {
		["northdown"] = "xiakedao/road4",
	},
}
Room {
	id = "xiakedao/road1",
	name = "山路",
	ways = {
		["southup"] = "xiakedao/road2",
		["northdown"] = "xiakedao/shanmen",
	},
}
Room {
	id = "xiakedao/road2",
	name = "山路",
	ways = {
		["southup"] = "xiakedao/road3",
		["northdown"] = "xiakedao/road1",
	},
}
Room {
	id = "xiakedao/road3",
	name = "山路",
	ways = {
		["southup"] = "xiakedao/road4",
		["northdown"] = "xiakedao/road2",
	},
}
Room {
	id = "xiakedao/road4",
	name = "山路",
	ways = {
		["southup"] = "xiakedao/pubu",
		["northdown"] = "xiakedao/road3",
	},
}
Room {
	id = "xiakedao/road5",
	name = "山路",
	ways = {
		["southup"] = "xiakedao/road6",
		["north"] = "xiakedao/shidong8",
	},
}
Room {
	id = "xiakedao/road6",
	name = "山路",
	ways = {
		["southup"] = "xiakedao/road7",
		["northdown"] = "xiakedao/road5",
	},
}
Room {
	id = "xiakedao/road7",
	name = "夹鳖石",
	ways = {
		["southup"] = "xiakedao/road8",
		["northdown"] = "xiakedao/road6",
	},
}
Room {
	id = "xiakedao/road8",
	name = "一线天",
	ways = {
		["southup"] = "xiakedao/wangyun",
		["northdown"] = "xiakedao/road7",
	},
}
Room {
	id = "xiakedao/shanmen",
	name = "山门",
	ways = {
		["southup"] = "xiakedao/road1",
		["north"] = "xiakedao/lin8",
	},
}
Room {
	id = "xiakedao/shibi",
	name = "石壁",
	ways = {
		["south"] = "xiakedao/xiaowu",
		["east"] = "xiakedao/wuchang",
		["west"] = "xiakedao/neiting",
		["out"] = "xiakedao/shimen",
	},
}
Room {
	id = "xiakedao/shidong1",
	name = "石洞",
	ways = {
		["south"] = "xiakedao/shidong6",
		["north"] = "xiakedao/yongdao2",
		["east"] = "xiakedao/dongmen",
	},
}
Room {
	id = "xiakedao/shidong10",
	name = "石洞",
	ways = {
		["east"] = "xiakedao/shidong9",
		["out"] = "xiakedao/dating",
	},
}
Room {
	id = "xiakedao/shidong2",
	name = "石洞",
	ways = {
		["south"] = "xiakedao/shidong2",
		["north"] = "xiakedao/yingbin",
		["east"] = "xiakedao/shidong3",
		["west"] = "xiakedao/shidong2",
	},
}
Room {
	id = "xiakedao/shidong3",
	name = "石洞",
	ways = {
		["south"] = "xiakedao/shidong4",
		["north"] = "xiakedao/yingbin",
		["east"] = "xiakedao/shidong3",
		["west"] = "xiakedao/shidong3",
	},
}
Room {
	id = "xiakedao/shidong4",
	name = "石洞",
	ways = {
		["south"] = "xiakedao/shidong4",
		["north"] = "xiakedao/yingbin",
		["east"] = "xiakedao/shidong4",
		["west"] = "xiakedao/shidong5",
	},
}
Room {
	id = "xiakedao/shidong5",
	name = "石洞",
	ways = {
		["south"] = "xiakedao/dating",
		["north"] = "xiakedao/yingbin",
		["east"] = "xiakedao/shidong5",
		["west"] = "xiakedao/shidong5",
	},
}
Room {
	id = "xiakedao/shidong6",
	name = "石洞",
	ways = {
		["south"] = "xiakedao/shidong7",
		["north"] = "xiakedao/shidong1",
	},
}
Room {
	id = "xiakedao/shidong7",
	name = "石洞",
	ways = {
		["north"] = "xiakedao/shidong6",
		["west"] = "xiakedao/shidong8",
	},
}
Room {
	id = "xiakedao/shidong8",
	name = "石洞",
	ways = {
		["east"] = "xiakedao/shidong7",
	},
}
Room {
	id = "xiakedao/shidong9",
	name = "石洞",
	ways = {
		["east"] = "xiakedao/yadi",
		["west"] = "xiakedao/shidong10",
	},
}
Room {
	id = "xiakedao/shihole1",
	name = "石洞",
	ways = {
		["south"] = "xiakedao/shiroom02",
		["enter"] = "xiakedao/shihole2",
		["east"] = "xiakedao/shiroom03",
		["north"] = "xiakedao/shiroom01",
		["west"] = "xiakedao/shiroom04",
		["out"] = "xiakedao/neiting",
	},
}
Room {
	id = "xiakedao/shihole2",
	name = "石洞",
	ways = {
		["south"] = "xiakedao/shiroom06",
		["enter"] = "xiakedao/shihole3",
		["east"] = "xiakedao/shiroom07",
		["north"] = "xiakedao/shiroom05",
		["west"] = "xiakedao/shiroom08",
		["out"] = "xiakedao/shihole1",
	},
}
Room {
	id = "xiakedao/shihole3",
	name = "石洞",
	ways = {
		["south"] = "xiakedao/shiroom10",
		["enter"] = "xiakedao/shihole4",
		["east"] = "xiakedao/shiroom11",
		["north"] = "xiakedao/shiroom09",
		["west"] = "xiakedao/shiroom12",
		["out"] = "xiakedao/shihole2",
	},
}
Room {
	id = "xiakedao/shihole4",
	name = "石洞",
	ways = {
		["south"] = "xiakedao/shiroom14",
		["enter"] = "xiakedao/shihole5",
		["east"] = "xiakedao/shiroom15",
		["north"] = "xiakedao/shiroom13",
		["west"] = "xiakedao/shiroom16",
		["out"] = "xiakedao/shihole3",
	},
}
Room {
	id = "xiakedao/shihole5",
	name = "石洞",
	ways = {
		["south"] = "xiakedao/shiroom18",
		["enter"] = "xiakedao/shihole6",
		["east"] = "xiakedao/shiroom19",
		["north"] = "xiakedao/shiroom17",
		["west"] = "xiakedao/shiroom20",
		["out"] = "xiakedao/shihole4",
	},
}
Room {
	id = "xiakedao/shihole6",
	name = "石洞",
	ways = {
		["south"] = "xiakedao/shiroom22",
		["east"] = "xiakedao/shiroom23",
		["north"] = "xiakedao/shiroom21",
		["west"] = "xiakedao/shiroom24",
		["out"] = "xiakedao/shihole5",
	},
}
Room {
	id = "xiakedao/shimen",
	name = "石门",
	ways = {
		["enter"] = "xiakedao/shibi",
		["north"] = "xiakedao/yongdao3",
	},
}
Room {
	id = "xiakedao/shiroom01",
	name = "石室",
	ways = {
		["south"] = "xiakedao/shihole1",
	},
}
Room {
	id = "xiakedao/shiroom02",
	name = "石室",
	ways = {
		["north"] = "xiakedao/shihole1",
	},
}
Room {
	id = "xiakedao/shiroom03",
	name = "石室",
	ways = {
		["west"] = "xiakedao/shihole1",
	},
}
Room {
	id = "xiakedao/shiroom04",
	name = "石室",
}
Room {
	id = "xiakedao/shiroom05",
	name = "石室",
	ways = {
		["south"] = "xiakedao/shihole2",
	},
}
Room {
	id = "xiakedao/shiroom06",
	name = "石室",
	ways = {
		["north"] = "xiakedao/shihole2",
	},
}
Room {
	id = "xiakedao/shiroom07",
	name = "石室",
	ways = {
		["west"] = "xiakedao/shihole2",
	},
}
Room {
	id = "xiakedao/shiroom08",
	name = "石室",
	ways = {
		["east"] = "xiakedao/shihole2",
	},
}
Room {
	id = "xiakedao/shiroom09",
	name = "石室",
	ways = {
		["south"] = "xiakedao/shihole3",
	},
}
Room {
	id = "xiakedao/shiroom10",
	name = "石室",
	ways = {
		["north"] = "xiakedao/shihole3",
	},
}
Room {
	id = "xiakedao/shiroom11",
	name = "石室",
	ways = {
		["west"] = "xiakedao/shihole3",
	},
}
Room {
	id = "xiakedao/shiroom12",
	name = "石室",
	ways = {
		["east"] = "xiakedao/shihole3",
	},
}
Room {
	id = "xiakedao/shiroom13",
	name = "石室",
	ways = {
		["south"] = "xiakedao/shihole4",
	},
}
Room {
	id = "xiakedao/shiroom14",
	name = "石室",
	ways = {
		["north"] = "xiakedao/shihole4",
	},
}
Room {
	id = "xiakedao/shiroom15",
	name = "石室",
	ways = {
		["west"] = "xiakedao/shihole4",
	},
}
Room {
	id = "xiakedao/shiroom16",
	name = "石室",
	ways = {
		["east"] = "xiakedao/shihole4",
	},
}
Room {
	id = "xiakedao/shiroom17",
	name = "石室",
	ways = {
		["south"] = "xiakedao/shihole5",
	},
}
Room {
	id = "xiakedao/shiroom18",
	name = "石室",
	ways = {
		["north"] = "xiakedao/shihole5",
	},
}
Room {
	id = "xiakedao/shiroom19",
	name = "石室",
	ways = {
		["west"] = "xiakedao/shihole5",
	},
}
Room {
	id = "xiakedao/shiroom20",
	name = "石室",
	ways = {
		["east"] = "xiakedao/shihole5",
	},
}
Room {
	id = "xiakedao/shiroom21",
	name = "石室",
	ways = {
		["south"] = "xiakedao/shihole6",
	},
}
Room {
	id = "xiakedao/shiroom22",
	name = "石室",
	ways = {
		["north"] = "xiakedao/shihole6",
	},
}
Room {
	id = "xiakedao/shiroom23",
	name = "石室",
	ways = {
		["west"] = "xiakedao/shihole6",
	},
}
Room {
	id = "xiakedao/shiroom24",
	name = "石室",
	ways = {
		["east"] = "xiakedao/shihole6",
	},
}
Room {
	id = "xiakedao/shufang",
	name = "书房",
}
Room {
	id = "xiakedao/wangyun",
	name = "望云台",
	ways = {
		["northdown"] = "xiakedao/road8",
	},
}
Room {
	id = "xiakedao/wuchang",
	name = "武场",
	ways = {
		["west"] = "xiakedao/shibi",
	},
}
Room {
	id = "xiakedao/wuqiku",
	name = "武器库",
	ways = {
		["east"] = "xiakedao/dating",
	},
}
Room {
	id = "xiakedao/xiaodian",
	name = "小吃店",
	ways = {
		["west"] = "xiakedao/yingbin",
	},
}
Room {
	id = "xiakedao/xiaowu",
	name = "石室",
	ways = {
		["north"] = "xiakedao/shibi",
	},
}
Room {
	id = "xiakedao/xiuxis",
	name = "休息室",
	ways = {
		["east"] = "xiakedao/yingbin",
	},
}
Room {
	id = "xiakedao/xiuxis2",
	name = "休息室",
	ways = {
		["south"] = "xiakedao/neiting",
	},
}
Room {
	id = "xiakedao/xkroad1",
	name = "南岭山口",
	ways = {
		["south"] = "xiakedao/xkroad2",
	},
}
Room {
	id = "xiakedao/xkroad2",
	name = "佛山",
	ways = {
		["south"] = "xiakedao/xkroad3",
		["north"] = "xiakedao/xkroad1",
	},
}
Room {
	id = "xiakedao/xkroad3",
	name = "平原小路",
	ways = {
		["south"] = "xiakedao/xkroad4",
	},
}
Room {
	id = "xiakedao/xkroad4",
	name = "南海渔村",
	ways = {
		["east"] = "xiakedao/xkroad5",
		["north"] = "xiakedao/xkroad3",
		["west"] = "xiakedao/haigang",
	},
}
Room {
	id = "xiakedao/xkroad5",
	name = "渔村晒网场",
	ways = {
		["north"] = "xiakedao/xkroad6",
		["west"] = "xiakedao/xkroad4",
	},
}
Room {
	id = "xiakedao/xkroad6",
	name = "渔村小屋",
	ways = {
		["south"] = "xiakedao/xkroad5",
	},
}
Room {
	id = "xiakedao/yadi",
	name = "崖底",
}
Room {
	id = "xiakedao/yingbin",
	name = "迎宾馆",
	ways = {
		["south"] = "xiakedao/shidong2",
		["east"] = "xiakedao/xiaodian",
		["west"] = "xiakedao/xiuxis",
		["out"] = "xiakedao/dongmen",
	},
}
Room {
	id = "xiakedao/yongdao1",
	name = "甬道",
	ways = {
		["south"] = "xiakedao/yongdao2",
		["out"] = "xiakedao/pubu",
	},
}
Room {
	id = "xiakedao/yongdao2",
	name = "甬道",
	ways = {
		["south"] = "xiakedao/shidong1",
		["north"] = "xiakedao/yongdao1",
	},
}
Room {
	id = "xiakedao/yongdao3",
	name = "甬道",
	ways = {
		["south"] = "xiakedao/shimen",
		["north"] = "xiakedao/dating",
	},
}
Room {
	id = "xiangyang/baihumen",
	name = "白虎门",
	ways = {
		["east"] = "xiangyang/bhmnj",
		["west"] = "xiangyang/outwroad1",
	},
}
Room {
	id = "xiangyang/bank",
	name = "宝龙斋",
	ways = {
		["east"] = "xiangyang/njie3",
	},
}
Room {
	id = "xiangyang/baozipu",
	name = "包子铺",
	ways = {
		["east"] = "xiangyang/xcx4",
	},
}
Room {
	id = "xiangyang/bcx1",
	name = "北城巷",
	ways = {
		["east"] = "xiangyang/bjie1",
		["west"] = "xiangyang/bcx2",
	},
}
Room {
	id = "xiangyang/bcx2",
	name = "北城巷",
	ways = {
		["south"] = "xiangyang/guangc",
		["north"] = "xiangyang/zrdian",
		["east"] = "xiangyang/bcx1",
		["west"] = "xiangyang/bcx3",
	},
}
Room {
	id = "xiangyang/bcx3",
	name = "北城巷",
	ways = {
		["south"] = "xiangyang/bcx4",
		["north"] = "xiangyang/jianghukz",
		["east"] = "xiangyang/bcx2",
		["west"] = "xiangyang/xyudian",
	},
}
Room {
	id = "xiangyang/bcx4",
	name = "北城巷",
	ways = {
		["south"] = "xiangyang/bhmnj",
		["north"] = "xiangyang/bcx3",
		["west"] = "xiangyang/xiaocd",
	},
}
Room {
	id = "xiangyang/bhmnj",
	name = "白虎门内街",
	ways = {
		["south"] = "xiangyang/xcx1",
		["east"] = "xiangyang/xjie",
		["north"] = "xiangyang/bcx4",
		["west"] = "xiangyang/baihumen",
	},
}
Room {
	id = "xiangyang/bingying",
	name = "兵营",
	ways = {
		["south"] = "xiangyang/ncx3",
	},
}
Room {
	id = "xiangyang/bjie1",
	name = "北街",
	ways = {
		["south"] = "xiangyang/bjie2",
		["north"] = "xiangyang/nroad1",
		["east"] = "xiangyang/duchang",
		["west"] = "xiangyang/bcx1",
	},
}
Room {
	id = "xiangyang/bjie2",
	name = "北街",
	ways = {
		["south"] = "xiangyang/bjie3",
		["east"] = "xiangyang/chalou",
		["north"] = "xiangyang/bjie1",
	},
}
Room {
	id = "xiangyang/bjie3",
	name = "北街",
	ways = {
		["south"] = "xiangyang/dpailou",
		["north"] = "xiangyang/bjie2",
		["west"] = "xiangyang/cross1",
	},
}
Room {
	id = "xiangyang/caiyongmanor",
	name = "蔡邕庄",
	ways = {
		["north"] = "xiangyang/caiyongtomb",
		["east"] = "changan/southroad3",
	},
}
Room {
	id = "xiangyang/caiyongtomb",
	name = "蔡邕墓",
	ways = {
		["south"] = "xiangyang/caiyongmanor",
	},
}
Room {
	id = "xiangyang/chalou",
	name = "天香楼",
	ways = {
		["west"] = "xiangyang/bjie2",
		["up"] = "xiangyang/chalou2",
	},
}
Room {
	id = "xiangyang/chalou2",
	name = "茶楼二楼",
	ways = {
		["down"] = "xiangyang/chalou",
	},
}
Room {
	id = "xiangyang/chayedian",
	name = "茶叶店",
	ways = {
		["east"] = "xiangyang/xcx1",
	},
}
Room {
	id = "xiangyang/chemahang",
	name = "车马行",
	ways = {
		["south"] = "xiangyang/ncx2",
	},
}
Room {
	id = "xiangyang/chengyipu",
	name = "成衣铺",
	ways = {
		["west"] = "xiangyang/dcx3",
	},
}
Room {
	id = "xiangyang/chucshi",
	name = "储藏室",
	ways = {
		["north"] = "xiangyang/yamen",
	},
}
Room {
	id = "xiangyang/conglin1",
	name = "山路",
	ways = {
		["eastdown"] = "xiangyang/outsroad3",
		["westup"] = "xiangyang/conglin2",
	},
}
Room {
	id = "xiangyang/conglin2",
	name = "山路",
	ways = {
		["eastdown"] = "xiangyang/conglin1",
		["westup"] = "xiangyang/conglin3",
	},
}
Room {
	id = "xiangyang/conglin3",
	name = "山路",
	ways = {
		["eastdown"] = "xiangyang/conglin2",
		["westup"] = "xiangyang/conglin4",
	},
}
Room {
	id = "xiangyang/conglin4",
	name = "山间空地",
	ways = {
		["eastdown"] = "xiangyang/conglin3",
		["northwest"] = "gumu/xuantie/xiaolu4",
	},
}
Room {
	id = "xiangyang/cross1",
	name = "北丁字街",
	ways = {
		["south"] = "xiangyang/xpailou",
		["east"] = "xiangyang/bjie3",
		["west"] = "xiangyang/xjie",
	},
}
Room {
	id = "xiangyang/cross2",
	name = "南丁字街",
	ways = {
		["north"] = "xiangyang/dpailou",
		["east"] = "xiangyang/djie1",
		["west"] = "xiangyang/njie1",
	},
}
Room {
	id = "xiangyang/damen",
	name = "武馆大门",
	no_fight = true,
	ways = {
		["south"] = "xiangyang/eroad1",
		["enter"] = "wuguan/menlang",
	},
	lengths = {
		["enter"] = "if getExp() < 3000 then return 1 else return false end",
	},
}
Room {
	id = "xiangyang/dangpu",
	name = "当铺",
	no_fight = true,
	ways = {
		["south"] = "xiangyang/djie1",
	},
}
Room {
	id = "xiangyang/datiepu",
	name = "打铁铺",
	ways = {
		["west"] = "xiangyang/ncx5",
	},
}
Room {
	id = "xiangyang/dcx1",
	name = "东城巷",
	ways = {
		["south"] = "xiangyang/dcx2",
		["east"] = "xiangyang/feizhai",
		["west"] = "xiangyang/nroad1",
	},
}
Room {
	id = "xiangyang/dcx2",
	name = "东城巷",
	ways = {
		["south"] = "xiangyang/dcx3",
		["east"] = "xiangyang/zahuopu",
		["north"] = "xiangyang/dcx1",
	},
}
Room {
	id = "xiangyang/dcx3",
	name = "东城巷",
	ways = {
		["south"] = "xiangyang/dcx4",
		["north"] = "xiangyang/dcx2",
		["east"] = "xiangyang/chengyipu",
	},
}
Room {
	id = "xiangyang/dcx4",
	name = "东城巷",
	ways = {
		["south"] = "xiangyang/dcx5",
		["east"] = "xiangyang/xiyuan",
		["north"] = "xiangyang/dcx3",
	},
}
Room {
	id = "xiangyang/dcx5",
	name = "东城巷",
	ways = {
		["south"] = "xiangyang/djie2",
		["north"] = "xiangyang/dcx4",
	},
}
Room {
	id = "xiangyang/djie1",
	name = "东街",
	ways = {
		["east"] = "xiangyang/djie2",
		["north"] = "xiangyang/dangpu",
		["west"] = "xiangyang/cross2",
	},
}
Room {
	id = "xiangyang/djie2",
	name = "东街",
	ways = {
		["east"] = "xiangyang/eroad1",
		["north"] = "xiangyang/dcx5",
		["west"] = "xiangyang/djie1",
	},
}
Room {
	id = "xiangyang/doufufang",
	name = "豆腐坊",
	ways = {
		["east"] = "xiangyang/xcx2",
	},
}
Room {
	id = "xiangyang/dpailou",
	name = "东牌楼",
	ways = {
		["south"] = "xiangyang/cross2",
		["north"] = "xiangyang/bjie3",
	},
}
Room {
	id = "xiangyang/duchang",
	name = "万金赌坊",
	no_fight = true,
	ways = {
		["west"] = "xiangyang/bjie1",
	},
}
Room {
	id = "xiangyang/eroad1",
	name = "青龙门内街",
	ways = {
		["south"] = "xiangyang/ncx5",
		["east"] = "xiangyang/qinglongmen",
		["north"] = "xiangyang/damen",
		["west"] = "xiangyang/djie2",
	},
}
Room {
	id = "xiangyang/feizhai",
	name = "废宅",
	ways = {
		["west"] = "xiangyang/dcx1",
	},
}
Room {
	id = "xiangyang/guangc",
	name = "擂台前广场",
	ways = {
		["north"] = "xiangyang/bcx2",
		-- ["longhu"] = "wizard/lt2",
		-- ["fengyun"] = "wizard/lt1",
		-- ["tiandi"] = "wizard/lt",
	},
	nolooks = {
		["longhu"] = true,
		["fengyun"] = true,
		["tiandi"] = true,
	},
}
Room {
	id = "xiangyang/hanshui1",
	name = "汉水东岸",
	ways = {
		["east"] = "xiangyang/outnroad3",
		["dujiang"] = "xiangyang/hanshui2",
	},
	nolooks = {
		["dujiang"] = true,
	},
	lengths = {
		["dujiang"] = "if getJifaDodge() < 80 then return false else return 1 end",
	},
}
Room {
	id = "xiangyang/hanshui2",
	name = "汉水西岸",
	ways = {
		["west"] = "wudang/wdroad6",
		["dujiang"] = "xiangyang/hanshui1",
	},
	nolooks = {
		["dujiang"] = true,
	},
	lengths = {
		["dujiang"] = "if getJifaDodge() < 80 then return false else return 1 end",
	},
}
Room {
	id = "xiangyang/henanroad1",
	name = "土路",
	ways = {
		["southwest"] = "xiangyang/outnroad3",
		["northeast"] = "xiangyang/henanroad2",
	},
}
Room {
	id = "xiangyang/henanroad2",
	name = "土路",
	ways = {
		["southwest"] = "xiangyang/henanroad1",
		["north"] = "nanyang/yidao",
	},
}
Room {
	id = "xiangyang/hunanroad1",
	name = "湘鄂交界",
	ways = {
		["southwest"] = "xiangyang/hunanroad2",
		["north"] = "xiangyang/outsroad3",
	},
}
Room {
	id = "xiangyang/hunanroad2",
	name = "泸溪北",
	ways = {
		["southwest"] = "group/entry/mjshan2",
		["south"] = "tiezhang/lx",
		["northeast"] = "xiangyang/hunanroad1",
	},
}
Room {
	id = "xiangyang/jianghukz",
	name = "江湖客栈",
	no_fight = true,
	ways = {
		["south"] = "xiangyang/bcx3",
		-- ["up"] = "xiangyang/kezhan2",
	},
	nolooks = {
		["up"] = true,
	},
}
Room {
	id = "xiangyang/junying",
	name = "蒙古军营",
	ways = {
		["southwest"] = "xiangyang/outnroad2",
		["enter"] = "xiangyang/yingzhang",
	},
}
Room {
	id = "xiangyang/kezhan2",
	name = "客栈二楼",
	no_fight = true,
	ways = {
		["down"] = "xiangyang/jianghukz",
	},
}
Room {
	id = "xiangyang/lantian",
	name = "蓝田",
	ways = {
		["southeast"] = "xiangyang/shanxiroad2",
		["north"] = "changan/southroad3",
	},
}
Room {
	id = "xiangyang/lipindian",
	name = "礼品店",
	ways = {
		["out"] = "xiangyang/cross2",
	},
}
Room {
	id = "xiangyang/lzz/chelang1",
	name = "侧廊",
	ways = {
		["south"] = "xiangyang/lzz/yaofang",
		["east"] = "xiangyang/lzz/tjing",
		["west"] = "xiangyang/lzz/chelang2",
	},
}
Room {
	id = "xiangyang/lzz/chelang2",
	name = "侧廊",
	ways = {
		["north"] = "xiangyang/lzz/houyuan",
		["east"] = "xiangyang/lzz/chelang1",
	},
}
Room {
	id = "xiangyang/lzz/houyuan",
	name = "后院",
	ways = {
		["south"] = "xiangyang/lzz/chelang2",
		["north"] = "xiangyang/lzz/huayuan",
	},
}
Room {
	id = "xiangyang/lzz/huayuan",
	name = "花园",
	ways = {
		["south"] = "xiangyang/lzz/houyuan",
	},
}
Room {
	id = "xiangyang/lzz/jiuguan",
	name = "四季小吃店",
	ways = {
		["east"] = "xiangyang/lzz/liuzz",
	},
}
Room {
	id = "xiangyang/lzz/liuzz",
	name = "柳宗镇",
	ways = {
		["south"] = "xiangyang/lzz/xiaolu",
		["north"] = "xiangyang/lzz/xiaohe",
		["west"] = "xiangyang/lzz/jiuguan",
	},
}
Room {
	id = "xiangyang/lzz/qiant",
	name = "前厅",
	ways = {
		["south"] = "xiangyang/lzz/xue_men",
		["north"] = "xiangyang/lzz/tjing",
	},
}
Room {
	id = "xiangyang/lzz/tjing",
	name = "天井",
	ways = {
		["south"] = "xiangyang/lzz/qiant",
		["north"] = "xiangyang/lzz/zhengt",
		["west"] = "xiangyang/lzz/chelang1",
	},
}
Room {
	id = "xiangyang/lzz/xiaohe",
	name = "小河",
	ways = {
		["south"] = "xiangyang/lzz/liuzz",
		["north"] = "xiangyang/lzz/xue_men",
	},
}
Room {
	id = "xiangyang/lzz/xiaolu",
	name = "小路",
	ways = {
		["south"] = "xiangyang/xiaolu1",
		["north"] = "xiangyang/lzz/liuzz",
	},
}
Room {
	id = "xiangyang/lzz/xue_men",
	name = "薛府大门",
	ways = {
		["south"] = "xiangyang/lzz/xiaohe",
		["north"] = "xiangyang/lzz/qiant",
	},
}
Room {
	id = "xiangyang/lzz/yaofang",
	name = "药房",
	ways = {
		["north"] = "xiangyang/lzz/chelang1",
	},
}
Room {
	id = "xiangyang/lzz/zhengt",
	name = "正厅",
	ways = {
		["south"] = "xiangyang/lzz/tjing",
	},
}
Room {
	id = "xiangyang/mujiangpu",
	name = "木匠铺",
	ways = {
		["west"] = "xiangyang/ncx4",
	},
}
Room {
	id = "xiangyang/ncx1",
	name = "南城巷",
	ways = {
		["north"] = "xiangyang/shuoshug",
		["east"] = "xiangyang/ncx2",
		["west"] = "xiangyang/njie3",
	},
}
Room {
	id = "xiangyang/ncx2",
	name = "南城巷",
	ways = {
		["east"] = "xiangyang/ncx3",
		["north"] = "xiangyang/chemahang",
		["west"] = "xiangyang/ncx1",
	},
}
Room {
	id = "xiangyang/ncx3",
	name = "南城巷",
	ways = {
		["south"] = "xiangyang/wen/damen",
		["east"] = "xiangyang/ncx4",
		["north"] = "xiangyang/bingying",
		["west"] = "xiangyang/ncx2",
	},
}
Room {
	id = "xiangyang/ncx4",
	name = "南城巷",
	ways = {
		["north"] = "xiangyang/ncx5",
		["east"] = "xiangyang/mujiangpu",
		["west"] = "xiangyang/ncx3",
	},
}
Room {
	id = "xiangyang/ncx5",
	name = "南城巷",
	ways = {
		["south"] = "xiangyang/ncx4",
		["north"] = "xiangyang/eroad1",
		["east"] = "xiangyang/datiepu",
	},
}
Room {
	id = "xiangyang/njie1",
	name = "南街",
	ways = {
		["south"] = "xiangyang/njie2",
		["north"] = "xiangyang/xpailou",
		["east"] = "xiangyang/cross2",
		["west"] = "xiangyang/yamen",
	},
}
Room {
	id = "xiangyang/njie2",
	name = "南街",
	ways = {
		["south"] = "xiangyang/njie3",
		["north"] = "xiangyang/njie1",
	},
}
Room {
	id = "xiangyang/njie3",
	name = "南街",
	ways = {
		["south"] = "xiangyang/zqmnj",
		["north"] = "xiangyang/njie2",
		["east"] = "xiangyang/ncx1",
		["west"] = "xiangyang/bank",
	},
}
Room {
	id = "xiangyang/nroad1",
	name = "玄武门内街",
	ways = {
		["south"] = "xiangyang/bjie1",
		["north"] = "xiangyang/xuanwumen",
		["east"] = "xiangyang/dcx1",
	},
}
Room {
	id = "xiangyang/outeroad1",
	name = "东门外",
	ways = {
		["east"] = "city/wroad3",
		["west"] = "xiangyang/qinglongmen",
	},
}
Room {
	id = "xiangyang/outnroad1",
	name = "青石大道",
	ways = {
		["south"] = "xiangyang/xuanwumen",
		["north"] = "xiangyang/outnroad2",
	},
}
Room {
	id = "xiangyang/outnroad2",
	name = "青石大道",
	ways = {
		["south"] = "xiangyang/outnroad1",
		["north"] = "xiangyang/outnroad3",
		["northeast"] = "xiangyang/junying",
	},
}
Room {
	id = "xiangyang/outnroad3",
	name = "土路",
	ways = {
		["south"] = "xiangyang/outnroad2",
		["northwest"] = "xiangyang/shanxiroad1",
		["northeast"] = "xiangyang/henanroad1",
		["west"] = "xiangyang/hanshui1",
	},
}
Room {
	id = "xiangyang/outsroad1",
	name = "南门外",
	ways = {
		["south"] = "xiangyang/outsroad2",
		["north"] = "xiangyang/zhuquemen",
	},
}
Room {
	id = "xiangyang/outsroad2",
	name = "青石大道",
	ways = {
		["south"] = "xiangyang/outsroad3",
		["north"] = "xiangyang/outsroad1",
	},
}
Room {
	id = "xiangyang/outsroad3",
	name = "湘鄂土路",
	ways = {
		["westup"] = "xiangyang/conglin1",
		["south"] = "xiangyang/hunanroad1",
		["north"] = "xiangyang/outsroad2",
	},
}
Room {
	id = "xiangyang/outwroad1",
	name = "西门外",
	ways = {
		["south"] = "xiangyang/shanlu1",
		["east"] = "xiangyang/baihumen",
		["north"] = "gumu/jqg/shanlu3",
		["west"] = "xiangyang/tanxi",
	},
}
Room {
	id = "xiangyang/qinglongmen",
	name = "青龙门",
	ways = {
		["east"] = "xiangyang/outeroad1",
		["west"] = "xiangyang/eroad1",
	},
}
Room {
	id = "xiangyang/shanlu1",
	name = "山间小路",
	ways = {
		["southup"] = "xiangyang/shanlu2",
		["north"] = "xiangyang/outwroad1",
	},
}
Room {
	id = "xiangyang/shanlu2",
	name = "山间小路",
	ways = {
		["southwest"] = "xiangyang/shanlu3",
		["northdown"] = "xiangyang/shanlu1",
	},
}
Room {
	id = "xiangyang/shanlu3",
	name = "山间小路",
	ways = {
		["northeast"] = "xiangyang/shanlu2",
	},
}
Room {
	id = "xiangyang/shanxiroad1",
	name = "土路",
	ways = {
		["southeast"] = "xiangyang/outnroad3",
		["northwest"] = "xiangyang/shanxiroad2",
		["west"] = "gumu/fchuan",
	},
}
Room {
	id = "xiangyang/shanxiroad2",
	name = "土路",
	ways = {
		["southeast"] = "xiangyang/shanxiroad1",
		["northwest"] = "xiangyang/lantian",
		["north"] = "village/hsroad3",
	},
}
Room {
	id = "xiangyang/shaobingpu",
	name = "烧饼铺",
	ways = {
		["east"] = "xiangyang/xcx3",
	},
}
Room {
	id = "xiangyang/shuoshug",
	name = "说书馆",
	ways = {
		["south"] = "xiangyang/ncx1",
	},
}
Room {
	id = "xiangyang/sishu",
	name = "私塾",
	ways = {
		["north"] = "xiangyang/xcx5",
	},
}
Room {
	id = "xiangyang/tanxi",
	name = "檀溪",
	ways = {
		["southwest"] = "xiangyang/xiaolu1",
		["east"] = "xiangyang/outwroad1",
	},
}
Room {
	id = "xiangyang/wen/damen",
	name = "温府大门",
	ways = {
		["south"] = "xiangyang/wen/shidetang",
		["north"] = "xiangyang/ncx3",
	},
}
Room {
	id = "xiangyang/wen/guifang",
	name = "吟淼阁",
	ways = {
		["west"] = "xiangyang/wen/tianjing",
	},
}
Room {
	id = "xiangyang/wen/houhuayuan",
	name = "后花园",
	ways = {
		["north"] = "xiangyang/wen/tianjing",
	},
}
Room {
	id = "xiangyang/wen/lianwu",
	name = "练武场",
	ways = {
		["east"] = "xiangyang/wen/tianjing",
	},
}
Room {
	id = "xiangyang/wen/shidetang",
	name = "世德堂",
	ways = {
		["south"] = "xiangyang/wen/tianjing",
		["east"] = "xiangyang/wen/wofang2",
		["north"] = "xiangyang/wen/damen",
		["west"] = "xiangyang/wen/wofang1",
	},
}
Room {
	id = "xiangyang/wen/tianjing",
	name = "天井",
	ways = {
		["south"] = "xiangyang/wen/houhuayuan",
		["north"] = "xiangyang/wen/shidetang",
		["east"] = "xiangyang/wen/guifang",
		["west"] = "xiangyang/wen/lianwu",
	},
}
Room {
	id = "xiangyang/wen/wofang1",
	name = "卧房",
	ways = {
		["east"] = "xiangyang/wen/shidetang",
	},
}
Room {
	id = "xiangyang/wen/wofang2",
	name = "卧房",
	ways = {
		["west"] = "xiangyang/wen/shidetang",
	},
}
Room {
	id = "xiangyang/xcx1",
	name = "西城巷",
	ways = {
		["south"] = "xiangyang/xcx2",
		["north"] = "xiangyang/bhmnj",
		["west"] = "xiangyang/chayedian",
	},
}
Room {
	id = "xiangyang/xcx2",
	name = "西城巷",
	ways = {
		["south"] = "xiangyang/xcx3",
		["north"] = "xiangyang/xcx1",
		["west"] = "xiangyang/doufufang",
	},
}
Room {
	id = "xiangyang/xcx3",
	name = "西城巷",
	ways = {
		["south"] = "xiangyang/xcx4",
		["north"] = "xiangyang/xcx2",
		["west"] = "xiangyang/shaobingpu",
	},
}
Room {
	id = "xiangyang/xcx4",
	name = "西城巷",
	ways = {
		["south"] = "xiangyang/xcx5",
		["north"] = "xiangyang/xcx3",
		["west"] = "xiangyang/baozipu",
	},
}
Room {
	id = "xiangyang/xcx5",
	name = "西城巷",
	ways = {
		["south"] = "xiangyang/sishu",
		["east"] = "xiangyang/zqmnj",
		["north"] = "xiangyang/xcx4",
		["west"] = "xiangyang/yaopu",
	},
}
Room {
	id = "xiangyang/xiaocd",
	name = "小吃店",
	ways = {
		["east"] = "xiangyang/bcx4",
	},
}
Room {
	id = "xiangyang/xiaolu1",
	name = "小路",
	ways = {
		["southwest"] = "xiangyang/xiaolu2",
		["north"] = "xiangyang/lzz/xiaolu",
		["northeast"] = "xiangyang/tanxi",
	},
}
Room {
	id = "xiangyang/xiaolu2",
	name = "小路",
	ways = {
		["northeast"] = "xiangyang/xiaolu1",
		["west"] = "group/entry/cderoad4",
	},
}
Room {
	id = "xiangyang/xiyuan",
	name = "戏院",
	ways = {
		["west"] = "xiangyang/dcx4",
	},
}
Room {
	id = "xiangyang/xjie",
	name = "西街",
	ways = {
		["east"] = "xiangyang/cross1",
		["west"] = "xiangyang/bhmnj",
	},
}
Room {
	id = "xiangyang/xpailou",
	name = "西牌楼",
	ways = {
		["south"] = "xiangyang/njie1",
		["north"] = "xiangyang/cross1",
	},
}
Room {
	id = "xiangyang/xuanwumen",
	name = "玄武门",
	ways = {
		["south"] = "xiangyang/nroad1",
		["north"] = "xiangyang/outnroad1",
	},
	lengths = {
		["south"] = "if isSafe() then return false else return 1 end",
	},
}
Room {
	id = "xiangyang/xyudian",
	name = "鲜鱼店",
	ways = {
		["east"] = "xiangyang/bcx3",
	},
}
Room {
	id = "xiangyang/yamen",
	name = "衙门",
	ways = {
		["south"] = "xiangyang/chucshi",
		["north"] = "xiangyang/ymzhengting",
		["east"] = "xiangyang/njie1",
	},
	blocks = {
		["north"] = {
			{id = "ya yi", exp = 7500},
		},
		["south"] = {
			{id = "ya yi", exp = 7500},
		},
	},
}
Room {
	id = "xiangyang/yaopu",
	name = "药材铺",
	no_fight = true,
	ways = {
		["east"] = "xiangyang/xcx5",
	},
}
Room {
	id = "xiangyang/yingzhang",
	name = "营帐中",
	no_fight = true,
	ways = {
		["out"] = "xiangyang/junying",
	},
}
Room {
	id = "xiangyang/ymzhengting",
	name = "正厅",
	ways = {
		["south"] = "xiangyang/yamen",
	},
}
Room {
	id = "xiangyang/zahuopu",
	name = "杂货铺",
	ways = {
		["west"] = "xiangyang/dcx2",
	},
}
Room {
	id = "xiangyang/zhuquemen",
	name = "朱雀门",
	ways = {
		["south"] = "xiangyang/outsroad1",
		["north"] = "xiangyang/zqmnj",
	},
}
Room {
	id = "xiangyang/zqmnj",
	name = "朱雀门内街",
	ways = {
		["south"] = "xiangyang/zhuquemen",
		["north"] = "xiangyang/njie3",
		["west"] = "xiangyang/xcx5",
	},
}
Room {
	id = "xiangyang/zrdian",
	name = "猪肉店",
	ways = {
		["south"] = "xiangyang/bcx2",
	},
}
Room {
	id = "xingxiu/bank",
	name = "万宝斋",
	ways = {
		["east"] = "xingxiu/silk8",
	},
}
Room {
	id = "xingxiu/baozang/bingqiku",
	name = "兵器库",
	ways = {
		["south"] = "xingxiu/baozang/midong3",
		["east"] = "xingxiu/baozang/tiantan",
		["north"] = "xingxiu/baozang/midong3",
		["west"] = "xingxiu/baozang/midong3",
	},
}
Room {
	id = "xingxiu/baozang/jinku",
	name = "金库",
	ways = {
		["south"] = "xingxiu/baozang/midong2",
		["north"] = "xingxiu/baozang/tiantan",
		["east"] = "xingxiu/baozang/midong2",
		["west"] = "xingxiu/baozang/midong2",
	},
}
Room {
	id = "xingxiu/baozang/midong1",
	name = "密洞",
	ways = {
		["south"] = "xingxiu/baozang/midong1",
		["north"] = "xingxiu/baozang/midong1",
		["east"] = "xingxiu/baozang/midong1",
		["west"] = "xingxiu/baozang/midong1",
	},
}
Room {
	id = "xingxiu/baozang/midong2",
	name = "密洞",
	ways = {
		["south"] = "xingxiu/baozang/midong2",
		["east"] = "xingxiu/baozang/midong2",
		["north"] = "xingxiu/baozang/midong2",
		["west"] = "xingxiu/baozang/midong2",
	},
}
Room {
	id = "xingxiu/baozang/midong3",
	name = "密洞",
	ways = {
		["south"] = "xingxiu/baozang/midong3",
		["north"] = "xingxiu/baozang/midong3",
		["east"] = "xingxiu/baozang/midong3",
		["west"] = "xingxiu/baozang/midong3",
	},
}
Room {
	id = "xingxiu/baozang/midong4",
	name = "密洞",
	ways = {
		["south"] = "xingxiu/baozang/midong4",
		["east"] = "xingxiu/baozang/midong4",
		["north"] = "xingxiu/baozang/midong4",
		["west"] = "xingxiu/baozang/midong4",
	},
}
Room {
	id = "xingxiu/baozang/mishi",
	name = "密室",
	ways = {
		["out"] = "xingxiu/baozang/shuku",
	},
}
Room {
	id = "xingxiu/baozang/shuku",
	name = "书房",
	ways = {
		["south"] = "xingxiu/baozang/midong1",
		["east"] = "xingxiu/baozang/midong1",
		["north"] = "xingxiu/baozang/midong1",
		["west"] = "xingxiu/baozang/tiantan",
	},
}
Room {
	id = "xingxiu/baozang/tiantan",
	name = "大厅",
	ways = {
		["south"] = "xingxiu/baozang/midong2",
		["north"] = "xingxiu/baozang/midong4",
		["east"] = "xingxiu/baozang/midong1",
		["west"] = "xingxiu/baozang/midong3",
	},
}
Room {
	id = "xingxiu/baozang/yaoku",
	name = "药库",
	ways = {
		["south"] = "xingxiu/baozang/tiantan",
		["north"] = "xingxiu/baozang/midong4",
		["east"] = "xingxiu/baozang/midong4",
		["west"] = "xingxiu/baozang/midong4",
	},
}
Room {
	id = "xingxiu/cangku",
	name = "天然石洞",
	ways = {
		["out"] = "xingxiu/xx2",
	},
}
Room {
	id = "xingxiu/cave",
	name = "山洞",
	ways = {
		["out"] = "xingxiu/shanshi",
	},
}
Room {
	id = "xingxiu/chufang",
	name = "厨房",
	no_fight = true,
	ways = {
		["east"] = "xingxiu/xx3",
	},
}
Room {
	id = "xingxiu/daliao/liangcang",
	name = "后仓",
	ways = {
		["south"] = "xingxiu/daliao/zhongying",
	},
}
Room {
	id = "xingxiu/daliao/shanlu1",
	name = "山路",
	ways = {
		["south"] = "xingxiu/daliao/shulin",
		["northwest"] = "xingxiu/daliao/shanlu2",
	},
}
Room {
	id = "xingxiu/daliao/shanlu2",
	name = "山路",
	ways = {
		["northup"] = "xingxiu/daliao/shanlu3",
		["southeast"] = "xingxiu/daliao/shanlu1",
	},
}
Room {
	id = "xingxiu/daliao/shanlu3",
	name = "山路",
	ways = {
		["north"] = "xingxiu/daliao/yingmen",
		["southdown"] = "xingxiu/daliao/shanlu2",
	},
}
Room {
	id = "xingxiu/daliao/shulin",
	name = "树林",
	ways = {
		["south"] = "xingxiu/daliao/shulin",
		["east"] = "xingxiu/daliao/shulin",
		["north"] = "xingxiu/daliao/shulin",
		["west"] = "xingxiu/daliao/shulin",
	},
}
Room {
	id = "xingxiu/daliao/yingmen",
	name = "营门",
	ways = {
		["south"] = "xingxiu/daliao/shanlu3",
		["north"] = "xingxiu/daliao/zhongying",
	},
}
Room {
	id = "xingxiu/daliao/youtang",
	name = "右营",
	ways = {
		["west"] = "xingxiu/daliao/zhongying",
	},
}
Room {
	id = "xingxiu/daliao/zhongying",
	name = "南院大营",
	ways = {
		["south"] = "xingxiu/daliao/yingmen",
		["east"] = "xingxiu/daliao/youtang",
		["north"] = "xingxiu/daliao/liangcang",
		["west"] = "xingxiu/daliao/zuotang",
	},
}
Room {
	id = "xingxiu/daliao/zuotang",
	name = "左营",
	ways = {
		["east"] = "xingxiu/daliao/zhongying",
	},
}
Room {
	id = "xingxiu/fangpan",
	name = "大方盘城",
	ways = {
		["east"] = "xingxiu/road4",
		["west"] = "xingxiu/road5",
	},
}
Room {
	id = "xingxiu/jushi",
	name = "巨石",
	ways = {
		["down"] = "xingxiu/xx4",
	},
}
Room {
	id = "xingxiu/jyg",
	name = "雁门关",
	ways = {
		["south"] = "xingxiu/jyg_1",
		["north"] = "xingxiu/xiaowu",
		["east"] = "xingxiu/jyge",
		["west"] = "xingxiu/jygw",
	},
}
Room {
	id = "xingxiu/jyg_1",
	name = "天阁斋分店",
	no_fight = true,
	ways = {
		["north"] = "xingxiu/jyg",
	},
}
Room {
	id = "xingxiu/jyge",
	name = "嘉峪关东城门",
	ways = {
		["eastup"] = "xingxiu/road5",
		["west"] = "xingxiu/jyg",
	},
	precmds = {
		["eastup"] = "#passGb",
		["west"] = "#passGb",
	},
}
Room {
	id = "xingxiu/jygw",
	name = "嘉峪关西城门",
	ways = {
		["east"] = "xingxiu/jyg",
		["west"] = "xingxiu/silk",
	},
	precmds = {
		["east"] = "#passGb",
		["west"] = "#passGb",
	},
}
Room {
	id = "xingxiu/mogaoku",
	name = "莫高窟",
	ways = {
		["out"] = "xingxiu/silk3c",
	},
}
Room {
	id = "xingxiu/nanjiang",
	name = "南疆沙漠",
	ways = {
		["southeast"] = "xingxiu/nanjiang",
		["southwest"] = "xingxiu/nanjiang",
		["south"] = "xingxiu/nanjiang",
		["northwest"] = "xingxiu/nanjiang1",
		["east"] = "xingxiu/nanjiang",
		["northeast"] = "xingxiu/nanjiang",
		["west"] = "xingxiu/nanjiang",
	},
	nolooks = {
		["north"] = true,
	},
}
Room {
	id = "xingxiu/nanjiang1",
	name = "南疆沙漠",
	ways = {
		["southeast"] = "xingxiu/nanjiang1",
		["southwest"] = "xingxiu/nanjiang2",
		["south"] = "xingxiu/nanjiang1",
		["northwest"] = "xingxiu/nanjiang1",
		["north"] = "xingxiu/nanjiang1",
		["east"] = "xingxiu/nanjiang1",
		["northeast"] = "xingxiu/nanjiang",
		["west"] = "xingxiu/nanjiang1",
	},
}
Room {
	id = "xingxiu/nanjiang2",
	name = "南疆沙漠",
	ways = {
		["southeast"] = "xingxiu/nanjiang3",
		["southwest"] = "xingxiu/nanjiang2",
		["south"] = "xingxiu/nanjiang2",
		["northwest"] = "xingxiu/nanjiang2",
		["north"] = "xingxiu/nanjiang2",
		["east"] = "xingxiu/nanjiang2",
		["northeast"] = "xingxiu/nanjiang",
		["west"] = "xingxiu/nanjiang2",
	},
}
Room {
	id = "xingxiu/nanjiang3",
	name = "南疆沙漠",
	ways = {
		["southeast"] = "xingxiu/nanjiang3",
		["southwest"] = "xingxiu/nanjiang3",
		["south"] = "xingxiu/nanjiang3",
		["northwest"] = "xingxiu/nanjiang3",
		["east"] = "xingxiu/nanjiang3",
		["north"] = "xingxiu/nanjiang3",
		["northeast"] = "xingxiu/wenquan",
		["west"] = "xingxiu/nanjiang3",
	},
}
Room {
	id = "xingxiu/road4",
	name = "万里长城",
	ways = {
		["southeast"] = "lanzhou/wuwei",
		["west"] = "xingxiu/fangpan",
	},
}
Room {
	id = "xingxiu/road5",
	name = "万里长城",
	ways = {
		["westdown"] = "xingxiu/jyge",
		["east"] = "xingxiu/fangpan",
	},
}
Room {
	id = "xingxiu/rukou",
	name = "虫谷入口",
	ways = {
		["southwest"] = "xingxiu/xx1",
	},
}
Room {
	id = "xingxiu/ryd",
	name = "日月洞",
	ways = {
		["south"] = "xingxiu/ryd1",
		["north"] = "xingxiu/yaolu",
	},
	lengths = {
		["north"] = "if getParty() == '星宿派' then return 1 else return false end",
	},
}
Room {
	id = "xingxiu/ryd1",
	name = "日月洞口",
	ways = {
		["east"] = "xingxiu/xxhn",
		["north"] = "xingxiu/ryd",
		["southdown"] = "xingxiu/xx1",
		["west"] = "xingxiu/xxhn",
	},
}
Room {
	id = "xingxiu/shamo",
	name = "大沙漠",
	ways = {
		["w;w;w;w;w;w;w;w;w;w"] = "hj/caoyuan",
		["e;e;e;e;e;e;e;e;e;e"] = "xingxiu/silk9",
	},
	nolooks = {
		["w;w;w;w;w;w;w;w;w;w"] = true,
		["e;e;e;e;e;e;e;e;e;e"] = true,
		["north"] = true,
		["south"] = true,
		["east"] = true,
		["west"] = true,
	},
	lengths = {
		["w;w;w;w;w;w;w;w;w;w"] = 10,
		["e;e;e;e;e;e;e;e;e;e"] = 10,
	},
	find = {
		path = {"s"}, count = 10,
	},
}
Room {
	id = "xingxiu/shanjiao",
	name = "天山脚下",
	ways = {
		["southeast"] = "xingxiu/silk9",
		["southwest"] = "hj/senlinn",
		["east"] = "xingxiu/yili/yili",
		["north"] = "xingxiu/xxh",
	},
	blocks = {
		["southeast"] = {
			{id = "xingxiu dizi", exp = 2000, party = "星宿派"},
		},
		["southwest"] = {
			{id = "xingxiu dizi", exp = 2000, party = "星宿派"},
		},
		["east"] = {
			{id = "xingxiu dizi", exp = 2000, party = "星宿派"},
		},
		["north"] = {
			{id = "xingxiu dizi", exp = 2000, party = "星宿派"},
		},
	},
}
Room {
	id = "xingxiu/shanshi",
	name = "山石",
	ways = {
		["eastdown"] = "xingxiu/xx6",
		["enter cave"] = "xingxiu/cave",
	},
	nolooks = {
		["enter cave"] = true,
	},
	blocks = {
		["enter cave"] = {
			{id = "shihou zi", exp = 600000, party = "星宿派"},
		},
	},
}
Room {
	id = "xingxiu/silk",
	name = "丝绸之路",
	ways = {
		["southwest"] = "xingxiu/silk1b",
		["northwest"] = "xingxiu/silk1",
		["east"] = "xingxiu/jygw",
	},
}
Room {
	id = "xingxiu/silk1",
	name = "仇池山",
	ways = {
		["southeast"] = "xingxiu/silk",
		["southwest"] = "xingxiu/silk1a",
		["north"] = "xingxiu/silk2",
	},
}
Room {
	id = "xingxiu/silk10",
	name = "丝绸之路",
	ways = {
		["south"] = "xingxiu/silk8",
		["north"] = "xingxiu/yili/yili",
	},
}
Room {
	id = "xingxiu/silk1a",
	name = "水帘洞",
	ways = {
		["southeast"] = "xingxiu/silk1b",
		["northeast"] = "xingxiu/silk1",
	},
}
Room {
	id = "xingxiu/silk1b",
	name = "仙人崖",
	ways = {
		["northwest"] = "xingxiu/silk1a",
		["northeast"] = "xingxiu/silk",
	},
}
Room {
	id = "xingxiu/silk2",
	name = "丝绸之路",
	ways = {
		["westup"] = "xingxiu/silk3",
		["south"] = "xingxiu/silk1",
	},
}
Room {
	id = "xingxiu/silk3",
	name = "颂摩崖",
	ways = {
		["eastdown"] = "xingxiu/silk2",
		["westdown"] = "xingxiu/silk4",
		["north"] = "xingxiu/silk3a",
	},
}
Room {
	id = "xingxiu/silk3a",
	name = "鸣沙山",
	ways = {
		["south"] = "xingxiu/silk3",
		["west"] = "xingxiu/silk3b",
	},
}
Room {
	id = "xingxiu/silk3b",
	name = "万象洞",
	ways = {
		["northwest"] = "xingxiu/silk3c",
		["east"] = "xingxiu/silk3a",
	},
}
Room {
	id = "xingxiu/silk3c",
	name = "月牙泉",
	ways = {
		["southeast"] = "xingxiu/silk3b",
		["west"] = "xingxiu/silk7a",
		["enter hole"] = "xingxiu/mogaoku",
	},
	nolooks = {
		["enter hole"] = true,
	},
}
Room {
	id = "xingxiu/silk4",
	name = "丝绸之路",
	ways = {
		["eastup"] = "xingxiu/silk3",
		["northwest"] = "xingxiu/silk5a",
		["west"] = "xingxiu/silk5",
	},
}
Room {
	id = "xingxiu/silk5",
	name = "石门",
	ways = {
		["northup"] = "xingxiu/silk5a",
		["south"] = "xingxiu/silk5b",
		["northwest"] = "xingxiu/silk6",
		["east"] = "xingxiu/silk4",
	},
}
Room {
	id = "xingxiu/silk5a",
	name = "胭脂山",
	ways = {
		["southeast"] = "xingxiu/silk4",
		["northwest"] = "xingxiu/silk7a",
		["southdown"] = "xingxiu/silk5",
	},
}
Room {
	id = "xingxiu/silk5b",
	name = "兴隆山",
	ways = {
		["north"] = "xingxiu/silk5",
	},
}
Room {
	id = "xingxiu/silk6",
	name = "丝绸之路",
	ways = {
		["southeast"] = "xingxiu/silk5",
		["southwest"] = "group/entry/mjshamo1",
		["northwest"] = "xingxiu/silk7",
	},
}
Room {
	id = "xingxiu/silk7",
	name = "沙洲",
	ways = {
		["northup"] = "xingxiu/silk7a",
		["southeast"] = "xingxiu/silk6",
		["west"] = "xingxiu/silk8",
	},
}
Room {
	id = "xingxiu/silk7a",
	name = "人头疙瘩",
	ways = {
		["southeast"] = "xingxiu/silk5a",
		["east"] = "xingxiu/silk3c",
		["southdown"] = "xingxiu/silk7",
	},
}
Room {
	id = "xingxiu/silk8",
	name = "吐谷浑伏俟城",
	ways = {
		-- ["south"] = "xingxiu/nanjiang",
		["northwest"] = "xingxiu/silk9",
		["east"] = "xingxiu/silk7",
		["north"] = "xingxiu/silk10",
		["west"] = "xingxiu/bank",
	},
	nolooks = {
		["south"] = true,
	},
}
Room {
	id = "xingxiu/silk9",
	name = "丝绸之路",
	ways = {
		["southeast"] = "xingxiu/silk8",
		["northwest"] = "xingxiu/shanjiao",
		["west"] = "xingxiu/shamo",
	},
}
Room {
	id = "xingxiu/tianshan",
	name = "山脚下",
	ways = {
		["southeast"] = "hj/senlinn",
		["west"] = "tianshan/kongchang",
	},
}
Room {
	id = "xingxiu/wenquan",
	name = "清水温泉",
	ways = {
		["northeast"] = "xingxiu/silk8",
	},
}
Room {
	id = "xingxiu/xiaowu",
	name = "星宿小屋",
	ways = {
		["south"] = "xingxiu/jyg",
	},
}
Room {
	id = "xingxiu/xiaoyao",
	name = "逍遥洞",
	no_fight = true,
	ways = {
		["out"] = "xingxiu/xx3",
	},
}
Room {
	id = "xingxiu/xx1",
	name = "山前荒地",
	ways = {
		["northup"] = "xingxiu/ryd1",
		["south"] = "xingxiu/xxhn",
		["northwest"] = "xingxiu/xx2",
		["northeast"] = "xingxiu/rukou",
	},
}
Room {
	id = "xingxiu/xx2",
	name = "星宿海",
	ways = {
		["southeast"] = "xingxiu/xx1",
		["enter"] = "xingxiu/cangku",
		["west"] = "xingxiu/xx3",
	},
	blocks = {
		["enter"] = {
			{id = "chuchen zi", exp = 200000},
		},
	},
}
Room {
	id = "xingxiu/xx3",
	name = "石道",
	ways = {
		["enter"] = "xingxiu/xiaoyao",
		["east"] = "xingxiu/xx2",
		["west"] = "xingxiu/chufang",
	},
	blocks = {
		["enter"] = {
			{id = "caihua zi", exp = 25000, party = "星宿派"},
		},
	},
}
Room {
	id = "xingxiu/xx4",
	name = "小路",
	ways = {
		["northup"] = "xingxiu/xx5",
		["south"] = "xingxiu/xxhn",
		["west"] = "xingxiu/xxhn",
	},
}
Room {
	id = "xingxiu/xx5",
	name = "山壁",
	ways = {
		["southdown"] = "xingxiu/xx4",
	},
}
Room {
	id = "xingxiu/xx6",
	name = "海边荒路",
	ways = {
		["westup"] = "xingxiu/shanshi",
		["south"] = "xingxiu/xxhn",
		["north"] = "xingxiu/xxhn",
		["east"] = "xingxiu/xxhn",
	},
}
Room {
	id = "xingxiu/xxh",
	name = "星宿海",
	ways = {
		["southeast"] = "xingxiu/yili/yili",
		["south"] = "xingxiu/shanjiao",
		["north"] = "xingxiu/xxhn",
	},
}
Room {
	id = "xingxiu/xxhn",
	name = "星宿海",
	ways = {
		["s;s;s;s;s;s;s;s;s;s;s;s"] = "xingxiu/shanjiao",
		["n;n;n;n;n;n;n;n;n;n;n"] = "xingxiu/xx1",
		["e;e;e;e;e;e"] = "xingxiu/xx4",
		["w;w;w;w;w"] = "xingxiu/xx6",
	},
	nolooks = {
		["s;s;s;s;s;s;s;s;s;s;s;s"] = true,
		["n;n;n;n;n;n;n;n;n;n;n"] = true,
		["e;e;e;e;e;e"] = true,
		["w;w;w;w;w"] = true,
		["north"] = true,
		["south"] = true,
		["east"] = true,
		["west"] = true,
	},
	lengths = {
		["s;s;s;s;s;s;s;s;s;s;s;s"] = 12,
		["n;n;n;n;n;n;n;n;n;n;n"] = 11,
		["e;e;e;e;e;e"] = 6,
		["w;w;w;w;w"] = 5,
	},
	find = {
		path = {"e","n","w"},
	},
}
Room {
	id = "xingxiu/yaolu",
	name = "药庐",
	ways = {
		["south"] = "xingxiu/ryd",
	},
}
Room {
	id = "xingxiu/yili/house",
	name = "巴依家院",
	ways = {
		["west"] = "xingxiu/yili/yili2",
	},
}
Room {
	id = "xingxiu/yili/kezhan",
	name = "客栈",
	ways = {
		["southeast"] = "xingxiu/yili/yili2",
		["up"] = "xingxiu/yili/kezhan2",
	},
}
Room {
	id = "xingxiu/yili/kezhan2",
	name = "客栈二楼",
	ways = {
		["down"] = "xingxiu/yili/kezhan",
	},
}
Room {
	id = "xingxiu/yili/store",
	name = "商铺",
	ways = {
		["east"] = "xingxiu/yili/yili2",
	},
}
Room {
	id = "xingxiu/yili/store1",
	name = "铁铺",
	ways = {
		["south"] = "xingxiu/yili/yili2",
	},
}
Room {
	id = "xingxiu/yili/yili",
	name = "惠远",
	ways = {
		["south"] = "xingxiu/silk10",
		["northwest"] = "xingxiu/xxh",
		["north"] = "xingxiu/yili/yilihe",
		["west"] = "xingxiu/shanjiao",
	},
}
Room {
	id = "xingxiu/yili/yili1",
	name = "南城门",
	ways = {
		["south"] = "xingxiu/yili/yilihe",
		["north"] = "xingxiu/yili/yili2",
	},
	nolooks = {
		["north"] = true,
	},
	lengths = {
		["north"] = "if minutes() > 1080 and minutes() < 1410 then return false else return 1 end",
	},
}
Room {
	id = "xingxiu/yili/yili2",
	name = "城中心",
	ways = {
		["south"] = "xingxiu/yili/yili1",
		["northwest"] = "xingxiu/yili/kezhan",
		["north"] = "xingxiu/yili/store1",
		["east"] = "xingxiu/yili/house",
		["west"] = "xingxiu/yili/store",
	},
	nolooks = {
		["south"] = true,
	},
	lengths = {
		["south"] = "if minutes() > 1080 and minutes() < 1410 then return false else return 1 end",
	},
}
Room {
	id = "xingxiu/yili/yilihe",
	name = "伊犁河",
	ways = {
		["south"] = "xingxiu/yili/yili",
		["north"] = "xingxiu/yili/yili1",
	},
}
Room {
	id = "xueshan/anshi",
	name = "暗室",
	ways = {
		["south"] = "xueshan/fatang2",
	},
}
Room {
	id = "xueshan/binglinfeng",
	name = "冰林峰",
	ways = {
		["east"] = "xueshan/shanpo",
	},
}
Room {
	id = "xueshan/boluomiyuan",
	name = "波罗蜜院",
	ways = {
		["west"] = "xueshan/huilang8",
	},
}
Room {
	id = "xueshan/caishichang",
	name = "采石场",
	ways = {
		["eastdown"] = "xueshan/cunluo1",
		["west"] = "xueshan/tianyunmc",
	},
}
Room {
	id = "xueshan/caoyuan/caohai1",
	name = "草海",
	ways = {
		["south"] = "hj/caoyuan2",
		["west"] = "xueshan/caoyuan/caohain",
	},
	nolooks = {
		["north"] = true,
		["east"] = true,
	},
}
Room {
	id = "xueshan/caoyuan/caohain",
	name = "草海",
	ways = {
		["east"] = "xueshan/caoyuan/caohain",
		["west"] = "xueshan/caoyuan/zhaozen",
		["e;n"] = "xueshan/caoyuan/caohai4",
	},
	nolooks = {
		["e;n"] = true,
		["north"] = true,
		["south"] = true,
	},
	find = {
		path = {"e", "n;n;w;e;s;w"},
	},
}
Room {
	id = "xueshan/caoyuan/caohai4",
	name = "草海",
	ways = {
		["north"] = "xueshan/caoyuan/caohai5",
		["south"] = "xueshan/caoyuan/zhaozen",
		["west"] = "xueshan/caoyuan/zhaozen",
	},
	nolooks = {
		["east"] = true,
	},
}
Room {
	id = "xueshan/caoyuan/caohai5",
	name = "草海",
	ways = {
		["west"] = "xueshan/caoyuan/caohai6",
		["south"] = "xueshan/caoyuan/zhaozen",
	},
	nolooks = {
		["north"] = true,
		["east"] = true,
	},
}
Room {
	id = "xueshan/caoyuan/caohai6",
	name = "草海",
	ways = {
		["east"] = "xueshan/caoyuan/yingmen",
		["west"] = "xueshan/caoyuan/zhaozen",
	},
	nolooks = {
		["north"] = true,
		["south"] = true,
	},
}
Room {
	id = "xueshan/caoyuan/dazhang",
	name = "牛皮大帐",
	ways = {
		["south"] = "xueshan/caoyuan/shenfeng",
	},
}
Room {
	id = "xueshan/caoyuan/jifeng",
	name = "疾风营",
	ways = {
		["south"] = "xueshan/caoyuan/yingmen",
		["north"] = "xueshan/caoyuan/shenfeng",
	},
}
Room {
	id = "xueshan/caoyuan/shenfeng",
	name = "神风营",
	ways = {
		["south"] = "xueshan/caoyuan/jifeng",
		["north"] = "xueshan/caoyuan/dazhang",
	},
}
Room {
	id = "xueshan/caoyuan/yingmen",
	name = "营门",
	ways = {
		["south"] = "xueshan/caoyuan/caohai1",
		["north"] = "xueshan/caoyuan/jifeng",
	},
}
Room {
	id = "xueshan/caoyuan/zhaozen",
	name = "沼泽",
	ways = {
		["w;n"] = "xueshan/caoyuan/caohai5",
	},
	nolooks = {
		["w;n"] = true,
		["east"] = true,
		["west"] = true,
		["south"] = true,
		["north"] = true,
	},
	find = {
		path = {"w", "s"}, count = 10,
	},
}
Room {
	id = "xueshan/chiyangmen",
	name = "炽阳门",
	ways = {
		["enter"] = "xueshan/qingxinshe",
		["west"] = "xueshan/rimulundian",
	},
}
Room {
	id = "xueshan/chufang",
	name = "厨房",
	ways = {
		["south"] = "xueshan/zhaitang",
	},
}
Room {
	id = "xueshan/cunluo1",
	name = "藏民部落",
	ways = {
		["westup"] = "xueshan/caishichang",
		["north"] = "xueshan/cunluo2",
		["west"] = "xueshan/muchang3",
		["east"] = "xueshan/muchang7",
	},
}
Room {
	id = "xueshan/cunluo2",
	name = "藏民村落",
	ways = {
		["south"] = "xueshan/cunluo1",
		["north"] = "xueshan/muchang4",
		["west"] = "xueshan/muchang2",
		["east"] = "xueshan/muchang6",
	},
}
Room {
	id = "xueshan/dachedian",
	name = "招财大车店",
	ways = {
		-- ["enter"] = "xueshan/zhengfang",
		["west"] = "xueshan/jiedao1",
	},
	nolooks = {
		["enter"] = true,
	},
}
Room {
	id = "xueshan/dadian",
	name = "礼佛大殿",
	ways = {
		["eastdown"] = "xueshan/huilang4",
		["westdown"] = "xueshan/huilang3",
		["north"] = "xueshan/queridian",
		["southdown"] = "xueshan/guangchang",
	},
}
Room {
	id = "xueshan/daritang",
	name = "大日法堂",
	ways = {
		["west"] = "xueshan/luoweitang",
	},
}
Room {
	id = "xueshan/fanyinge",
	name = "梵音阁",
	ways = {
		["northwest"] = "xueshan/fotang",
		["east"] = "xueshan/jingtang",
		["north"] = "xueshan/fatang",
		["southdown"] = "xueshan/hufazhacang",
		["west"] = "xueshan/jingangyuan",
	},
	nolooks = {
		["northwest"] = true,
	},
	precmds = {
		["northwest"] = "open door",
	},
	blocks = {
		["northwest"] = {
			{id = "hufa lama", exp = 100000},
		},
	},
}
Room {
	id = "xueshan/fatang",
	name = "萨迦法堂",
	ways = {
		["south"] = "xueshan/fanyinge",
		["up"] = "xueshan/fatang2",
	},
	blocks = {
		["up"] = {
			{id = "zayi lama", exp = 100000},
		},
	},
}
Room {
	id = "xueshan/fatang2",
	name = "法堂二楼",
	ways = {
		["down"] = "xueshan/fatang",
	},
}
Room {
	id = "xueshan/fengjiantai",
	name = "风见台",
	ways = {
		["northup"] = "xueshan/xuelingquan",
		["eastdown"] = "xueshan/shanlu4",
		["west"] = "xueshan/luofenggang",
	},
}
Room {
	id = "xueshan/fotang",
	name = "镜庐佛堂",
	ways = {
		["southeast"] = "xueshan/fanyinge",
		["west"] = "xueshan/lingtalin",
	},
}
Room {
	id = "xueshan/fozhaomen",
	name = "佛照门",
	ways = {
		["east"] = "xueshan/zanpugc",
		["west"] = "xueshan/xiaolu3",
	},
}
Room {
	id = "xueshan/guangchang",
	name = "殿前广场",
	ways = {
		["northup"] = "xueshan/dadian",
		["west"] = "xueshan/huilang1",
		["east"] = "xueshan/huilang2",
		["southdown"] = "xueshan/shanmen",
	},
	nolooks = {
		["southdown"] = true,
	},
	precmds = {
		["southdown"] = "pull gate",
	},
}
Room {
	id = "xueshan/gulou",
	name = "鼓楼",
	ways = {
		["west"] = "xueshan/huilang2",
	},
}
Room {
	id = "xueshan/houzidong",
	name = "猴子洞",
	ways = {
		["southeast"] = "xueshan/jiaopan",
		["westup"] = "xueshan/shanlu7",
	},
}
Room {
	id = "xueshan/huanggong",
	name = "皇宫",
	ways = {
		["west"] = "xueshan/zanpugc",
	},
}
Room {
	id = "xueshan/hubian",
	name = "湖边",
	ways = {
		["south"] = "xueshan/xiaolu3",
	},
}
Room {
	id = "xueshan/hufazhacang",
	name = "护法扎仓",
	ways = {
		["northup"] = "xueshan/fanyinge",
		["south"] = "xueshan/rimulundian",
		["east"] = "xueshan/jingjinzhacang",
		["west"] = "xueshan/kuxiuzhacang",
	},
}
Room {
	id = "xueshan/huilang1",
	name = "遮雨廊",
	ways = {
		["north"] = "xueshan/huilang3",
		["east"] = "xueshan/guangchang",
		["west"] = "xueshan/zhonglou",
	},
}
Room {
	id = "xueshan/huilang2",
	name = "遮雨廊",
	ways = {
		["north"] = "xueshan/huilang4",
		["east"] = "xueshan/gulou",
		["west"] = "xueshan/guangchang",
	},
}
Room {
	id = "xueshan/huilang3",
	name = "遮雨廊",
	ways = {
		["eastup"] = "xueshan/dadian",
		["south"] = "xueshan/huilang1",
		["north"] = "xueshan/huilang5",
		["west"] = "xueshan/jieyuantang",
	},
}
Room {
	id = "xueshan/huilang4",
	name = "遮雨廊",
	ways = {
		["westup"] = "xueshan/dadian",
		["south"] = "xueshan/huilang2",
		["east"] = "xueshan/luoweitang",
		["north"] = "xueshan/huilang6",
	},
}
Room {
	id = "xueshan/huilang5",
	name = "遮雨廊",
	ways = {
		["eastup"] = "xueshan/queridian",
		["south"] = "xueshan/huilang3",
		["north"] = "xueshan/huilang7",
		["west"] = "xueshan/jishantang",
	},
}
Room {
	id = "xueshan/huilang6",
	name = "遮雨廊",
	ways = {
		["westup"] = "xueshan/queridian",
		["south"] = "xueshan/huilang4",
		["east"] = "xueshan/yimogong",
		["north"] = "xueshan/huilang8",
	},
}
Room {
	id = "xueshan/huilang7",
	name = "遮雨廊",
	ways = {
		["eastup"] = "xueshan/zhudubadian",
		["south"] = "xueshan/huilang5",
		["west"] = "xueshan/yushengdian",
	},
	blocks = {
		["west"] = {
			{id = "hu bayin", exp = 200000, party = "大轮寺"},
		},
	},
}
Room {
	id = "xueshan/huilang8",
	name = "遮雨廊",
	ways = {
		["westup"] = "xueshan/zhudubadian",
		["south"] = "xueshan/huilang6",
		["east"] = "xueshan/boluomiyuan",
	},
}
Room {
	id = "xueshan/jiaopan",
	name = "绞盘",
	ways = {
		["northwest"] = "xueshan/houzidong",
	},
}
Room {
	id = "xueshan/jiedao1",
	name = "街道",
	ways = {
		["south"] = "xueshan/mingxiamen",
		["north"] = "xueshan/jiedao2",
		["east"] = "xueshan/dachedian",
		["west"] = "xueshan/menghuying",
	},
}
Room {
	id = "xueshan/jiedao2",
	name = "街道",
	ways = {
		["south"] = "xueshan/jiedao1",
		["north"] = "xueshan/zanpugc",
		["east"] = "xueshan/yixianglou",
		["west"] = "xueshan/zuofang",
	},
}
Room {
	id = "xueshan/jiedao3",
	name = "街道",
	ways = {
		["south"] = "xueshan/zanpugc",
		["east"] = "xueshan/wangdali",
		["north"] = "xueshan/jushuimen",
		["west"] = "xueshan/laifu",
	},
}
Room {
	id = "xueshan/jieyuantang",
	name = "结缘堂",
	ways = {
		["east"] = "xueshan/huilang3",
	},
}
Room {
	id = "xueshan/jifengying",
	name = "疾风营",
	ways = {
		["south"] = "xueshan/yingmen",
		["north"] = "xueshan/shenfengying",
	},
}
Room {
	id = "xueshan/jingangyuan",
	name = "金刚院",
	ways = {
		["south"] = "xueshan/kuxiuzhacang",
		["east"] = "xueshan/fanyinge",
	},
}
Room {
	id = "xueshan/jingjinzhacang",
	name = "精进扎仓",
	ways = {
		["north"] = "xueshan/jingtang",
		["west"] = "xueshan/hufazhacang",
	},
}
Room {
	id = "xueshan/jingtang",
	name = "大经堂",
	ways = {
		["south"] = "xueshan/jingjinzhacang",
		["west"] = "xueshan/fanyinge",
	},
}
Room {
	id = "xueshan/jishantang",
	name = "积善堂",
	ways = {
		["east"] = "xueshan/huilang5",
	},
}
Room {
	id = "xueshan/jlshan",
	name = "积雷山",
	ways = {
		["southdown"] = "xueshan/tianxi",
	},
}
Room {
	id = "xueshan/juechenyuan",
	name = "绝尘院",
	no_fight = true,
	ways = {
		["out"] = "xueshan/yueliangmen",
	},
}
Room {
	id = "xueshan/jueding",
	name = "绝顶",
	ways = {
		["down"] = "xueshan/shanpo",
	},
}
Room {
	id = "xueshan/jushuimen",
	name = "巨水门",
	ways = {
		["south"] = "xueshan/jiedao3",
		["north"] = "xueshan/tianyunmc",
	},
}
Room {
	id = "xueshan/kuxiuzhacang",
	name = "苦修扎仓",
	ways = {
		["north"] = "xueshan/jingangyuan",
		["east"] = "xueshan/hufazhacang",
	},
}
Room {
	id = "xueshan/laifu",
	name = "来福杂货",
	no_fight = true,
	ways = {
		["east"] = "xueshan/jiedao3",
	},
}
Room {
	id = "xueshan/lingtalin",
	name = "灵塔林",
	ways = {
		["east"] = "xueshan/fotang",
		["enter"] = "xueshan/baota1",
		-- ["westup"] = "xueshan/xuelu1",
	},
	nolooks = {
		["westup"] = true,
	},
}
Room {
	id = "xueshan/baota1",
	name = "玲珑舍利塔",
	ways = {
		["out"] = "xueshan/lingtalin",
	},
}
Room {
	id = "xueshan/luofenggang",
	name = "落风岗",
	ways = {
		["east"] = "xueshan/fengjiantai",
		["tiao down"] = "xueshan/xuegu",
	},
	nolooks = {
		["tiao down"] = true,
	},
}
Room {
	id = "xueshan/luoweitang",
	name = "洛微堂",
	ways = {
		["east"] = "xueshan/daritang",
		["west"] = "xueshan/huilang4",
	},
}
Room {
	id = "xueshan/menghuying",
	name = "猛虎营",
	ways = {
		["east"] = "xueshan/jiedao1",
	},
}
Room {
	id = "xueshan/mingxiamen",
	name = "明霞门",
	ways = {
		["east"] = "xueshan/tulu3",
		["north"] = "xueshan/jiedao1",
	},
}
Room {
	id = "xueshan/muchang1",
	name = "牧场",
	ways = {
		["south"] = "xueshan/muchang2",
		["east"] = "xueshan/muchang4",
		["north"] = "xueshan/muchang1",
		["west"] = "xueshan/muchang1",
	},
}
Room {
	id = "xueshan/muchang2",
	name = "牧场",
	ways = {
		["south"] = "xueshan/muchang3",
		["north"] = "xueshan/muchang1",
		["west"] = "xueshan/muchang2",
		["east"] = "xueshan/cunluo2",
	},
}
Room {
	id = "xueshan/muchang3",
	name = "牧场",
	ways = {
		["south"] = "xueshan/muchang3",
		["north"] = "xueshan/muchang2",
		["west"] = "xueshan/muchang3",
		["east"] = "xueshan/cunluo1",
	},
}
Room {
	id = "xueshan/muchang4",
	name = "牧场",
	ways = {
		["south"] = "xueshan/cunluo2",
		["north"] = "xueshan/muchang4",
		["west"] = "xueshan/muchang1",
		["east"] = "xueshan/muchang5",
	},
}
Room {
	id = "xueshan/muchang5",
	name = "牧场",
	ways = {
		["south"] = "xueshan/muchang6",
		["north"] = "xueshan/muchang5",
		["west"] = "xueshan/muchang1",
		["east"] = "xueshan/muchang5",
	},
}
Room {
	id = "xueshan/muchang6",
	name = "牧场",
	ways = {
		["south"] = "xueshan/muchang7",
		["north"] = "xueshan/muchang5",
		["west"] = "xueshan/cunluo2",
		["east"] = "xueshan/muchang6",
	},
}
Room {
	id = "xueshan/muchang7",
	name = "牧场",
	ways = {
		["south"] = "xueshan/muchang7",
		["east"] = "xueshan/muchang7",
		["north"] = "xueshan/muchang6",
		["west"] = "xueshan/cunluo1",
	},
}
Room {
	id = "xueshan/niupidazhang",
	name = "牛皮大帐",
	ways = {
		["south"] = "xueshan/shenfengying",
	},
}
Room {
	id = "xueshan/qingxinshe",
	name = "清心舍",
	no_fight = true,
	ways = {
		["out"] = "xueshan/chiyangmen",
	},
}
Room {
	id = "xueshan/queridian",
	name = "却日殿",
	ways = {
		["eastdown"] = "xueshan/huilang6",
		["westdown"] = "xueshan/huilang5",
		["south"] = "xueshan/dadian",
		["north"] = "xueshan/zhudubadian",
	},
}
Room {
	id = "xueshan/rimulundian",
	name = "日木伦殿",
	ways = {
		["southeast"] = "xueshan/zhaitang",
		["north"] = "xueshan/hufazhacang",
		["east"] = "xueshan/chiyangmen",
		["west"] = "xueshan/yueliangmen",
		["out"] = "xueshan/xiekemen",
	},
	blocks = {
		["southeast"] = {
			{id = "hufa lama", exp = 100000},
		},
	},
}
Room {
	id = "xueshan/shanlu1",
	name = "善禅渡",
	ways = {
		["northwest"] = "xueshan/shanlu2",
		["east"] = "xueshan/tianhu",
	},
}
Room {
	id = "xueshan/shanlu2",
	name = "千步岭",
	ways = {
		["southeast"] = "xueshan/shanlu1",
		["westup"] = "xueshan/shanlu3",
	},
}
Room {
	id = "xueshan/shanlu3",
	name = "千步岭",
	ways = {
		["eastdown"] = "xueshan/shanlu2",
		["westdown"] = "xueshan/shanlu4",
	},
}
Room {
	id = "xueshan/shanlu4",
	name = "入幽口",
	ways = {
		["eastup"] = "xueshan/shanlu3",
		["westup"] = "xueshan/fengjiantai",
	},
	precmds = {
		["eastup"] = "#waitbusy",
		["westup"] = "#waitbusy",
	},
}
Room {
	id = "xueshan/shanlu5",
	name = "雪积古道",
	ways = {
		["southeast"] = "xueshan/shanlu6",
		["southwest"] = "xueshan/xuelingquan",
	},
}
Room {
	id = "xueshan/shanlu6",
	name = "雪积古道",
	ways = {
		["eastup"] = "xueshan/shanlu7",
		["northwest"] = "xueshan/shanlu5",
	},
}
Room {
	id = "xueshan/shanlu7",
	name = "雪积古道",
	ways = {
		["eastdown"] = "xueshan/houzidong",
		["westdown"] = "xueshan/shanlu6",
		["northwest"] = "xueshan/shanmen",
	},
}
Room {
	id = "xueshan/shanmen",
	name = "大轮寺山门",
	ways = {
		["southeast"] = "xueshan/shanlu7",
		["northup"] = "xueshan/guangchang",
	},
	nolooks = {
		["northup"] = true,
	},
	precmds = {
		["northup"] = "knock gate;#waitbusy",
	},
}
Room {
	id = "xueshan/shanpo",
	name = "问天台",
	ways = {
		["southdown"] = "xueshan/xuelu3",
		["east"] = "xueshan/binglinfeng",
	},
}
Room {
	id = "xueshan/shenfengying",
	name = "神风营",
	ways = {
		["south"] = "xueshan/jifengying",
		["north"] = "xueshan/niupidazhang",
	},
}
Room {
	id = "xueshan/tianhu",
	name = "天湖",
	ways = {
		["southwest"] = "xueshan/xiaolu1",
		["south"] = "xueshan/xiaodian",
		["north"] = "xueshan/tianxi",
		["west"] = "xueshan/shanlu1",
	},
}
Room {
	id = "xueshan/tianxi",
	name = "天溪",
	ways = {
		["south"] = "xueshan/tianhu",
	},
}
Room {
	id = "xueshan/tianyunmc",
	name = "天云马场",
	ways = {
		["south"] = "xueshan/jushuimen",
		["east"] = "xueshan/caishichang",
	},
}
Room {
	id = "xueshan/tulu1",
	name = "川西土路",
	ways = {
		["southwest"] = "group/entry/xstulu2",
		["east"] = "chengdu/wroad2",
	},
}
Room {
	id = "xueshan/tulu3",
	name = "藏边土路",
	ways = {
		["northeast"] = "group/entry/xstulu2",
		["west"] = "xueshan/mingxiamen",
	},
}
Room {
	id = "xueshan/wangdali",
	name = "王大力记",
	ways = {
		["west"] = "xueshan/jiedao3",
	},
}
Room {
	id = "xueshan/xiaodian",
	name = "湖边小店",
	ways = {
		["north"] = "xueshan/tianhu",
	},
}
Room {
	id = "xueshan/xiaolu1",
	name = "湖边小路",
	ways = {
		["southeast"] = "group/entry/xsxiao2",
		["northeast"] = "xueshan/tianhu",
	},
}
Room {
	id = "xueshan/xiaolu3",
	name = "湖边小路",
	ways = {
		["north"] = "xueshan/hubian",
		["east"] = "xueshan/fozhaomen",
		["west"] = "group/entry/xsxiao2",
	},
}
Room {
	id = "xueshan/xiekemen",
	name = "谢客亭",
	ways = {
		["southup"] = "xueshan/zhudubadian",
		["enter"] = "xueshan/rimulundian",
	},
	nolooks = {
		["enter"] = true,
	},
	precmds = {
		["enter"] = "open door",
	},
	blocks = {
		["enter"] = {
			{id = "hufa lama", exp = 100000},
		},
	},
}
Room {
	id = "xueshan/xuegu",
	name = "雪谷",
	ways = {
		["eastdown"] = "xueshan/shanlu2",
		["tiao down;#waitbusy"] = "xueshan/xuegu2",
	},
	nolooks = {
		["tiao down;#waitbusy"] = true,
	},
	lengths = {
		["tiao down;#waitbusy"] = "if getJifa().dodge.level < 150 then return false else return 5 end",
	},
}
Room {
	id = "xueshan/xuegu2",
	name = "岩石",
	ways = {
		["#outYs"] = "xueshan/xuegu",
	},
	nolooks = {
		["#outYs"] = true,
	},
	lengths = {
		["#outYs"] = "if getJifa().dodge.level < 150 then return false else return 10 end",
	},
}
Room {
	id = "xueshan/xuelingquan",
	name = "雪灵泉",
	ways = {
		["northeast"] = "xueshan/shanlu5",
		["southdown"] = "xueshan/fengjiantai",
	},
}
Room {
	id = "xueshan/xuelu1",
	name = "积雪小路",
	ways = {
		["northup"] = "xueshan/xuelu2",
		["eastdown"] = "xueshan/lingtalin",
	},
}
Room {
	id = "xueshan/xuelu2",
	name = "积雪小路",
	ways = {
		["southdown"] = "xueshan/xuelu1",
		["westup"] = "xueshan/xuelu3",
	},
}
Room {
	id = "xueshan/xuelu3",
	name = "积雪小路",
	ways = {
		["eastdown"] = "xueshan/xuelu2",
		["northup"] = "xueshan/shanpo",
	},
}
Room {
	id = "xueshan/yimogong",
	name = "怡摩宫",
	ways = {
		["west"] = "xueshan/huilang6",
	},
}
Room {
	id = "xueshan/yingmen",
	name = "营门",
	ways = {
		["south"] = "xueshan/caohai1",
		["north"] = "xueshan/jifengying",
	},
}
Room {
	id = "xueshan/yixianglou",
	name = "溢香楼",
	ways = {
		["west"] = "xueshan/jiedao2",
	},
}
Room {
	id = "xueshan/yueliangmen",
	name = "月亮门",
	ways = {
		["enter"] = "xueshan/juechenyuan",
		["east"] = "xueshan/rimulundian",
	},
}
Room {
	id = "xueshan/yushengdian",
	name = "御圣殿",
	ways = {
		["east"] = "xueshan/huilang7",
	},
}
Room {
	id = "xueshan/zanpugc",
	name = "赞普广场",
	ways = {
		["south"] = "xueshan/jiedao2",
		["north"] = "xueshan/jiedao3",
		["east"] = "xueshan/huanggong",
		["west"] = "xueshan/fozhaomen",
	},
}
Room {
	id = "xueshan/zhaitang",
	name = "斋堂",
	ways = {
		["northwest"] = "xueshan/rimulundian",
		["north"] = "xueshan/chufang",
	},
}
Room {
	id = "xueshan/zhengfang",
	name = "正房",
	no_fight = true,
	ways = {
		["out"] = "xueshan/dachedian",
	},
}
Room {
	id = "xueshan/zhonglou",
	name = "钟楼",
	ways = {
		["east"] = "xueshan/huilang1",
	},
}
Room {
	id = "xueshan/zhudubadian",
	name = "珠都巴殿",
	ways = {
		["eastdown"] = "xueshan/huilang8",
		["westdown"] = "xueshan/huilang7",
		["south"] = "xueshan/queridian",
		["northdown"] = "xueshan/xiekemen",
	},
}
Room {
	id = "xueshan/zuofang",
	name = "吐蕃织造作坊",
	ways = {
		["east"] = "xueshan/jiedao2",
	},
}
Room {
	id = "zhiye/biaoju1",
	name = "龙门镖局",
	outdoor = "扬州",
	ways = {
		["south"] = "city/dongmen",
	},
}
Room {
	id = "zhiye/bingqipu1",
	name = "兵器铺",
	outdoor = "扬州城",
	no_fight = true,
	ways = {
		["north"] = "city/dongdajie0",
	},
}
Room {
	id = "zhiye/caifengpu1",
	name = "裁缝铺",
	outdoor = "长安城",
	-- no_fight = true,
	ways = {
		["east"] = "changan/northjie2",
	},
}
Room {
	id = "zhiye/caikuang-chang0",
	name = "采矿场入口",
	ways = {
		["westup"] = "zhiye/caikuang-chang10",
		["northeast"] = "huanghe/shulin2",
	},
	lengths = {
		["westup"] = 1000,
	},
}
Room {
	id = "zhiye/caikuang-chang1",
	name = "山路",
	ways = {
		["southdown"] = "zhiye/caikuang-chang10",
		["#goCkc"] = "zhiye/caikuang-chang11",
	},
	nolooks = {
		["#goCkc"] = true,
		["south"] = true,
		["north"] = true,
		["east"] = true,
		["west"] = true,
	},
	lengths = {
		["#goCkc"] = 1000,
	},
}
Room {
	id = "zhiye/caikuang-chang2",
	name = "山路",
	ways = {
		["northdown"] = "zhiye/caikuang-chang10",
		["#goCkc"] = "zhiye/caikuang-chang12",
	},
	nolooks = {
		["#goCkc"] = true,
		["south"] = true,
		["north"] = true,
		["east"] = true,
		["west"] = true,
	},
	lengths = {
		["#goCkc"] = 1000,
	},
}
Room {
	id = "zhiye/caikuang-chang3",
	name = "山路",
	ways = {
		["eastdown"] = "zhiye/caikuang-chang10",
		["#goCkc"] = "zhiye/caikuang-chang13",
	},
	nolooks = {
		["#goCkc"] = true,
		["south"] = true,
		["north"] = true,
		["east"] = true,
		["west"] = true,
	},
	lengths = {
		["#goCkc"] = 1000,
	},
}
Room {
	id = "zhiye/caikuang-chang10",
	name = "采矿场",
	ways = {
		["northup"] = "zhiye/caikuang-chang1",
		["southup"] = "zhiye/caikuang-chang2",
		["eastdown"] = "zhiye/caikuang-chang0",
		["westup"] = "zhiye/caikuang-chang3",
	},
}
Room {
	id = "zhiye/caikuang-chang11",
	name = "采矿场",
	ways = {
		["out"] = "zhiye/caikuang-chang1",
	},
}
Room {
	id = "zhiye/caikuang-chang12",
	name = "采矿场",
	ways = {
		["out"] = "zhiye/caikuang-chang2",
	},
}
Room {
	id = "zhiye/caikuang-chang13",
	name = "采矿场",
	ways = {
		["out"] = "zhiye/caikuang-chang3",
	},
}
Room {
	id = "zhiye/datiepu1",
	name = "打铁铺",
	outdoor = "扬州城",
	ways = {
		["south"] = "city/dongdajie0",
	},
}
Room {
	id = "zhiye/gaoshan0",
	name = "高山脚下",
	outdoor = "成都郊外",
	ways = {
		["west"] = "chengdu/road1",
	},
	nolooks = {
		["northup"] = true,
		["southup"] = true,
		["eastup"] = true,
	},
}
Room {
	id = "zhiye/gaoshan1",
	name = "山崖",
	ways = {
		["southdown"] = "zhiye/gaoshan0",
	},
}
Room {
	id = "zhiye/gaoshan2",
	name = "山崖",
	ways = {
		["northdown"] = "zhiye/gaoshan0",
	},
}
Room {
	id = "zhiye/gaoshan3",
	name = "山崖",
	ways = {
		["westdown"] = "zhiye/gaoshan0",
	},
}
Room {
	id = "zhiye/jiaoliushi1",
	name = "陈列室",
	outdoor = "扬州城",
	ways = {
		["east"] = "zhiye/jimaidian1",
	},
}
Room {
	id = "zhiye/jimaidian1",
	name = "寄卖店",
	outdoor = "扬州城",
	ways = {
		["north"] = "city/dongdajie1",
		["west"] = "zhiye/jiaoliushi1",
	},
}
Room {
	id = "zhiye/nongtian0",
	name = "农田口",
	ways = {
		["north"] = "changan/northroad4",
		["southeast"] = "zhiye/nongtian2",
		["southwest"] = "zhiye/nongtian1",
		["northeast"] = "zhiye/nongtian3",
	},
}
Room {
	id = "zhiye/nongtian1",
	name = "田埂",
	ways = {
		["northeast"] = "zhiye/nongtian0",
		["#goCkc"] = "zhiye/nongtian11",
	},
	nolooks = {
		["#goCkc"] = true,
		["south"] = true,
		["north"] = true,
		["east"] = true,
		["west"] = true,
	},
	lengths = {
		["#goCkc"] = 1000,
	},
}
Room {
	id = "zhiye/nongtian11",
	name = "农田",
	ways = {
		["out"] = "zhiye/nongtian1",
	},
}
Room {
	id = "zhiye/nongtian12",
	name = "农田",
	ways = {
		["out"] = "zhiye/nongtian2",
	},
}
Room {
	id = "zhiye/nongtian13",
	name = "农田",
	ways = {
		["out"] = "zhiye/nongtian3",
	},
}
Room {
	id = "zhiye/nongtian2",
	name = "田埂",
	ways = {
		["northwest"] = "zhiye/nongtian0",
		["#goCkc"] = "zhiye/nongtian12",
	},
	nolooks = {
		["#goCkc"] = true,
		["south"] = true,
		["north"] = true,
		["east"] = true,
		["west"] = true,
	},
	lengths = {
		["#goCkc"] = 1000,
	},
}
Room {
	id = "zhiye/nongtian3",
	name = "田埂",
	ways = {
		["southwest"] = "zhiye/nongtian0",
		["#goCkc"] = "zhiye/nongtian13",
	},
	nolooks = {
		["#goCkc"] = true,
		["south"] = true,
		["north"] = true,
		["east"] = true,
		["west"] = true,
	},
	lengths = {
		["#goCkc"] = 1000,
	},
}
Room {
	id = "zhiye/sanglin0",
	name = "桑林外",
	ways = {
		["south"] = "changan/northroad4",
		["southeast"] = "zhiye/sanglin2",
		["southwest"] = "zhiye/sanglin3",
		["northwest"] = "zhiye/sanglin1",
	},
}
Room {
	id = "zhiye/sanglin1",
	name = "桑林小路",
	ways = {
		["southeast"] = "zhiye/sanglin0",
		["#goCkc"] = "zhiye/sanglin11",
	},
	nolooks = {
		["#goCkc"] = true,
		["south"] = true,
		["north"] = true,
		["east"] = true,
		["west"] = true,
	},
	lengths = {
		["#goCkc"] = 1000,
	},
}
Room {
	id = "zhiye/sanglin11",
	name = "桑林",
	ways = {
		["out"] = "zhiye/sanglin1",
	},
}
Room {
	id = "zhiye/sanglin12",
	name = "桑林",
	ways = {
		["out"] = "zhiye/sanglin2",
	},
}
Room {
	id = "zhiye/sanglin13",
	name = "桑林",
	ways = {
		["out"] = "zhiye/sanglin3",
	},
}
Room {
	id = "zhiye/sanglin2",
	name = "桑林小路",
	ways = {
		["northwest"] = "zhiye/sanglin0",
		["#goCkc"] = "zhiye/sanglin12",
	},
	nolooks = {
		["#goCkc"] = true,
		["south"] = true,
		["north"] = true,
		["east"] = true,
		["west"] = true,
	},
	lengths = {
		["#goCkc"] = 1000,
	},
}
Room {
	id = "zhiye/sanglin3",
	name = "桑林小路",
	ways = {
		["northeast"] = "zhiye/sanglin0",
		["#goCkc"] = "zhiye/sanglin13",
	},
	nolooks = {
		["#goCkc"] = true,
		["south"] = true,
		["north"] = true,
		["east"] = true,
		["west"] = true,
	},
	lengths = {
		["#goCkc"] = 1000,
	},
}
Room {
	id = "zhiye/yaochang1",
	name = "制药作坊",
	outdoor = "成都城",
	no_fight = true,
	ways = {
		["west"] = "chengdu/beidajie2",
	},
}
Room {
	id = "zhiye/yaodian1",
	name = "药店",
	outdoor = "成都城",
	no_fight = true,
	ways = {
		["east"] = "chengdu/beidajie2",
	},
}
Room {
	id = "zhiye/zhibufang1",
	name = "织布坊",
	outdoor = "长安城",
	no_fight = true,
	ways = {
		["west"] = "changan/northjie2",
	},
}
