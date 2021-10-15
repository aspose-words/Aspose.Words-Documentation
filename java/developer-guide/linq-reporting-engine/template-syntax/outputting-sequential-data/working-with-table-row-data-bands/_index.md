---
title: Working with Table-Row Data Bands
type: docs
weight: 20
url: /java/working-with-table-row-data-bands/
---

A table-row data band is a data band which body occupies single or numerous rows of a single document table. The body of such a band starts at the beginning of the first occupied row and ends at the end of the last occupied row as follows.

||||
| :- | :- | :- |
|**&lt;&lt;foreach ...&gt;&gt; ...**|**...**|**...**|
|**...**|**...**|**...**|
|**...**|**...**|**... &lt;&lt;/foreach&gt;&gt;**|
||||

The following examples in this section are given using `ds`, a `DataSet` instance containing `DataTable` and `DataRelation` objects according to the following data model.

![working-with-table-row-aspose-words-java](working_with_table_row_data_bands.png)

The most common use case of a table-row data band is the building of a document table that represents a list of items. You can use a template like the following one to achieve this.

|Client|Manager|Contract Price|
| :- | :- | :- |
|**&lt;&lt;foreach [c in ds.Contracts]&gt;&gt;&lt;&lt;[c.Clients.Name]&gt;&gt;**|**&lt;&lt;[c.Managers.Name]&gt;&gt;**|**&lt;&lt;[c.Price]&gt;&gt;&lt;&lt;/foreach&gt;&gt;**|
|**Total:**||**&lt;&lt;[ds.Contracts.sum(c => c.Price)]&gt;&gt;**|

In this case, the engine produces a report as follows.

|Client|Manager|Contract Price|
| :- | :- | :- |
|**A Company**|**John Smith**|**1200000**|
|**B Ltd.**|**John Smith**|**750000**|
|**C & D**|**John Smith**|**350000**|
|**E Corp.**|**Tony Anderson**|**650000**|
|**F & Partners**|**Tony Anderson**|**550000**|
|**G & Co.**|**July James**|**350000**|
|**H Group**|**July James**|**250000**|
|**I & Sons**|**July James**|**100000**|
|**J Ent.**|**July James**|**100000**|
|**Total:**||**4300000**|

To populate a document table with a master-detail data, you can use nested table-row data bands like in the following template.

|Manager/Client|Contract Price|
| :- | :- |
|&lt;&lt;foreach [m in ds.Managers]&gt;&gt;&lt;&lt;[m.Name]&gt;&gt;|&lt;&lt;[m.Contracts.sum(c => c.Price)]&gt;&gt;|
|&lt;&lt;foreach [c in m.Contracts]&gt;&gt;  &lt;&lt;[c.Clients.Name]&gt;&gt;|&lt;&lt;[c.Price]&gt;&gt;&lt;&lt;/foreach&gt;&gt;&lt;&lt;/>foreach&gt;&gt;|
|**Total:**|&lt;&lt;[ds.Contracts.sum(c =>c.Price)]&gt;&gt;|

In this case, the engine produces a report as follows.

|Manager/Client|Contract Price|
| :- | :- |
|**John Smith**|**2300000**|
|**A Company**|**1200000**|
|**B Ltd.**|**750000**|
|**C & D**|**350000**|
|**Tony Anderson**|**1200000**|
|**E Corp.**|**650000**|
|**F & Partners**|**550000**|
|**July James**|**800000**|
|**G & Co.**|**350000**|
|**H Group**|**250000**|
|**I & Sons**|**100000**|
|**J Ent.**|**100000**|
|**Total:**|**4300000**|

You can normally use common data bands nested to table-row data bands as well like in the following template.

|Manager|Clients|
| :- | :- |
|<p>&lt;&lt;foreach [</p><p>m in ds.Managers</p><p>]&gt;&gt;&lt;&lt;[m.Name]&gt;&gt;</p>|<p>&lt;&lt;foreach [<br>c in m.Contracts<br>]&gt;&gt;&lt;&lt;[c.Clients.Name]&gt;&gt;</p><p>&lt;&lt;/foreach&gt;&gt;&lt;&lt;/foreach&gt;&gt;</p>|

In this case, the engine produces a report as follows.

|Manager|Clients|
| :- | :- |
|**John Smith**|<p>**A Company**</p><p>**B Ltd.**</p><p>**C & D**</p><p></p>|
|**Tony Anderson**|<p>**E Corp.**</p><p>**F & Partners**</p><p></p>|
|**July James**|<p>**G & Co.**</p><p>**H Group**</p><p>**I & Sons**</p><p>**J Ent.**</p><p></p>|

A special case is a data band inside a single-column table row. In such a case, if you put opening and closing `foreach` tags in the same cell, the engine treats a data band formed by these tags as a common one rather than a table-row one by default. The following template illustrates such a scenario.

|Managers|
| :- |
|**&lt;&lt;foreach [m in ds.Managers]&gt;&gt;&lt;&lt;[m.Name]&gt;&gt;  &lt;&lt;/foreach&gt;&gt;**|

In this case, the engine produces a report as follows.

|Managers|
| :- |
|**John Smith  Tony Anderson  July James**  |

However, if needed, you can override this behavior making the engine to treat such a data band as a table-row one by specifying a `greedy` switch like in the following template.

|Managers|
| :- |
|**&lt;&lt;foreach [m in ds.Managers]&gt;&gt;&lt;&lt;[m.Name]&gt;&gt;&lt;&lt;/foreach -greedy&gt;&gt;**|

In this case, the engine produces a report as follows.

|Managers|
| :- |
|**John Smith**|
|**Tony Anderson**|
|**July James**|

For more examples of templates for typical scenarios involving table-row data bands, see “Appendix C. Typical Templates”.
