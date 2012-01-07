package com.matthewhare.timeline.view.timeline.componants
{
	import com.matthewhare.timeline.model.vo.TimelineVO;
	
	import spark.components.Group;
	
	public class TimelineDateTrack extends Group
	{
		
		private var _dateStart:Date
		private var _dateEnd:Date
		private var _dateFocus:Date
		private var _dateIncrements:Date
		
		private var _zoomLevel:int
		
		private var _timelineVO:TimelineVO
		
		public function TimelineDateTrack()
		{
			super();
		}

		/**
		 *  The amount of time between marks.
		 * @param value
		 * 
		 */
		public function set dateIncrements(value:Date):void
		{
			_dateIncrements = value;
		}
		
		public function get dateIncrements():Date
		{
			return _dateIncrements;
		}


		/**
		 * Which date to stop drawing the legend at
		 * @param value
		 * 
		 */
		public function set dateEnd(value:Date):void
		{
			_dateEnd = value;
		}

		public function get dateEnd():Date
		{
			return _dateEnd;
		}
		
		
		/**
		 * Which date to start drawing the legend from.
		 * @param value
		 * 
		 */
		public function set dateStart(value:Date):void
		{
			_dateStart = value;
		}
		
		public function get dateStart():Date
		{
			return _dateStart;
		}


		/**
		 * Draws the legend, with marks, and labels.
		 * */
		private function draw():void
		{
			
		}

		/**
		 * A reference to the timelineVO this dateline is renderer from
		 * */
		public function get timelineVO():TimelineVO
		{
			return _timelineVO;
		}

		public function set timelineVO(value:TimelineVO):void
		{
			_timelineVO = value;
		}

		public function get zoomLevel():int
		{
			return _zoomLevel;
		}

		public function set zoomLevel(value:int):void
		{
			_zoomLevel = value;
		}

		public function get dateFocus():Date
		{
			return _dateFocus;
		}

		public function set dateFocus(value:Date):void
		{
			_dateFocus = value;
		}


	}
}