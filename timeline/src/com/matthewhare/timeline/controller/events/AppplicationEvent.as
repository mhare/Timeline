package com.matthewhare.timeline.controller.events
{
	import flash.events.Event;

	public class AppplicationEvent extends Event
	{
		public static const QUIT:String = "ApplicationEvent.QUIT";

		public function AppplicationEvent(type:String)
		{
			super(type,true,false);
		}

		public override function clone():Event
		{
			return new AppplicationEvent(type);
		}

		public override function toString():String
		{
			return formatToString("AppplicationEvent");
		}
	}
}