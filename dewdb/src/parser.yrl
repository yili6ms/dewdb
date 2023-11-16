Nonterminals sql query_list queryable query_field.

Terminals select_sym asterisk_sym from_sym where_sym join_sym on_sym and_sym or_sym
union_sym dot_field comma digital chars.

Rootsymbol sql.

sql -> select_sym query_list from_sym queryable : {'sql', '$2', '$4'}.

query_list -> asterisk_sym : {'query_lists', '$1'}.
query_list -> query_field : {'query_list', '$1'}.
query_list -> query_field comma query_list : {'query_lists', '$1', '$3'}.

query_field -> chars : {'query_field', '$1'}.
query_field -> chars dot_field chars : {'query_fields', '$1', '$3'}.

queryable -> chars : {'queryable', '$1'}.


