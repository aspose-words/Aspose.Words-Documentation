---
title: Aspose.Words Объектная модель документа (DOM)
second_title: Aspose.Words для Java
articleTitle: Aspose.Words Объектная модель документа (DOM)
linktitle: Aspose.Words Объектная модель документа (DOM)
type: docs
description: "Объектная модель документа (DOM) - это представление документа Word в памяти. Считывайте, манипулируйте и изменяйте содержимое и форматирование документа Word с помощью Java."
weight: 10
url: /ru/java/aspose-words-document-object-model/
timestamp: 2024-01-27-14-07-04
---

Объектная модель документа Aspose.Words (DOM) представляет собой представление документа Word в памяти. Объектная модель документа Aspose.Words DOM позволяет программно считывать содержимое и форматирование документа Word, управлять ими и изменять их.

В этом разделе описываются основные классы Aspose.Words DOM и их взаимосвязи. Используя классы Aspose.Words DOM, вы можете получить программный доступ к элементам документа и форматированию.

## Создать дерево объектов документа {#create-a-document-objects-tree}

Когда документ считывается в Aspose.Words DOM, то строится дерево объектов, и различные типы элементов исходного документа имеют свои собственные объекты дерева DOM с различными свойствами.

### Построение дерева узлов документа {#build-document-nodes-tree}

Когда Aspose.Words считывает документ Word в память, он создает объекты разных типов, представляющие различные элементы документа. Каждый фрагмент текста, абзац, таблица или раздел является узлом, и даже сам документ является узлом. Aspose.Words определяет класс для каждого типа узла документа.

Дерево документа в Aspose.Words соответствует шаблону составного проектирования:

- Все классы узлов в конечном счете являются производными от класса [Node](https://reference.aspose.com/words/java/com.aspose.words/node/), который является базовым классом в объектной модели документа Aspose.Words.
- Узлы, которые могут содержать другие узлы, например, **Section** или **Paragraph**, являются производными от класса [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/), который, в свою очередь, является производным от класса **Node**.

На приведенной ниже диаграмме показано наследование между узловыми классами объектной модели документа Aspose.Words (DOM). Названия абстрактных классов выделены курсивом.

<img src="/words/java/aspose-words-document-object-model/aspose-words-dom.png" alt="aspose-words-dom" style="width:700px"/>

{{% alert color="primary" %}}

Aspose.Words DOM также содержит классы, не связанные с узлами, такие как [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) или [Font](https://reference.aspose.com/words/java/com.aspose.words/font/), которые используются для настройки внешнего вида и стилей в документе. Эти классы не показаны на этой диаграмме, поскольку они не унаследованы от класса `Node`.

{{% /alert %}}

Давайте рассмотрим пример. На следующем рисунке показан документ Microsoft Word с различными типами содержимого.

<img src="/words/java/aspose-words-document-object-model/document-example.png" alt="document-example" style="width:700px"/>

При чтении приведенного выше документа в Aspose.Words DOM создается дерево объектов, как показано на схеме ниже.

<img src="/words/java/aspose-words-document-object-model/document-example-dom.png" alt="document-example-dom" style="width:700px"/>

[Document](https://reference.aspose.com/words/java/com.aspose.words/document/), [Section](https://reference.aspose.com/words/java/com.aspose.words/section/), [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/), [Run](https://reference.aspose.com/words/java/com.aspose.words/run/), а все остальные эллипсы на диаграмме являются объектами Aspose.Words, представляющими элементы документа Word.

### Получаем `Node` Тип {#get-a-node-type}

Хотя класса [Node](https://reference.aspose.com/words/java/com.aspose.words/node/) достаточно, чтобы отличать разные узлы друг от друга, Aspose.Words предоставляет перечисление [NodeType](https://reference.aspose.com/words/java/com.aspose.words/nodetype/) для упрощения некоторых задач API, таких как выбор узлов определенного типа.

Тип каждого узла можно определить с помощью свойства [NodeType](https://reference.aspose.com/words/java/com.aspose.words/node/#getNodeType). Это свойство возвращает значение перечисления **NodeType**. Например, узел абзаца, представленный классом **Paragraph**, возвращает значение **NodeType**.**Paragraph**, а узел таблицы, представленный классом **Table**, возвращает значение **NodeType**.**Table**.

В следующем примере показано, как получить тип узла с помощью перечисления **NodeType**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-GetNodeType-.java" >}}

## Навигация по дереву документов {#document-tree-navigation}

Aspose.Words представляет документ в виде дерева узлов, которое позволяет перемещаться между узлами. В этом разделе описывается, как исследовать дерево документов и перемещаться по нему в Aspose.Words.

Когда вы открываете образец документа, представленный ранее, в проводнике документов, дерево узлов отображается точно так, как оно представлено в Aspose.Words.

<img src="/words/java/aspose-words-document-object-model/document-in-document-explorer.png" alt="document-in-document-explorer" style="width:680px"/>

{{% alert color="primary" %}}

Вы можете ознакомиться с примером проекта "Обозреватель документов" на сайте [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Document_explorer).

{{% /alert %}}

### Связи узлов документа {#document-nodes-relationships}

Узлы в дереве имеют взаимосвязи между собой:

- Узел, содержащий другой узел, является *parent.*
- Узел, содержащийся в родительском узле, является *child.* Дочерними узлами того же родительского узла являются *sibling* узлов.
- Узел *root* всегда является узлом [Document](https://reference.aspose.com/words/java/com.aspose.words/document/).

Узлы, которые могут содержать другие узлы, являются производными от класса [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/), а все узлы, в конечном счете, являются производными от класса [Node](https://reference.aspose.com/words/java/com.aspose.words/node/). Эти два базовых класса предоставляют общие методы и свойства для навигации и модификации древовидной структуры.

На следующей диаграмме объектов UML показаны несколько узлов образца документа и их связи друг с другом с помощью родительских, дочерних и родственных свойств:

<img src="/words/java/aspose-words-document-object-model/document-nodes-relationships.png" alt="document-nodes-relationships" style="width:370px"/>

#### Документ является владельцем узла

Узел всегда принадлежит определенному документу, даже если он был только что создан или удален из дерева, поскольку важные структуры всего документа, такие как стили и списки, хранятся в узле **Document**. Например, невозможно использовать **Paragraph** без **Document**, потому что каждому абзацу присвоен стиль, который определен глобально для документа. Это правило используется при создании любых новых узлов. Для добавления нового **Paragraph** непосредственно к DOM требуется объект document, переданный конструктору.

{{% alert color="primary" %}}

Свойство [Node.Document](https://reference.aspose.com/words/java/com.aspose.words/node/#getDocument) возвращает документ, к которому принадлежит узел.

{{% /alert %}}

При создании нового абзаца с помощью [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) у конструктора всегда есть класс **Document**, связанный с ним через свойство [DocumentBuilder.Document](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#Document).

В следующем примере кода показано, что при создании любого узла всегда определяется документ, которому будет принадлежать этот узел:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-OwnerDocument-.java" >}}

#### Родительский узел

У каждого узла есть родительский узел, указанный с помощью свойства [ParentNode](https://reference.aspose.com/words/java/com.aspose.words/node/#getParentNode). Узел не имеет родительского узла, то есть значение **ParentNode** равно null в следующих случаях:

- Узел только что был создан и еще не был добавлен в дерево.
- Узел был удален из дерева.
- Это корневой узел **Document**, который всегда имеет нулевой родительский узел.

Вы можете удалить узел из родительского, вызвав метод [Remove](https://reference.aspose.com/words/java/com.aspose.words/node/#remove).В следующем примере кода показано, как получить доступ к родительскому узлу:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-AccessParentNode-.java" >}}

#### Дочерние узлы

Наиболее эффективный способ получить доступ к дочерним узлам [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) - это использовать свойства [FirstChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#FirstChild) и [LastChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#LastChild), которые возвращают первый и последний дочерние узлы соответственно. Если дочерних узлов нет, эти свойства возвращают значение *null*.

**CompositeNode**

Если узел не имеет дочерних узлов, то свойство **ChildNodes** возвращает пустую коллекцию. Вы можете проверить, содержит ли **CompositeNode** какие-либо дочерние узлы, используя свойство [HasChildNodes](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#hasChildNodes).

В следующем примере кода показано, как перечислить непосредственные дочерние узлы `CompositeNode`, используя перечислитель, предоставляемый коллекцией `ChildNodes`:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-ChildNodes-enumerateChildrenOfACompositeNodeUsingEnumeratorProvidedByChildNodesCollection.java" >}}

В следующем примере кода показано, как перечислить непосредственные дочерние узлы `CompositeNode`, используя индексированный доступ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-ChildNodes-enumerateChildrenOfACompositeNodeUsingIndexedAccess.java" >}}

#### Родственные узлы

Вы можете получить узел, который непосредственно предшествует определенному узлу или следует за ним, используя свойства [PreviousSibling](https://reference.aspose.com/words/java/com.aspose.words/node/#getPreviousSibling) и [NextSibling](https://reference.aspose.com/words/java/com.aspose.words/node/#getNextSibling) соответственно. Если узел является последним дочерним по отношению к своему родительскому узлу, то свойство **NextSibling** равно *null*. И наоборот, если узел является первым дочерним по отношению к своему родительскому элементу, то свойство **PreviousSibling** равно *null*.

В следующем примере кода показано, как эффективно посещать все прямые и косвенные дочерние узлы составного узла:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-SiblingNodes-.java" >}}

### Типизированный доступ к дочерним и родительским узлам

До сих пор мы обсуждали свойства, которые возвращают один из базовых типов – **Node** или **CompositeNode**. Но иногда возникают ситуации, когда может потребоваться привести значения к определенному классу узлов, например **Run** или **Paragraph**. То есть, вы не можете полностью отказаться от приведения при работе с Aspose.Words DOM, который является составным.

Чтобы уменьшить необходимость в приведении в соответствие, большинство классов Aspose.Words предоставляют свойства и коллекции, которые обеспечивают строго типизированный доступ. Существует три основных шаблона типизированного доступа:

- Родительский узел предоставляет типизированные свойства **FirstXXX** и **LastXXX**. Например, у **Document** есть свойства [FirstSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getFirstSection) и [LastSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getLastSection). Аналогично, у **Table** есть такие свойства, как [FirstRow](https://reference.aspose.com/words/java/com.aspose.words/table/#getFirstRow), [LastRow](https://reference.aspose.com/words/java/com.aspose.words/table/#getLastRow) и другие.
- Родительский узел предоставляет типизированную коллекцию дочерних узлов, таких как [Document.Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections), [Body.Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/story/#getParagraphs) и другие.
- Дочерний узел предоставляет типизированный доступ к своему родительскому узлу, такой как [Run.ParentParagraph](https://reference.aspose.com/words/java/com.aspose.words/inline/#getParentParagraph), [Paragraph.ParentSection](https://reference.aspose.com/words/java/com.aspose.words/paragraph/#getParentSection) и другие.

Типизированные свойства - это просто полезные ярлыки, которые иногда обеспечивают более легкий доступ, чем общие свойства, унаследованные от [Node.ParentNode](https://reference.aspose.com/words/java/com.aspose.words/node/#getParentNode) и [CompositeNode.FirstChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getFirstChild).

В следующем примере кода показано, как использовать типизированные свойства для доступа к узлам дерева документов:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-TypedAccessToChildrenAndParent-.java" >}}
