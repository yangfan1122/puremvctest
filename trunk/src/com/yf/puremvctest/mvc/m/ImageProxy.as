package com.yf.puremvctest.mvc.m
{
	import com.yf.puremvctest.mvc.m.vo.ImageVO;
	import com.yf.puremvctest.statics.Statics;
	
	import org.puremvc.as3.interfaces.IProxy;
	import org.puremvc.as3.patterns.proxy.Proxy;
	
	public class ImageProxy extends Proxy implements IProxy
	{
		public static const IMAGE_READY:String = "image_ready";
		public static const NAME:String = "ImageProxy";
		
		public function ImageProxy(proxyName:String=null, data:Object=null)
		{
			super(proxyName, data);
		}
		
		public function getImages():void
		{
			data = [];
			for(var i:int=0;i<3;i++)
			{
				data.push(new ImageVO(Statics.picArr[i].img, Statics.picArr[i].name));	
			}
				
			this.sendNotification(IMAGE_READY, data);//ImageMediator中声明对IMAGE_READY感兴趣
		}
		
	}
}