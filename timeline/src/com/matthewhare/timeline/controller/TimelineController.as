package com.matthewhare.timeline.controller
{
	import com.matthewhare.timeline.model.vo.TimelineVO;
	import com.matthewhare.timeline.view.timeline.TimelineView;
	import com.matthewhare.timeline.view.timeline.renderers.ITimelineRenderer;
	import com.matthewhare.timeline.view.timeline.renderers.timelineclassicrenderer.TimelineClassicRenderer;
	
	import flash.utils.Dictionary;

	public class TimelineController
	{
		private var _view:ITimelineRenderer;
		private var _timelineVOs:Dictionary
		private var _pointer:int = -1;
	
		public function TimelineController()
		{
			_timelineVOs = new Dictionary();
			trace('TimelineController');
		}
		
		
		
		[ViewAdded]
		public function timelineRendererAdded( view : TimelineClassicRenderer ) : void
		{
			this._view = view;
			this._view.timelineVO = (_pointer>-1) ? _timelineVOs[_pointer] : null;
		}
		
		[ViewRemoved]
		public function timelineRendererRemoved( view : ITimelineRenderer ) : void
		{
			this._view = null;
		}

		[Bindable]
		public function get pointer():int
		{
			return _pointer;
		}

		public function set pointer(value:int):void
		{
			_pointer = value;
		}

	}
}