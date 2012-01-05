package com.matthewhare.timeline.model.vo
{
	import flash.events.EventDispatcher;
	import flash.filesystem.File;
	import flash.filesystem.FileMode;
	import flash.filesystem.FileStream;

	public class TimelineVO extends EventDispatcher implements ITimelineVO
	{
		
		private var _startDate:Date
		private var _endDate:Date
		private var _items:Vector.<TimelineItemVO>; // vector of timelineItems
		
		private var _file:File
		
		public function TimelineVO()
		{
		}
		
		
		
		/**
		 * The end of the timeline. If not set, this defaults
		 * to the latest value found in the TimelineItems vector array.
		 * @param value
		 * 
		 */
		[Bindable]
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
		[Bindable]
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
		
		
		/**
		 * Stores a reference to the file object for this timeline  
		 * @return 
		 * 
		 */
		[Bindable]
		public function get file():File
		{
			// parse any new data, and add to file
			return _file
		}
		
		/**
		 * Takes a file object, and populates the timelineVO from it. This includes parsing any data,
		 * and creating and timelineItemVOs found in the file. 
		 * @param file
		 * @return 
		 * 
		 */
		public function set file(file:File):void
		{
			// take file data, and populate timelineVO
			_file = file;
		}
		
		
		public function parseFileStream(fileStream:FileStream):void
		{
			var fileDataString:String = fileStream.readUTFBytes(fileStream.bytesAvailable);
			parseFileXML(new XML(fileDataString));
		}
		
		
		public function getFileDataAsXMLString():String
		{
			return "";
		}

	}
}