package com.matthewhare.timeline.model.vo
{
	public interface ITimelineItemVO
	{
		
		function get description():String;

		function set description(value:String):void;

		function get name():String;

		function set name(value:String):void;

		function get endDate():Date;

		function set endDate(value:Date):void;

		function get startDate():Date;

		function set startDate(value:Date):void;
	}
}