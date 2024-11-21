---
title: Aspose.Words DOM
second_title: Aspose.Words для Python via .NET
articleTitle: Aspose.Words Document Object Model (DOM)
linktitle: Aspose.Words Document Object Model (DOM)
type: docs
description: "Document Object Model (Українська)DOM) – це незрівнянне представлення документа Word. Читання, маніпуляція та зміна вмісту та форматування документа Word за допомогою Pythonй"
weight: 10
url: /uk/python-net/aspose-words-document-object-model/
timestamp: 2024-01-27-14-07-04
---

Про нас Aspose.Words Document Object Model (Українська)DOM) – це незрівнянне представлення документа Word. Про нас Aspose.Words DOM дозволяє програмітично читати, маніпулювати та змінювати зміст та форматування документа Word.

Цей розділ описує основні класи Aspose.Words DOM і їх стосунки. За допомогою Aspose.Words DOM Ви можете отримати тематичний доступ до елементів та форматування документів.

## Створення `Document` Об'єкти Дерево {#create-a-document-objects-tree}

Коли документ прочитаний в документі Aspose.Words <span notrans="<span notrans=" DOM"=""></span>, > після того, як дерево об'єкта побудовано і різні типи елементів вихідних документів, мають власний DOM об'єкти дерева з різними властивостями.

### Створити документ Nodes Tree {#build-document-nodes-tree}

Коли Aspose.Words читати документ Word на пам'ять, він створює об'єкти різних типів, які представляють різні елементи документа. Кожен запуск тексту, пункту, таблиці або розділу є вершиною, і навіть сам документ є вершиною. Aspose.Words визначає клас для кожного типу вузлів документа.

Дерево документа в Aspose.Words слідувати шаблону Composite Design:

- Всі класи вершини в кінцевому підсумку зводять з [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) клас, який є базовим класом в Aspose.Words Document Object Modelй
- Ноди, які можуть містити інші вузли, наприклад, [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) або [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), від занурення [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) клас, який в свою чергу дервами з [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) клас.

Надана нижче схема показує спадкування між класів вузлів Aspose.Words Document Object Model (Українська)DOM). Назви абстрактних класів в Italics.

<img src="/words/python-net/aspose-words-document-object-model/aspose-words-dom.png" alt="aspose-words-dom" style="width:700px"/>

{{% alert color="primary" %}}

Про нас Aspose.Words DOM також містить невидимі класи, такі як [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) або [Font](https://reference.aspose.com/words/python-net/aspose.words/font/), які використовуються для налаштування зовнішнього вигляду та стилів у документі. Ці класи не показані в цій діаграмі, як не успадкуються від [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) клас.

{{% /alert %}}

Давайте подивимося на прикладі. Наступне зображення показує Microsoft Word документ з різними типами контенту.

<img src="/words/python-net/aspose-words-document-object-model/document-example.png" alt="document-example-aspose-words" style="width:700px"/>

При прочитанні вищевказаного документа в Aspose.Words DOM, Дерево об'єктів створюється, як показано на схемі нижче.

<img src="/words/python-net/aspose-words-document-object-model/document-example-dom.png" alt="dom-aspose-words" style="width:700px"/>

[Document](https://reference.aspose.com/words/python-net/aspose.words/document/), [Section](https://reference.aspose.com/words/python-net/aspose.words/section/), [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/), [Run](https://reference.aspose.com/words/python-net/aspose.words/run/), і всі інші еліпси на схемі Aspose.Words об'єкти, що представляють елементи документа Word.

### Отримати `Node` Тип {#get-a-node-type}

Хоча [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) клас достатньо виділити різні вузли з одного, Aspose.Words забезпечує [NodeType](https://reference.aspose.com/words/python-net/aspose.words/nodetype/) занурення для спрощення деяких API завдання, такі як вибір вузлів конкретного типу.

Тип кожного вузла можна отримати за допомогою [Node.node_type](https://reference.aspose.com/words/python-net/aspose.words/node/node_type/) майно. Ця нерухомість повертається [NodeType](https://reference.aspose.com/words/python-net/aspose.words/nodetype/) значення нумерації. Наприклад, вузол абзацу, представлений [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) Зворотній зв'язок [NodeType.PARAGRAPH](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#paragraph), і настільний вузол, представлений [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) Зворотній зв'язок [NodeType.TABLE](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#table)й

Наступний приклад показує, як отримати тип вузла за допомогою [NodeType](https://reference.aspose.com/words/python-net/aspose.words/nodetype/) заохочення:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-UseNodeType.py" >}}

## Навігація дерева документів {#document-tree-navigation}

Aspose.Words являє собою документ як дерево вершин, що дозволяє переміщатися між вузлами. Цей розділ описує, як вивчити і навігувати дерево документа в Aspose.Wordsй

Коли ви відкриєте документ про зразок, представлений раніше, в Document Explorer, дерево вершини з'являється точно так, як він представлений в Aspose.Wordsй

<img src="/words/python-net/aspose-words-document-object-model/document-in-document-explorer.png" alt="document-in-document-explorer" style="width:680px"/>

{{% alert color="primary" %}}

Ви можете дізнатися проект зразка "Документ Провідника" на сайті [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples)й

{{% /alert %}}

### Документ Nodes Відносини {#document-nodes-relationships}

Вузли в дереві мають зв'язки між ними:

- вузол, що містить інший вузол, є *parent.*
- до Вуз, що міститься в материнській вершині, є *child.* Дитячі вузли одного батька *sibling* вершини.
- У *root* вузол завжди [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) вузол.

Вузли, які можуть містити інші вузли, що зводять з [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) клас, і всі вузли, в кінцевому рахунку, від [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) клас. Ці два базові класи забезпечують загальні методи та властивості для навігації структури дерева та модифікації.

Наведені нижче діаграми об'єкта УМЛ показує кілька вузлів документа про зразок та їх зв'язків між собою за допомогою батьків, дитини та рухомих властивостей:

<img src="/words/python-net/aspose-words-document-object-model/document-nodes-relationships.png" alt="document-nodes-relationships-aspose-words" style="width:370px"/>

#### Документ Node Власник

Вузол завжди належить до певного документа, навіть якщо він був просто створений або вилучений з дерева, тому що життєво важливі структури, такі як стилі і списки зберігаються в [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) вузол. Наприклад, не можна мати [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) без [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) Оскільки кожен пункт має присвоєний стиль, який визначається глобально для документа. Це правило використовується при створенні будь-яких нових вузлів. Додати новий [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) безпосередньо до DOM вимагає об'єкта документа, що надходить до конструктора.

{{% alert color="primary" %}}

Про нас [Node.document](https://reference.aspose.com/words/python-net/aspose.words/node/document/) майно повертає документ, до якого належить вершина.

{{% /alert %}}

При створенні нового пункту за допомогою [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/), будівельник завжди має [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) клас, пов'язаний з ним через [DocumentBuilder.document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/document/) майно.

Приклад коду показує, що при створенні будь-якого вузла документ, який буде володіти вершиною, завжди визначений:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-OwnerDocument.py" >}}

#### Парент Node

Кожна вершина має батьківщину, вказану [parent_node](https://reference.aspose.com/words/python-net/aspose.words/node/parent_node/) майно. вузол не має материнського вузла, тобто [parent_node](https://reference.aspose.com/words/python-net/aspose.words/node/parent_node/) є *None*, в наступних випадках:

- до Вузол був створений і ще не додано до дерева.
- до Вуз було видалено з дерева.
- до Це корінь [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) вузол, який завжди має материнську вершину None.

Ви можете видалити вузол з свого батька, викликаючи [Node.remove](https://reference.aspose.com/words/python-net/aspose.words/node/remove/) метод. Приклад коду показує, як отримати доступ до материнської вершини:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-GetParentNode.py" >}}

#### Дитячі Ноди

Найефективніший спосіб доступу дитячих вузлів [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) через [first_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/first_child/) і [last_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/last_child/) властивості, які повертають перші і останні дочірні вузли, відповідно. Якщо відсутні дочірні вузли, ці властивості повертаються *None*й

[CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) також надає [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) збірка дозволяє індексувати або занурювати доступ до дочірніх вузлів. Про нас [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) метод повертає живу колекцію вузлів, що означає, що при зміні документа, такі як при видаленні вузлів або додаванні, **JavaScript licenses API Веб-сайт Go1.13.8** автоматично оновлюється.

Якщо вузол не має дитини, то **JavaScript licenses API Веб-сайт Go1.13.8** метод повертає порожній збір. Ви можете перевірити, чи є [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) містить будь-які дочірні вузли з використанням [has_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/has_child_nodes/) майно.

Приклад коду показує, як об'єднати безпосередні дочірні вершини дитини [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) за допомогою анумератора, що надається за рахунок **JavaScript licenses API Веб-сайт Go1.13.8** Колекція:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-EnumerateChildNodes.py" >}}

#### Сіблінг Ноди

Ви можете отримати вершину, який безпосередньо передує або слідувати конкретному вузла за допомогою вузла [previous_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/previous_sibling/) і [next_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/next_sibling/) властивості, відповідно. Якщо вершина остання дитина батька, то [next_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/next_sibling/) Готель *None*й Неперевершено, якщо вершина є першою дитиною свого батька, [previous_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/previous_sibling/) Готель *None*й

Приклад коду показує, як ефективно відвідувати всі прямі та непрямі дочірні вершини композитного вузла:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-RecurseAllNodes.py" >}}

### Виданий доступ до дитини та батьківських Нод {#typed-access-to-child-and-parent-nodes}

На даний момент ми обговорювали властивості, які повертаються один з типів бази – [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) або [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/)й Але іноді виникають ситуації, де потрібно відлити значення до певного класу вершини, такі як [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) або [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/)й Це, ви не можете повністю відмовитися від лиття під час роботи з Aspose.Words DOM, який композитний.

Щоб зменшити потребу у лиття, більшість Aspose.Words класи забезпечують властивості і колекції, які забезпечують високий доступ. Є три основні візерунки типу:

- Визначається материнська вершина **перший_XXX** і **18 Річна** властивості. Наприклад, [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) має [first_section](https://reference.aspose.com/words/python-net/aspose.words/document/first_section/) і [last_section](https://reference.aspose.com/words/python-net/aspose.words/document/last_section/) властивості. Аналогічно, [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) має властивості, такі як [first_row](https://reference.aspose.com/words/python-net/aspose.words.tables/table/first_row/), [last_row](https://reference.aspose.com/words/python-net/aspose.words.tables/table/last_row/), та інші.
- Паризька вершина виводить типову колекцію дочірніх вузлів, таких як [Document.sections](https://reference.aspose.com/words/python-net/aspose.words/document/sections/), [Body.paragraphs](https://reference.aspose.com/words/python-net/aspose.words/story/paragraphs/), та інші.
- Дитина вершина забезпечує доступ до свого батька, таких як [Run.parent_paragraph](https://reference.aspose.com/words/python-net/aspose.words/inline/parent_paragraph/), [Paragraph.parent_section](https://reference.aspose.com/words/python-net/aspose.words/paragraph/parent_section/), та інші.

Вимірювані властивості є просто корисними ярликами, які іноді забезпечують легкий доступ, ніж загальні властивості, спадані від [Node.parent_node](https://reference.aspose.com/words/python-net/aspose.words/node/parent_node/) і [CompositeNode.first_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/first_child/)й

Приклад коду показує, як використовувати типовані властивості до вузлів доступу до дерева документа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-TypedAccess.py" >}}
