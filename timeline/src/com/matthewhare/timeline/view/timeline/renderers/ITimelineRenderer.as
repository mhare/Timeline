package com.matthewhare.timeline.view.timeline.renderers
{
	import com.matthewhare.timeline.model.vo.TimelineVO;

	public interface ITimelineRenderer
	{
		
		function set timelineVO(timelineVO:TimelineVO):void;

		function get timelineVO():TimelineVO;
	}
}