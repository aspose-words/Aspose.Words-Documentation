---
title: Aspose.Words Document Object Model (DOM) в C#
second_title: Aspose.Words для .NET
articleTitle: Aspose.Words Document Object Model (DOM)
linktitle: Aspose.Words Document Object Model (DOM)
type: docs
description: "Document Object Model (DOM) — это представление документа Word в памяти. Чтение, манипулирование и изменение содержимого и форматирования документа Word с помощью C#."
weight: 10
url: /ru/net/aspose-words-document-object-model/
---

Aspose.Words Document Object Model (DOM) — это представление документа Word в памяти. Aspose.Words DOM позволяет программно читать, манипулировать и изменять содержимое и форматирование документа Word.

В этом разделе описаны основные классы Aspose.Words DOM и их взаимосвязи. Используя классы Aspose.Words DOM, вы можете получить программный доступ к элементам документа и форматированию.

## Создайте дерево объектов `Document` {#create-a-document-objects-tree}

Когда документ считывается в Aspose.Words DOM, строится дерево объектов, и разные типы элементов исходного документа имеют свои собственные DOM объекты дерева с различными свойствами.

### Построение дерева узлов документа {#build-document-nodes-tree}

Когда Aspose.Words считывает документ Word в память, он создает объекты разных типов, представляющие различные элементы документа. Каждый фрагмент текста, абзаца, таблицы или раздела является узлом, и даже сам документ является узлом. Aspose.Words определяет класс для каждого типа узла документа.

Дерево документов в Aspose.Words соответствует шаблону составного проектирования:

- Все классы узлов в конечном итоге происходят от класса [Node](https://reference.aspose.com/words/ru/net/aspose.words/node/), который является базовым классом в Aspose.Words Document Object Model.
— Узлы, которые могут содержать другие узлы, например, **Section** или **Paragraph**, являются производными от класса [CompositeNode](https://reference.aspose.com/words/ru/net/aspose.words/compositenode/), который, в свою очередь, является производным от класса **Node**.

На диаграмме ниже показано наследование между классами узлов Aspose.Words Document Object Model (DOM). Названия абстрактных классов выделены курсивом.

<img src="/words/net/aspose-words-document-object-model/aspose-words-dom.png" alt="aspose-слова-дом" style="width:700px"/>

{{% alert color="primary" %}}

Aspose.Words DOM также содержит классы, не являющиеся узлами, например [Style](https://reference.aspose.com/words/ru/net/aspose.words/style/) или [Font](https://reference.aspose.com/words/ru/net/aspose.words/font/), которые используются для настройки внешнего вида и стилей в документе. Эти классы не показаны на этой диаграмме, поскольку не унаследованы от класса `Node`.

{{% /alert %}}

Давайте посмотрим на пример. На следующем изображении показан документ Microsoft Word с различными типами контента.

<img src="/words/net/aspose-words-document-object-model/document-example.png" alt="пример-документа-аспонировать-слова" style="width:700px"/>

При чтении вышеуказанного документа в Aspose.Words DOM создается дерево объектов, как показано на схеме ниже.

<img src="/words/net/aspose-words-document-object-model/document-example-dom.png" alt="дом-аспонировать-слова" style="width:700px"/>

[Document](https://reference.aspose.com/words/ru/net/aspose.words/document/), [Section](https://reference.aspose.com/words/ru/net/aspose.words/section/), [Paragraph](https://reference.aspose.com/words/ru/net/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/ru/net/aspose.words.tables/table/), [Shape](https://reference.aspose.com/words/ru/net/aspose.words.drawing/shape/), [Run](https://reference.aspose.com/words/ru/net/aspose.words/run/) и все остальные эллипсы на схеме — это объекты Aspose.Words, представляющие элементы документа Word.

### Получите `Node` Тип {#get-a-node-type}

Хотя класса [Node](https://reference.aspose.com/words/ru/net/aspose.words/node/) достаточно, чтобы отличать разные узлы друг от друга, Aspose.Words предоставляет перечисление [NodeType](https://reference.aspose.com/words/ru/net/aspose.words/node/nodetype/) для упрощения некоторых задач API, таких как выбор узлов определенного типа.

Тип каждого узла можно получить с помощью свойства [NodeType](https://reference.aspose.com/words/ru/net/aspose.words/node/nodetype/). Это свойство возвращает значение перечисления **NodeType**. Например, узел абзаца, представленный классом **Paragraph**, возвращает **NodeType**,**Paragraph**, а узел таблицы, представленный классом **Table**, возвращает **NodeType**,**Table**.

В следующем примере показано, как получить тип узла с помощью перечисления **NodeType**:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-UseNodeType.cs" >}}

## Навигация по дереву документов {#document-tree-navigation}

Aspose.Words представляет документ в виде дерева узлов, что позволяет перемещаться между узлами. В этом разделе описывается, как исследовать и перемещаться по дереву документов в Aspose.Words.

Когда вы открываете образец документа, представленный ранее, в Проводнике документов, дерево узлов выглядит точно так, как оно представлено в Aspose.Words.

<img src="/words/net/aspose-words-document-object-model/document-in-document-explorer.png" alt="проводник документа в документе" style="width:680px"/>

{{% alert color="primary" %}}

Вы можете изучить пример проекта "Document Explorer" на [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples/DocumentExplorer).

{{% /alert %}}

### Отношения узлов документа {#document-nodes-relationships}

Между узлами дерева существуют связи:

- Узел, содержащий другой узел, — это *parent.*
— Узел, содержащийся в родительском узле, — это *child.* дочерних узлов того же родителя — *sibling* узлов.
- Узел *root* всегда является узлом [Document](https://reference.aspose.com/words/ru/net/aspose.words/document/).

Узлы, которые могут содержать другие узлы, происходят от класса [CompositeNode](https://reference.aspose.com/words/ru/net/aspose.words/compositenode/), а все узлы в конечном итоге происходят от класса [Node](https://reference.aspose.com/words/ru/net/aspose.words/node/). Эти два базовых класса предоставляют общие методы и свойства для навигации и изменения древовидной структуры.

На следующей диаграмме объектов UML показаны несколько узлов примера документа и их связи друг с другом через родительские, дочерние и одноуровневые свойства:

<img src="/words/net/aspose-words-document-object-model/document-nodes-relationships.png" alt="документы-узлы-отношения-аспонировать-слова" style="width:370px"/>

#### Документ является владельцем узла

Узел всегда принадлежит определенному документу, даже если он был только что создан или удален из дерева, поскольку жизненно важные структуры документа, такие как стили и списки, хранятся в узле **Document**. Например, невозможно иметь **Paragraph** без **Document**, поскольку каждому абзацу присвоен стиль, определенный глобально для документа. Это правило используется при создании любых новых узлов. Для добавления нового **Paragraph** непосредственно к DOM требуется, чтобы объект документа был передан конструктору.

{{% alert color="primary" %}}

Свойство [Node.Document](https://reference.aspose.com/words/ru/net/aspose.words/node/document/) возвращает документ, которому принадлежит узел.

{{% /alert %}}

При создании нового абзаца с использованием [DocumentBuilder](https://reference.aspose.com/words/ru/net/aspose.words/documentbuilder/) у компоновщика всегда есть класс **Document**, связанный с ним через свойство [DocumentBuilder.Document](https://reference.aspose.com/words/ru/net/aspose.words/documentbuilder/document/).

В следующем примере кода показано, что при создании любого узла всегда определяется документ, которому будет принадлежать этот узел:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-OwnerDocument.cs" >}}

#### Родительский узел

У каждого узла есть родительский элемент, указанный свойством [ParentNode](https://reference.aspose.com/words/ru/net/aspose.words/node/parentnode/). Узел не имеет родительского узла, то есть **ParentNode** имеет значение null в следующих случаях:

- Узел только что создан и еще не добавлен в дерево.
- Узел удален из дерева.
— Это корневой узел **Document**, у которого всегда есть нулевой родительский узел.

Вы можете удалить узел из его родительского узла, вызвав метод [Remove](https://reference.aspose.com/words/ru/net/aspose.words/node/remove/). В следующем примере кода показано, как получить доступ к родительскому узлу:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-GetParentNode.cs" >}}

#### Дочерние узлы

Самый эффективный способ получить доступ к дочерним узлам [CompositeNode](https://reference.aspose.com/words/ru/net/aspose.words/compositenode/) — через свойства [FirstChild](https://reference.aspose.com/words/ru/net/aspose.words/compositenode/firstchild/) и [LastChild](https://reference.aspose.com/words/ru/net/aspose.words/compositenode/lastchild/), которые возвращают первый и последний дочерние узлы соответственно. Если дочерних узлов нет, эти свойства возвращают *null*.

**CompositeNode** также предоставляет метод [GetChildNodes](https://reference.aspose.com/words/ru/net/aspose.words/compositenode/getchildnodes/), обеспечивающий индексированный или перечислимый доступ к дочерним узлам. Свойство **ChildNodes** представляет собой живую коллекцию узлов. Это означает, что при каждом изменении документа, например при удалении или добавлении узлов, коллекция **ChildNodes** автоматически обновляется.

Если у узла нет дочернего узла, свойство **ChildNodes** возвращает пустую коллекцию. Вы можете проверить, содержит ли **CompositeNode** какие-либо дочерние узлы, используя свойство [HasChildNodes](https://reference.aspose.com/words/ru/net/aspose.words/compositenode/haschildnodes/).

В следующем примере кода показано, как перечислить непосредственные дочерние узлы `CompositeNode` с помощью перечислителя, предоставленного коллекцией `ChildNodes`:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-EnumerateChildNodes.cs" >}}

В следующем примере кода показано, как перечислить непосредственные дочерние узлы `CompositeNode` с использованием индексированного доступа:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-IndexChildNodes.cs" >}}

#### Родственные узлы

Вы можете получить узел, который непосредственно предшествует или следует за конкретным узлом, используя свойства [PreviousSibling](https://reference.aspose.com/words/ru/net/aspose.words/node/previoussibling/) и [NextSibling](https://reference.aspose.com/words/ru/net/aspose.words/node/nextsibling/) соответственно. Если узел является последним дочерним элементом своего родителя, то свойство **NextSibling** равно *null*. И наоборот, если узел является первым дочерним элементом своего родителя, свойство **PreviousSibling** равно *null*.

В следующем примере кода показано, как эффективно посещать все прямые и косвенные дочерние узлы составного узла:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-RecurseAllNodes.cs" >}}

### Типизированный доступ к дочерним и родительским узлам {#typed-access-to-child-and-parent-nodes}

До сих пор мы обсуждали свойства, которые возвращают один из базовых типов — **Node** или **CompositeNode**. Но иногда возникают ситуации, когда вам может потребоваться привести значения к определенному классу узла, например **Run** или **Paragraph**. То есть вы не можете полностью откажитесь от литья при работе с Aspose.Words и DOM, которые являются композитными.

Чтобы уменьшить необходимость приведения типов, большинство классов Aspose.Words предоставляют свойства и коллекции, обеспечивающие строго типизированный доступ. Существует три основных шаблона типизированного доступа:

— Родительский узел предоставляет типизированные свойства **FirstXXX** и **LastXXX**. Например, у **Document** есть свойства [FirstSection](https://reference.aspose.com/words/ru/net/aspose.words/document/firstsection/) и [LastSection](https://reference.aspose.com/words/ru/net/aspose.words/document/lastsection/). Аналогично, **Table** имеет такие свойства, как [FirstRow](https://reference.aspose.com/words/ru/net/aspose.words.tables/table/firstrow/), [LastRow](https://reference.aspose.com/words/ru/net/aspose.words.tables/table/lastrow/) и другие.
— Родительский узел предоставляет типизированную коллекцию дочерних узлов, например [Document.Sections](https://reference.aspose.com/words/ru/net/aspose.words/document/sections/), [Body.Paragraphs](https://reference.aspose.com/words/ru/net/aspose.words/story/paragraphs/) и других.
— Дочерний узел предоставляет типизированный доступ к своему родительскому узлу, например [Run.ParentParagraph](https://reference.aspose.com/words/ru/net/aspose.words/inline/parentparagraph/), [Paragraph.ParentSection](https://reference.aspose.com/words/ru/net/aspose.words/paragraph/parentsection/) и другим.

Типизированные свойства — это просто полезные ярлыки, которые иногда обеспечивают более легкий доступ, чем общие свойства, унаследованные от [Node.ParentNode](https://reference.aspose.com/words/ru/net/aspose.words/node/parentnode/) и [CompositeNode.FirstChild](https://reference.aspose.com/words/ru/net/aspose.words/compositenode/firstchild/).

В следующем примере кода показано, как использовать типизированные свойства для доступа к узлам дерева документа:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-TypedAccess.cs" >}}
