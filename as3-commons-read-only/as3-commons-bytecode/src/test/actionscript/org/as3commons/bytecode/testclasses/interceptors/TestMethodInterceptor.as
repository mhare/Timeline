/*
* Copyright 2007-2010 the original author or authors.
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
package org.as3commons.bytecode.testclasses.interceptors {
	import org.as3commons.bytecode.interception.IMethodInvocation;
	import org.as3commons.bytecode.interception.impl.InvocationKind;
	import org.as3commons.bytecode.testclasses.ProxySubClass;

	public class TestMethodInterceptor extends AssertingInterceptor {

		public function TestMethodInterceptor() {
			super();
			ProxySubClass;
		}

		override public function intercept(invocation:IMethodInvocation):void {
			super.intercept(invocation);
			if (invocation.kind === InvocationKind.METHOD) {
				invocation.proceed = false;
				invocation.returnValue = "interceptedReturnValue";
			} else if (invocation.kind === InvocationKind.GETTER) {
				invocation.proceed = false;
				invocation.returnValue = "interceptedGetterValue";
			} else if (invocation.kind === InvocationKind.SETTER) {
				invocation.proceed = false;
				invocation.returnValue = "interceptedSetterValue";
			}
		}
	}
}