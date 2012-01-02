package {

	public class Version {
	
		public static const DATE:String 		= "Jan 02 12 02:00 PM";
		public static const MAJOR:String 		= "0";
		public static const MINOR:String 		= "1";
		public static const BUILD:String		= "2";
		public static const BUILD_TOTAL:String 	= "2";
		public static const BUILD_STATE:String 	= "beta";
		
		
		/**
		* CONSTRUCTOR
		*/
		public function Version() {
		}
		
		static public function toString():String
		{
			return MAJOR +'.'+ MINOR + '.' + BUILD + ' b' + BUILD_TOTAL + ' ' + BUILD_STATE;
		}	
	}
}