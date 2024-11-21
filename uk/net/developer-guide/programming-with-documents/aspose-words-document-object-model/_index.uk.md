---
title: Aspose.Words Document Object Model (Українська)DOM) в C#
second_title: Aspose.Words для .NET
articleTitle: Aspose.Words Document Object Model (DOM)
linktitle: Aspose.Words Document Object Model (DOM)
type: docs
description: "Document Object Model (Українська)DOM) – це незрівнянне представлення документа Word. Читання, маніпуляція та зміна вмісту та форматування документа Word за допомогою C#й"
weight: 10
url: /uk/net/aspose-words-document-object-model/
timestamp: 2024-01-27-14-07-04
---

Про нас Aspose.Words Document Object Model (Українська)DOM) – це незрівнянне представлення документа Word. Про нас Aspose.Words DOM дозволяє програмітично читати, маніпулювати та змінювати зміст та форматування документа Word.

Цей розділ описує основні класи Aspose.Words DOM і їх стосунки. За допомогою Aspose.Words DOM Ви можете отримати тематичний доступ до елементів та форматування документів.

## Створення `Document` Об'єкт Дерево {#create-a-document-objects-tree}

Коли документ прочитаний в документі Aspose.Words <span notrans="<span notrans=" DOM"=""></span>, > після того, як дерево об'єкта побудовано і різні типи елементів вихідних документів, мають власний DOM об'єкти дерева з різними властивостями.

### Створити документ Nodes Tree {#build-document-nodes-tree}

Коли Aspose.Words читати документ Word на пам'ять, він створює об'єкти різних типів, які представляють різні елементи документа. Кожен запуск тексту, пункту, таблиці або розділу є вершиною, і навіть сам документ є вершиною. Aspose.Words визначає клас для кожного типу вузлів документа.

Дерево документа в Aspose.Words слідувати шаблону Composite Design:

- Всі класи вершини в кінцевому підсумку зводять з [Node](https://reference.aspose.com/words/net/aspose.words/node/) клас, який є базовим класом в Aspose.Words Document Object Modelй
- Ноди, які можуть містити інші вузли, наприклад, **Section** або **Paragraph**, від занурення [CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/) клас, який в свою чергу дервами з **Node** клас.

Надана нижче схема показує спадкування між класів вузлів Aspose.Words Document Object Model (Українська)DOM). Назви абстрактних класів в Italics.

<img src="/words/net/aspose-words-document-object-model/aspose-words-dom.png" alt="aspose-words-dom" style="width:700px"/>

{{% alert color="primary" %}}

Про нас Aspose.Words DOM також містить невидимі класи, такі як [Style](https://reference.aspose.com/words/net/aspose.words/style/) або [Font](https://reference.aspose.com/words/net/aspose.words/font/), які використовуються для налаштування зовнішнього вигляду та стилів у документі. Ці класи не показані в цій діаграмі, як не успадкуються від `Node` клас.

{{% /alert %}}

Давайте подивимося на прикладі. Наступне зображення показує Microsoft Word документ з різними типами контенту.

<img src="/words/net/aspose-words-document-object-model/document-example.png" alt="document-example-aspose-words" style="width:700px"/>

При прочитанні вищевказаного документа в Aspose.Words DOM, Дерево об'єктів створюється, як показано на схемі нижче.

<img src="/words/net/aspose-words-document-object-model/document-example-dom.png" alt="dom-aspose-words" style="width:700px"/>

[Document](https://reference.aspose.com/words/net/aspose.words/document/), [Section](https://reference.aspose.com/words/net/aspose.words/section/), [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/), [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/), [Run](https://reference.aspose.com/words/net/aspose.words/run/), і всі інші еліпси на схемі Aspose.Words об'єкти, що представляють елементи документа Word.

### Отримати `Node` Тип {#get-a-node-type}

Хоча [Node](https://reference.aspose.com/words/net/aspose.words/node/) клас достатньо виділити різні вузли з одного, Aspose.Words забезпечує [NodeType](https://reference.aspose.com/words/net/aspose.words/node/nodetype/) занурення для спрощення деяких API завдання, такі як вибір вузлів конкретного типу.

Тип кожного вузла можна отримати за допомогою [NodeType](https://reference.aspose.com/words/net/aspose.words/node/nodetype/) майно. Ця нерухомість повертається **NodeType** значення нумерації. Наприклад, вузол абзацу, представлений **Paragraph** Зворотній зв'язок **NodeType**й**Paragraph**, і настільний вузол, представлений **Table** Зворотній зв'язок **NodeType**й**Table**й

Наступний приклад показує, як отримати тип вузла за допомогою **NodeType** заохочення:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-UseNodeType.cs" >}}

## Навігація дерева документів {#document-tree-navigation}

Aspose.Words являє собою документ як дерево вершин, що дозволяє переміщатися між вузлами. Цей розділ описує, як вивчити і навігувати дерево документа в Aspose.Wordsй

Коли ви відкриєте документ про зразок, представлений раніше, в Document Explorer, дерево вершини з'являється точно так, як він представлений в Aspose.Wordsй

<img src="/words/net/aspose-words-document-object-model/document-in-document-explorer.png" alt="document-in-document-explorer" style="width:680px"/>

{{% alert color="primary" %}}

Ви можете дізнатися проект зразка "Документ Провідника" на сайті [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples/DocumentExplorer)й

{{% /alert %}}

### Документ Node Зв'язки {#document-nodes-relationships}

Вузли в дереві мають зв'язки між ними:

- вузол, що містить інший вузол, є *parent.*
- до Вуз, що міститься в материнській вершині, є *child.* Дитячі вузли одного батька *sibling* вершини.
- У *root* вузол завжди [Document](https://reference.aspose.com/words/net/aspose.words/document/) вузол.

Вузли, які можуть містити інші вузли, що зводять з [CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/) клас, і всі вузли, в кінцевому рахунку, від [Node](https://reference.aspose.com/words/net/aspose.words/node/) клас. Ці два базові класи забезпечують загальні методи та властивості для навігації структури дерева та модифікації.

Наведені нижче діаграми об'єкта УМЛ показує кілька вузлів документа про зразок та їх зв'язків між собою за допомогою батьків, дитини та рухомих властивостей:

<img src="/words/net/aspose-words-document-object-model/document-nodes-relationships.png" alt="document-nodes-relationships-aspose-words" style="width:370px"/>

#### Документ Node Власник

Вузол завжди належить до певного документа, навіть якщо він був просто створений або вилучений з дерева, тому що життєво важливі структури, такі як стилі і списки зберігаються в **Document** вузол. Наприклад, не можна мати **Paragraph** без **Document** Оскільки кожен пункт має присвоєний стиль, який визначається глобально для документа. Це правило використовується при створенні будь-яких нових вузлів. Додати новий **Paragraph** безпосередньо до DOM вимагає об'єкта документа, що надходить до конструктора.

{{% alert color="primary" %}}

Про нас [Node.Document](https://reference.aspose.com/words/net/aspose.words/node/document/) майно повертає документ, до якого належить вершина.

{{% /alert %}}

При створенні нового пункту за допомогою [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/), будівельник завжди має **Document** клас, пов'язаний з ним через [DocumentBuilder.Document](https://reference.aspose.com/words/net/aspose.words/documentbuilder/document/) майно.

Приклад коду показує, що при створенні будь-якого вузла документ, який буде володіти вершиною, завжди визначений:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-OwnerDocument.cs" >}}

#### Парент Node

Кожна вершина має батьківщину, вказану [ParentNode](https://reference.aspose.com/words/net/aspose.words/node/parentnode/) майно. вузол не має материнського вузла, тобто **ParentNode** нуль, в наступних випадках:

- до Вузол був створений і ще не додано до дерева.
- до Вуз було видалено з дерева.
- до Це корінь **Document** вузол, який завжди має нульовий материнський вузол.

Ви можете видалити вузол з свого батька, викликаючи [Remove](https://reference.aspose.com/words/net/aspose.words/node/remove/) метод. Приклад коду показує, як отримати доступ до материнської вершини:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-GetParentNode.cs" >}}

#### Дитячі Ноди

Найефективніший спосіб доступу дитячих вузлів [CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/) через [FirstChild](https://reference.aspose.com/words/net/aspose.words/compositenode/firstchild/) і [LastChild](https://reference.aspose.com/words/net/aspose.words/compositenode/lastchild/) властивості, які повертають перші і останні дочірні вузли, відповідно. Якщо відсутні дочірні вузли, ці властивості повертаються *null*й

**CompositeNode** також надає [GetChildNodes](https://reference.aspose.com/words/net/aspose.words/compositenode/getchildnodes/) метод дозволяє індексувати або генерувати доступ до вузлів дитини. Про нас **ChildNodes** майно є живою колекцією вузлів, що означає, що коли документ змінюється, такі як при видаленні вузлів або додані, **ChildNodes** автоматично оновлюється.

Якщо вузол не має дитини, то **ChildNodes** майно повертає порожній збір. Ви можете перевірити, чи є **CompositeNode** містить будь-які дочірні вузли з використанням [HasChildNodes](https://reference.aspose.com/words/net/aspose.words/compositenode/haschildnodes/) майно.

Приклад коду показує, як об'єднати безпосередні дочірні вершини дитини `CompositeNode` за допомогою анумератора, що надається за рахунок `ChildNodes` Колекція:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-EnumerateChildNodes.cs" >}}

Приклад коду показує, як об'єднати безпосередні дочірні вершини дитини `CompositeNode` за допомогою індексованого доступу:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-IndexChildNodes.cs" >}}

#### Сіблінг Ноди

Ви можете отримати вершину, який безпосередньо передує або слідувати конкретному вузла за допомогою вузла [PreviousSibling](https://reference.aspose.com/words/net/aspose.words/node/previoussibling/) і [NextSibling](https://reference.aspose.com/words/net/aspose.words/node/nextsibling/) властивості, відповідно. Якщо вершина остання дитина батька, то **NextSibling** Готель *null*й Неперевершено, якщо вершина є першою дитиною свого батька, **PreviousSibling** Готель *null*й

Приклад коду показує, як ефективно відвідувати всі прямі та непрямі дочірні вершини композитного вузла:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-RecurseAllNodes.cs" >}}

### Виданий доступ до дитини та батьківських Нод {#typed-access-to-child-and-parent-nodes}

На даний момент ми обговорювали властивості, які повертаються один з типів бази – **Node** або **CompositeNode**й Але іноді виникають ситуації, де потрібно відлити значення до певного класу вершини, такі як **Run** або **Paragraph**й Це, ви не можете повністю відмовитися від лиття під час роботи з Aspose.Words DOM, який композитний.

Щоб зменшити потребу у лиття, більшість Aspose.Words класи забезпечують властивості і колекції, які забезпечують високий доступ. Є три основні візерунки типу:

- Визначається материнська вершина **FirstXXX** і **LastXXX** властивості. Наприклад, **Document** має [FirstSection](https://reference.aspose.com/words/net/aspose.words/document/firstsection/) і [LastSection](https://reference.aspose.com/words/net/aspose.words/document/lastsection/) властивості. Аналогічно, **Table** має властивості, такі як [FirstRow](https://reference.aspose.com/words/net/aspose.words.tables/table/firstrow/), [LastRow](https://reference.aspose.com/words/net/aspose.words.tables/table/lastrow/), та інші.
- Паризька вершина виводить типову колекцію дочірніх вузлів, таких як [Document.Sections](https://reference.aspose.com/words/net/aspose.words/document/sections/), [Body.Paragraphs](https://reference.aspose.com/words/net/aspose.words/story/paragraphs/), та інші.
- Дитина вершина забезпечує доступ до свого батька, таких як [Run.ParentParagraph](https://reference.aspose.com/words/net/aspose.words/inline/parentparagraph/), [Paragraph.ParentSection](https://reference.aspose.com/words/net/aspose.words/paragraph/parentsection/), та інші.

Вимірювані властивості є просто корисними ярликами, які іноді забезпечують легкий доступ, ніж загальні властивості, спадані від [Node.ParentNode](https://reference.aspose.com/words/net/aspose.words/node/parentnode/) і [CompositeNode.FirstChild](https://reference.aspose.com/words/net/aspose.words/compositenode/firstchild/)й

Приклад коду показує, як використовувати типовані властивості до вузлів доступу до дерева документа:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-TypedAccess.cs" >}}
