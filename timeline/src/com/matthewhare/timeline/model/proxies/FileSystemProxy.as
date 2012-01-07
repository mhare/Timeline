package com.matthewhare.timeline.model.proxies
{
	import com.matthewhare.timeline.model.vo.TimelineFileVO;
	
	import flash.filesystem.File;

	/**
	 * Manages the loading and saving of data to the disk
	 * @author matthewhare
	 * 
	 */
	public class FileSystemProxy
	{
		public function FileSystemProxy()
		{
		}
		
		
		/**
		 * Loads a file located at the given url
		 * @param url
		 * 
		 */
		public function loadFile(file:File):TimelineFileVO
		{
			// return loaded data as FileVO object?
			// return loaded data as TimelineProxy Object?
			
			return new TimelineFileVO;
		}
		
		/**
		 * Writes the data passed through, to disk, using the url name given
		 * 
		 * @param url location and name of the file
		 * @param data data to be stored in the file
		 * 
		 */
		public function saveFile(file:File, fileVO:TimelineFileVO):void
		{
			// 
		}
	}
}