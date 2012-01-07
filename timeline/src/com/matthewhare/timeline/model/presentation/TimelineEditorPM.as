package com.matthewhare.timeline.model.presentation
{
	import com.matthewhare.timeline.model.vo.TimelineItemVO;
	import com.matthewhare.timeline.model.vo.TimelineVO;

	public class TimelineEditorPM
	{
		
		[Inject]
		private var _timelineVO:TimelineVO
		
		public function TimelineEditorPM()
		{
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

		
		public function createEmptyItem():TimelineItemVO
		{
			var itemVO:TimelineItemVO = new TimelineItemVO();
				itemVO.name = 'New Name';
				itemVO.description = 'New Description';
			
			_timelineVO.timelineItems.push(itemVO);
			
			return itemVO;
		}
	}
}