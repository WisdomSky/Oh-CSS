%lex
%%

'{'                     return 'T_BLK_OPN'
'}'                     return 'T_BLK_CLS'
\s+                     return 'T_WS'
'.'                     return 'T_DOT'
'#'                     return 'T_HASH'
<<EOF>>                 return 'EOF'


/lex


%start expressions

%% /* language grammar */



expressions
    : e EOF
        { typeof console !== 'undefined' ? console.log($1) : print($1);
          return $1; }
    ;



e
    : T_BLK_OPN T_WS T_BLK_CLS
        { console.log("block"); }
    | T_WS T_HASH T_WS T_BLK_OPN
        { console.log("id selector"); }
    ;