package com.matthewhare.timeline.model.vo
{
	import flash.events.EventDispatcher;
	import flash.filesystem.File;
	import flash.filesystem.FileMode;
	import flash.filesystem.FileStream;
	
	import mx.collections.ArrayCollection;

	public class TimelineVO implements ITimelineVO
	{
		private var _title:String				= 	"No Title Set";
		private var _description:String			=	"No Description Set";
		private var _startDate:Date
		private var _endDate:Date
		private var _items:ArrayCollection; // vector of timelineItems
		
		private var _file:File
		
		public function TimelineVO()
		{
			_items = new ArrayCollection();
		}
		
		
		
		/**
		 * The end of the timeline. If not set, this defaults
		 * to the latest value found in the TimelineItems vector array.
		 * @param value
		 * 
		 */
		[Bindable]
		public function set dateEnd(value:Date):void
		{
			_endDate = value;
		}
		
		public function get dateEnd():Date
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
		public function set dateStart(value:Date):void
		{
			_startDate = value;
		}
		
		public function get dateStart():Date
		{
			return _startDate;
		}

		/**
		 * A Vector array of TimelineItemVO's that appear in the timeline
		 */
		[Bindable]
		public function get items():ArrayCollection
		{
			return _items;
		}

		public function set items(value:ArrayCollection):void
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
		
		
		/**
		 * Parses a fileStream, to native Timeline format, and populates this VO
		 * */
		public function parseFileStream(fileStream:FileStream):void
		{
			var fileDataString:String = fileStream.readUTFBytes(fileStream.bytesAvailable);
			parseFileXML(new XML(fileDataString));
		}
		
		
		/**
		 * Returns all VO data as XML.
		 * */
		public function getFileDataAsXMLString():String
		{
			return "";
		}

		/**
		 * The short text title for this timeline
		 * */
		[Bindable]
		public function get title():String
		{
			return _title;
		}

		public function set title(value:String):void
		{
			_title = value;
		}

		/**
		 * The longtext description of this timeline
		 * */
		[Bindable]
		public function get description():String
		{
			return _description;
		}

		public function set description(value:String):void
		{
			_description = value;
		}

	}
}