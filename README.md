# ARTodoList
Todo list with Active Record

&lt;syntax&gt;

ruby ARTodoList.rb &lt;action&gt;

&lt;actions&gt;

- create
- show &lt;filter&gt;
- update &lt;index&gt;
- delete &lt;indexes split by space&gt;
 
&lt;filter&gt;

filter with title or body by filter-word

&lt;example&gt;

- $ ruby ARTodoList.rb create 

- $ ruby ARTodoList.rb show

- $ ruby ARTodoList.rb show Buy

- $ ruby ARTodoList.rb update 3 

- $ ruby ARTodoList.rb delete 3

