local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+48);
	Def.Quad{
		InitCommand=cmd(zoomto,194,32;diffusecolor,color("#0000FF"););
		GainFocusCommand=cmd(stoptweening;zoomto,0,32;diffusecolor,color("#000000");linear,.25;zoomto,194,32;diffusecolor,color("#0000FF"));
		LoseFocusCommand=cmd(stoptweening;linear,.25;zoomto,0,32;diffusecolor,color("#000000"));
	};
	LoadActor("Pocket/Down")..{
		GainFocusCommand=cmd(stoptweening;diffusealpha,1);
		LoseFocusCommand=cmd(stoptweening;sleep,.3;diffusealpha,.5);
	};
};

return t;