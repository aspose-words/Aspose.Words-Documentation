---
title: Aspose.Words Document Object Model (DOM) C#
second_title: Aspose.Words вместо .NET
articleTitle: Aspose.Words Document Object Model (DOM)
linktitle: Aspose.Words Document Object Model (DOM)
type: docs
description: "Document Object Model (DOM) е в памет представяне на документ Word. Прочетете, манипулирайте и модифицирайте съдържанието и форматирането на Word документ, използвайки C#."
weight: 10
url: /bg/net/aspose-words-document-object-model/
---

На Aspose.Words Document Object Model (DOM) е в памет представяне на документ Word. На Aspose.Words DOM ви позволява да програмно четене, манипулация и промяна на съдържанието и форматиране на Word документ.

Този раздел описва основните класове на Aspose.Words DOM и техните връзки. С помощта на Aspose.Words DOM класове, можете да получите програмен достъп до документи елементи и форматиране.

## Създаване на `Document` Дърво на обект {#create-a-document-objects-tree}

Когато документ се чете в Aspose.Words <span notrans="<span notrans=" DOM"=""></span>,"> тогава е построен обект дърво и различни видове елементи на източника документ имат своя собствена DOM дървесни обекти с различни свойства.

### Изграждане на документни възли Дърво {#build-document-nodes-tree}

Кога Aspose.Words чете документ на Word в паметта, създава обекти от различни типове, които представляват различни елементи на документа. Всеки запис на текст, параграф, таблица или раздел е възел и дори самият документ е възел. Aspose.Words определя клас за всеки тип документен възел.

Дървото на документа в Aspose.Words Следва модела Composite Design:

- Всички класове възел в крайна сметка произтичат от [Node](https://reference.aspose.com/words/net/aspose.words/node/) клас, който е базовият клас в Aspose.Words Document Object Model.
- Възли, които могат да съдържат други възли, например, **Section** или **Paragraph**, ен [CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/) клас, който от своя страна произтича от **Node** Клас.

На диаграмата по-долу е показано наследството между класовете възли на Aspose.Words Document Object Model (DOM). Имената на абстрактните класове са в Италия.

<img src="/words/net/aspose-words-document-object-model/aspose-words-dom.png" alt="aspose-words-dom" style="width:700px"/>

{{% alert color="primary" %}}

На Aspose.Words DOM също така съдържа несвързващите класове, като [Style](https://reference.aspose.com/words/net/aspose.words/style/) или [Font](https://reference.aspose.com/words/net/aspose.words/font/), които се използват за персонализиране на външния вид и стиловете в документ. Тези класове не са показани в тази диаграма, тъй като не са наследени от `Node` Клас.

{{% /alert %}}

Нека да разгледаме един пример. Следното изображение показва a Microsoft Word документ с различни видове съдържание.

<img src="/words/net/aspose-words-document-object-model/document-example.png" alt="document-example-aspose-words" style="width:700px"/>

При четене на горния документ в Aspose.Words DOM, дървото на обектите е създадено, както е показано в схемата по-долу.

<img src="/words/net/aspose-words-document-object-model/document-example-dom.png" alt="dom-aspose-words" style="width:700px"/>

[Document](https://reference.aspose.com/words/net/aspose.words/document/), [Section](https://reference.aspose.com/words/net/aspose.words/section/), [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/), [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/), [Run](https://reference.aspose.com/words/net/aspose.words/run/), и всички други елипси на диаграмата са Aspose.Words обекти, които представляват елементи от документа Word.

### Вземи `Node` Тип {#get-a-node-type}

Въпреки че [Node](https://reference.aspose.com/words/net/aspose.words/node/) Класът е достатъчен, за да различава различни възли един от друг, Aspose.Words осигурява [NodeType](https://reference.aspose.com/words/net/aspose.words/node/nodetype/) изброяване за опростяване на някои API задачи, като например избор на възли от определен тип.

Видът на всеки възел може да бъде получен с помощта на [NodeType](https://reference.aspose.com/words/net/aspose.words/node/nodetype/) собственост. Този имот връща a **NodeType** стойност на изброяването. Например, параграф възел, представен от **Paragraph** Връщане на класа **NodeType**.**Paragraph**, както и възел маса, представена от **Table** Връщане на класа **NodeType**.**Table**.

Следният пример показва как да получите тип възел с помощта на **NodeType** Изброяване:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-UseNodeType.cs" >}}

## Навигация на дървото на документа {#document-tree-navigation}

Aspose.Words представлява документ като дърво възел, който ви позволява да се движите между възлите. Този раздел описва как да изследвате и навигирате дървото на документа в Aspose.Words.

Когато отворите примерния документ, представен по-рано, в документ Explorer, дървото се появява точно както е представен в Aspose.Words.

<img src="/words/net/aspose-words-document-object-model/document-in-document-explorer.png" alt="document-in-document-explorer" style="width:680px"/>

{{% alert color="primary" %}}

Можете да научите примерния проект "Документ Експлорър" на [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples/DocumentExplorer).

{{% /alert %}}

### Връзка с документния възел {#document-nodes-relationships}

Възлите на дървото имат връзки между тях:

- Възел, съдържащ друг възел е *parent.*
- Възелът, който се съдържа в родителския възел е *child.* Детските възли на същия родител са *sibling* Възли.
- На *root* Възелът винаги е [Document](https://reference.aspose.com/words/net/aspose.words/document/) Възел.

Възлите, които могат да съдържат други възли, произлизат от [CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/) класа, и всички възли в крайна сметка произтичат от [Node](https://reference.aspose.com/words/net/aspose.words/node/) Клас. Тези два основни класа осигуряват общи методи и свойства за навигация и модификация на структурата на дървото.

Следната диаграма UML обект показва няколко възли на извадка документ и техните отношения един с друг чрез родител, дете, и брат свойства:

<img src="/words/net/aspose-words-document-object-model/document-nodes-relationships.png" alt="document-nodes-relationships-aspose-words" style="width:370px"/>

#### Документът е собственик на възел

Възелът винаги принадлежи към конкретен документ, дори ако е създаден или отстранен от дървото, тъй като жизненоважни структури като стилове и списъци се съхраняват в **Document** Възел. Например, не е възможно да имате **Paragraph** без **Document** защото всеки параграф има определен стил, който се определя глобално за документа. Това правило се използва при създаване на нови възли. Добавяне на нов **Paragraph** директно към DOM изисква документен обект, предаден на конструктора.

{{% alert color="primary" %}}

На [Node.Document](https://reference.aspose.com/words/net/aspose.words/node/document/) Имотът връща документа, към който принадлежи възелът.

{{% /alert %}}

При създаване на нов параграф, използващ [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/), Строителят винаги има **Document** клас, свързан с него чрез [DocumentBuilder.Document](https://reference.aspose.com/words/net/aspose.words/documentbuilder/document/) собственост.

Следният пример за код показва, че при създаването на какъвто и да е възел винаги се определя документ, който ще притежава възела:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-OwnerDocument.cs" >}}

#### Родителски възел

Всеки възел има майка, посочена от [ParentNode](https://reference.aspose.com/words/net/aspose.words/node/parentnode/) собственост. Възелът няма родителски възел. **ParentNode** е нула, в следните случаи:

- Възелът току-що беше създаден и все още не е добавен към дървото.
- Възелът е изваден от дървото.
- Това е коренът. **Document** Възел, който винаги има нулев родителски възел.

Можете да премахнете възел от неговия родител като се обадите на [Remove](https://reference.aspose.com/words/net/aspose.words/node/remove/) метод. Следният пример с код показва как да се влезе в базовия възел:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-GetParentNode.cs" >}}

#### Детски възли

Най-ефективният начин за достъп до детски възли на [CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/) е през [FirstChild](https://reference.aspose.com/words/net/aspose.words/compositenode/firstchild/) както и [LastChild](https://reference.aspose.com/words/net/aspose.words/compositenode/lastchild/) свойства, които връщат съответно първите и последните детски възли. Ако няма детски възли, тези свойства се връщат *null*.

**CompositeNode** и осигурява [GetChildNodes](https://reference.aspose.com/words/net/aspose.words/compositenode/getchildnodes/) метод, позволяващ индексиран или изброен достъп до възлите на детето. На **ChildNodes** собственост е жива колекция от възли, което означава, че когато документът се променя, като например когато възлите се отстраняват или добавят, **ChildNodes** събирането се актуализира автоматично.

Ако възелът няма дете, тогава **ChildNodes** Имотът връща празна колекция. Можете да проверите дали **CompositeNode** съдържа всякакви детски възли с помощта на [HasChildNodes](https://reference.aspose.com/words/net/aspose.words/compositenode/haschildnodes/) собственост.

Следният пример с код показва как да се изброят незабавните детски възли на a `CompositeNode` използване на числителя, предоставен от `ChildNodes` събиране:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-EnumerateChildNodes.cs" >}}

Следният пример с код показва как да се изброят незабавните детски възли на a `CompositeNode` използване на индексиран достъп:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-IndexChildNodes.cs" >}}

#### Родови възли

Можете да получите възела, който непосредствено предхожда или следва определен възел с помощта на [PreviousSibling](https://reference.aspose.com/words/net/aspose.words/node/previoussibling/) както и [NextSibling](https://reference.aspose.com/words/net/aspose.words/node/nextsibling/) свойства, съответно. Ако възелът е последното дете на своя родител, тогава **NextSibling** собствеността е *null*. Обратно, ако възелът е първото дете на неговия родител, **PreviousSibling** собствеността е *null*.

Следният пример за код показва как ефективно да посетите всички преки и непреки детски възли на композитен възел:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-RecurseAllNodes.cs" >}}

### Напечатан достъп до възли за деца и родители {#typed-access-to-child-and-parent-nodes}

Досега сме обсъждали свойствата, които връщат един от базовите типове. **Node** или **CompositeNode**. Но понякога има ситуации, в които може да се наложи да се хвърлят стойности към определен клас възел, като **Run** или **Paragraph**. Това означава, че не можете напълно да се измъкнете от кастинга, когато работите с Aspose.Words DOM, което е съставно.

За да се намали необходимостта от кастинг, повечето Aspose.Words класовете осигуряват свойства и колекции, които осигуряват силно напечатан достъп. Има три основни модела на типов достъп:

- Родителски възел напечатан **FirstXXX** както и **LastXXX** имоти. Например, **Document** е [FirstSection](https://reference.aspose.com/words/net/aspose.words/document/firstsection/) както и [LastSection](https://reference.aspose.com/words/net/aspose.words/document/lastsection/) имоти. По същия начин, **Table** има свойства като [FirstRow](https://reference.aspose.com/words/net/aspose.words.tables/table/firstrow/), [LastRow](https://reference.aspose.com/words/net/aspose.words.tables/table/lastrow/), и други.
- Родителски възел разкрива напечатана колекция от детски възли, като [Document.Sections](https://reference.aspose.com/words/net/aspose.words/document/sections/), [Body.Paragraphs](https://reference.aspose.com/words/net/aspose.words/story/paragraphs/), и други.
- Детски възел осигурява достъп до родителите си, като [Run.ParentParagraph](https://reference.aspose.com/words/net/aspose.words/inline/parentparagraph/), [Paragraph.ParentSection](https://reference.aspose.com/words/net/aspose.words/paragraph/parentsection/), и други.

Типираните свойства са просто полезни преки пътища, които понякога осигуряват по-лесен достъп от общите свойства, наследени от [Node.ParentNode](https://reference.aspose.com/words/net/aspose.words/node/parentnode/) както и [CompositeNode.FirstChild](https://reference.aspose.com/words/net/aspose.words/compositenode/firstchild/).

Следният пример за код показва как да се използват типирани свойства за достъп до възлите на дървото на документа:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-TypedAccess.cs" >}}
