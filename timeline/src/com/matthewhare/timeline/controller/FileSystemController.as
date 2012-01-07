package com.matthewhare.timeline.controller
{
	import com.matthewhare.timeline.events.ActivityEvent;
	import com.matthewhare.timeline.events.FileSystemEvent;
	import com.matthewhare.timeline.model.proxies.FileSystemProxy;
	import com.matthewhare.timeline.model.vo.TimelineVO;
	
	import flash.events.Event;
	import flash.events.IEventDispatcher;
	import flash.filesystem.File;
	import flash.filesystem.FileMode;
	import flash.filesystem.FileStream;
	import flash.net.FileFilter;

	public class FileSystemController
	{
		
		static public const FILE_TYPE:String 				= "tln";
		static public const FILE_TYPE_FILTER:FileFilter 	= new FileFilter('Timeline Files', ".tln");
		

		[Dispatcher]
		public var dispatcher:IEventDispatcher;

		[Inject(source="fileSystemProxy")]
		public var proxy:FileSystemProxy;

		
		
		public function FileSystemController()
		{
		}
		
		[EventHandler(event="FileSystemEvent.FILE_OPEN")]
		public function onFileOpen(event:FileSystemEvent):void
		{
			var ref:File = new File();
				ref.browseForOpen("Open", [FILE_TYPE_FILTER]);
				ref.addEventListener(Event.SELECT, onFileOpenSelected);
		}
		
		public function onFileOpenSelected(event:Event):void
		{
			var ref:File = event.target as File
			var myFileStream:FileStream = new FileStream();
			
//			dispatcher(new ActivityEvent(ActivityEvent.PROCESSING))
			
				myFileStream.open(ref, FileMode.READ);
				
			var fileDataFile:String = myFileStream.readUTFBytes(myFileStream.bytesAvailable);
				myFileStream.close();
				
		}
		
		[EventHandler(event="FileSystemEvent.FILE_SAVE")]
		public function onFileSave(event:FileSystemEvent):void
		{
			var timelineVO:TimelineVO = event.data as TimelineVO
			var file:File = timelineVO.file;
			
			var str:String = "Hello.";
			if (!file.exists)
			{
				var stream:FileStream = new FileStream();
					stream.open(file, FileMode.WRITE);
					stream.writeUTFBytes(str);
					stream.close();
			}
		}
	}
}