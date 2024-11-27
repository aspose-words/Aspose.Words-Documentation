---
title: Aspose.Words модел на обект на документ (DOM) в C++
second_title: Aspose.Words за C++
articleTitle: Aspose.Words Документ Обектен Модел (DOM)
linktitle: Aspose.Words Документ Обектен Модел (DOM)
type: docs
description: "Модел на обект на документ (DOM) е представяне в паметта на Word документ. Четене, манипулиране и промяна на съдържанието и форматирането на Word документ с C++."
weight: 10
url: /bg/cpp/aspose-words-document-object-model/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words обектен модел на документ (DOM) е представяне в паметта на документ Word. Aspose.Words DOM ви позволява програмно да четете, манипулирате и променяте съдържанието и форматирането на Word документ.

Този раздел описва основните класове Aspose.Words DOM и техните връзки. Използвайки класовете Aspose.Words DOM, можете да получите програмен достъп до елементите на документа и форматирането.

## Създаване На Дърво На Обекта На Документа {#create-a-document-objects-tree}

Когато даден документ бъде прочетен в Aspose.Words DOM, тогава се изгражда дърво на обектите и различните типове елементи на документа източник имат свои собствени обекти DOM дърво с различни свойства.

### Изграждане На Документ Възли Дърво {#build-document-nodes-tree}

Когато Aspose.Words прочете документ Word в паметта, той създава обекти от различни типове, които представляват различни елементи на документа. Всяко изпълнение на текст, абзац, таблица или раздел е възел и дори самият документ е възел. Aspose.Words дефинира клас за всеки тип възел на документ.

Документното дърво в Aspose.Words следва модела на композитен дизайн:

- Всички класове възли в крайна сметка произхождат от класа [Node](https://reference.aspose.com/words/cpp/aspose.words/node/), който е базовият клас в обектния модел Aspose.Words на документа.
- Възли, които могат да съдържат други възли, например **Section** или **Paragraph**, произхождат от клас [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/), който на свой ред произлиза от клас **Node**.

Диаграмата по-долу показва наследяването между класовете на възлите на обектния модел на документа Aspose.Words (DOM). Имената на абстрактните класове са в курсив.

<img src="aspose-words-dom.png" alt="aspose-words-dom-aspose-words-cpp" style="width:700px"/>

{{% alert color="primary" %}}

Aspose.Words DOM съдържа също класове, които не са свързани с възли, като например [Style](https://reference.aspose.com/words/cpp/aspose.words/style/) или [Font](https://reference.aspose.com/words/cpp/aspose.words/font/), които се използват за персонализиране на облика и стиловете в документа. Тези класове не са показани в тази диаграма, тъй като не са наследени от `Node` класа.

{{% /alert %}}

Нека разгледаме един пример. Следващото изображение показва Microsoft Word документ с различни типове съдържание.

<img src="document-example.png" alt="document-example-aspose-words-cpp" style="width:700px"/>

При четене на горния документ в Aspose.Words DOM се създава дървото на обектите, както е показано в схемата по-долу.

<img src="document-example-dom.png" alt="document-example-dom-aspose-words-cpp" style="width:700px"/>

[Document](https://reference.aspose.com/words/cpp/aspose.words/document/), [Section](https://reference.aspose.com/words/cpp/aspose.words/section/), [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/), [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape), [Run](https://reference.aspose.com/words/cpp/aspose.words/run/), и всички други елипси на диаграмата са Aspose.Words обекти, които представляват елементи от документа Word.

### Вземи `Node` тип {#get-a-node-type}

Въпреки че класът [Node](https://reference.aspose.com/words/cpp/aspose.words/node/) е достатъчен за разграничаване на различни възли един от друг, Aspose.Words осигурява изброяването [NodeType](https://reference.aspose.com/words/cpp/aspose.words/nodetype/) за опростяване на някои API задачи, като например избиране на възли от определен тип.

Типът на всеки възел може да бъде получен с помощта на свойството [NodeType](https://reference.aspose.com/words/cpp/aspose.words/node/get_nodetype/). Това свойство връща стойност на Изброяване **NodeType**. Например възел на абзац, представен от клас **Paragraph** връща **NodeType**.**Paragraph**, и възел на таблица, представен от клас **Table** връща **NodeType**.**Table**.

Следващият пример показва как да получите тип възел, като използвате изброяването **NodeType**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-UseNodeType.cpp" >}}

## Навигация В Дървото На Документите {#document-tree-navigation}

Aspose.Words представлява документ като дърво на възлите, което ви позволява да се придвижвате между възлите. Този раздел описва как да проучите и навигирате в дървото с документи в Aspose.Words.

Когато отворите примерния документ, представен по-рано в изследователя на документи, дървото на възлите се появява точно както е представено в Aspose.Words.

<img src="document-in-document-explorer.png" alt="document-in-document-explorer-aspose-words-cpp" style="width:680px"/>

### Документ Връзки Възел {#document-nodes-relationships}

Върховете в дървото имат връзки помежду си.:

- Възел, съдържащ друг възел, е *parent.*
- Възелът, съдържащ се в родителския възел, е *child.* Детски възли на същия Родител са *sibling* възли.
- *root* възел винаги е [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) възел.

Възлите, които могат да съдържат други възли, произхождат от класа [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode) и всички възли в крайна сметка произлизат от класа [Node](https://reference.aspose.com/words/cpp/aspose.words/node/). Тези два базови класа осигуряват общи методи и свойства за навигация и модификация на дървовидната структура.

Следващата диаграма UML показва няколко възли от примерния документ и техните връзки помежду си чрез свойствата родител, дете и брат / сестра.:

<img src="document-nodes-relationships.png" alt="document-nodes-relationships-aspose-words-cpp" style="width:370px"/>

#### Документ е собственик на възел

Всеки възел винаги принадлежи към определен документ, дори ако той току-що е бил създаден или премахнат от дървото, тъй като жизненоважни структури, обхващащи целия документ, като стилове и списъци, се съхраняват във възела **Document**. Например не е възможно да има **Paragraph** Без **Document**, защото всеки абзац има присвоен стил, който е дефиниран глобално за документа. Това правило се използва при създаването на нови възли. Добавянето на нов **Paragraph** директно към DOM изисква документ обект, предаден на конструктора.

{{% alert color="primary" %}}

Свойство [Node.Document](https://reference.aspose.com/words/cpp/aspose.words/node/get_document/) връща документа, към който принадлежи възелът.

{{% /alert %}}

Когато създавате нов абзац, използвайки [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/), строителят винаги има клас **Document**, свързан с него чрез свойството [DocumentBuilder.Document](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_document/).

Следващият пример за код показва, че когато създавате който и да е възел, винаги е дефиниран документ, който ще притежава възела.:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-OwnerDocument.cpp" >}}

#### Родителски Възел

Всеки възел има Родител, посочен от свойството [ParentNode](https://reference.aspose.com/words/cpp/aspose.words/node/get_parentnode/). Един възел няма родителски възел, т. е. **ParentNode** е нулев в следните случаи::

- Той е създаден и все още не е добавен към дървото.
- Възелът е премахнат от дървото.
- Това е корен **Document** възел, който винаги има нулев родителски възел.

Можете да премахнете възел от неговия родител, като извикате метода [Remove](https://reference.aspose.com/words/cpp/aspose.words/node/remove/).Следващият пример за код показва как да получите достъп до родителския възел:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-GetParentNode.cpp" >}}

#### Детски Възли

Най-ефективният начин за достъп до детски възли на а [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/) е чрез свойствата [FirstChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_firstchild/) и [LastChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_lastchild/), които връщат съответно първия и последния Детски възли. Ако няма детски възли, тези свойства се връщат *null*.

**CompositeNode**

Ако даден възел няма дете, тогава свойството **ChildNodes** връща празна колекция. Можете да проверите дали **CompositeNode** съдържа детски възли, като използвате свойството [HasChildNodes](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_haschildnodes/).

Следният пример за код показва как да се изброят непосредствени Детски възли на `CompositeNode`, като се използва изброителят, предоставен от колекцията `ChildNodes`:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-EnumerateChildNodes.cpp" >}}

Следният пример за код показва как да се изброят непосредствени Детски възли на `CompositeNode`, като се използва индексиран достъп:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-IndexChildNodes.cpp" >}}

#### Братски Възли

Можете да получите възела, който непосредствено предхожда или следва даден възел, като използвате съответно свойствата [PreviousSibling](https://reference.aspose.com/words/cpp/aspose.words/node/get_previoussibling/) и [NextSibling](https://reference.aspose.com/words/cpp/aspose.words/node/get_nextsibling/). Ако възелът е последното дете на своя родител, тогава имотът **NextSibling** е *null*. И обратно, ако възелът е първото дете на своя родител, свойството **PreviousSibling** е *null*.

Следният пример за код показва как ефективно да посетите всички преки и непреки дъщерни възли на съставен възел:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-RecurseAllNodes.cpp" >}}

### Въведен достъп до детски и родителски възли

Досега разгледахме свойствата, които връщат един от базовите типове – **Node** или **CompositeNode**. Но понякога има ситуации, в които може да се наложи да подавате стойности към определен клас възли, като **Run** или **Paragraph**. Това означава, че не можете напълно да се измъкнете от леенето, когато работите с Aspose.Words DOM, което е съставно.

За да се намали необходимостта от леене, повечето Aspose.Words класове предоставят свойства и колекции, които осигуряват силно типиран достъп. Има три основни модела на типиран достъп:

- Родителският възел излага въведени **FirstXXX** и **LastXXX** свойства. Например **Document** има [FirstSection](https://reference.aspose.com/words/cpp/aspose.words/document/get_firstsection/) и [LastSection](https://reference.aspose.com/words/cpp/aspose.words/document/get_lastsection/) свойства. По същия начин **Table** има свойства като [FirstRow](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_firstrow/), [LastRow](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_lastrow/) и други.
- Родителският възел излага набрана колекция от дъщерни възли, като [Document.Sections](https://reference.aspose.com/words/cpp/aspose.words/document/get_sections/), [Body.Paragraphs](https://reference.aspose.com/words/cpp/aspose.words/story/get_paragraphs/) и други.
- Дъщерен възел предоставя въведен достъп до своя родител, като [Run.ParentParagraph](https://reference.aspose.com/words/cpp/aspose.words/inline/get_parentparagraph/), [Paragraph.ParentSection](https://reference.aspose.com/words/cpp/aspose.words/paragraph/get_parentsection/) и други.

Въведените свойства са просто полезни преки пътища, които понякога осигуряват по-лесен достъп от генеричните свойства, наследени от [Node.ParentNode](https://reference.aspose.com/words/cpp/aspose.words/node/get_parentnode/) и [CompositeNode.FirstChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_firstchild/).

Следният пример за код показва как да използвате въведени свойства за достъп до възли на дървото на документа:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-TypedAccess.cpp" >}}
