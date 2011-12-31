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
 * An assignment expression; <code>a = b;</code>, <code>a += b;</code>
 * or <code>a -= b;</code>.
 * 
 * <pre>
 * var left:IASExpression = factory.newExpression("myAnswer");
 * var right:IASExpression = factory.newExpression("4");
 * var expression:IASAssignmentExpression = factory.newAssignmentExpression(left, right);
 * </pre>
 * 
 * <p>Will produce <code>myAnswer = 4</code>.</p>
 * 
 * <pre>
 * var left:IASExpression = factory.newExpression("myAnswer");
 * var right:IASExpression = factory.newExpression("4");
 * var expression:IAssignmentExpression = factory.newAssignmentExpression(left, right);
 * expression.setRightExpression(factory.newExpression("otherAnswer = 4"));
 * </pre>
 * 
 * <p>Will produce <code>myAnswer = otherAnswer = 4</code>.</p>
 * 
 * @author Michael Schmalle
 * @copyright Teoti Graphix, LLC
 * @since 1.0
 * 
 * @see org.as3commons.asblocks.dom.AssignmentOperator
 * 
 * @see org.as3commons.asblocks.ASFactory#newAssignExpression()
 * @see org.as3commons.asblocks.ASFactory#newAddAssignExpression()
 * @see org.as3commons.asblocks.ASFactory#newBitAndAssignExpression()
 * @see org.as3commons.asblocks.ASFactory#newBitOrAssignExpression()
 * @see org.as3commons.asblocks.ASFactory#newBitXorAssignExpression()
 * @see org.as3commons.asblocks.ASFactory#newDivideAssignExpression()
 * @see org.as3commons.asblocks.ASFactory#newModuloAssignExpression()
 * @see org.as3commons.asblocks.ASFactory#newMultiplyAssignExpression()
 * @see org.as3commons.asblocks.ASFactory#newShiftLeftAssignExpression()
 * @see org.as3commons.asblocks.ASFactory#newShiftRightAssignExpression()
 * @see org.as3commons.asblocks.ASFactory#newShiftRightUnsignedAssignExpression()
 * @see org.as3commons.asblocks.ASFactory#newSubtractAssignExpression()
 */
public interface IASAssignmentExpression extends IASExpression
{
	//--------------------------------------------------------------------------
	//
	//  Properties
	//
	//--------------------------------------------------------------------------
	
	//----------------------------------
	//  leftExpression
	//----------------------------------
	
	/**
	 * The <code>IASExpression</code> contained on the left side of the assignment.
	 */
	function getLeftExpression():IASExpression;
	
	/**
	 * @see #getLeftExpression()
	 */
	function setLeftExpression(value:IASExpression):void;
	
	//----------------------------------
	//  operator
	//----------------------------------
	
	/**
	 * The assignment's operator eg; <code>=</code>, <code>+=</code>,
	 * <code>&=</code>, ect.
	 */
	function getOperator():AssignmentOperator;
	
	/**
	 * @see #getOperator()
	 */
	function setOperator(value:AssignmentOperator):void;
	
	//----------------------------------
	//  rightExpression
	//----------------------------------
	
	/**
	 * The <code>IASExpression</code> contained on the right side of the assignment.
	 */
	function getRightExpression():IASExpression;
	
	/**
	 * @see #setRightExpression()
	 */
	function setRightExpression(value:IASExpression):void;
}
}