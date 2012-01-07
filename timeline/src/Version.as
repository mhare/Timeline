package {

	public class Version {
	
		public static const DATE:String 		= "Jan 07 12 09:10 PM";
		public static const MAJOR:String 		= "0";
		public static const MINOR:String 		= "1";
		public static const BUILD:String		= "135";
		public static const BUILD_TOTAL:String 	= "135";
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