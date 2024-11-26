---
title: Aspose.Words DOM
second_title: Aspose.Words для Python via .NET
articleTitle: Aspose.Words Объектная модель документа (DOM)
linktitle: Aspose.Words Объектная модель документа (DOM)
type: docs
description: "Объектная модель документа (DOM) - это представление документа Word в памяти. Считывайте, манипулируйте и изменяйте содержимое и форматирование документа Word с помощью Python."
weight: 10
url: /ru/python-net/aspose-words-document-object-model/
timestamp: 2024-01-27-14-07-04
---

Объектная модель документа Aspose.Words (DOM) - это представление документа Word в памяти. Объектная модель документа Aspose.Words DOM позволяет программно считывать содержимое и форматирование документа Word, манипулировать ими и изменять их.

В этом разделе описываются основные классы Aspose.Words DOM и их взаимосвязи. Используя классы Aspose.Words DOM, вы можете получить программный доступ к элементам документа и форматированию.

## Создайте дерево объектов `Document` {#create-a-document-objects-tree}

Когда документ считывается в Aspose.Words DOM, то строится дерево объектов, и различные типы элементов исходного документа имеют свои собственные объекты дерева DOM с различными свойствами.

### Построение дерева узлов документа {#build-document-nodes-tree}

Когда Aspose.Words считывает документ Word в память, он создает объекты разных типов, которые представляют различные элементы документа. Каждый фрагмент текста, абзац, таблица или раздел является узлом, и даже сам документ является узлом. Aspose.Words определяет класс для каждого типа узла документа.

Дерево документа в Aspose.Words соответствует шаблону составного проектирования:

- Все классы узлов в конечном счете являются производными от класса [Node](https://reference.aspose.com/words/python-net/aspose.words/node/), который является базовым классом в объектной модели документа Aspose.Words.
- Узлы, которые могут содержать другие узлы, например, [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) или [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), являются производными от класса [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/), который, в свою очередь, является производным от класса [Node](https://reference.aspose.com/words/python-net/aspose.words/node/).

На приведенной ниже диаграмме показано наследование между узловыми классами объектной модели документа Aspose.Words (DOM). Названия абстрактных классов выделены курсивом.

<img src="aspose-words-dom.png" alt="aspose-words-dom" style="width:700px"/>

{{% alert color="primary" %}}

Aspose.Words DOM также содержит классы, не связанные с узлами, такие как [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) или [Font](https://reference.aspose.com/words/python-net/aspose.words/font/), которые используются для настройки внешнего вида и стилей в документе. Эти классы не показаны на этой диаграмме, поскольку они не унаследованы от класса [Node](https://reference.aspose.com/words/python-net/aspose.words/node/).

{{% /alert %}}

Давайте рассмотрим пример. На следующем рисунке показан документ Microsoft Word с различными типами содержимого.

<img src="document-example.png" alt="document-example-aspose-words" style="width:700px"/>

При чтении приведенного выше документа в Aspose.Words DOM создается дерево объектов, как показано на схеме ниже.

<img src="document-example-dom.png" alt="dom-aspose-words" style="width:700px"/>

[Document](https://reference.aspose.com/words/python-net/aspose.words/document/), [Section](https://reference.aspose.com/words/python-net/aspose.words/section/), [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/), [Run](https://reference.aspose.com/words/python-net/aspose.words/run/), а все остальные эллипсы на диаграмме являются объектами Aspose.Words, представляющими элементы документа Word.

### Получаем `Node` Тип {#get-a-node-type}

Хотя класса [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) достаточно, чтобы отличать разные узлы друг от друга, Aspose.Words предоставляет перечисление [NodeType](https://reference.aspose.com/words/python-net/aspose.words/nodetype/) для упрощения некоторых задач API, таких как выбор узлов определенного типа.

Тип каждого узла можно определить с помощью свойства [Node.node_type](https://reference.aspose.com/words/python-net/aspose.words/node/node_type/). Это свойство возвращает значение перечисления [NodeType](https://reference.aspose.com/words/python-net/aspose.words/nodetype/). Например, узел абзаца, представленный классом [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), возвращает значение [NodeType.PARAGRAPH](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#paragraph), а узел таблицы, представленный классом [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), возвращает значение [NodeType.TABLE](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#table).

В следующем примере показано, как получить тип узла с помощью перечисления [NodeType](https://reference.aspose.com/words/python-net/aspose.words/nodetype/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-UseNodeType.py" >}}

## Навигация по дереву документов {#document-tree-navigation}

Aspose.Words представляет документ в виде дерева узлов, которое позволяет перемещаться между узлами. В этом разделе описывается, как исследовать дерево документов и перемещаться по нему в Aspose.Words.

Когда вы открываете образец документа, представленный ранее, в проводнике документов, дерево узлов отображается точно так, как оно представлено в Aspose.Words.

<img src="document-in-document-explorer.png" alt="document-in-document-explorer" style="width:680px"/>

{{% alert color="primary" %}}

Вы можете ознакомиться с примером проекта "Обозреватель документов" на сайте [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples).

{{% /alert %}}

### Взаимосвязи узлов документа {#document-nodes-relationships}

Узлы в дереве имеют взаимосвязи между собой:

- Узел, содержащий другой узел, является *parent.*
- Узел, содержащийся в родительском узле, является *child.* Дочерними узлами того же родительского узла являются *sibling* узлов.
- Узел *root* всегда является узлом [Document](https://reference.aspose.com/words/python-net/aspose.words/document/).

Узлы, которые могут содержать другие узлы, являются производными от класса [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/), а все узлы, в конечном счете, являются производными от класса [Node](https://reference.aspose.com/words/python-net/aspose.words/node/). Эти два базовых класса предоставляют общие методы и свойства для навигации и модификации древовидной структуры.

На следующей диаграмме объектов UML показаны несколько узлов образца документа и их связи друг с другом с помощью родительских, дочерних и родственных свойств:

<img src="document-nodes-relationships.png" alt="document-nodes-relationships-aspose-words" style="width:370px"/>

#### Документ является владельцем узла

Узел всегда принадлежит определенному документу, даже если он был только что создан или удален из дерева, поскольку важные структуры всего документа, такие как стили и списки, хранятся в узле [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). Например, невозможно использовать [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) без [Document](https://reference.aspose.com/words/python-net/aspose.words/document/), потому что каждому абзацу присвоен стиль, который определен глобально для документа. Это правило используется при создании любых новых узлов. Для добавления нового [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) непосредственно к DOM требуется объект document, переданный конструктору.

{{% alert color="primary" %}}

Свойство [Node.document](https://reference.aspose.com/words/python-net/aspose.words/node/document/) возвращает документ, к которому принадлежит узел.

{{% /alert %}}

При создании нового абзаца с помощью [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) у конструктора всегда есть класс [Document](https://reference.aspose.com/words/python-net/aspose.words/document/), связанный с ним через свойство [DocumentBuilder.document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/document/).

В следующем примере кода показано, что при создании любого узла всегда определяется документ, которому будет принадлежать этот узел:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-OwnerDocument.py" >}}

#### Родительский узел

У каждого узла есть родительский узел, указанный с помощью свойства [parent_node](https://reference.aspose.com/words/python-net/aspose.words/node/parent_node/). Узел не имеет родительского узла, то есть [parent_node](https://reference.aspose.com/words/python-net/aspose.words/node/parent_node/) равно *None* в следующих случаях:

- Узел только что был создан и еще не был добавлен в дерево.
- Узел был удален из дерева.
- Это корневой узел [Document](https://reference.aspose.com/words/python-net/aspose.words/document/), у которого всегда нет родительского узла.

Вы можете удалить узел из родительского, вызвав метод [Node.remove](https://reference.aspose.com/words/python-net/aspose.words/node/remove/).В следующем примере кода показано, как получить доступ к родительскому узлу:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-GetParentNode.py" >}}

#### Дочерние узлы

Наиболее эффективный способ получить доступ к дочерним узлам [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) - это использовать свойства [first_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/first_child/) и [last_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/last_child/), которые возвращают первый и последний дочерние узлы соответственно. Если дочерних узлов нет, эти свойства возвращают значение *None*.

[CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) также предоставляет коллекцию [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/), обеспечивающую индексированный или перечислимый доступ к дочерним узлам. Метод [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) возвращает текущую коллекцию узлов, что означает, что всякий раз, когда документ изменяется, например, когда узлы удаляются или добавляются, коллекция **get_child_nodes** автоматически обновляется.

Если у узла нет дочерних узлов, то метод **get_child_nodes** возвращает пустую коллекцию. Вы можете проверить, содержит ли [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) какие-либо дочерние узлы, используя свойство [has_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/has_child_nodes/).

В следующем примере кода показано, как перечислить непосредственные дочерние узлы [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/), используя перечислитель, предоставляемый коллекцией **get_child_nodes**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-EnumerateChildNodes.py" >}}

#### Родственные узлы

Вы можете получить узел, который непосредственно предшествует определенному узлу или следует за ним, используя свойства [previous_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/previous_sibling/) и [next_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/next_sibling/) соответственно. Если узел является последним дочерним по отношению к своему родительскому узлу, то свойство [next_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/next_sibling/) равно *None*. И наоборот, если узел является первым дочерним по отношению к своему родительскому элементу, то свойство [previous_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/previous_sibling/) равно *None*.

В следующем примере кода показано, как эффективно посещать все прямые и косвенные дочерние узлы составного узла:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-RecurseAllNodes.py" >}}

### Типизированный доступ к дочернему и родительскому узлам {#typed-access-to-child-and-parent-nodes}

До сих пор мы обсуждали свойства, которые возвращают один из базовых типов – [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) или [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/). Но иногда возникают ситуации, когда может потребоваться привести значения к определенному классу узлов, например [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) или [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/). То есть, вы не можете полностью отказаться от приведения при работе с Aspose.Words DOM, который является составным.

Чтобы уменьшить необходимость в приведении в соответствие, большинство классов Aspose.Words предоставляют свойства и коллекции, которые обеспечивают строго типизированный доступ. Существует три основных шаблона типизированного доступа:

- Родительский узел предоставляет типизированные свойства **first_XXX** и **last_XXX**. Например, у [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) есть свойства [first_section](https://reference.aspose.com/words/python-net/aspose.words/document/first_section/) и [last_section](https://reference.aspose.com/words/python-net/aspose.words/document/last_section/). Аналогично, у [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) есть такие свойства, как [first_row](https://reference.aspose.com/words/python-net/aspose.words.tables/table/first_row/), [last_row](https://reference.aspose.com/words/python-net/aspose.words.tables/table/last_row/) и другие.
- Родительский узел предоставляет типизированную коллекцию дочерних узлов, таких как [Document.sections](https://reference.aspose.com/words/python-net/aspose.words/document/sections/), [Body.paragraphs](https://reference.aspose.com/words/python-net/aspose.words/story/paragraphs/) и другие.
- Дочерний узел предоставляет типизированный доступ к своему родительскому узлу, такой как [Run.parent_paragraph](https://reference.aspose.com/words/python-net/aspose.words/inline/parent_paragraph/), [Paragraph.parent_section](https://reference.aspose.com/words/python-net/aspose.words/paragraph/parent_section/) и другие.

Типизированные свойства - это просто полезные ярлыки, которые иногда обеспечивают более легкий доступ, чем общие свойства, унаследованные от [Node.parent_node](https://reference.aspose.com/words/python-net/aspose.words/node/parent_node/) и [CompositeNode.first_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/first_child/).

В следующем примере кода показано, как использовать типизированные свойства для доступа к узлам дерева документов:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-TypedAccess.py" >}}
