lexer grammar hello;


WHITESPACE : [ \n\r\t]+ -> skip;                  
                
ACCESS_CONTROL: 'public'
               |'private' 
               |'protected';             

EXPRESSION_SUBSTITUTION: ('#')('{')('$'|'@'|'a'..'z'|'0'..'9'|'A'..'Z'|'_'|'['|']')*('}')
                        |('#')(BUILT_IN_FUNCTION)('('|'a'..'z'|'0'..'9'|'A'..'Z'|'_'|' '|'['|']')*(')');

                  
CONTROL_STRUCTURE: 'if'
                  |'elsif'
                  |'unless'
                  |'case'
                  |'while'
                  |'until'
                  |'for'
                  |'yield'
                  |'raise'
                  |'begin'
                  |'retry'
                  |'break'
                  |'return'
                  |'next'
                  |'redo';
                  
                  
CLASS: 'object';
CLASS_NAME:('Class'| 'class'| 'module')(' ')('A'..'Z')('a'..'z'|'0'..'9'|'_'|'A'..'Z')*;                  
                  
                                                
KEYWORD: '__ENCODING__'
      	 |'__LINE__'
         |'__FILE__'
         |'BEGIN'
         |'END'
         |'alias'
         |'and'
         |'begin'
         |'break'
         |'case'
         |'class'
         |'def ' 
         |'defined?'
         |'do'
         |'else'
         |'elsif'
         |'end'
         |'ensure'
         |'false'
         |'for'
         |'if'
         |'in'
         |'module'
         |'next'
         |'nil'
         |'not'
         |'or'
         |'redo'
         |'rescue'
         |'retry'
         |'return'
         |'self'
         |'super'
         |'then'
         |'true'
         |'undef'
         |'unless'
         |'until'
         |'when'
         |'while'
         |'yield';
         
BUILT_IN_FUNCTION: 'puts'
                  |'gets'
                  |'chomp'
                  |'to_i'
                  |'pow'
                  |'display'
                  |'each'
                  |'count'
                  |'length'
                  |'new'
                  |'sort'
                  |'rand'
                  |'index'
                  |'next'
                  |'include'
                  |'call';         
                  
 

IDENTIFIER : ('a'..'z'|'_')('a'..'z'| '0'..'9'|'_'|'A'..'Z')*;
CLASS_VARIABLE:('@@')('a'..'z'|'_')('a'..'z'| '0'..'9'|'_'|'A'..'Z')*;
INSTANCE_VARIABLE: ('@')('a'..'z'|'_')('a'..'z'| '0'..'9'|'_'|'A'..'Z')*;
GLOBAL_VARIABLE: ('$')('a'..'z'|'_')('a'..'z'| '0'..'9'|'_'|'A'..'Z')*;
CONSTANT:('A'..'Z')('a'..'z'| '0'..'9'|'_'|'A'..'Z')*; 
 
                  
POSITIVE_INTEGER: ('1'..'9')('0'..'9')*|('0');
SIGNED_INTEGER:('-')('1'..'9')('0'..'9')*;
FLOAT:('+'|'-')('0'..'9')*('.')('0'..'9')* ;
STRING_LITERAL:('"')('A'..'Z'|'a'..'z'|' '|SPECIAL_CHARACTER|EXPRESSION_SUBSTITUTION)*('"');

                  
ASSIGNMENT_OPERATOR: '**='
              		|'*='
              		|'/='
              		|'%='
              		|'='
              		|'+='
              		|'-=';
              		
REFERENCE: '->';

ARITHMETIC_OPERATOR: '**'
					|'*'
					|'/'
					|'%'
					|'+'
					|'-';
					
LOGICAL_OPERATOR: '!'
                 |'&&'
				 |'||'
				 |'Not'
				 |'and'
				 |'or';
				 
COMPARISON_OPERATOR: '>'
				    |'>='
				    |'<'
				    |'<='
				    |'<=>'
				    |'=='
				    |'==='
				    |'!='
				    |'=~'
				    |'!~'
				    |'.eq?'
				    |'equal?';	
				    
BITWISE_OPERATOR: '&'
				 |'|'
				 |'^'
				 |'~'
				 |'<<'
				 |'>>';		
				 
RANGE_OPERATOR:'..'
              |'...';

              		
SPECIAL_CHARACTER: '.'
                  |'|'
                  |'('
                  |')'
                  |'['
                  |']'
                  |'{'
                  |'}'
                  |';'
                  |'"'
                  |'#'
                  |'::'
                  |','
                  |':'
                  |'?'
                  |'@';
