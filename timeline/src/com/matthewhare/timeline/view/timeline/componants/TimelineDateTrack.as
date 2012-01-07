package com.matthewhare.timeline.view.timeline.componants
{
	import spark.components.Group;
	
	public class TimelineDateTrack extends Group
	{
		
		private var _drawStartDate:Date
		private var _drawEndDate:Date
		private var _dateIncrements:Date
		
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
		public function set drawEndDate(value:Date):void
		{
			_drawEndDate = value;
		}

		public function get drawEndDate():Date
		{
			return _drawEndDate;
		}
		
		
		/**
		 * Which date to start drawing the legend from.
		 * @param value
		 * 
		 */
		public function set drawStartDate(value:Date):void
		{
			_drawStartDate = value;
		}
		
		public function get drawStartDate():Date
		{
			return _drawStartDate;
		}


		/**
		 * Draws the legend, with marks, and labels.
		 * */
		private function draw():void
		{
			
		}
	}
}