Definitions.

Rules.

/\*([^*]|\*+[^*/])*\*+/ : skip_token.

//([^\n])* : skip_token.

select : {token, {select_sym, TokenLine}}.
\* : {token, {asterisk_sym, TokenLine}}.
from : {token, {from_sym, TokenLine}}.
where : {token, {where_sym, TokenLine}}.
join : {token, {join_sym, TokenLine}}.
on : {token, {on_sym, TokenLine}}.
and : {token, {and_sym, TokenLine}}.
or : {token, {or_sym, TokenLine}}.
union : {token, {union_sym, TokenLine}}.
\. : {token, {dot_field, TokenLine}}.
\, : {token, {comma, TokenLine}}.

[0-9]+ : {token, {digital, TokenLine, list_to_integer(TokenChars)}}.
[a-z]+ : {token, {chars, TokenLine, TokenChars}}.

[\s\n\r\t]+ : skip_token.

Erlang code.