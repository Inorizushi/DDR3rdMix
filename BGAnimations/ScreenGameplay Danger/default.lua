return Def.ActorFrame {

InitCommand=cmd(diffusealpha,0);
HealthStateChangedMessageCommand=function(self, param)
	if param.HealthState == "HealthState_Danger" then
		self:diffusealpha(1)
	else
		self:diffusealpha(0)
	end
end;

LoadActor("bone")..{
	InitCommand=cmd(FullScreen;);
	-- OnCommand=function(self)
	-- 	local w = DISPLAY:GetDisplayWidth() / self:GetWidth()*2;
	-- 	local h = DISPLAY:GetDisplayHeight() / self:GetHeight()*2;
	-- 	self:customtexturerect(0,0,w,h);
	-- end;
};

LoadActor("danger")..{
	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+100);
};

}