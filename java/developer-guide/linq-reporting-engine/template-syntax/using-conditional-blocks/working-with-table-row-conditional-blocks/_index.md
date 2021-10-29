---
title: Working with Table-Row Conditional Blocks
type: docs
weight: 20
url: /java/working-with-table-row-conditional-blocks/
---

A table-row conditional block is a conditional block which body occupies single or a few rows of a single document table. The body of such a block (as well as the body of its every template option) starts at the beginning of the first occupied row and ends at the end of the last occupied row as follows.

**Note –** Table rows occupied by different template options in the following template are highlighted with different colors.

||||
| :- | :- | :- |
|**&lt;&lt;if ...&gt;&gt; ...**|**...**|**...**|
|**...**|**...**|**...**|
|**&lt;&lt;elseif ...&gt;&gt; ...**|**...**|**...**|
|**...**|**...**|**...**|
|**&lt;&lt;else&gt;&gt; ...**|**...**|**...**|
|**...**|**...**|**...**|
|**...**|**...**|**... &lt;&lt;/if&gt;&gt;**|
||||

The following examples in this section are given using `client`, an instance of the `Client` class, and `clients`, an enumeration of instances of the `Client` class that is defined as follows.

{{< highlight csharp >}}
public class Client
{
public String  REF getName getName()  REF getterBody { ... }
public String  REF getCountry getCountry()  REF getterBody { ... }
public String  REF getLocalAddress getLocalAddress()  REF getterBody { ... }
...
}
{{< /highlight >}}

Using table-row conditional blocks, you can pick to output a single row among many rows of a single document table depending on a condition like in the following example.

|...|...|...|
| :- | :- | :- |
|**&lt;&lt;if [client.getCountry() == “New Zealand”]&gt;&gt;&lt;&lt;[client.getName()]&gt;&gt;**|**&lt;&lt;[client.getLocalAddress()]&gt;&gt;**||
|**&lt;&lt;else&gt;&gt;&lt;&lt;[client.getName()]&gt;&gt;**|**&lt;&lt;[client.getCountry()]&gt;&gt;**|**&lt;&lt;[client.getLocalAddress()]&gt;&gt;&lt;&lt;/if&gt;&gt;**|
|**...**|**...**|**...**|

You can normally use table-row conditional blocks within data bands to make elements of an enumeration look differently depending on a condition. Consider the following template.

|&lt;&lt;foreach [in clients]&gt;&gt;&lt;&lt;if [getCountry() == “New Zealand”]&gt;&gt;&lt;&lt;[getName()]&gt;&gt;|&lt;&lt;[getLocalAddress()]&gt;&gt;||
| :- | :- | :- |
|**&lt;&lt;else&gt;&gt;&lt;&lt;[getName()]&gt;&gt;**|**&lt;&lt;[getCountry()]&gt;&gt;**|**&lt;&lt;[getLocalAddress()]&gt;&gt;&lt;&lt;/if&gt;&gt;&lt;&lt;/foreach&gt;&gt;**|

In this case, the engine produces a report as follows.

|A Company|Australia|<p>219-241 Cleveland St</p><p>STRAWBERRY HILLS  NSW  1427</p>|
| :- | :- | :- |
|**B Ltd.**|**Brazil**|<p>**Avenida João Jorge, 112, ap. 31**</p><p>**Vila Industrial**</p><p>**Campinas - SP**</p><p>**13035-680**</p>|
|**C & D**|**Canada**|<p>**101-3485 RUE DE LA MONTAGNE**</p><p>**MONTRÉAL (QUÉBEC) H3G 2A6**</p>|
|**E Corp.**|<p>**445 Mount Eden Road**</p><p>**Mount Eden**</p><p>**Auckland 1024**</p>||
|**F & Partners**|<p>**20 Greens Road**</p><p>**Tuahiwi**</p><p>**Kaiapoi 7691**</p>||
|**G & Co.**|**Greece**|<p>**Karkisias 6**</p><p>**GR-111 42  ATHINA**</p><p>**GRÉCE**</p>|
|**H Group**|**Hungary**|<p>**Budapest**</p><p>**Fiktív utca 82., IV. em./28.**</p><p>**2806**</p>|
|**I & Sons**|<p>**43 Vogel Street**</p><p>**Roslyn**</p><p>**Palmerston North 4414**</p>||
|**J Ent.**|**Japan**|<p>**Hakusan 4-Chōme 3-2**</p><p>**Bunkyō-ku, TŌKYŌ**</p><p>**112-0001**</p><p>**Japan**</p>|

**Note –** You can use common conditional blocks within table-row data bands as well.

Also, you can use data bands inside table-row conditional blocks. For example, you can provide an alternate content for an empty table-row data band using the following template.

|Client|Country|Local Address|
| :- | :- | :- |
|**&lt;&lt;if [!clients.any()]&gt;&gt;No data**|||
|**&lt;&lt;else&gt;&gt;&lt;&lt;foreach [in clients]&gt;&gt;&lt;&lt;[getName()]&gt;&gt;**|**&lt;&lt;[getCountry()]&gt;&gt;**|**&lt;&lt;[getLocalAddress()]&gt;&gt;&lt;&lt;/foreach&gt;&gt;&lt;&lt;/if&gt;&gt;**|

In case when the corresponding enumeration is empty, the engine produces a report as follows.

|Client|Country|Local Address|
| :- | :- | :- |
|**No data**|||

A special case is a template option inside a single-column table row. In such a case, if you put an opening `if`, `elseif`, or `else` tag and a closing `if` tag in the same cell, the engine treats a template option formed by these tags as a common one rather than a table-row one by default. The following template illustrates such a scenario.

|Header|
| :- |
|**&lt;&lt;if [false]&gt;&gt;Content to remove&lt;&lt;/if&gt;&gt;**|
|**Footer**|

In this case, the engine produces a report as follows.

|Header|
| :- |
||
|**Footer**|

However, if needed, you can override this behavior making the engine to treat such a template option as a table-row one by specifying a `greedy` switch like in the following template.

|Header|
| :- |
|**&lt;&lt;if [false]&gt;&gt;Content to remove&lt;&lt;/if -greedy&gt;&gt;**|
|**Footer**|

In this case, the engine produces a report as follows.

|Header|
| :- |
|**Footer**|

**Note –** In the previous examples, tag `<<if [false]>>` is used for the sake of simplicity; you can use any other Boolean expression instead of just `false`.
