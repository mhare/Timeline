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

/**
 * A String literal; <code>"foo"</code> or <code>'foo'</code>.
 * 
 * <pre>
 * IASStringLiteral sl = factory.newStringLiteral("hello world")
 * </pre>
 * 
 * <p>Will produce; <code>"hello world"</code></p>
 * 
 * @author Michael Schmalle
 * @copyright Teoti Graphix, LLC
 * @since 1.0
 * 
 * @see org.as3commons.asblocks.ASFactory#newStringLiteral()
 */
public interface IASStringLiteral extends IASLiteral
{
	//--------------------------------------------------------------------------
	//
	//  Properties
	//
	//--------------------------------------------------------------------------
	
	//----------------------------------
	//  value
	//----------------------------------
	
	/**
	 * A <code>String</code>; <code>"foo"</code> or <code>'foo'</code>.
	 */
	function getValue():String;
	
	/**
	 * @see #getValue()
	 * 
	 * @param The <code>String</code> literal value without the quotes.
	 */
	function setValue(value:String):void;
}
}