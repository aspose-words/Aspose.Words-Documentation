---
title: Aspose.Words DOM
second_title: Aspose.Words для Python via .NET
articleTitle: Aspose.Words Document Object Model (DOM)
linktitle: Aspose.Words Document Object Model (DOM)
type: docs
description: "Document Object Model ()DOM) является представлением в памяти документа Word. Чтение, манипулирование и изменение содержания и форматирования документа Word с использованием Python."
weight: 10
url: /ru/python-net/aspose-words-document-object-model/
timestamp: 2024-01-27-14-07-04
---

The Aspose.Words Document Object Model ()DOM) является представлением в памяти документа Word. The Aspose.Words DOM Это позволяет программно читать, манипулировать и изменять содержание и форматирование документа Word.

В этом разделе описаны основные классы Aspose.Words DOM и их взаимоотношениях. Используя Aspose.Words DOM классы, можно получить программный доступ к элементам документа и форматированию.

## Создать `Document` Предметы дерева {#create-a-document-objects-tree}

Когда документ прочитывается в Aspose.Words DOM Затем строится объектное дерево и различные типы элементов исходного документа имеют свои собственные. DOM древесные объекты с различными свойствами.

### Строим документальные узлы дерева {#build-document-nodes-tree}

Когда Aspose.Words Считывает документ Word в память, создает объекты разного типа, представляющие различные элементы документа. Каждый запуск текста, абзаца, таблицы или раздела является узлом, и даже сам документ является узлом. Aspose.Words Определяет класс для каждого типа узла документа.

Дерево документов в Aspose.Words Далее следует шаблон композитного дизайна:

- Все классы узлов в конечном итоге происходят от [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) класс, который является базовым в Aspose.Words Document Object Model.
- Узлы, которые могут содержать другие узлы, например, [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) или [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), Происходит из [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) Класс, который, в свою очередь, происходит от [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) класс.

На приведенной ниже диаграмме показано наследование между классами узлов Aspose.Words Document Object Model ()DOM). Названия абстрактных классов написаны курсивом.

<img src="/words/python-net/aspose-words-document-object-model/aspose-words-dom.png" alt="aspose-words-dom" style="width:700px"/>

{{% alert color="primary" %}}

The Aspose.Words DOM также содержит классы без узлов, такие как [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) или [Font](https://reference.aspose.com/words/python-net/aspose.words/font/), которые используются для настройки внешнего вида и стилей в документе. Эти классы не показаны на этой диаграмме как не унаследованные от [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) класс.

{{% /alert %}}

Давайте посмотрим на пример. Следующее изображение показывает Microsoft Word Документы с различными типами контента.

<img src="/words/python-net/aspose-words-document-object-model/document-example.png" alt="document-example-aspose-words" style="width:700px"/>

При чтении вышеуказанного документа в Aspose.Words DOM, Дерево объектов создается, как показано в схеме ниже.

<img src="/words/python-net/aspose-words-document-object-model/document-example-dom.png" alt="dom-aspose-words" style="width:700px"/>

[Document](https://reference.aspose.com/words/python-net/aspose.words/document/), [Section](https://reference.aspose.com/words/python-net/aspose.words/section/), [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/), [Run](https://reference.aspose.com/words/python-net/aspose.words/run/), и все остальные эллипсы на диаграмме являются Aspose.Words объекты, представляющие элементы документа Word.

### Найди `Node` Тип {#get-a-node-type}

Хотя и [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) класса достаточно, чтобы отличать разные узлы друг от друга; Aspose.Words обеспечивает [NodeType](https://reference.aspose.com/words/python-net/aspose.words/nodetype/) Перечисление для упрощения некоторых API задачи, такие как выбор узлов определенного типа.

Тип каждого узла может быть получен с помощью [Node.node_type](https://reference.aspose.com/words/python-net/aspose.words/node/node_type/) собственность. Это свойство возвращает [NodeType](https://reference.aspose.com/words/python-net/aspose.words/nodetype/) перечислительная стоимость. Например, узел абзаца, представленный [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) Класс возвращается [NodeType.PARAGRAPH](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#paragraph), и столовый узел, представленный [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) Класс возвращается [NodeType.TABLE](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#table).

Следующий пример показывает, как получить тип узла с помощью [NodeType](https://reference.aspose.com/words/python-net/aspose.words/nodetype/) перечисление:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-UseNodeType.py" >}}

## Навигация по дереву {#document-tree-navigation}

Aspose.Words представляет собой документ в виде дерева узлов, что позволяет перемещаться между узлами. В этом разделе описывается, как исследовать и перемещаться по дереву документов. Aspose.Words.

Когда вы открываете образец документа, представленный ранее, в проводнике документа, дерево узла появляется точно так же, как оно представлено в документе. Aspose.Words.

<img src="/words/python-net/aspose-words-document-object-model/document-in-document-explorer.png" alt="document-in-document-explorer" style="width:680px"/>

{{% alert color="primary" %}}

Вы можете изучить образец проекта "Исследователь документов" на [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples).

{{% /alert %}}

### Документальные узлы отношений {#document-nodes-relationships}

Узлы в дереве имеют отношения между собой:

- Узел, содержащий другой узел, является *parent.*
- Узел, содержащийся в родительском узле, является *child.* Детские узлы одного родителя *sibling* Узлы.
- *root* Узел всегда является [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) Узел.

Узлы, которые могут содержать другие узлы, происходят из [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) класс, и все узлы в конечном счете происходят от [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) класс. Эти два базовых класса обеспечивают общие методы и свойства для навигации и модификации структуры дерева.

Следующая диаграмма объектов UML показывает несколько узлов образца документа и их отношения друг к другу через родительские, детские и родственные свойства:

<img src="/words/python-net/aspose-words-document-object-model/document-nodes-relationships.png" alt="document-nodes-relationships-aspose-words" style="width:370px"/>

#### Документ является владельцем узла

Узел всегда принадлежит определенному документу, даже если он был только что создан или удален из дерева, потому что в нем хранятся жизненно важные структуры, такие как стили и списки. [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) Узел. Например, невозможно иметь [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) без [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) Каждый пункт имеет определенный стиль, который определяется во всем мире для документа. Это правило используется при создании любых новых узлов. Добавить новый [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) непосредственно в сторону DOM Требуется документ, переданный конструктору.

{{% alert color="primary" %}}

The [Node.document](https://reference.aspose.com/words/python-net/aspose.words/node/document/) Собственность возвращает документ, к которому принадлежит узел.

{{% /alert %}}

При создании нового абзаца с использованием [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/), Строитель всегда имеет [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) Класс, связанный с ним через [DocumentBuilder.document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/document/) собственность.

Следующий пример кода показывает, что при создании любого узла всегда определяется документ, который будет владеть узлом:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-OwnerDocument.py" >}}

#### Родительский узел

У каждого узла есть родитель, указанный [parent_node](https://reference.aspose.com/words/python-net/aspose.words/node/parent_node/) собственность. Узел не имеет родительского узла, то есть [parent_node](https://reference.aspose.com/words/python-net/aspose.words/node/parent_node/) это *None*, в следующих случаях:

- Узел только что был создан и еще не был добавлен к дереву.
- Узел был удален с дерева.
- Это корень [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) Узел, который всегда имеет родительский узел.

Вы можете удалить узел от его родителя, позвонив [Node.remove](https://reference.aspose.com/words/python-net/aspose.words/node/remove/) метод. Следующий пример кода показывает, как получить доступ к родительскому узлу:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-GetParentNode.py" >}}

#### Детские узлы

Наиболее эффективный способ доступа к детским узлам [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) осуществляется через [first_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/first_child/) и [last_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/last_child/) Свойства, возвращающие первый и последний детские узлы соответственно. Если нет детских узлов, эти свойства возвращаются *None*.

[CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) также обеспечивает [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) сбор, позволяющий индексировать или перечислять доступ к узлам ребенка. The [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) метод возвращает живую коллекцию узлов, что означает, что всякий раз, когда документ изменяется, например, когда узлы удаляются или добавляются, **Get_child_nodes** Коллекция обновляется автоматически.

Если у узла нет ребенка, то **Get_child_nodes** Метод возвращает пустую коллекцию. Вы можете проверить, является ли [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) содержит любые детские узлы, использующие [has_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/has_child_nodes/) собственность.

Следующий пример кода показывает, как перечислить непосредственные узлы ребенка. [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) используя числитель, предоставленный **Get_child_nodes** коллекция:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-EnumerateChildNodes.py" >}}

#### Родственные узлы

Вы можете получить узел, который непосредственно предшествует или следует за конкретным узлом, используя [previous_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/previous_sibling/) и [next_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/next_sibling/) свойств соответственно. Если узел является последним ребенком своего родителя, то [next_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/next_sibling/) собственность является *None*. Если же узел является первым ребенком своего родителя, то [previous_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/previous_sibling/) собственность является *None*.

Следующий пример кода показывает, как эффективно посещать все прямые и косвенные дочерние узлы композитного узла:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-RecurseAllNodes.py" >}}

### Типовой доступ к детским и родительским узлам {#typed-access-to-child-and-parent-nodes}

До сих пор мы обсуждали свойства, возвращающие один из базовых типов. [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) или [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/). Но иногда бывают ситуации, когда вам может потребоваться отбросить значения в определенный класс узлов, например: [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) или [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/). То есть вы не можете полностью уйти от кастинга при работе с Aspose.Words DOM, который является составным.

Чтобы уменьшить потребность в литье, большинство Aspose.Words Классы предоставляют свойства и коллекции, которые обеспечивают строго типизированный доступ. Существует три основных шаблона типизированного доступа:

- Родительский узел показывает типизированный **Первый_XXXX** и **Last_XXX** свойств. Например, в [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) иметь [first_section](https://reference.aspose.com/words/python-net/aspose.words/document/first_section/) и [last_section](https://reference.aspose.com/words/python-net/aspose.words/document/last_section/) свойств. Точно так же [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) обладает такими свойствами, как [first_row](https://reference.aspose.com/words/python-net/aspose.words.tables/table/first_row/), [last_row](https://reference.aspose.com/words/python-net/aspose.words.tables/table/last_row/), и другие.
- Родительский узел раскрывает типизированную коллекцию детских узлов, таких как: [Document.sections](https://reference.aspose.com/words/python-net/aspose.words/document/sections/), [Body.paragraphs](https://reference.aspose.com/words/python-net/aspose.words/story/paragraphs/), и другие.
- Детский узел обеспечивает типизированный доступ к своему родителю, например [Run.parent_paragraph](https://reference.aspose.com/words/python-net/aspose.words/inline/parent_paragraph/), [Paragraph.parent_section](https://reference.aspose.com/words/python-net/aspose.words/paragraph/parent_section/), и другие.

Типовые свойства - это просто полезные ярлыки, которые иногда обеспечивают более легкий доступ, чем общие свойства, унаследованные от других типов. [Node.parent_node](https://reference.aspose.com/words/python-net/aspose.words/node/parent_node/) и [CompositeNode.first_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/first_child/).

Следующий пример кода показывает, как использовать типизированные свойства для доступа к узлам дерева документов:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-TypedAccess.py" >}}
