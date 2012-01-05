package com.matthewhare.timeline.controller.events
{
	import flash.events.Event;

	public class ActivityEvent extends Event
	{
		public static const PROCESSING:String = "processing";
		public static const SUCCESS:String = "success";
		public static const ERROR:String = "error";

		public function ActivityEvent(type:String)
		{
			super(type,true,false);
		}

		public override function clone():Event
		{
			return new ActivityEvent(type);
		}

		public override function toString():String
		{
			return formatToString("ActivityEvent");
		}
	}
}