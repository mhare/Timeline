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
package org.as3commons.bytecode.emit.impl {
	import flexunit.framework.TestCase;

	import org.as3commons.bytecode.abc.LNamespace;
	import org.as3commons.bytecode.abc.MethodBody;
	import org.as3commons.bytecode.abc.MethodInfo;
	import org.as3commons.bytecode.abc.QualifiedName;
	import org.as3commons.bytecode.abc.enum.BuiltIns;
	import org.as3commons.bytecode.abc.enum.MethodFlag;
	import org.as3commons.bytecode.abc.enum.MultinameKind;
	import org.as3commons.bytecode.abc.enum.NamespaceKind;
	import org.as3commons.bytecode.abc.enum.Opcode;
	import org.as3commons.bytecode.as3commons_bytecode;
	import org.as3commons.bytecode.emit.IExceptionInfoBuilder;
	import org.as3commons.bytecode.emit.IMethodBodyBuilder;
	import org.as3commons.bytecode.typeinfo.Argument;

	public class MethodBodyBuilderTest extends TestCase {

		private var _methodBodyBuilder:IMethodBodyBuilder;

		public function MethodBodyBuilderTest() {
			super();
		}

		override public function setUp():void {
			_methodBodyBuilder = new MethodBodyBuilder();
		}

		public function testAddOpcode():void {
			_methodBodyBuilder.addOpcode(Opcode.add);
			assertEquals(_methodBodyBuilder.opcodes.length, 1);
			assertStrictlyEquals(_methodBodyBuilder.opcodes[0].opcode, Opcode.add);
		}

		public function testDefineExceptionInfo():void {
			var ei:IExceptionInfoBuilder = _methodBodyBuilder.defineExceptionInfo();
			assertEquals(_methodBodyBuilder.exceptionInfos.length, 1);
			assertStrictlyEquals(_methodBodyBuilder.exceptionInfos[0], ei);
		}

		public function testBuild():void {
			_methodBodyBuilder.addOpcode(Opcode.debugfile, ["file.as"]);
			_methodBodyBuilder.addOpcode(Opcode.debugline, [10]);
			_methodBodyBuilder.addOpcode(Opcode.getlocal_0);
			_methodBodyBuilder.addOpcode(Opcode.pushscope);
			_methodBodyBuilder.addOpcode(Opcode.debugline, [12]);
			_methodBodyBuilder.addOpcode(Opcode.getlocal_0);
			_methodBodyBuilder.addOpcode(Opcode.getproperty, [new QualifiedName("description", new LNamespace(NamespaceKind.PACKAGE_NAMESPACE, "namespace"), MultinameKind.QNAME)]);
			_methodBodyBuilder.addOpcode(Opcode.returnvalue);
			var mb:MethodBody = _methodBodyBuilder.buildBody();
			assertEquals(8, mb.opcodes.length);
			assertEquals(1, mb.maxStack);
			assertEquals(1, mb.localCount);
			assertEquals(1, mb.initScopeDepth);
			assertEquals(2, mb.maxScopeDepth);
		}

	}
}