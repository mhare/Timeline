package com.matthewhare.timeline.controller.events
{
	import flash.events.Event;
	
	public class TimelineEvent extends Event
	{
		
		
		private var _type:String;
		private var _data:Object;
		private var _name:String;
		

		public function TimelineEvent(type:String, data:Object, name:String)
		{
			super(type, true, false);
		}

		public function get name():String
		{
			return _name;
		}

		public function get data():Object
		{
			return _data;
		}


	}
}