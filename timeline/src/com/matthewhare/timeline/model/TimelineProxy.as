package com.matthewhare.timeline.model
{
	public class TimelineProxy
	{
		
		private var _timelineStartDate:Date
		private var _timelineEndDate:Date
		private var _timelineItems:Array; // vector of timelineItems
		
		
		public function TimelineProxy()
		{
		}
		
		public function get timelineEndDate():Date
		{
			return _timelineEndDate;
		}

		public function set timelineEndDate(value:Date):void
		{
			_timelineEndDate = value;
		}

		public function get timelineStartDate():Date
		{
			return _timelineStartDate;
		}

		public function set timelineStartDate(value:Date):void
		{
			_timelineStartDate = value;
		}

	}
}