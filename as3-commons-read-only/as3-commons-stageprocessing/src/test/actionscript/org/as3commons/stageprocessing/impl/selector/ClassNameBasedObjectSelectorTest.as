/*
* Copyright 2007-2011 the original author or authors.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
package org.as3commons.stageprocessing.impl.selector {
	import flash.events.Event;

	import flexunit.framework.Assert;

	public class ClassNameBasedObjectSelectorTest {

		public function ClassNameBasedObjectSelectorTest() {
			super();
		}

		[Test]
		public function testApprove():void {
			var regex:Vector.<String> = new Vector.<String>();
			regex[regex.length] = '^class';
			var selector:ClassNameBasedObjectSelector = new ClassNameBasedObjectSelector(regex);
			Assert.assertTrue(selector.approve({}));
		}

		[Test]
		public function testApproveWithMatch():void {
			var regex:Vector.<String> = new Vector.<String>();
			regex[regex.length] = '^flash';
			var selector:ClassNameBasedObjectSelector = new ClassNameBasedObjectSelector(regex);
			Assert.assertFalse(selector.approve(new Event(Event.COMPLETE)));
		}
	}
}
