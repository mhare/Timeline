package com.matthewhare.timeline.controller
{
	import com.matthewhare.timeline.controller.events.TimelineEvent;
	import com.matthewhare.timeline.model.FileSystemProxy;
	
	import flash.events.IEventDispatcher;
	import flash.filesystem.File;
	import flash.net.FileReference;

	public class FileSystemController
	{
		
		[Dispatcher]
		public var dispatcher:IEventDispatcher

		[Inject(source="fileSystemProxy")]
		public var proxy:FileSystemProxy;

		
		
		public function FileSystemController()
		{
		}
		
		[EventHandler(event="TimelineEvent.FILE_LOAD", properties="data,name")]
		public function fileLoad(data:Object, name:String):void
		{
			
			var ref:FileReference = new FileReference();
				ref.browse();
			
//			var file:File = new File('');
//				file.
//			proxy.saveFile();			
		}
		
	}
}