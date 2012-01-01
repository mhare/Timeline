package com.matthewhare.timeline.model.vo
{
	public interface ITimelineVO
	{
		
		function set timelineEndDate(value:Date):void;

		function get timelineEndDate():Date;

		function set timelineStartDate(value:Date):void;

		function get timelineStartDate():Date;

		function get timelineItems():Vector.<TimelineItemVO>;

		function set timelineItems(value:Vector.<TimelineItemVO>):void;
	}
}