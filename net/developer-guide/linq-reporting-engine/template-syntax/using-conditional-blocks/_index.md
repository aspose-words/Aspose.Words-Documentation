---
title: Using Conditional Blocks
type: docs
weight: 40
url: /net/using-conditional-blocks/
aliases: [/net/template-syntax/#using-conditional-blocks]
---

You can use different document blocks to represent the same data depending on a condition with the help of conditional blocks. A conditional block represents a set of template options, each of which is bound with a conditional expression. At runtime, these conditional expressions are sequentially evaluated, until an expression that returns true is reached. Then, the conditional block is replaced with the corresponding template option populated with data.

A conditional block can have a default template option that is not bound with a conditional expression. At runtime, this template option is used, when none of the conditional expressions return true. If a default template option is missing and none of the conditional expressions return true, then the whole conditional block is removed during runtime.

You can use the following syntax to declare a conditional block.
{{< highlight csharp >}}
<<if [conditional_expression1]>>
template_option1
<<elseif [conditional_expression2]>>
template_option2
...
<<else>>
default_template_option
<</if>>
{{< /highlight >}}
**Note -** A conditional expression must return a Boolean value.

## Working with Common Conditional Blocks

A common conditional block is a conditional block which body starts and ends within paragraphs that belong to a single story or table cell.

If a conditional block belongs to a single paragraph, it can be used as a replacement for an expression tag that involves the ternary “?:” operator. For example, given that items is an enumeration, you can use the following template to represent the count of elements in the enumeration.
{{< highlight csharp >}}
You have chosen <<if [!items.Any()]>>no items<<else>><<[items.Count()]>> item(s)<</if>>.
{{< /highlight >}}

**Note –** A template option of a common conditional block can be composed of multiple paragraphs if needed.

You can normally use common conditional blocks within data bands. For example, given that items is an enumeration of the strings “item1”, “item2”, and “item3”, you can use the following template to enumerate them and apply different formatting for even and odd elements.
{{< highlight csharp >}}
<<foreach [item in items]>><<if [IndexOf() % 2 == 0]>><<[item]>>
<<else>><<[item]>>
<</if>><</foreach>>
{{< /highlight >}}

In this case, the engine produces a report as follows.
{{< highlight text >}}
item1
item2
item3
{{< /highlight >}}

You can use data bands within common conditional blocks as well. For example, given the previous declaration of items, you can check whether the enumeration contains any elements before outputting their list.
{{< highlight csharp >}}
<<if [!items.Any()]>>No data.
<<else>><<foreach [item in items]>><<[item]>>
<</foreach>><</if>>
{{< /highlight >}}

## Working with Table-Row Conditional Blocks

A table-row conditional block is a conditional block which body occupies single or multiple rows of a single document table. The body of such a block (as well as the body of its every template option) starts at the beginning of the first occupied row and ends at the end of the last occupied row as follows.

**Note –** Table rows occupied by different template options in the following template are highlighted with different colors.

||||
| :- | :- | :- |
|**<<if ...>> ...**|**...**|**...**|
|**...**|**...**|**...**|
|**<<elseif ...>> ...**|**...**|**...**|
|**...**|**...**|**...**|
|**<<else>> ...**|**...**|**...**|
|**...**|**...**|**...**|
|**...**|**...**|**... <</if>>**|
||||

The following examples in this section are given using client, an instance of the Client class, and clients, an enumeration of instances of the Client class that is defined as follows.
{{< highlight csharp >}}
  public class Client
  {
    public String Name { get { ... } }
    public String Country { get { ... } }
    public String LocalAddress { get { ... } }
    ...
  }
{{< /highlight >}}
Using table-row conditional blocks, you can pick to output a single row among several rows of a single document table depending on a condition like in the following example.

|...|...|...|
| :- | :- | :- |
|**<<if [client.Country == “New Zealand”]>><<[client.Name]>>**|**<<[client.LocalAddress]>>**||
|**<<else>><<[client.Name]>>**|**<<[client.Country]>>**|**<<[client.LocalAddress]>><</if>>**|
|**...**|**...**|**...**|

You can normally use table-row conditional blocks within data bands to make elements of an enumeration look differently depending on a condition. Consider the following template.

|<<foreach [in clients]>><<if [Country == “New Zealand”]>><<[Name]>>|<<[LocalAddress]>>||
| :- | :- | :- |
|**<<else>><<[Name]>>**|**<<[Country]>>**|**<<[LocalAddress]>><</if>><</foreach>>**|

In this case, the engine produces a report as follows.

|A Company|Australia|219-241 Cleveland St STRAWBERRY HILLS  NSW  1427|
| :- | :- | :- |
|**B Ltd.**|**Brazil**|**Avenida João Jorge, 112, ap. 31Vila Industrial Campinas - SP 13035-680**|
|**C & D**|**Canada**|**101-3485 RUE DE LA MONTAGNE MONTRÉAL (QUÉBEC) H3G 2A6**|
|**E Corp.**|**445 Mount Eden Road Mount Eden Auckland 1024**||
|**F & Partners**|**20 Greens Road Tuahiwi Kaiapoi 7691**||
|**G & Co.**|**Greece**|**Karkisias 6 GR-111 42  ATHINA GRÉCE**|
|**H Group**|**Hungary**|**Budapest Fiktív utca 82., IV. em./28. 2806**|
|**I & Sons**|**43 Vogel Street Roslyn Palmerston North 4414**||
|**J Ent.**|**Japan**|**Hakusan 4-Chōme 3-2 Bunkyō-ku, TŌKYŌ 112-0001 Japan**|

**Note –** You can use common conditional blocks within table-row data bands as well.

Also, you can use data bands inside table-row conditional blocks. For example, you can provide an alternate content for an empty table-row data band using the following template.

|Client|Country|Local Address|
| :- | :- | :- |
|**<<if [!clients.Any()]>>No data**|||
|**<<else>><<foreach [in clients]>><<[Name]>>**|**<<[Country]>>**|**<<[LocalAddress]>><</foreach>><</if>>**|

In case when the corresponding enumeration is empty, the engine produces a report as follows.

|Client|Country|Local Address|
| :- | :- | :- |
|**No data**|||

A special case is a template option inside a single-column table row. In such a case, if you put an opening if, elseif, or else tag and a closing if tag in the same cell, the engine treats a template option formed by these tags as a common one rather than a table-row one by default. The following template illustrates such a scenario.

|Header|
| :- |
|**<<if [false]>>Content to remove<</if>>**|
|**Footer**|

In this case, the engine produces a report as follows.

|Header|
| :- |
||
|**Footer**|

However, if needed, you can override this behavior making the engine to treat such a template option as a table-row one by specifying a greedy switch like in the following template.

|Header|
| :- |
|**<<if [false]>>Content to remove<</if -greedy>>**|
|**Footer**|

In this case, the engine produces a report as follows.

|Header|
| :- |
|**Footer**|

**Note –** In the previous examples, tag <<if [false]>> is used for the sake of simplicity; you can use any other Boolean expression instead of just false.