package flexUnitTests.ModelTestSuite
{
	import com.matthewhare.timeline.model.presentation.TimelinePM;
	import com.matthewhare.timeline.model.vo.TimelineVO;
	
	import flexunit.framework.Assert;
	
	public class TimelinePMTest
	{		

		private var target:TimelinePM;
		
		[Before]
		public function setUp():void
		{
			target = new TimelinePM();
			target.timelineVO = new TimelineVO();
		}
		
		[After]
		public function tearDown():void
		{
			target = null;
		}
		
		[BeforeClass]
		public static function setUpBeforeClass():void
		{
		}
		
		[AfterClass]
		public static function tearDownAfterClass():void
		{
		}
		
		[Test(description="mouseDeltaHandler no way of testing this yet?")]
		public function testMouseDeltaHandler():void
		{
			Assert.fail("Test method Not yet implemented");
		}
		
		[Test(description="See if the title returns a default string.")]
		public function testGet_title():void
		{
			if (target.timelineVO.title.length > -1)
				Assert.assertTrue('Title returns default string');
			else
				Assert.fail("Test method Not yet implemented");
		}
	}
}