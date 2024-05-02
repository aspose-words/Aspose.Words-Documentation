---
title: Aspose.Words Document Object Model (DOM)
second_title: Aspose.Words для Java
articleTitle: Aspose.Words Document Object Model (DOM)
linktitle: Aspose.Words Document Object Model (DOM)
type: docs
description: "Document Object Model ()DOM) является представлением в памяти документа Word. Чтение, манипулирование и изменение содержания и форматирования документа Word с использованием Java."
weight: 10
url: /ru/java/aspose-words-document-object-model/
---

The Aspose.Words Document Object Model ()DOM) является представлением в памяти документа Word. The Aspose.Words DOM Это позволяет программно читать, манипулировать и изменять содержание и форматирование документа Word.

В этом разделе описаны основные классы Aspose.Words DOM и их взаимоотношения. Используя Aspose.Words DOM классы, можно получить программный доступ к элементам документа и форматированию.

## Создать документ Объектное дерево {#create-a-document-objects-tree}

Когда документ прочитывается в Aspose.Words <span notrans="<span notrans=" DOM"=""></span>"> Затем строится объектное дерево и различные типы элементов исходного документа имеют свои собственные. DOM древесные объекты с различными свойствами.

### Строим документальные узлы дерева {#build-document-nodes-tree}

Когда Aspose.Words Считывает документ Word в память, создает объекты разного типа, представляющие различные элементы документа. Каждый запуск текста, абзаца, таблицы или раздела является узлом, и даже сам документ является узлом. Aspose.Words определяет класс для каждого типа узла документа.

Дерево документов в Aspose.Words Далее следует шаблон композитного дизайна:

- Все классы узлов в конечном итоге происходят от [Node](https://reference.aspose.com/words/java/com.aspose.words/node/) класс, который является базовым в Aspose.Words Document Object Model.
- Узлы, которые могут содержать другие узлы, например, **Section** или **Paragraph**, Происходит из [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) Класс, который, в свою очередь, происходит от **Node** класс.

На приведенной ниже диаграмме показано наследование между классами узлов Aspose.Words Document Object Model ()DOM). Названия абстрактных классов написаны курсивом.

<img src="/words/java/aspose-words-document-object-model/aspose-words-dom.png" alt="aspose-words-dom" style="width:700px"/>

{{% alert color="primary" %}}

The Aspose.Words DOM также содержит классы без узлов, такие как [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) или [Font](https://reference.aspose.com/words/java/com.aspose.words/font/), которые используются для настройки внешнего вида и стилей в документе. Эти классы не показаны на этой диаграмме как не унаследованные от `Node` класс.

{{% /alert %}}

Давайте посмотрим на пример. Следующее изображение показывает Microsoft Word Документы с различными типами контента.

<img src="/words/java/aspose-words-document-object-model/document-example.png" alt="document-example" style="width:700px"/>

При чтении вышеуказанного документа в Aspose.Words DOM, Дерево объектов создается, как показано в схеме ниже.

<img src="/words/java/aspose-words-document-object-model/document-example-dom.png" alt="document-example-dom" style="width:700px"/>

[Document](https://reference.aspose.com/words/java/com.aspose.words/document/), [Section](https://reference.aspose.com/words/java/com.aspose.words/section/), [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/), [Run](https://reference.aspose.com/words/java/com.aspose.words/run/), Все остальные эллипсы на диаграмме являются Aspose.Words объекты, представляющие элементы документа Word.

### Найди `Node` Тип {#get-a-node-type}

Хотя и [Node](https://reference.aspose.com/words/java/com.aspose.words/node/) класса достаточно, чтобы отличать разные узлы друг от друга; Aspose.Words обеспечивает [NodeType](https://reference.aspose.com/words/java/com.aspose.words/nodetype/) Перечисление для упрощения некоторых API задачи, такие как выбор узлов определенного типа.

Тип каждого узла может быть получен с помощью [NodeType](https://reference.aspose.com/words/java/com.aspose.words/node/#getNodeType) собственность. Это свойство возвращает **NodeType** Перечислительная стоимость. Например, узел абзаца, представленный **Paragraph** Класс возвращается **NodeType**.**Paragraph**и столовый узел, представленный **Table** Класс возвращается **NodeType**.**Table**.

Следующий пример показывает, как получить тип узла с помощью **NodeType** Перечисление:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-GetNodeType-.java" >}}

## Навигация по дереву {#document-tree-navigation}

Aspose.Words представляет собой документ в виде дерева узлов, что позволяет перемещаться между узлами. В этом разделе описывается, как исследовать и перемещаться по дереву документов. Aspose.Words.

Когда вы открываете образец документа, представленный ранее, в проводнике документа, дерево узла появляется точно так же, как оно представлено в документе. Aspose.Words.

<img src="/words/java/aspose-words-document-object-model/document-in-document-explorer.png" alt="document-in-document-explorer" style="width:680px"/>

{{% alert color="primary" %}}

Вы можете изучить образец проекта "Исследователь документов" на [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Document_explorer).

{{% /alert %}}

### Документальные отношения Node {#document-nodes-relationships}

Узлы в дереве имеют отношения между собой:

- Узел, содержащий другой узел, является *parent.*
- Узел, содержащийся в родительском узле, является *child.* Детские узлы одного и того же родителя *sibling* Узлы.
- *root* Узел всегда является [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) Узел.

Узлы, которые могут содержать другие узлы, происходят из [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) класс, и все узлы в конечном счете происходят от [Node](https://reference.aspose.com/words/java/com.aspose.words/node/) класс. Эти два базовых класса обеспечивают общие методы и свойства для навигации и модификации структуры дерева.

Следующая диаграмма объектов UML показывает несколько узлов образца документа и их отношения друг к другу через родительские, детские и родственные свойства:

<img src="/words/java/aspose-words-document-object-model/document-nodes-relationships.png" alt="document-nodes-relationships" style="width:370px"/>

#### Документ является владельцем узла

Узел всегда принадлежит определенному документу, даже если он был только что создан или удален из дерева, потому что в нем хранятся жизненно важные структуры, такие как стили и списки. **Document** Узел. Например, невозможно иметь **Paragraph** без **Document** Каждый пункт имеет определенный стиль, который определяется во всем мире для документа. Это правило используется при создании любых новых узлов. Добавить новый **Paragraph** непосредственно в сторону DOM Требуется документ, переданный конструктору.

{{% alert color="primary" %}}

The [Node.Document](https://reference.aspose.com/words/java/com.aspose.words/node/#getDocument) Собственность возвращает документ, к которому принадлежит узел.

{{% /alert %}}

При создании нового абзаца с использованием [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/), Строитель всегда имеет **Document** Класс, связанный с ним через [DocumentBuilder.Document](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#Document) собственность.

Следующий пример кода показывает, что при создании любого узла всегда определяется документ, который будет владеть узлом:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-OwnerDocument-.java" >}}

#### Родительский узел

У каждого узла есть родитель, указанный [ParentNode](https://reference.aspose.com/words/java/com.aspose.words/node/#getParentNode) собственность. Узел не имеет родительского узла, то есть **ParentNode** является нулевым в следующих случаях:

- Узел только что был создан и еще не был добавлен к дереву.
- Узел был удален с дерева.
- Это корень **Document** Узел, который всегда имеет нулевой родительский узел.

Вы можете удалить узел от его родителя, позвонив [Remove](https://reference.aspose.com/words/java/com.aspose.words/node/#remove) метод. Следующий пример кода показывает, как получить доступ к родительскому узлу:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-AccessParentNode-.java" >}}

#### Детские узлы

Наиболее эффективный способ доступа к детским узлам [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) осуществляется через [FirstChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#FirstChild) и [LastChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#LastChild) Свойства, возвращающие первый и последний детские узлы соответственно. Если нет детских узлов, эти свойства возвращаются. *null*.

**CompositeNode** Также обеспечивает [ChildNodes](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChildNodes) сбор данных, позволяющий индексировать или перечислять доступ к узлам ребенка. The **ChildNodes** собственность - это живая коллекция узлов, что означает, что всякий раз, когда документ изменяется, например, когда узлы удаляются или добавляются, **ChildNodes** Коллекция обновляется автоматически.

Если у узла нет ребенка, то **ChildNodes** Имущество возвращает пустую коллекцию. Вы можете проверить, является ли **CompositeNode** содержит любые узлы ребенка, использующие [HasChildNodes](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#hasChildNodes) собственность.

Следующий пример кода показывает, как перечислить непосредственные узлы ребенка. `CompositeNode` используя числитель, предоставленный `ChildNodes` коллекция:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-ChildNodes-enumerateChildrenOfACompositeNodeUsingEnumeratorProvidedByChildNodesCollection.java" >}}

Следующий пример кода показывает, как перечислить непосредственные узлы ребенка. `CompositeNode` Использование индексированного доступа:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-ChildNodes-enumerateChildrenOfACompositeNodeUsingIndexedAccess.java" >}}

#### Родственные узлы

Вы можете получить узел, который непосредственно предшествует или следует за конкретным узлом, используя [PreviousSibling](https://reference.aspose.com/words/java/com.aspose.words/node/#getPreviousSibling) и [NextSibling](https://reference.aspose.com/words/java/com.aspose.words/node/#getNextSibling) свойств соответственно. Если узел является последним ребенком своего родителя, то **NextSibling** собственностью является *null*. Если же узел является первым ребенком своего родителя, то **PreviousSibling** собственностью является *null*.

Следующий пример кода показывает, как эффективно посещать все прямые и косвенные дочерние узлы композитного узла:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-SiblingNodes-.java" >}}

### Типовой доступ к детским и родительским узлам

До сих пор мы обсуждали свойства, возвращающие один из базовых типов. **Node** или **CompositeNode**. Но иногда бывают ситуации, когда вам может потребоваться отбросить значения на определенный класс узлов, например: **Run** или **Paragraph**. То есть вы не можете полностью уйти от кастинга при работе с Aspose.Words DOM, который является составным.

Чтобы уменьшить потребность в литье, большинство Aspose.Words Классы предоставляют свойства и коллекции, которые обеспечивают строго типизированный доступ. Существует три основных шаблона типизированного доступа:

- Родительский узел показывает типизированный **FirstXXX** и **LastXXX** свойств. Например, в **Document** иметь [FirstSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getFirstSection) и [LastSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getLastSection) свойств. Точно так же **Table** обладает такими свойствами, как [FirstRow](https://reference.aspose.com/words/java/com.aspose.words/table/#getFirstRow), [LastRow](https://reference.aspose.com/words/java/com.aspose.words/table/#getLastRow), и другие.
- Родительский узел раскрывает типизированную коллекцию детских узлов, таких как: [Document.Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections), [Body.Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/story/#getParagraphs), и другие.
- Детский узел обеспечивает типизированный доступ к своему родителю, например [Run.ParentParagraph](https://reference.aspose.com/words/java/com.aspose.words/inline/#getParentParagraph), [Paragraph.ParentSection](https://reference.aspose.com/words/java/com.aspose.words/paragraph/#getParentSection), и другие.

Типовые свойства - это просто полезные ярлыки, которые иногда обеспечивают более легкий доступ, чем общие свойства, унаследованные от других типов. [Node.ParentNode](https://reference.aspose.com/words/java/com.aspose.words/node/#getParentNode) и [CompositeNode.FirstChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getFirstChild).

Следующий пример кода показывает, как использовать типизированные свойства для доступа к узлам дерева документов:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-TypedAccessToChildrenAndParent-.java" >}}
