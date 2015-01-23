extension = sgs.Package("Chemistry", sgs.Package_GeneralPack)
Shengxuandashen = sgs.General(extension, "Shengxuandashen", "qun") 

Shengxuan = sgs.CreateTriggerSkill{
    name = "Shengxuan" ,
	frequency = sgs.Skill_Compulsorym ,
    events = {sgs.GameStart , sgs.GeneralShown} ,
	can_trigger = function(self, event, room, player, data)
		if event == sgs.GameStart then
			if player and player:isAlive() and player:ownSkill(self:objectName()) then
				room:addPlayerMark(player, "ShengxuanEffect")
			end
			return ""
		end
		if player and player:isAlive() and player:hasShownSkill(self) then
			if player:getMark("ShengxuanEffect") > 0 and data:toBool() == player:inHeadSkills(self:objectName()) then
				return self:objectName()
			end
		end
		return ""
	end ,
	on_cost = function(self, event, room, player, data)
		if event == sgs.TargetConfirming then
			if player:hasShownSkill(self) or player:askForSkillInvoke(self:objectName(), data) then
				return true
			end
			return false
		end
		room:broadcastSkillInvoke(self:objectName())
		room:setPlayerMark(player, "ShengxuanEffect", 0)
		return true
	end,
    on_effect = function(self,event,room,player,data)
		local room = player:getRoom()
		--出牌阶段发动的技能最后获得
        room:acquireSkill(player, "jianxiong")
        room:acquireSkill(player, "fankui")
        room:acquireSkill(player, "guicai")
        room:acquireSkill(player, "ganglie")
        room:acquireSkill(player, "tuxi")
        room:acquireSkill(player, "luoyi")
        room:acquireSkill(player, "tiandu")
        room:acquireSkill(player, "yiji")
        room:acquireSkill(player, "luoshen")
        room:acquireSkill(player, "shensu")
        room:acquireSkill(player, "qiaobian")
        room:acquireSkill(player, "jushou")
        room:acquireSkill(player, "jieming")
        room:acquireSkill(player, "xingshang")
        room:acquireSkill(player, "fangzhu")
        room:acquireSkill(player, "xiaoguo")
        room:acquireSkill(player, "paoxiao")
        room:acquireSkill(player, "guanxing")
        room:acquireSkill(player, "kongcheng")
        room:acquireSkill(player, "tieji")
        room:acquireSkill(player, "mashu_shengxuandasheng")
        room:acquireSkill(player, "jizhi")
        room:acquireSkill(player, "qicai")
        room:acquireSkill(player, "liegong")
        room:acquireSkill(player, "kuanggu")
        room:acquireSkill(player, "niepan")
        room:acquireSkill(player, "bazhen")
        room:acquireSkill(player, "xiangle")
        room:acquireSkill(player, "fangquan")
        room:acquireSkill(player, "huoshou")
        room:acquireSkill(player, "zaiqi")
        room:acquireSkill(player, "juxiang")
        room:acquireSkill(player, "lieren")
        room:acquireSkill(player, "shushen")
        room:acquireSkill(player, "shenzhi")
        room:acquireSkill(player, "keji")
        room:acquireSkill(player, "yingzi")
        room:acquireSkill(player, "liuli")
        room:acquireSkill(player, "qianxun")
        room:acquireSkill(player, "xiaoji")
        room:acquireSkill(player, "yinghun")
        room:acquireSkill(player, "tianxiang")
        room:acquireSkill(player, "hongyan")       
        room:acquireSkill(player, "buqu")
        room:acquireSkill(player, "haoshi")        
        room:acquireSkill(player, "guzheng")
        room:acquireSkill(player, "duanbing")        
        room:acquireSkill(player, "wushuang")        
        room:acquireSkill(player, "biyue")        
        room:acquireSkill(player, "wansha")       
        room:acquireSkill(player, "weimu")
        room:acquireSkill(player, "mengjin")
        room:acquireSkill(player, "leiji")
        room:acquireSkill(player, "guidao")
        room:acquireSkill(player, "beige")
        room:acquireSkill(player, "duanchang")        
        room:acquireSkill(player, "mingshi")
        room:acquireSkill(player, "lirang")
        room:acquireSkill(player, "shuangren")
        room:acquireSkill(player, "sijian")
        room:acquireSkill(player, "suishi")
        room:acquireSkill(player, "kuangfu")
        room:acquireSkill(player, "huoshui")        
        room:acquireSkill(player, "tuntian")        
        room:acquireSkill(player, "ziliang")
        room:acquireSkill(player, "huyuan")
        room:acquireSkill(player, "heyi")        
        room:acquireSkill(player, "yizhi")        
        room:acquireSkill(player, "shengxi")
        room:acquireSkill(player, "shoucheng")        
        room:acquireSkill(player, "yicheng")
        room:acquireSkill(player, "qianhuan")
        room:acquireSkill(player, "zhendu")
        room:acquireSkill(player, "qiluan")
        room:acquireSkill(player, "zhangwu")
        room:acquireSkill(player, "shouyue")
        room:acquireSkill(player, "jizhao")
        room:acquireSkill(player, "xunxun")
        room:acquireSkill(player, "wangxi")
        room:acquireSkill(player, "hengjiang")
		room:acquireSkill(player, "qianxi")
        room:acquireSkill(player, "guixiu")        
		room:acquireSkill(player, "jiang")
        room:acquireSkill(player, "yingyang")
        room:acquireSkill(player, "hunshang")		
        room:acquireSkill(player, "fenming")
        room:acquireSkill(player, "hengzheng")
		room:acquireSkill(player, "baoling")
        room:acquireSkill(player, "chuanxin")        
		room:acquireSkill(player, "wuxin")
		--以下为转化技或出牌阶段使用的技能，最后获得
		room:acquireSkill(player, "qingguo")
		room:acquireSkill(player, "duanliang")
        room:acquireSkill(player, "qiangxi")
        room:acquireSkill(player, "quhu")
		room:acquireSkill(player, "rende")
        room:acquireSkill(player, "wusheng")
		room:acquireSkill(player, "longdan")
		room:acquireSkill(player, "lianhuan")
		room:acquireSkill(player, "huoji")
        room:acquireSkill(player, "kanpo")
        room:acquireSkill(player, "zhiheng")
        room:acquireSkill(player, "qixi")
        room:acquireSkill(player, "kurou")
        room:acquireSkill(player, "fanjian")
        room:acquireSkill(player, "guose")
        room:acquireSkill(player, "duoshi")
        room:acquireSkill(player, "jieyin")
		room:acquireSkill(player, "tianyi")
		room:acquireSkill(player, "dimeng")
		room:acquireSkill(player, "zhijian")
		room:acquireSkill(player, "fenxun")
        room:acquireSkill(player, "jijiu")
        room:acquireSkill(player, "qingnang")
		room:acquireSkill(player, "lijian")
		room:acquireSkill(player, "luanji")
        room:acquireSkill(player, "shuangxiong")
		room:acquireSkill(player, "luanwu")
		room:acquireSkill(player, "xiongyi")
		room:acquireSkill(player, "qingcheng")
		room:acquireSkill(player, "jixi")
		room:acquireSkill(player, "tiaoxin")
		room:acquireSkill(player, "shangyi")
        room:acquireSkill(player, "niaoxiang")
		room:acquireSkill(player, "tianfu")
		room:acquireSkill(player, "cunsi")
		room:acquireSkill(player, "duanxie")
		room:acquireSkill(player, "fengshi")
		room:acquireSkill(player, "hongfa")
        room:acquireSkill(player, "wendao")
    end
}
sgs.LoadTranslationTable{
	["Chemistry"] = "化学之风" ,
	["Shengxuandashen"] = "周翀",
	["#Shengxuandashen"] = "省选大神",
	["designer:Shengxuandashen"] = "曾晋哲",
	["illustrator:Shengxuandashen"] = "某不知名摄影家",
	["Shengxuan"] = "省选" ,
	[":Shengxuan"] = "锁定技，当你第一次明置此武将牌后，你获得《三国杀·国战》的所有武将的技能。"
}
Shengxuandashen:addSkill(Shengxuan) 
return {extension}