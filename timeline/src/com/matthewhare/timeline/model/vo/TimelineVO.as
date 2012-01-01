package com.matthewhare.timeline.model.vo
{
	public class TimelineVO implements ITimelineVO
	{
		
		private var _timelineStartDate:Date
		private var _timelineEndDate:Date
		private var _timelineItems:Array; // vector of timelineItems
		
		
		public function TimelineVO()
		{
		}
		
		
		
		/**
		 * The end of the timeline. If not set, this defaults
		 * to the latest value found in the TimelineItems vector array.
		 * @param value
		 * 
		 */
		public function set timelineEndDate(value:Date):void
		{
			_timelineEndDate = value;
		}
		
		public function get timelineEndDate():Date
		{
			return _timelineEndDate;
		}
		
		/**
		 * The beginning of the timeline. If not set, this defaults
		 * to the earliest value found in the TimelineItems vector array.
		 * @param value
		 * 
		 */
		public function set timelineStartDate(value:Date):void
		{
			_timelineStartDate = value;
		}
		
		public function get timelineStartDate():Date
		{
			return _timelineStartDate;
		}

		/**
		 * A Vector array of TimelineItemVO's that appear in the timeline
		 */
		[Bindable]
		public function get timelineItems():Vector.<TimelineItemVO>
		{
			return _timelineItems;
		}

		public function set timelineItems(value:Vector.<TimelineItemVO>):void
		{
			_timelineItems = value;
		}
		
		/**
		 * Parses XML to populate this TimelineVO, and TimelineItemVOs
		 * */
		public function parseFileXML(xml:XML):void
		{
			
		}

	}
}