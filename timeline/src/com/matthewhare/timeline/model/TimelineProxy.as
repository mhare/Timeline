package com.matthewhare.timeline.model
{
	import com.matthewhare.timeline.model.vo.TimelineVO;

	public class TimelineProxy
	{
		static private var _currentTimelineVO:TimelineVO
		
		public function TimelineProxy()
		{
		}
		
		/**
		 * Returns the current TimelineVO that is being worked on. 
		 * @return 
		 * 
		 */
		static public function get currentTimelineVO():TimelineVO
		{
			return _currentTimelineVO;
		}

	}
}