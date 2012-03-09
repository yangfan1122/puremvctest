TestFacade：注册APP_STARTUP和APP_STARTUP_OVER，发送APP_STARTUP给StartUpCommand。


StartUpCommand：注册mediator，将舞台显示对象传给mediator。注册proxy。发送APP_STARTUP_OVER给ImageCommand，告诉它可以获取数据了。


ImageProxy：得到数据，发送IMAGE_READY及数据，给ImageMediator。


ImageMediator：注册感兴趣的事件（IMAGE_READY）。收到ImageProxy.IMAGE_READY，显示图片。
