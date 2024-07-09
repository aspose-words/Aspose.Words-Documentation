---
title: Aspose.Words Document Object Model (DOM)
second_title: Aspose.Words для Java
articleTitle: Aspose.Words Document Object Model (DOM)
linktitle: Aspose.Words Document Object Model (DOM)
type: docs
description: "Document Object Model (Українська)DOM) – це незрівнянне представлення документа Word. Читання, маніпуляція та зміна вмісту та форматування документа Word за допомогою Javaй"
weight: 10
url: /uk/java/aspose-words-document-object-model/
---

Про нас Aspose.Words Document Object Model (Українська)DOM) – це незрівнянне представлення документа Word. Про нас Aspose.Words DOM дозволяє програмітично читати, маніпулювати та змінювати зміст та форматування документа Word.

Цей розділ описує основні класи Aspose.Words DOM і їх стосунки. За допомогою Aspose.Words DOM Ви можете отримати тематичний доступ до елементів та форматування документів.

## Створити документ Об'єкт Дерево {#create-a-document-objects-tree}

Коли документ прочитаний в документі Aspose.Words <span notrans="<span notrans=" DOM"=""></span>, > після того, як дерево об'єкта побудовано і різні типи елементів документа джерела мають власний DOM об'єкти дерева з різними властивостями.

### Створити документ Nodes Tree {#build-document-nodes-tree}

Коли Aspose.Words читати документ Word на пам'ять, він створює об'єкти різних типів, які представляють різні елементи документа. Кожен запуск тексту, пункту, таблиці або розділу є вершиною, і навіть сам документ є вершиною. Aspose.Words визначає клас для кожного типу вузлів документа.

Дерево документа в Aspose.Words слідувати шаблону Composite Design:

- Усі класи вершини в кінцевому підсумку зводять з [Node](https://reference.aspose.com/words/java/com.aspose.words/node/) клас, який є базовим класом в Aspose.Words Document Object Modelй
- Ноди, які можуть містити інші вершини, наприклад, **Section** або **Paragraph**, від занурення [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) клас, який в свою чергу дервами з **Node** клас.

Надана нижче схема показує спадкування між класів вузлів Aspose.Words Document Object Model (Українська)DOM). Назви абстрактних класів в Italics.

<img src="/words/java/aspose-words-document-object-model/aspose-words-dom.png" alt="aspose-words-dom" style="width:700px"/>

{{% alert color="primary" %}}

Про нас Aspose.Words DOM також містить невидимі класи, такі як [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) або [Font](https://reference.aspose.com/words/java/com.aspose.words/font/), які використовуються для налаштування зовнішнього вигляду та стилів у документі. Ці класи не показані в цій діаграмі, як не успадкуються від `Node` клас.

{{% /alert %}}

Давайте подивимося на прикладі. Наступне зображення показує Microsoft Word документ з різними типами контенту.

<img src="/words/java/aspose-words-document-object-model/document-example.png" alt="document-example" style="width:700px"/>

Під час читання вищевказаного документа в Aspose.Words DOM, Дерево об'єктів створюється, як показано на схемі нижче.

<img src="/words/java/aspose-words-document-object-model/document-example-dom.png" alt="document-example-dom" style="width:700px"/>

[Document](https://reference.aspose.com/words/java/com.aspose.words/document/), [Section](https://reference.aspose.com/words/java/com.aspose.words/section/), [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/), [Run](https://reference.aspose.com/words/java/com.aspose.words/run/), і всі інші еліпси на схемі Aspose.Words об'єкти, що представляють елементи документа Word.

### Отримати `Node` Тип {#get-a-node-type}

Хоча [Node](https://reference.aspose.com/words/java/com.aspose.words/node/) клас досить достатньо виділити різні вузли один від одного, Aspose.Words забезпечує [NodeType](https://reference.aspose.com/words/java/com.aspose.words/nodetype/) занурення для спрощення деяких API завдання, такі як вибір вузлів конкретного типу.

Тип кожного вузла можна отримати за допомогою [NodeType](https://reference.aspose.com/words/java/com.aspose.words/node/#getNodeType) майно. Ця нерухомість повертається **NodeType** значення нумерації. Наприклад, вузол абзацу, представлений **Paragraph** повернення класу **NodeType**й**Paragraph**, і настільний вузол, представлений **Table** повернення класу **NodeType**й**Table**й

Наступний приклад показує, як отримати тип вузла за допомогою **NodeType** заохочення:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-GetNodeType-.java" >}}

## Навігація дерева документів {#document-tree-navigation}

Aspose.Words являє собою документ як дерево вершин, що дозволяє переміщатися між вузлами. Цей розділ описує, як вивчити і навігувати дерево документа в Aspose.Wordsй

Коли ви відкриєте документ про зразок, представлений раніше, в Document Explorer, дерево вершини з'являється точно так, як він представлений в Aspose.Wordsй

<img src="/words/java/aspose-words-document-object-model/document-in-document-explorer.png" alt="document-in-document-explorer" style="width:680px"/>

{{% alert color="primary" %}}

Ви можете дізнатися проект зразка "Документ Провідника" на сайті [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Document_explorer)й

{{% /alert %}}

### Документ Node Зв'язки {#document-nodes-relationships}

Вузли в дереві мають зв'язки між ними:

- вузол, що містить інший вузол, є *parent.*
- до Вуз, що міститься в материнській вершині, є *child.* Дитячі вузли одного батька *sibling* вершини.
- У *root* вузол завжди [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) вузол.

Вузли, які можуть містити інші вузли, що зводять з [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) клас, і всі вузли, в кінцевому рахунку, від [Node](https://reference.aspose.com/words/java/com.aspose.words/node/) клас. Ці два базові класи забезпечують загальні методи та властивості для навігації структури дерева та модифікації.

Наведені нижче діаграми об'єкта УМЛ показує кілька вузлів документа про зразок та їх зв'язків між собою за допомогою батьків, дитини та рухомих властивостей:

<img src="/words/java/aspose-words-document-object-model/document-nodes-relationships.png" alt="document-nodes-relationships" style="width:370px"/>

#### Документ Node Власник

Вуз завжди належить до певного документа, навіть якщо він був просто створений або вилучений з дерева, тому що життєво важливі структури, такі як стилі і списки зберігаються в **Document** вузол. Наприклад, не можна мати **Paragraph** без **Document** Оскільки кожен пункт має призначений стиль, який визначається глобально для документа. Це правило використовується при створенні будь-яких нових вузлів. Додавання нового **Paragraph** безпосередньо до DOM вимагає об'єкта документа, що надходить до конструктора.

{{% alert color="primary" %}}

Про нас [Node.Document](https://reference.aspose.com/words/java/com.aspose.words/node/#getDocument) майно повертає документ, до якого належить вершина.

{{% /alert %}}

При створенні нового пункту за допомогою [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/), конструктор завжди має **Document** клас, пов'язаний з ним через [DocumentBuilder.Document](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#Document) майно.

Приклад коду показує, що при створенні будь-якого вузла документ, який буде володіти вершиною, завжди визначений:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-OwnerDocument-.java" >}}

#### Парент Node

Кожна вершина має батьківщину, вказану [ParentNode](https://reference.aspose.com/words/java/com.aspose.words/node/#getParentNode) майно. вузол не має материнського вузла, тобто **ParentNode** нуль, в наступних випадках:

- до Вузол був створений і ще не додано до дерева.
- до Вуз було видалено з дерева.
- до Це корінь **Document** вузол, який завжди має нульовий материнський вузол.

Ви можете видалити вузол з свого батька, викликаючи [Remove](https://reference.aspose.com/words/java/com.aspose.words/node/#remove) метод. Приклад коду показує, як отримати доступ до материнської вершини:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-AccessParentNode-.java" >}}

#### Дитячі Ноди

Найефективніший спосіб доступу дитячих вузлів [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) через [FirstChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#FirstChild) і [LastChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#LastChild) властивості, які повертають перші і останні дочірні вузли, відповідно. Якщо відсутні дочірні вузли, ці властивості повертаються *null*й

**CompositeNode** також надає [ChildNodes](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChildNodes) збірка дозволяє індексувати або занурювати доступ до дочірньих вузлів. Про нас **ChildNodes** майно є живою колекцією вузлів, що означає, що коли документ змінюється, наприклад, коли вузли видаляються або додаються, **ChildNodes** автоматично оновлюється.

Якщо вузол не має дитини, то **ChildNodes** майно повертає порожній збір. Ви можете перевірити, чи є **CompositeNode** містить будь-які дочірні вершини з використанням [HasChildNodes](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#hasChildNodes) майно.

Приклад коду показує, як об'єднати безпосередні дочірні вершини дитини `CompositeNode` за допомогою анумератора, що надається за рахунок `ChildNodes` Колекція:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-ChildNodes-enumerateChildrenOfACompositeNodeUsingEnumeratorProvidedByChildNodesCollection.java" >}}

Приклад коду показує, як об'єднати безпосередні дочірні вершини дитини `CompositeNode` за допомогою індексованого доступу:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-ChildNodes-enumerateChildrenOfACompositeNodeUsingIndexedAccess.java" >}}

#### Сіблінг Ноди

Ви можете отримати вершину, який безпосередньо передує або слідувати конкретному вершині за допомогою вузла [PreviousSibling](https://reference.aspose.com/words/java/com.aspose.words/node/#getPreviousSibling) і [NextSibling](https://reference.aspose.com/words/java/com.aspose.words/node/#getNextSibling) властивості, відповідно. Якщо вершина остання дитина батька, то **NextSibling** Готель *null*й Неперевершено, якщо вершина є першою дитиною свого батька, **PreviousSibling** Готель *null*й

Приклад коду показує, як ефективно відвідувати всі прямі та непрямі дочірні вершини композитного вузла:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-SiblingNodes-.java" >}}

### Типовий доступ до дитини та батьківських нодів

Поки ми обговорювали властивості, які повертають одну з базових типів – **Node** або **CompositeNode**й Але іноді виникають ситуації, де потрібно відлити значення до певного класу вершини, такі як **Run** або **Paragraph**й Це, ви не можете повністю відмовитися від лиття під час роботи з Aspose.Words DOM, який композитний.

Щоб зменшити потребу у лиття, більшість Aspose.Words Класи забезпечують властивості та колекції, які забезпечують високий доступ. Є три основні візерунки типу:

- Визначається материнська вершина **FirstXXX** і **LastXXX** властивості. Наприклад, **Document** має [FirstSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getFirstSection) і [LastSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getLastSection) властивості. Аналогічно, **Table** має властивості, такі як [FirstRow](https://reference.aspose.com/words/java/com.aspose.words/table/#getFirstRow), [LastRow](https://reference.aspose.com/words/java/com.aspose.words/table/#getLastRow), та інші.
- Паризька вершина виводить типову колекцію дочірніх вузлів, таких як [Document.Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections), [Body.Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/story/#getParagraphs), та інші.
- Дитина вершина забезпечує доступ до свого батька, таких як [Run.ParentParagraph](https://reference.aspose.com/words/java/com.aspose.words/inline/#getParentParagraph), [Paragraph.ParentSection](https://reference.aspose.com/words/java/com.aspose.words/paragraph/#getParentSection), та інші.

Вимірювані властивості є просто корисними ярликами, які іноді забезпечують легкий доступ, ніж загальні властивості, спадкоємні від [Node.ParentNode](https://reference.aspose.com/words/java/com.aspose.words/node/#getParentNode) і [CompositeNode.FirstChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getFirstChild)й

Приклад коду показує, як використовувати типовані властивості для вузлів доступу до дерева документа:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-TypedAccessToChildrenAndParent-.java" >}}
