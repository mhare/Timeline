package com.matthewhare.timeline.model.vo
{
	import mx.collections.ArrayCollection;

	public interface ITimelineVO
	{
		
		function set dateEnd(value:Date):void;

		function get dateEnd():Date;

		function set dateStart(value:Date):void;

		function get dateStart():Date;

		function get items():ArrayCollection;

		function set items(value:ArrayCollection):void;
	}
}