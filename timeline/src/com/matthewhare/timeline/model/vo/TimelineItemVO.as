package com.matthewhare.timeline.model.vo
{
	import flash.filesystem.File;

	public class TimelineItemVO implements ITimelineItemVO
	{
		
		private var _startDate:Date
		private var _endDate:Date
		
		private var _name:String
		private var _description:String

		private var _file:File
		
		public function TimelineItemVO()
		{
		}

		public function get description():String
		{
			return _description;
		}

		public function set description(value:String):void
		{
			_description = value;
		}

		public function get name():String
		{
			return _name;
		}

		public function set name(value:String):void
		{
			_name = value;
		}

		public function get endDate():Date
		{
			return _endDate;
		}

		public function set endDate(value:Date):void
		{
			_endDate = value;
		}

		public function get startDate():Date
		{
			return _startDate;
		}

		public function set startDate(value:Date):void
		{
			_startDate = value;
		}

		public function get file():File
		{
			return _file;
		}

		public function set file(value:File):void
		{
			_file = value;
		}


	}
}