package com.matthewhare.timeline.controller
{
	import com.matthewhare.timeline.view.timeline.TimelineView;
	
	import flash.utils.Dictionary;

	public class TimelineController
	{
		private var _view:TimelineView;
		private var _timelineVOs:Dictionary
		private var _pointer:int = -1;
	
		public function TimelineController()
		{
			_timelineVOs = new Dictionary();
			trace('TimelineController');
		}
		
		
		
		[ViewAdded]
		public function timelineRendererAdded( view : TimelineView ) : void
		{
			this._view = view;
		}
		
		[ViewRemoved]
		public function timelineRendererRemoved( view : TimelineView ) : void
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