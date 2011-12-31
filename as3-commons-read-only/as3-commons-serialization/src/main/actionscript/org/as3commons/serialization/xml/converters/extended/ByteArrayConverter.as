/*
 * Copyright 2009 the original author or authors.
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
package org.as3commons.serialization.xml.converters.extended
{
	import com.dynamicflash.util.Base64;
	
	import flash.utils.ByteArray;
	
	import org.as3commons.serialization.xml.converters.IConverter;
	
	public class ByteArrayConverter implements IConverter
	{
		public function canConvert(clazz:Class):Boolean{
			return clazz == ByteArray;	
		}

		public function fromXML(xml:XML,contextXML:XML):Object
		{			
			return Base64.decodeToByteArray(xml.toString());			
		}
		
		public function toString(obj:Object):String{
			return Base64.encodeByteArray( obj as ByteArray );
		}	
		
	}
}