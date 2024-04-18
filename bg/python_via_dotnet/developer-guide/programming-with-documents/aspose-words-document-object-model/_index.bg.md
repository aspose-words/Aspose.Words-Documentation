---
title: Aspose.Words DOM
second_title: Aspose.Words вместо Python via .NET
articleTitle: Aspose.Words Document Object Model (DOM)
linktitle: Aspose.Words Document Object Model (DOM)
type: docs
description: "Document Object Model (DOM) е в памет представяне на документ Word. Прочетете, манипулирайте и модифицирайте съдържанието и форматирането на Word документ, използвайки Python."
weight: 10
url: /bg/python-net/aspose-words-document-object-model/
---

На Aspose.Words Document Object Model (DOM) е в памет представяне на документ Word. На Aspose.Words DOM ви позволява да програмно четене, манипулация и промяна на съдържанието и форматиране на Word документ.

Този раздел описва основните класове на Aspose.Words DOM и техните връзки. С помощта на Aspose.Words DOM класове, можете да получите програмен достъп до документи елементи и форматиране.

## Създаване на `Document` Дърво на обекти {#create-a-document-objects-tree}

Когато документ се чете в Aspose.Words <span notrans="<span notrans=" DOM"=""></span>,"> тогава е построен обект дърво и различни видове елементи на източника документ имат своя собствена DOM дървесни обекти с различни свойства.

### Изграждане на документни възли Дърво {#build-document-nodes-tree}

Кога Aspose.Words чете документ на Word в паметта, създава обекти от различни типове, които представляват различни елементи на документа. Всеки запис на текст, параграф, таблица или раздел е възел и дори самият документ е възел. Aspose.Words определя клас за всеки тип документен възел.

Дървото на документа в Aspose.Words Следва модела Composite Design:

- Всички класове възел в крайна сметка произтичат от [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) клас, който е базовият клас в Aspose.Words Document Object Model.
- Възли, които могат да съдържат други възли, например, [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) или [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), ен [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) клас, който от своя страна произтича от [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) Клас.

На диаграмата по-долу е показано наследството между класовете възли на Aspose.Words Document Object Model (DOM). Имената на абстрактните класове са в Италия.

<img src="/words/python-net/aspose-words-document-object-model/aspose-words-dom.png" alt="aspose-words-dom" style="width:700px"/>

{{% alert color="primary" %}}

На Aspose.Words DOM също така съдържа несвързващите класове, като [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) или [Font](https://reference.aspose.com/words/python-net/aspose.words/font/), които се използват за персонализиране на външния вид и стиловете в документ. Тези класове не са показани в тази диаграма, тъй като не са наследени от [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) Клас.

{{% /alert %}}

Нека да разгледаме един пример. Следното изображение показва a Microsoft Word документ с различни видове съдържание.

<img src="/words/python-net/aspose-words-document-object-model/document-example.png" alt="document-example-aspose-words" style="width:700px"/>

При четене на горния документ в Aspose.Words DOM, дървото на обектите е създадено, както е показано в схемата по-долу.

<img src="/words/python-net/aspose-words-document-object-model/document-example-dom.png" alt="dom-aspose-words" style="width:700px"/>

[Document](https://reference.aspose.com/words/python-net/aspose.words/document/), [Section](https://reference.aspose.com/words/python-net/aspose.words/section/), [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/), [Run](https://reference.aspose.com/words/python-net/aspose.words/run/), и всички други елипси на диаграмата са Aspose.Words обекти, които представляват елементи от документа Word.

### Вземи `Node` Тип {#get-a-node-type}

Въпреки че [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) Класът е достатъчен, за да различава различни възли един от друг, Aspose.Words осигурява [NodeType](https://reference.aspose.com/words/python-net/aspose.words/nodetype/) изброяване за опростяване на някои API задачи, като например избор на възли от определен тип.

Видът на всеки възел може да бъде получен с помощта на [Node.node_type](https://reference.aspose.com/words/python-net/aspose.words/node/node_type/) собственост. Този имот връща a [NodeType](https://reference.aspose.com/words/python-net/aspose.words/nodetype/) стойност на изброяването. Например, параграф възел, представен от [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) Връщане на класа [NodeType.PARAGRAPH](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#paragraph), и възел на масата, представен от [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) Връщане на класа [NodeType.TABLE](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#table).

Следният пример показва как да получите тип възел с помощта на [NodeType](https://reference.aspose.com/words/python-net/aspose.words/nodetype/) Изброяване:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-UseNodeType.py" >}}

## Навигация на дървото на документа {#document-tree-navigation}

Aspose.Words представлява документ като дърво възел, който ви позволява да се движите между възлите. Този раздел описва как да изследвате и навигирате дървото на документа в Aspose.Words.

Когато отворите примерния документ, представен по-рано, в документ Explorer, дървото се появява точно както е представен в Aspose.Words.

<img src="/words/python-net/aspose-words-document-object-model/document-in-document-explorer.png" alt="document-in-document-explorer" style="width:680px"/>

{{% alert color="primary" %}}

Можете да научите примерния проект "Документ Експлорър" на [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples).

{{% /alert %}}

### Връзки с възлите на документа {#document-nodes-relationships}

Възлите на дървото имат връзки между тях:

- Възел, съдържащ друг възел е *parent.*
- Възелът, който се съдържа в родителския възел е *child.* Детските възли на същия родител са *sibling* Възли.
- На *root* Възелът винаги е [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) Възел.

Възлите, които могат да съдържат други възли, произлизат от [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) класа, и всички възли в крайна сметка произтичат от [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) Клас. Тези два основни класа осигуряват общи методи и свойства за навигация и модификация на структурата на дървото.

Следната диаграма UML обект показва няколко възли на извадка документ и техните отношения един с друг чрез родител, дете, и брат свойства:

<img src="/words/python-net/aspose-words-document-object-model/document-nodes-relationships.png" alt="document-nodes-relationships-aspose-words" style="width:370px"/>

#### Документът е собственик на възел

Възелът винаги принадлежи към конкретен документ, дори ако е създаден или отстранен от дървото, тъй като жизненоважни структури като стилове и списъци се съхраняват в [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) Възел. Например, не е възможно да имате [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) без [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) защото всеки параграф има определен стил, който се определя глобално за документа. Това правило се използва при създаване на нови възли. Добавяне на нов [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) директно към DOM изисква документен обект, предаден на конструктора.

{{% alert color="primary" %}}

На [Node.document](https://reference.aspose.com/words/python-net/aspose.words/node/document/) Имотът връща документа, към който принадлежи възелът.

{{% /alert %}}

При създаване на нов параграф, използващ [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/), Строителят винаги има [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) клас, свързан с него чрез [DocumentBuilder.document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/document/) собственост.

Следният пример за код показва, че при създаването на какъвто и да е възел винаги се определя документ, който ще притежава възела:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-OwnerDocument.py" >}}

#### Родителски възел

Всеки възел има майка, посочена от [parent_node](https://reference.aspose.com/words/python-net/aspose.words/node/parent_node/) собственост. Възелът няма родителски възел. [parent_node](https://reference.aspose.com/words/python-net/aspose.words/node/parent_node/) е *None*, в следните случаи:

- Възелът току-що беше създаден и все още не е добавен към дървото.
- Възелът е изваден от дървото.
- Това е коренът. [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) Възел, който винаги е без родителски възел.

Можете да премахнете възел от неговия родител като се обадите на [Node.remove](https://reference.aspose.com/words/python-net/aspose.words/node/remove/) метод. Следният пример с код показва как да се влезе в базовия възел:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-GetParentNode.py" >}}

#### Детски възли

Най-ефективният начин за достъп до детски възли на [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) е през [first_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/first_child/) както и [last_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/last_child/) свойства, които връщат съответно първите и последните детски възли. Ако няма детски възли, тези свойства се връщат *None*.

[CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) и осигурява [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) събиране, позволяващо индексиран или изброен достъп до детските възли. На [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) метод връща жива колекция от възли, което означава, че когато документът се променя, като например когато възлите се отстраняват или добавят, **get_child_nodes** събирането се актуализира автоматично.

Ако възелът няма дете, тогава **get_child_nodes** метод връща празна колекция. Можете да проверите дали [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) съдържа всякакви детски възли с помощта на [has_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/has_child_nodes/) собственост.

Следният пример с код показва как да се изброят незабавните детски възли на a [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) използване на числителя, предоставен от **get_child_nodes** събиране:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-EnumerateChildNodes.py" >}}

#### Родови възли

Можете да получите възела, който непосредствено предхожда или следва определен възел с помощта на [previous_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/previous_sibling/) както и [next_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/next_sibling/) свойства, съответно. Ако възелът е последното дете на своя родител, тогава [next_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/next_sibling/) собствеността е *None*. Обратно, ако възелът е първото дете на неговия родител, [previous_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/previous_sibling/) собствеността е *None*.

Следният пример за код показва как ефективно да посетите всички преки и непреки детски възли на композитен възел:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-RecurseAllNodes.py" >}}

### Напечатан достъп до възли за деца и родители {#typed-access-to-child-and-parent-nodes}

Досега сме обсъждали свойствата, които връщат един от базовите типове. [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) или [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/). Но понякога има ситуации, в които може да се наложи да се хвърлят стойности към определен клас възел, като [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) или [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/). Това означава, че не можете напълно да се измъкнете от кастинга, когато работите с Aspose.Words DOM, което е съставно.

За да се намали необходимостта от кастинг, повечето Aspose.Words класовете осигуряват свойства и колекции, които осигуряват силно напечатан достъп. Има три основни модела на типов достъп:

- Родителски възел напечатан **Първо_XXX** както и **last_XXX** имоти. Например, [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) е [first_section](https://reference.aspose.com/words/python-net/aspose.words/document/first_section/) както и [last_section](https://reference.aspose.com/words/python-net/aspose.words/document/last_section/) имоти. По същия начин, [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) има свойства като [first_row](https://reference.aspose.com/words/python-net/aspose.words.tables/table/first_row/), [last_row](https://reference.aspose.com/words/python-net/aspose.words.tables/table/last_row/), и други.
- Родителски възел разкрива напечатана колекция от детски възли, като [Document.sections](https://reference.aspose.com/words/python-net/aspose.words/document/sections/), [Body.paragraphs](https://reference.aspose.com/words/python-net/aspose.words/story/paragraphs/), и други.
- Детски възел осигурява достъп до родителите си, като [Run.parent_paragraph](https://reference.aspose.com/words/python-net/aspose.words/inline/parent_paragraph/), [Paragraph.parent_section](https://reference.aspose.com/words/python-net/aspose.words/paragraph/parent_section/), и други.

Типираните свойства са просто полезни преки пътища, които понякога осигуряват по-лесен достъп от общите свойства, наследени от [Node.parent_node](https://reference.aspose.com/words/python-net/aspose.words/node/parent_node/) както и [CompositeNode.first_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/first_child/).

Следният пример за код показва как да се използват типирани свойства за достъп до възлите на дървото на документа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-TypedAccess.py" >}}
