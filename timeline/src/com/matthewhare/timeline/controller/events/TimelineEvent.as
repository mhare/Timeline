package com.matthewhare.timeline.controller.events
{
	import flash.events.Event;
	
	public class TimelineEvent extends Event
	{
		
		
		/**
		 *	Load a file. 
		 */
		static public const FILE_LOAD				:String = "TimelineEvent.FILE_LOAD";
		
		/**
		 *	Loaded a file.
		 */
		static public const FILE_LOADED			:String = "TimelineEvent.FILE_LOADED";
		
		/**
		 *	Save a file. 
		 */
		static public const FILE_SAVE				:String = "TimelineEvent.FILE_SAVE";

		/**
		 *	Saved a file. 
		 */
		static public const FILE_SAVED				:String = "TimelineEvent.FILE_SAVED";

		
		
		
		
		
		
		
		
		
		
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