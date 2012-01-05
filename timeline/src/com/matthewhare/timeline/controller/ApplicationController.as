package com.matthewhare.timeline.controller
{
	import com.matthewhare.timeline.controller.events.AppplicationEvent;
	
	import flash.events.KeyboardEvent;
	import flash.events.MouseEvent;
	
	import mx.core.FlexGlobals;

	public class ApplicationController
	{
		public function ApplicationController()
		{
			FlexGlobals.topLevelApplication.addEventListener(KeyboardEvent.KEY_UP, onKeyEvent);
			FlexGlobals.topLevelApplication.addEventListener(KeyboardEvent.KEY_DOWN, onKeyEvent);
			FlexGlobals.topLevelApplication.addEventListener(MouseEvent.MOUSE_WHEEL, onMouseWheel);
		}
		
		protected function onKeyEvent(event:KeyboardEvent):void
		{
			// TODO Auto-generated method stub
			trace('key pressed ['+event.charCode+'] shift:['+event.shiftKey+'] command:['+event.commandKey+'] control['+event.controlKey+']');
		}
		
		protected function onMouseWheel(event:MouseEvent):void
		{
			// TODO Auto-generated method stub
			trace('mouse delta ['+event.delta+']');
		}

		[EventHandler(event="AppplicationEvent.QUIT")]
		public function onQuit(event:AppplicationEvent):void
		{
			FlexGlobals.topLevelApplication.exit();
		}

		
	}
}