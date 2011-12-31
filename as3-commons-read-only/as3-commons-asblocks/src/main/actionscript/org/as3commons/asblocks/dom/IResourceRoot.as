////////////////////////////////////////////////////////////////////////////////
// Copyright 2011 Michael Schmalle - Teoti Graphix, LLC
// 
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
// 
// http://www.apache.org/licenses/LICENSE-2.0 
// 
// Unless required by applicable law or agreed to in writing, software 
// distributed under the License is distributed on an "AS IS" BASIS, 
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and 
// limitations under the License
// 
// Author: Michael Schmalle, Principal Architect
// mschmalle at teotigraphix dot com
////////////////////////////////////////////////////////////////////////////////

package org.as3commons.asblocks.dom
{

import org.as3commons.collections.framework.IList;

/**
 * Built from a classpath entry; abstracts the details of how to inspect the
 * ActionScript resources from a particular resource.  Example implementations
 * might be simple source folders, or <code>.swc</code> archives.
 * 
 * @author Michael Schmalle
 * @copyright Teoti Graphix, LLC
 * @productversion 1.0
 */
public interface IResourceRoot
{
	function getPath():IFile;
	
	/**
	 * Returns the list of <code>ASQNames</code> defined by the types.
	 */
	function getDefinitionQNames():IList; // ASQName
}
}