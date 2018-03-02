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

&lt;blog&gt;

[(PG)RailsではなくActiveRecordを単体で使う](https://www.masawa200ok.net/2018/02/26/pgrails%e3%81%a7%e3%81%af%e3%81%aa%e3%81%8factiverecord%e3%82%92%e5%8d%98%e4%bd%93%e3%81%a7%e4%bd%bf%e3%81%86/)
