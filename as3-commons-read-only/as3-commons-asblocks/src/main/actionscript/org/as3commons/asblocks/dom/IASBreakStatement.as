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
 * A break statement with optional label; <code>break;</code> or 
 * <code>break myLoop;</code>.
 * 
 * <pre>
 * var block:IASBlock = factory.newBlock();
 * var bs:IASBreakStatement = block.newBreak();
 * </pre>
 * 
 * <p>Will produce;</p>
 * <pre>
 * {
 *     break;
 * }
 * </pre>
 * 
 * <pre>
 * var block:IASBlock = factory.newBlock();
 * var bs:IASBreakStatement = block.newBreak("myLoop");
 * </pre>
 * 
 * <p>Will produce;</p>
 * <pre>
 * {
 *     break myLoop;
 * }
 * </pre>
 * 
 * @author Michael Schmalle
 * @copyright Teoti Graphix, LLC
 * @since 1.0
 * 
 * @see org.as3commons.asblocks.dom.IStatementContainer#newBreak()
 */
public interface IASBreakStatement extends IASStatement
{
	//--------------------------------------------------------------------------
	//
	//  Public :: Properties
	//
	//--------------------------------------------------------------------------
	
	//----------------------------------
	//  label
	//----------------------------------
	
	/**
	 * The break's label identifier.
	 */
	function getLabel():IASExpression;
	
	/**
	 * @see #getLabel()
	 */
	function setLabel(value:IASExpression):void;
	
	/**
	 * Returns the <code>String</code> break label.
	 * 
	 * @return A <code>String</code> label.
	 */
	function getLabelString():String;
}
}