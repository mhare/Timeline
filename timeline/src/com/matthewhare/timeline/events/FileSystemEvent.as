package com.matthewhare.timeline.events
{
	import flash.events.Event;

	public class FileSystemEvent extends Event
	{
		public static const FILE_OPEN:String 		= "FileSystemEvent.FILE_OPEN";
		public static const FILE_OPENED:String 		= "FileSystemEvent.FILE_OPENED";
		public static const FILE_SAVE:String 		= "FileSystemEvent.FILE_SAVE";
		public static const FILE_SAVE_AS:String		= "FileSystemEvent.FILE_SAVE_AS";
		public static const FILE_SAVED:String 		= "FileSystemEvent.FILE_SAVED";
		public static const FILE_SAVED_AS:String	= "FileSystemEvent.FILE_SAVED_AS";
		
		private var _data:Object;
		private var _name:Object;

		public function FileSystemEvent(type:String, data:Object, name:Object)
		{
			super(type,true,false);

			this._data = data;
			this._name = name;
		}

		public function get data():Object
		{
			return _data;
		}

		public function get name():Object
		{
			return _name;
		}

		public override function clone():Event
		{
			return new FileSystemEvent(type,data,name);
		}

		public override function toString():String
		{
			return formatToString("FileSystemEvent","data","name");
		}
	}
}