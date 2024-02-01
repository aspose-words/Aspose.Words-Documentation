---
title: Aspose.Words DOM
second_title: Aspose.Words для Python via .NET
articleTitle: Aspose.Words Document Object Model (DOM)
linktitle: Aspose.Words Document Object Model (DOM)
type: docs
description: "Document Object Model (DOM) — это представление документа Word в памяти. Чтение, манипулирование и изменение содержимого и форматирования документа Word с помощью Python."
weight: 10
url: /ru/python-net/aspose-words-document-object-model/
---

Aspose.Words Document Object Model (DOM) — это представление документа Word в памяти. Aspose.Words DOM позволяет программно читать, манипулировать и изменять содержимое и форматирование документа Word.

В этом разделе описаны основные классы Aspose.Words DOM и их взаимосвязи. Используя классы Aspose.Words DOM, вы можете получить программный доступ к элементам документа и форматированию.

## Создайте дерево объектов `Document` {#create-a-document-objects-tree}

Когда документ считывается в Aspose.Words DOM, строится дерево объектов и разные типы элементов исходного документа имеют свои собственные DOM объекты дерева с различными свойствами.

### Построение дерева узлов документа {#build-document-nodes-tree}

Когда Aspose.Words считывает документ Word в память, он создает объекты разных типов, представляющие различные элементы документа. Каждый фрагмент текста, абзаца, таблицы или раздела является узлом, и даже сам документ является узлом. Aspose.Words определяет класс для каждого типа узла документа.

Дерево документа в Aspose.Words соответствует шаблону составного проектирования:

- Все классы узлов в конечном итоге происходят от класса [Node](https://reference.aspose.com/words/python-net/aspose.words/node/), который является базовым классом в Aspose.Words Document Object Model.
— Узлы, которые могут содержать другие узлы, например, [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) или [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), являются производными от класса [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/), который, в свою очередь, является производным от класса [Node](https://reference.aspose.com/words/python-net/aspose.words/node/).

На диаграмме ниже показано наследование между классами узлов Aspose.Words и Document Object Model (DOM). Названия абстрактных классов выделены курсивом.

<img src="/words/python-net/aspose-words-document-object-model/aspose-words-dom.png" alt="aspose-слова-дом" style="width:700px"/>

{{% alert color="primary" %}}

Aspose.Words DOM также содержит классы, не являющиеся узлами, например [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) или [Font](https://reference.aspose.com/words/python-net/aspose.words/font/), которые используются для настройки внешнего вида и стилей в документе. Эти классы не показаны на этой диаграмме, поскольку не унаследованы от класса [Node](https://reference.aspose.com/words/python-net/aspose.words/node/).

{{% /alert %}}

Давайте посмотрим на пример. На следующем изображении показан документ Microsoft Word с различными типами контента.

<img src="/words/python-net/aspose-words-document-object-model/document-example.png" alt="пример-документа-аспонировать-слова" style="width:700px"/>

При чтении вышеуказанного документа в Aspose.Words DOM создается дерево объектов, как показано на схеме ниже.

<img src="/words/python-net/aspose-words-document-object-model/document-example-dom.png" alt="дом-аспонировать-слова" style="width:700px"/>

[Document](https://reference.aspose.com/words/python-net/aspose.words/document/), [Section](https://reference.aspose.com/words/python-net/aspose.words/section/), [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/), [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) и все остальные эллипсы на схеме — это объекты Aspose.Words, представляющие элементы документа Word.

### Приобретите `Node` Тип {#get-a-node-type}

Хотя класса [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) достаточно, чтобы отличать разные узлы друг от друга, Aspose.Words предоставляет перечисление [NodeType](https://reference.aspose.com/words/python-net/aspose.words/nodetype/) для упрощения некоторых задач API, таких как выбор узлов определенного типа.

Тип каждого узла можно получить с помощью свойства [Node.node_type](https://reference.aspose.com/words/python-net/aspose.words/node/node_type/). Это свойство возвращает значение перечисления [NodeType](https://reference.aspose.com/words/python-net/aspose.words/nodetype/). Например, узел абзаца, представленный классом [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), возвращает [NodeType.PARAGRAPH](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#paragraph), а узел таблицы, представленный классом [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), возвращает [NodeType.TABLE](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#table).

В следующем примере показано, как получить тип узла с помощью перечисления [NodeType](https://reference.aspose.com/words/python-net/aspose.words/nodetype/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-UseNodeType.py" >}}

## Навигация по дереву документов {#document-tree-navigation}

Aspose.Words представляет документ в виде дерева узлов, что позволяет перемещаться между узлами. В этом разделе описывается, как исследовать и перемещаться по дереву документов в Aspose.Words.

Когда вы открываете образец документа, представленный ранее, в Проводнике документов, дерево узлов выглядит точно так, как оно представлено в Aspose.Words.

<img src="/words/python-net/aspose-words-document-object-model/document-in-document-explorer.png" alt="проводник документа в документе" style="width:680px"/>

{{% alert color="primary" %}}

Вы можете изучить пример проекта "Document Explorer" на [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples).

{{% /alert %}}

### Отношения узлов документа {#document-nodes-relationships}

Между узлами дерева существуют связи:

- Узел, содержащий другой узел, — это *parent.*
— Узел, содержащийся в родительском узле, — это *child.*. Дочерние узлы того же родителя — это *sibling* узла.
- Узел *root* всегда является узлом [Document](https://reference.aspose.com/words/python-net/aspose.words/document/).

Узлы, которые могут содержать другие узлы, происходят от класса [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/), а все узлы в конечном итоге происходят от класса [Node](https://reference.aspose.com/words/python-net/aspose.words/node/). Эти два базовых класса предоставляют общие методы и свойства для навигации и изменения древовидной структуры.

На следующей диаграмме объектов UML показаны несколько узлов примера документа и их связи друг с другом через родительские, дочерние и одноуровневые свойства:

<img src="/words/python-net/aspose-words-document-object-model/document-nodes-relationships.png" alt="документы-узлы-отношения-аспонировать-слова" style="width:370px"/>

#### Документ является владельцем узла

Узел всегда принадлежит определенному документу, даже если он был только что создан или удален из дерева, поскольку жизненно важные структуры документа, такие как стили и списки, хранятся в узле [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). Например, невозможно иметь [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) без [Document](https://reference.aspose.com/words/python-net/aspose.words/document/), поскольку каждому абзацу присвоен стиль, определенный глобально для документа. Это правило используется при создании любых новых узлов. Для добавления нового [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) непосредственно к DOM требуется, чтобы объект документа был передан конструктору.

{{% alert color="primary" %}}

Свойство [Node.document](https://reference.aspose.com/words/python-net/aspose.words/node/document/) возвращает документ, которому принадлежит узел.

{{% /alert %}}

При создании нового абзаца с использованием [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) у компоновщика всегда есть класс [Document](https://reference.aspose.com/words/python-net/aspose.words/document/), связанный с ним через свойство [DocumentBuilder.document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/document/).

В следующем примере кода показано, что при создании любого узла всегда определяется документ, которому будет принадлежать этот узел:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-OwnerDocument.py" >}}

#### Родительский узел

У каждого узла есть родительский элемент, указанный свойством [parent_node](https://reference.aspose.com/words/python-net/aspose.words/node/parent_node/). Узел не имеет родительского узла, то есть [parent_node](https://reference.aspose.com/words/python-net/aspose.words/node/parent_node/) равен *None* в следующих случаях:

- Узел только что создан и еще не добавлен в дерево.
- Узел удален из дерева.
— Это корневой узел [Document](https://reference.aspose.com/words/python-net/aspose.words/document/), у которого всегда есть родительский узел None.

Вы можете удалить узел из его родительского узла, вызвав метод [Node.remove](https://reference.aspose.com/words/python-net/aspose.words/node/remove/). В следующем примере кода показано, как получить доступ к родительскому узлу:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-GetParentNode.py" >}}

#### Дочерние узлы

Самый эффективный способ получить доступ к дочерним узлам [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) — через свойства [first_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/first_child/) и [last_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/last_child/), которые возвращают первый и последний дочерние узлы соответственно. Если дочерних узлов нет, эти свойства возвращают *None*.

[CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) также предоставляет коллекцию [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/), обеспечивающую индексированный или перечисляемый доступ к дочерним узлам. Метод [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) возвращает действующую коллекцию узлов. Это означает, что при каждом изменении документа, например при удалении или добавлении узлов, коллекция **get_child_nodes** автоматически обновляется.

Если у узла нет дочернего узла, метод **get_child_nodes** возвращает пустую коллекцию. Вы можете проверить, содержит ли [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) какие-либо дочерние узлы, используя свойство [has_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/has_child_nodes/).

В следующем примере кода показано, как перечислить непосредственные дочерние узлы [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) с помощью перечислителя, предоставленного коллекцией **get_child_nodes**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-EnumerateChildNodes.py" >}}

#### Родственные узлы

Вы можете получить узел, который непосредственно предшествует или следует за определенным узлом, используя свойства [previous_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/previous_sibling/) и [next_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/next_sibling/) соответственно. Если узел является последним дочерним элементом своего родителя, то свойство [next_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/next_sibling/) равно *None*. И наоборот, если узел является первым дочерним элементом своего родителя, свойство [previous_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/previous_sibling/) равно *None*.

В следующем примере кода показано, как эффективно посещать все прямые и косвенные дочерние узлы составного узла:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-RecurseAllNodes.py" >}}

### Типизированный доступ к дочерним и родительским узлам {#typed-access-to-child-and-parent-nodes}

До сих пор мы обсуждали свойства, которые возвращают один из базовых типов — [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) или [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/). Но иногда возникают ситуации, когда вам может потребоваться привести значения к определенному классу узла, например [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) или [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/). То есть вы не можете полностью откажитесь от литья при работе с Aspose.Words DOM, который является композитным.

Чтобы уменьшить необходимость приведения типов, большинство классов Aspose.Words предоставляют свойства и коллекции, обеспечивающие строго типизированный доступ. Существует три основных шаблона типизированного доступа:

— Родительский узел предоставляет типизированные свойства **первый_XXX** и **последний_XXX**. Например, [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) имеет свойства [first_section](https://reference.aspose.com/words/python-net/aspose.words/document/first_section/) и [last_section](https://reference.aspose.com/words/python-net/aspose.words/document/last_section/). Аналогично, [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) имеет такие свойства, как [first_row](https://reference.aspose.com/words/python-net/aspose.words.tables/table/first_row/), [last_row](https://reference.aspose.com/words/python-net/aspose.words.tables/table/last_row/) и другие.
— Родительский узел предоставляет типизированную коллекцию дочерних узлов, например [Document.sections](https://reference.aspose.com/words/python-net/aspose.words/document/sections/), [Body.paragraphs](https://reference.aspose.com/words/python-net/aspose.words/story/paragraphs/) и другие.
— Дочерний узел предоставляет типизированный доступ к своему родительскому узлу, например [Run.parent_paragraph](https://reference.aspose.com/words/python-net/aspose.words/inline/parent_paragraph/), [Paragraph.parent_section](https://reference.aspose.com/words/python-net/aspose.words/paragraph/parent_section/) и другие.

Типизированные свойства — это просто полезные ярлыки, которые иногда обеспечивают более легкий доступ, чем общие свойства, унаследованные от [Node.parent_node](https://reference.aspose.com/words/python-net/aspose.words/node/parent_node/) и [CompositeNode.first_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/first_child/).

В следующем примере кода показано, как использовать типизированные свойства для доступа к узлам дерева документа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-TypedAccess.py" >}}
