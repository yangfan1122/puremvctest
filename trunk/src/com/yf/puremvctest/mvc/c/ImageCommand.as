package com.yf.puremvctest.mvc.c
{
	import org.puremvc.as3.interfaces.ICommand;
	import org.puremvc.as3.patterns.command.SimpleCommand;
	import org.puremvc.as3.interfaces.ICommand;
	import org.puremvc.as3.interfaces.INotification;
	
	import com.yf.puremvctest.mvc.m.ImageProxy;
	
	public class ImageCommand extends SimpleCommand implements ICommand
	{
		public function ImageCommand()
		{
			super();
		}

		override public function execute(notification:INotification):void
		{
			//得到图片链接
			(facade.retrieveProxy(ImageProxy.NAME) as ImageProxy).getImages();		
		}
	}
}