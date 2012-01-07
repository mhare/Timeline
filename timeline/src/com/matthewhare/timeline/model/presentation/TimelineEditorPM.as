package com.matthewhare.timeline.model.presentation
{
	import com.matthewhare.timeline.model.vo.TimelineItemVO;
	import com.matthewhare.timeline.model.vo.TimelineVO;
	
	import flash.events.Event;
	import flash.events.EventDispatcher;

	/**
	 * Presentation Model the Editor 
	 * @author matthewhare
	 * 
	 */
	public class TimelineEditorPM extends EventDispatcher
	{
		
		[Inject]
		[Bindable]
		public var timelineVO:TimelineVO
		
		public function TimelineEditorPM()
		{
		}
		
		/**
		 *Creates a new TimelineItemVO, stores it on the timelineVO, then
		 * returns the reference. 
		 * 
		 */
		public function createEmptyItem():TimelineItemVO
		{
			var itemVO:TimelineItemVO = new TimelineItemVO();
				itemVO.name = 'New Name';
				itemVO.description = 'New Description';
			
				timelineVO.items.addItem(itemVO);;
				
			return itemVO;
		}
	}
}