package com.matthewhare.timeline.model.presentation
{
	import com.matthewhare.timeline.model.proxies.TimelineProxy;
	import com.matthewhare.timeline.model.vo.TimelineVO;
	
	import flash.events.MouseEvent;

	/**
	 * TimelinePM ( Presentation Model ), is a bindable class that takes ALL the logic away from an MXML view.
	 * <p>The purpose being, to keep the MXML model clean, and make the Presentation Model testable.</p> 
	 * @author matthewhare
	 * 
	 */
	public class TimelinePM
	{
		
		private var _timelineVO:TimelineVO
		
		[Inject]
		public var timelineProxy:TimelineProxy
		
		public function TimelinePM()
		{
			trace('TimelinePM');
		}
		
		[PostConstruct]
		public function postContruct():void
		{
			trace('TimelinePM:postConstruct');			
		}
		
		
		
		[Bindable]
		public function get timelineVO():TimelineVO
		{
			return _timelineVO;
		}

		public function set timelineVO(value:TimelineVO):void
		{
			_timelineVO = value;
		}
		
		//
		// Handlers
		// ________
		
		public function mouseDeltaHandler(event:MouseEvent):void
		{
			trace('mouseDeltaHandler');
		}

	}
}