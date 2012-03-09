package com.yf.puremvctest.mvc.c
{
	import com.yf.puremvctest.mvc.m.ImageProxy;
	import com.yf.puremvctest.mvc.v.ImageMediator;
	import com.yf.puremvctest.mvc.v.LabelMediator;
	import com.yf.puremvctest.mvc.TestFacade;
	
	import org.puremvc.as3.interfaces.INotification;
	import org.puremvc.as3.patterns.command.SimpleCommand;
	
	public class StartUpCommand extends SimpleCommand
	{
		public function StartUpCommand()
		{
			super();
		}
		
		override public function execute(notification:INotification):void
		{
			var _stage:Object = notification.getBody();
			
			//注册mediator
			facade.registerMediator(new ImageMediator(ImageMediator.NAME, _stage.img));
			facade.registerMediator(new LabelMediator(LabelMediator.NAME, _stage.txt));
			
			//注册proxy
			facade.registerProxy(new ImageProxy(ImageProxy.NAME));
			
			sendNotification(TestFacade.APP_STARTUP_OVER, _stage);
		}
	}
}