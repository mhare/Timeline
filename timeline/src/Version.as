package {

	public class Version {
	
		public static const DATE:String 		= "Jan 05 12 02:29 PM";
		public static const MAJOR:String 		= "0";
		public static const MINOR:String 		= "1";
		public static const BUILD:String		= "23";
		public static const BUILD_TOTAL:String 	= "23";
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