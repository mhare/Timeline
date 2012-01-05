package com.matthewhare.timeline.view.timeline.renderers.timelineclassicrenderer.componants
{
	import com.matthewhare.timeline.model.vo.ITimelineItemVO;
	import com.matthewhare.timeline.model.vo.TimelineItemVO;
	
	import spark.components.Group;
	
	public class TimelineItemTrack extends Group
	{
		public function TimelineItemTrack()
		{
			super();
		}
		
		private var _timelineItemVOs:Vector.<TimelineItemVO>;
		private var _timelineItems:Vector.<TimelineItemVO>;
		private var _zoomLevel:Number = 1; 
		
		
		private function isSpaceAvailable(vo:ITimelineItemVO):Boolean
		{
			// if no item display on this channel
			// between startDate and endDate
			// return true
			// else
			// return false
		}
		
		public function addItemVO(vo:ITimelineItemVO):Boolean
		{
			// check to see if there is space on this channel, to 
			// display this VO.
			// If spaceIsAvailable, 
			// 	add VO; 
			//  redraw;
			// 	return true
			// else; 
			// 	return false
		}
		
		/**
		 * Redraws the channels graphics.
		 * */
		private function redraw():void
		{
			// redraw
			// background
			this.graphics.beginFill(0x0, 0);
			this.graphics.lineStyle(1,0,1);
			this.graphics.drawRect(0,1,this.width, 8);
			this.graphics.endFill();
			
			// only redraw what needs to be seen. 
		}
		
		/**
		 * Sets the number of pixels to a year:
		 * <ul>
		 * <li>A zoomLevel of 1, means 1 pixel is displayed for each year</li>
		 * <li>A zoomLevel of 2, means 2 pixels are displayed for each year</li>
		 * <li>A zoomLevel of 365, means 365 pixels are displayed for each year</li>
		 * </ul>
		 * */
		public function set zoomLevel(i:Number):void
		{
			_zoomLevel = i;
			redraw();
		}
		
		public function get zoomLevel():Number
		{
			return _zoomLevel;
		}
	}
}