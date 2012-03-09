package com.yf.puremvctest.mvc
{
	import com.yf.puremvctest.mvc.c.StartUpCommand;
	import com.yf.puremvctest.mvc.c.ImageCommand;
	
	import org.puremvc.as3.interfaces.IFacade;
	import org.puremvc.as3.patterns.facade.Facade;
	
	public class TestFacade extends Facade implements IFacade
	{
		private static var instance:TestFacade = null;
		public static const APP_STARTUP:String = "app_startup";
		public static const APP_STARTUP_OVER:String = "app_startup_over";
		
		public function TestFacade(_assist:Assist){}
		
		public static function getInstance():TestFacade
		{
			if(instance == null)
			{
				instance = new TestFacade(new Assist());
			}
			return instance;
		}
		
		/**
		 * 建立Command与Notification之间的映射 
		 * 
		 */		
		override protected function initializeController():void
		{
			super.initializeController();
			this.registerCommand(APP_STARTUP, StartUpCommand);
			this.registerCommand(APP_STARTUP_OVER, ImageCommand);
		}
		
		
		public function startup(_stage:Object):void
		{
			this.sendNotification(APP_STARTUP, _stage);
		}
	}
}

class Assist
{
	public function Assist(){}
}