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
package org.as3commons.async.rpc.impl.remoting {

	import mx.rpc.remoting.RemoteObject;

	import org.as3commons.async.rpc.AbstractRPC;
	import org.as3commons.lang.Assert;

	/**
	 * Abstract base class for operations that invoke methods on a remote object.
	 * @author Christophe Herreman
	 */
	public class AbstractRemoteObjectOperation extends AbstractRPC {

		/**
		 * The <code>RemoteObject</code> instance that is used by the current <code>AbstractRemoteObjectOperation</code> to perform its task.
		 */
		protected var remoteObject:RemoteObject;

		/**
		 * Creates a new <code>AbstractRemoteObjectOperation</code> instance.
		 */
		public function AbstractRemoteObjectOperation(remoteObject:RemoteObject, methodName:String, parameters:Array=null) {
			Assert.notNull(remoteObject, "The remoteObject argument must not be null.");
			super(methodName, parameters);
			this.remoteObject = remoteObject;
		}

	}
}
