package com.matthewhare.timeline.model.proxies
{
	import com.matthewhare.timeline.model.vo.TimelineVO;
	import com.matthewhare.timeline.model.vo.ITimelineVO;

	public class TimelineProxy
	{
		static private var _currentTimelineVO:ITimelineVO
		
		public function TimelineProxy()
		{
		}
		
		/**
		 * Returns the current TimelineVO that is being worked on. 
		 * @return 
		 * 
		 */
		static public function get currentTimelineVO():ITimelineVO
		{
			return _currentTimelineVO;
		}

	}
}