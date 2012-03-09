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
			data.push(new ImageVO(Statics.picArr[0].img, Statics.picArr[0].img));
			data.push(new ImageVO(Statics.picArr[1].img, Statics.picArr[1].img));
			data.push(new ImageVO(Statics.picArr[2].img, Statics.picArr[2].img));
				
			this.sendNotification(IMAGE_READY, data);
		}
		
	}
}