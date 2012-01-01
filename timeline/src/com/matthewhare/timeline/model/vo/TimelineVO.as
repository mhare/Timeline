package com.matthewhare.timeline.model.vo
{
	public class TimelineVO implements ITimelineVO, ITimelineVO
	{
		
		private var _startDate:Date
		private var _endDate:Date
		private var _items:Vector.<TimelineItemVO>; // vector of timelineItems
		
		
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
			_endDate = value;
		}
		
		public function get timelineEndDate():Date
		{
			return _endDate;
		}
		
		/**
		 * The beginning of the timeline. If not set, this defaults
		 * to the earliest value found in the TimelineItems vector array.
		 * @param value
		 * 
		 */
		public function set timelineStartDate(value:Date):void
		{
			_startDate = value;
		}
		
		public function get timelineStartDate():Date
		{
			return _startDate;
		}

		/**
		 * A Vector array of TimelineItemVO's that appear in the timeline
		 */
		[Bindable]
		public function get timelineItems():Vector.<TimelineItemVO>
		{
			return _items;
		}

		public function set timelineItems(value:Vector.<TimelineItemVO>):void
		{
			_items = value;
		}
		
		/**
		 * Parses XML to populate this TimelineVO, and TimelineItemVOs
		 * */
		public function parseFileXML(xml:XML):void
		{
			
		}

	}
}