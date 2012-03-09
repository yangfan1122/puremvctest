package com.yf.puremvctest.mvc.v
{
	import org.puremvc.as3.interfaces.IMediator;
	import org.puremvc.as3.patterns.mediator.Mediator;
	
	public class LabelMediator extends Mediator implements IMediator
	{
		public static var NAME:String = "LabelMediator";
		
		public function LabelMediator(mediatorName:String=null, viewComponent:Object=null)
		{
			super(mediatorName, viewComponent);
		}
	}
}