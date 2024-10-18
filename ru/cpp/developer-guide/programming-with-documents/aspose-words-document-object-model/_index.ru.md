---
title: Aspose.Words Объектная модель документа (DOM) на C++
second_title: Aspose.Words для C++
articleTitle: Aspose.Words Объектная модель документа (DOM)
linktitle: Aspose.Words Объектная модель документа (DOM)
type: docs
description: "Объектная модель документа (DOM) - это представление документа Word в памяти. Чтение, манипулирование и изменение содержимого и форматирования документа Word с помощью C++."
weight: 10
url: /ru/cpp/aspose-words-document-object-model/
---

Объектная модель документа Aspose.Words (DOM) - это представление документа Word в памяти. Aspose.Words DOM позволяет программно считывать содержимое и форматирование документа Word, манипулировать ими и изменять их.

В этом разделе описываются основные классы Aspose.Words DOM и их взаимосвязи. Используя классы Aspose.Words DOM, вы можете получить программный доступ к элементам документа и форматированию.

## Создать дерево объектов документа {#create-a-document-objects-tree}

Когда документ считывается в Aspose.Words DOM, создается дерево объектов, и различные типы элементов исходного документа имеют свои собственные объекты дерева DOM с различными свойствами.

### Построение дерева узлов документа {#build-document-nodes-tree}

Когда Aspose.Words считывает документ Word в память, он создает объекты разных типов, представляющие различные элементы документа. Каждый фрагмент текста, абзац, таблица или раздел является узлом, и даже сам документ является узлом. Aspose.Words определяет класс для каждого типа узла документа.

Дерево документа в Aspose.Words соответствует шаблону составного проектирования:

- Все классы узлов в конечном счете являются производными от класса [Node](https://reference.aspose.com/words/cpp/aspose.words/node/), который является базовым классом в объектной модели документа Aspose.Words.
- Узлы, которые могут содержать другие узлы, например, **Section** или **Paragraph**, являются производными от класса [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/), который, в свою очередь, является производным от класса **Node**.

На приведенной ниже диаграмме показано наследование между узловыми классами объектной модели документа (DOM) Aspose.Words. Названия абстрактных классов выделены курсивом.

<img src="aspose-words-dom.png" alt="aspose-words-dom-aspose-words-cpp" style="width:700px"/>

{{% alert color="primary" %}}

DOM Aspose.Words также содержит классы, не относящиеся к узлам, такие как [Style](https://reference.aspose.com/words/cpp/aspose.words/style/) или [Font](https://reference.aspose.com/words/cpp/aspose.words/font/), которые используются для настройки внешнего вида и стилей в документе. Эти классы не показаны на этой диаграмме, поскольку они не унаследованы от класса `Node`.

{{% /alert %}}

Давайте рассмотрим пример. На следующем рисунке показан документ Microsoft Word с различными типами содержимого.

<img src="document-example.png" alt="document-example-aspose-words-cpp" style="width:700px"/>

При чтении приведенного выше документа в Aspose.Words DOM создается дерево объектов, как показано на схеме ниже.

<img src="document-example-dom.png" alt="document-example-dom-aspose-words-cpp" style="width:700px"/>

[Document](https://reference.aspose.com/words/cpp/aspose.words/document/), [Section](https://reference.aspose.com/words/cpp/aspose.words/section/), [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/), [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape), [Run](https://reference.aspose.com/words/cpp/aspose.words/run/), а все остальные эллипсы на диаграмме являются объектами Aspose.Words, представляющими элементы документа Word.

### Получаем `Node` Тип {#get-a-node-type}

Хотя класса [Node](https://reference.aspose.com/words/cpp/aspose.words/node/) достаточно, чтобы отличать разные узлы друг от друга, Aspose.Words предоставляет перечисление [NodeType](https://reference.aspose.com/words/cpp/aspose.words/nodetype/) для упрощения некоторых задач API, таких как выбор узлов определенного типа.

Тип каждого узла можно определить с помощью свойства [NodeType](https://reference.aspose.com/words/cpp/aspose.words/node/get_nodetype/). Это свойство возвращает значение **NodeType** enumeration value. For example, a paragraph node represented by the **Paragraph** class returns **NodeType**.**Paragraph**, а узел таблицы - значение **Table** class returns **NodeType**.**Table**.

В следующем примере показано, как получить тип узла с помощью перечисления **NodeType**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-UseNodeType.cpp" >}}

## Навигация по дереву документов {#document-tree-navigation}

Aspose.Words представляет документ в виде дерева узлов, которое позволяет перемещаться между узлами. В этом разделе описывается, как исследовать дерево документов и перемещаться по нему в Aspose.Words.

Когда вы открываете образец документа, представленный ранее, в проводнике документов, дерево узлов отображается точно так, как оно представлено в Aspose.Words.

<img src="document-in-document-explorer.png" alt="document-in-document-explorer-aspose-words-cpp" style="width:680px"/>

### Связи узлов документа {#document-nodes-relationships}

Узлы в дереве имеют взаимосвязи между собой:

- Узел, содержащий другой узел, является *parent.*
- Узел, содержащийся в родительском узле, является *child.* Дочерними узлами того же родительского узла являются *sibling* узлы.
- Узел *root* всегда является узлом [Document](https://reference.aspose.com/words/cpp/aspose.words/document/).

Узлы, которые могут содержать другие узлы, являются производными от класса [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode), а все узлы, в конечном счете, являются производными от класса [Node](https://reference.aspose.com/words/cpp/aspose.words/node/). Эти два базовых класса предоставляют общие методы и свойства для навигации и модификации древовидной структуры.

На следующей диаграмме объектов UML показаны несколько узлов образца документа и их связи друг с другом с помощью родительских, дочерних и родственных свойств:

<img src="document-nodes-relationships.png" alt="document-nodes-relationships-aspose-words-cpp" style="width:370px"/>

#### Документ является владельцем узла

Узел всегда принадлежит определенному документу, даже если он был только что создан или удален из дерева, поскольку важные структуры всего документа, такие как стили и списки, хранятся в узле **Document**. Например, невозможно использовать **Paragraph** без **Document**, потому что каждому абзацу присвоен стиль, который определен глобально для документа. Это правило используется при создании любых новых узлов. Для добавления нового **Paragraph** непосредственно в DOM требуется объект document, переданный конструктору.

{{% alert color="primary" %}}

Свойство [Node.Document](https://reference.aspose.com/words/cpp/aspose.words/node/get_document/) возвращает документ, к которому принадлежит узел.

{{% /alert %}}

При создании нового абзаца с помощью [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) у конструктора всегда есть класс **Document**, связанный с ним через свойство [DocumentBuilder.Document](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_document/).

В следующем примере кода показано, что при создании любого узла всегда определяется документ, которому будет принадлежать этот узел:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-OwnerDocument.cpp" >}}

#### Родительский узел

У каждого узла есть родительский узел, указанный с помощью свойства [ParentNode](https://reference.aspose.com/words/cpp/aspose.words/node/get_parentnode/). Узел не имеет родительского узла, то есть значение **ParentNode** равно null в следующих случаях:

- Узел только что был создан и еще не был добавлен в дерево.
- Узел был удален из дерева.
- Это корневой узел **Document**, который всегда имеет нулевой родительский узел.

Вы можете удалить узел из родительского, вызвав метод [Remove](https://reference.aspose.com/words/cpp/aspose.words/node/remove/).В следующем примере кода показано, как получить доступ к родительскому узлу:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-GetParentNode.cpp" >}}

#### Дочерние узлы

Наиболее эффективный способ получить доступ к дочерним узлам [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/) - это использовать свойства [FirstChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_firstchild/) и [LastChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_lastchild/), которые возвращают первый и последний дочерние узлы соответственно. Если дочерних узлов нет, эти свойства возвращают значение *null*.

**Составной узел**

Если узел не имеет дочерних узлов, то свойство **ChildNodes** возвращает пустую коллекцию. Вы можете проверить, содержит ли **CompositeNode** дочерние узлы, используя свойство [HasChildNodes](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_haschildnodes/).

В следующем примере кода показано, как перечислить непосредственные дочерние узлы `CompositeNode`, используя перечислитель, предоставляемый коллекцией `ChildNodes`:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-EnumerateChildNodes.cpp" >}}

В следующем примере кода показано, как перечислить непосредственные дочерние узлы `CompositeNode`, используя индексированный доступ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-IndexChildNodes.cpp" >}}

#### Родственные узлы

Вы можете получить узел, который непосредственно предшествует определенному узлу или следует за ним, используя свойства [PreviousSibling](https://reference.aspose.com/words/cpp/aspose.words/node/get_previoussibling/) и [NextSibling](https://reference.aspose.com/words/cpp/aspose.words/node/get_nextsibling/) соответственно. Если узел является последним дочерним по отношению к своему родительскому узлу, то свойство **NextSibling** равно *null*. И наоборот, если узел является первым дочерним по отношению к своему родительскому элементу, то свойство **PreviousSibling** равно *null*.

В следующем примере кода показано, как эффективно посещать все прямые и косвенные дочерние узлы составного узла:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-RecurseAllNodes.cpp" >}}

### Типизированный доступ к дочерним и родительским узлам

До сих пор мы обсуждали свойства, которые возвращают один из базовых типов – **Node** или **CompositeNode**. Но иногда возникают ситуации, когда может потребоваться привести значения к определенному классу узлов, например **Run** или **Paragraph**. То есть вы не можете полностью отказаться от кастинга при работе с Aspose.Words DOM, который является составным.

Чтобы уменьшить необходимость в приведении в соответствие, большинство классов Aspose.Words предоставляют свойства и коллекции, которые обеспечивают строго типизированный доступ. Существует три основных шаблона типизированного доступа:

- Родительский узел предоставляет типизированные свойства **FirstXXX** и **LastXXX**. Например, у **Document** есть свойства [FirstSection](https://reference.aspose.com/words/cpp/aspose.words/document/get_firstsection/) и [LastSection](https://reference.aspose.com/words/cpp/aspose.words/document/get_lastsection/). Аналогично, у **Table** есть такие свойства, как [FirstRow](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_firstrow/), [LastRow](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_lastrow/) и другие.
- Родительский узел предоставляет типизированную коллекцию дочерних узлов, таких как [Document.Sections](https://reference.aspose.com/words/cpp/aspose.words/document/get_sections/), [Body.Paragraphs](https://reference.aspose.com/words/cpp/aspose.words/story/get_paragraphs/) и другие.
- Дочерний узел предоставляет типизированный доступ к своему родительскому узлу, такой как [Run.ParentParagraph](https://reference.aspose.com/words/cpp/aspose.words/inline/get_parentparagraph/), [Paragraph.ParentSection](https://reference.aspose.com/words/cpp/aspose.words/paragraph/get_parentsection/) и другие.

Типизированные свойства - это просто полезные ярлыки, которые иногда обеспечивают более легкий доступ, чем общие свойства, унаследованные от [Node.ParentNode](https://reference.aspose.com/words/cpp/aspose.words/node/get_parentnode/) и [CompositeNode.FirstChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_firstchild/).

В следующем примере кода показано, как использовать типизированные свойства для доступа к узлам дерева документов:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-TypedAccess.cpp" >}}
