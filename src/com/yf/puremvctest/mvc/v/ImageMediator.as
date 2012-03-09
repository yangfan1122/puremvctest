package com.yf.puremvctest.mvc.v
{
	import org.puremvc.as3.interfaces.IMediator;
	import org.puremvc.as3.interfaces.INotification;
	import org.puremvc.as3.patterns.mediator.Mediator;
	
	import com.yf.puremvctest.mvc.m.ImageProxy;
	
	import spark.components.Image;
	
	public class ImageMediator extends Mediator implements IMediator
	{
		public static const NAME:String = "ImageMediator";
		private var picArr:Array = null;
		
		public function ImageMediator(mediatorName:String=null, viewComponent:Object=null)
		{
			super(mediatorName, viewComponent);
		}
		
		/**
		 * image感兴趣的消息 
		 * @return 
		 * 
		 */		
		override public function listNotificationInterests():Array
		{
			return [ImageProxy.IMAGE_READY];
		}
		
		override public function handleNotification(notification:INotification):void
		{
			switch(notification.getName())
			{
				case ImageProxy.IMAGE_READY:
					picArr = notification.getBody() as Array;
					Img.source = picArr[0].path;
					break;
				default:
					break;
			}
		}
		
		private function get Img():Image
		{
			return viewComponent as Image;
		}

	}
}