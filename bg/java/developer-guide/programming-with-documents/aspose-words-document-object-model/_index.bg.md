---
title: Aspose.Words Document Object Model (DOM)
second_title: Aspose.Words вместо Java
articleTitle: Aspose.Words Document Object Model (DOM)
linktitle: Aspose.Words Document Object Model (DOM)
type: docs
description: "Document Object Model (DOM) е в памет представяне на Word документ. Прочетете, манипулирайте и модифицирайте съдържанието и форматирането на Word документ, използвайки Java."
weight: 10
url: /bg/java/aspose-words-document-object-model/
---

На Aspose.Words Document Object Model (DOM) е в памет представяне на документ Word. На Aspose.Words DOM ви позволява да програмно четене, манипулация и промяна на съдържанието и форматиране на Word документ.

Този раздел описва основните класове на Aspose.Words DOM и техните връзки. С помощта на Aspose.Words DOM класове, можете да получите програмен достъп до документи елементи и форматиране.

## Създаване на документ Дърво на обекта {#create-a-document-objects-tree}

Когато документ се чете в Aspose.Words <span notrans="<span notrans=" DOM"=""></span>,"> тогава е построен обект дърво и различни видове елементи на изходния документ имат своя собствена DOM дървесни предмети с различни свойства.

### Построяване на дърво с възли {#build-document-nodes-tree}

Кога Aspose.Words чете документ на Word в памет, създава обекти от различни типове, които представляват различни елементи на документ. Всеки запис на текст, параграф, таблица или раздел е възел и дори самият документ е възел. Aspose.Words определя клас за всеки тип документен възел.

Дървото на документа в Aspose.Words Следва модела Composite Design:

- Всички класове възел в крайна сметка произтичат от [Node](https://reference.aspose.com/words/java/com.aspose.words/node/) клас, който е базовият клас в Aspose.Words Document Object Model.
- Възли, които могат да съдържат други възли, например, **Section** или **Paragraph**, ен [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) клас, който от своя страна произтича от **Node** Клас.

Диаграмата по-долу показва наследство между класовете възли на Aspose.Words Document Object Model (DOM). Имената на абстрактните класове са в Италия.

<img src="/words/java/aspose-words-document-object-model/aspose-words-dom.png" alt="aspose-words-dom" style="width:700px"/>

{{% alert color="primary" %}}

На Aspose.Words DOM също така съдържа класовете без аноди, като [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) или [Font](https://reference.aspose.com/words/java/com.aspose.words/font/), които се използват за персонализиране на външния вид и стиловете в документ. Тези класове не са показани в тази диаграма, тъй като не са наследени от `Node` Клас.

{{% /alert %}}

Нека да разгледаме един пример. Следното изображение показва a Microsoft Word документ с различни видове съдържание.

<img src="/words/java/aspose-words-document-object-model/document-example.png" alt="document-example" style="width:700px"/>

При четене на горния документ в Aspose.Words DOM, дървото на обектите е създадено, както е показано в схемата по-долу.

<img src="/words/java/aspose-words-document-object-model/document-example-dom.png" alt="document-example-dom" style="width:700px"/>

[Document](https://reference.aspose.com/words/java/com.aspose.words/document/), [Section](https://reference.aspose.com/words/java/com.aspose.words/section/), [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/), [Run](https://reference.aspose.com/words/java/com.aspose.words/run/), и всички други елипси на диаграмата са Aspose.Words обекти, които представляват елементи от документа на Word.

### Вземи `Node` Тип {#get-a-node-type}

Въпреки че [Node](https://reference.aspose.com/words/java/com.aspose.words/node/) Класът е достатъчен, за да различава различни възли един от друг, Aspose.Words осигурява [NodeType](https://reference.aspose.com/words/java/com.aspose.words/nodetype/) изброяване за опростяване на някои API задачи, като например избор на възли от определен тип.

Видът на всеки възел може да бъде получен с помощта на [NodeType](https://reference.aspose.com/words/java/com.aspose.words/node/#getNodeType) собственост. Този имот връща a **NodeType** стойност на изброяването. Например, параграф възел, представен от **Paragraph** Връщане на класа **NodeType**.**Paragraph**, и възел на масата, представен от **Table** Връщане на класа **NodeType**.**Table**.

Следният пример показва как да получите тип възел с помощта на **NodeType** Изброяване:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-GetNodeType-.java" >}}

## Навигация на дървото на документа {#document-tree-navigation}

Aspose.Words представлява документ като дърво на възел, който ви позволява да се движите между възлите. Този раздел описва как да изследвате и навигирате дървото на документа в Aspose.Words.

Когато отворите примерния документ, представен по-рано, в документ Explorer, дървото се появява точно както е представен в Aspose.Words.

<img src="/words/java/aspose-words-document-object-model/document-in-document-explorer.png" alt="document-in-document-explorer" style="width:680px"/>

{{% alert color="primary" %}}

Можете да научите примерния проект "Документ Експлорър" на [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Document_explorer).

{{% /alert %}}

### Връзка на документния възел {#document-nodes-relationships}

Възлите на дървото имат връзки между тях:

- Възел, съдържащ друг възел е *parent.*
- Възелът, който се съдържа в родителския възел е *child.* Детските възли на същия родител са *sibling* Възли.
- На *root* Възелът винаги е [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) Възел.

Възлите, които могат да съдържат други възли произлизат от [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) класа, и всички възли в крайна сметка произтичат от [Node](https://reference.aspose.com/words/java/com.aspose.words/node/) Клас. Тези два основни класа предоставят общи методи и свойства за навигация и модификация на структурата на дървото.

Следната диаграма UML обект показва няколко възли на извадка документ и техните отношения един с друг чрез родител, дете и брат свойства:

<img src="/words/java/aspose-words-document-object-model/document-nodes-relationships.png" alt="document-nodes-relationships" style="width:370px"/>

#### Документът е собственик на възел

Възелът винаги принадлежи към конкретен документ, дори ако е създаден или отстранен от дървото, тъй като важни структури като стилове и списъци се съхраняват в **Document** Възел. Например, не е възможно да имате **Paragraph** без **Document** защото всеки параграф има определен стил, който се определя в световен мащаб за документа. Това правило се използва при създаване на нови възли. Добавяне на нов **Paragraph** директно към DOM изисква документен обект, предаден на конструктора.

{{% alert color="primary" %}}

На [Node.Document](https://reference.aspose.com/words/java/com.aspose.words/node/#getDocument) имот връща документа, към който принадлежи възелът.

{{% /alert %}}

При създаване на нов параграф, използващ [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/), строителят винаги има **Document** клас, свързан с него чрез [DocumentBuilder.Document](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#Document) собственост.

Следният пример за код показва, че при създаването на възел винаги се определя документ, който ще притежава възела:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-OwnerDocument-.java" >}}

#### Родителски възел

Всеки възел има родител, определен от [ParentNode](https://reference.aspose.com/words/java/com.aspose.words/node/#getParentNode) собственост. Възелът няма родителски възел. **ParentNode** е нула, в следните случаи:

- Възелът току-що беше създаден и все още не е добавен към дървото.
- Възелът е изваден от дървото.
- Това е коренът. **Document** Възел, който винаги има нулев родителски възел.

Можете да премахнете възел от неговия родител като се обадите на [Remove](https://reference.aspose.com/words/java/com.aspose.words/node/#remove) метод. Следният пример за код показва как да се влезе в базовия възел:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-AccessParentNode-.java" >}}

#### Детски възли

Най-ефективният начин за достъп до детски възли на [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) е през [FirstChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#FirstChild) както и [LastChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#LastChild) свойства, които връщат съответно първите и последните детски възли. Ако няма детски възли, тези свойства се връщат *null*.

**CompositeNode** и осигурява [ChildNodes](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChildNodes) събиране, позволяващо индексиран или изброен достъп до възлите на детето. На **ChildNodes** собственост е жива колекция от възли, което означава, че когато документът се променя, като например когато възлите се отстраняват или добавят, **ChildNodes** събирането се актуализира автоматично.

Ако възелът няма дете, тогава **ChildNodes** Имотът връща празна колекция. Можете да проверите дали **CompositeNode** съдържа детски възли с помощта на [HasChildNodes](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#hasChildNodes) собственост.

Следният пример с код показва как да се изброят незабавните детски възли на a `CompositeNode` използване на числителя, предоставен от `ChildNodes` събиране:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-ChildNodes-enumerateChildrenOfACompositeNodeUsingEnumeratorProvidedByChildNodesCollection.java" >}}

Следният пример с код показва как да се изброят незабавните детски възли на a `CompositeNode` използване на индексиран достъп:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-ChildNodes-enumerateChildrenOfACompositeNodeUsingIndexedAccess.java" >}}

#### Синоптични възли

Можете да получите възела, който непосредствено предхожда или следва определен възел с помощта на [PreviousSibling](https://reference.aspose.com/words/java/com.aspose.words/node/#getPreviousSibling) както и [NextSibling](https://reference.aspose.com/words/java/com.aspose.words/node/#getNextSibling) свойства, съответно. Ако възелът е последното дете на своя родител, тогава **NextSibling** Име *null*. Обратно, ако възелът е първото дете на неговия родител, **PreviousSibling** Име *null*.

Следният пример за код показва как ефективно да посетите всички преки и непреки детски възли на композитен възел:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-SiblingNodes-.java" >}}

### Напечатан достъп до възли за деца и родители

Досега сме обсъждали свойствата, които връщат един от базовите видове. **Node** или **CompositeNode**. Но понякога има ситуации, в които може да се наложи да поставите стойности на определен клас възел, като **Run** или **Paragraph**. Това означава, че не можеш напълно да се измъкнеш от кастинга, когато работиш с Aspose.Words DOM, което е съставно.

За да се намали необходимостта от кастинг, повечето Aspose.Words класовете осигуряват свойства и колекции, които осигуряват силно типов достъп. Има три основни модела на типиран достъп:

- Родителски възел напечатан **FirstXXX** както и **LastXXX** имоти. Например, **Document** е [FirstSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getFirstSection) както и [LastSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getLastSection) имоти. По същия начин, **Table** има свойства като [FirstRow](https://reference.aspose.com/words/java/com.aspose.words/table/#getFirstRow), [LastRow](https://reference.aspose.com/words/java/com.aspose.words/table/#getLastRow), и други.
- Родителски възел разкрива напечатана колекция от детски възли, като [Document.Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections), [Body.Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/story/#getParagraphs), и други.
- Детски възел осигурява достъп до родителите си, като [Run.ParentParagraph](https://reference.aspose.com/words/java/com.aspose.words/inline/#getParentParagraph), [Paragraph.ParentSection](https://reference.aspose.com/words/java/com.aspose.words/paragraph/#getParentSection), и други.

Типираните свойства са просто полезни преки пътища, които понякога осигуряват по-лесен достъп от общите свойства, наследени от [Node.ParentNode](https://reference.aspose.com/words/java/com.aspose.words/node/#getParentNode) както и [CompositeNode.FirstChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getFirstChild).

Следният пример за код показва как да използвате типирани свойства за достъп до възлите на дървото на документа:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-TypedAccessToChildrenAndParent-.java" >}}
