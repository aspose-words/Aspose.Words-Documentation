---
title: Aspose.Words об'єктна модель документа (DOM) в C++
second_title: Aspose.Words для C++
articleTitle: Aspose.Words об'єктна модель документа (DOM)
linktitle: Aspose.Words об'єктна модель документа (DOM)
type: docs
description: "Об'єктна модель документа (DOM) - це представлення документа Word в пам'яті. Зчитуйте, маніпулюйте та змінюйте вміст та форматування документа Word за допомогою C++."
weight: 10
url: /uk/cpp/aspose-words-document-object-model/
timestamp: 2024-01-27-14-07-04
---

Об'єктна модель документа Aspose.Words (DOM) являє собою представлення документа Word в пам'яті. Об'єктна модель документа Aspose.Words DOM дозволяє програмно зчитувати вміст і форматування документа Word, маніпулювати ними і змінювати їх.

У цьому розділі описуються основні класи Aspose.Words DOM та їх взаємозв'язки. Використовуючи класи Aspose.Words DOM, ви можете отримати програмний доступ до елементів документа та форматування.

## Створити дерево об'єктів документа {#create-a-document-objects-tree}

Коли документ зчитується в Aspose.Words DOM, то будується дерево об'єктів, і різні типи елементів вихідного документа мають свої власні об'єкти дерева DOM з різними властивостями.

### Побудова дерева вузлів документа {#build-document-nodes-tree}

Коли Aspose.Words зчитує документ Word в пам'ять, він створює об'єкти різних типів, які представляють різні елементи документа. Кожен фрагмент тексту, абзац, таблиця або розділ є вузлом, і навіть сам документ є вузлом. Aspose.Words визначає клас для кожного типу вузла документа.

Дерево документа в Aspose.Words відповідає шаблону складеного проектування:

- Всі класи вузлів в кінцевому рахунку є похідними від класу [Node](https://reference.aspose.com/words/cpp/aspose.words/node/), який є базовим класом в об'єктній моделі документа Aspose.Words.
- Вузли, які можуть містити інші вузли, наприклад, **Section** або **Paragraph**, є похідними від класу [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/), який, у свою чергу, є похідним від класу **Node**.

На наведеній нижче діаграмі показано успадкування між вузловими класами об'єктної моделі документа Aspose.Words (DOM). Назви абстрактних класів виділені курсивом.

<img src="aspose-words-dom.png" alt="aspose-words-dom-aspose-words-cpp" style="width:700px"/>

{{% alert color="primary" %}}

Aspose.Words DOM також містить класи, не пов'язані з вузлами, такі як [Style](https://reference.aspose.com/words/cpp/aspose.words/style/) або [Font](https://reference.aspose.com/words/cpp/aspose.words/font/), які використовуються для налаштування зовнішнього вигляду та стилів у документі. Ці класи не показані на цій діаграмі, оскільки вони не успадковані від класу `Node`.

{{% /alert %}}

Давайте розглянемо приклад. На наступному малюнку показано документ Microsoft Word з різними типами вмісту.

<img src="document-example.png" alt="document-example-aspose-words-cpp" style="width:700px"/>

При читанні наведеного вище документа в Aspose.Words DOM створюється дерево об'єктів, як показано на схемі нижче.

<img src="document-example-dom.png" alt="document-example-dom-aspose-words-cpp" style="width:700px"/>

[Document](https://reference.aspose.com/words/cpp/aspose.words/document/), [Section](https://reference.aspose.com/words/cpp/aspose.words/section/), [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/), [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape), [Run](https://reference.aspose.com/words/cpp/aspose.words/run/), а всі інші еліпси на діаграмі є об'єктами Aspose.Words, що представляють елементи документа Word.

### Отримуємо `Node` Тип {#get-a-node-type}

Хоча класу [Node](https://reference.aspose.com/words/cpp/aspose.words/node/) достатньо, щоб відрізняти різні вузли один від одного, Aspose.Words надає перерахування [NodeType](https://reference.aspose.com/words/cpp/aspose.words/nodetype/) для спрощення деяких задач API, таких як вибір вузлів певного типу.

Тип кожного вузла можна визначити за допомогою властивості [NodeType](https://reference.aspose.com/words/cpp/aspose.words/node/get_nodetype/). Ця властивість повертає значення перерахування **NodeType**. Наприклад, вузол абзацу, представлений класом **Paragraph**, повертає значення **NodeType**.**Paragraph**, а вузол таблиці, представлений класом **Table**, повертає значення **NodeType**.**Table**.

Наступний приклад показує, як отримати тип вузла за допомогою перерахування **NodeType**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-UseNodeType.cpp" >}}

## Навігація по дереву документів {#document-tree-navigation}

Aspose.Words представляє документ у вигляді дерева вузлів, яке дозволяє переміщатися між вузлами. У цьому розділі описано, як дослідити дерево документів і переміщатися по ньому в Aspose.Words.

Коли ви відкриваєте зразок документа, представлений раніше, у провіднику документів, дерево вузлів відображається точно так, як воно представлено в Aspose.Words.

<img src="document-in-document-explorer.png" alt="document-in-document-explorer-aspose-words-cpp" style="width:680px"/>

### Зв'язки вузлів документа {#document-nodes-relationships}

Вузли в дереві мають взаємозв'язки між собою:

- Вузол, що містить інший вузол, є *parent.*
- Вузол, що міститься в батьківському вузлі, є *child.* дочірніми вузлами того ж батьківського вузла є *sibling* вузлів.
- Вузол *root* завжди є вузлом [Document](https://reference.aspose.com/words/cpp/aspose.words/document/).

Вузли, які можуть містити інші вузли, є похідними від класу [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode), а всі вузли, в кінцевому рахунку, є похідними від класу [Node](https://reference.aspose.com/words/cpp/aspose.words/node/). Ці два базові класи забезпечують загальні методи та властивості для навігації та модифікації деревоподібної структури.

Наступна діаграма об'єктів UML показує кілька вузлів зразка документа та їх зв'язки між собою за допомогою батьківських, дочірніх та споріднених властивостей:

<img src="document-nodes-relationships.png" alt="document-nodes-relationships-aspose-words-cpp" style="width:370px"/>

#### Документ є власником вузла

Вузол завжди належить до певного документа, навіть якщо він був щойно створений або видалений з дерева, оскільки важливі структури всього документа, такі як стилі та списки, зберігаються у вузлі **Document**. Наприклад, неможливо використовувати **Paragraph** без **Document**, оскільки кожному абзацу присвоєно стиль, який визначено глобально для документа. Це правило використовується при створенні будь-яких нових вузлів. Для додавання нового **Paragraph** безпосередньо до DOM потрібен об'єкт document, переданий конструктору.

{{% alert color="primary" %}}

Властивість [Node.Document](https://reference.aspose.com/words/cpp/aspose.words/node/get_document/) повертає документ, до якого належить вузол.

{{% /alert %}}

При створенні нового абзацу за допомогою [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) конструктор завжди має клас **Document**, пов'язаний з ним через властивість [DocumentBuilder.Document](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_document/).

У наступному прикладі коду показано, що при створенні будь-якого вузла завжди визначається документ, якому буде належати цей вузол:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-OwnerDocument.cpp" >}}

#### Батьківський вузол

Кожен вузол має батьківський вузол, вказаний за допомогою властивості [ParentNode](https://reference.aspose.com/words/cpp/aspose.words/node/get_parentnode/). Вузол не має батьківського вузла, тобто значення **ParentNode** дорівнює null у наступних випадках:

- Вузол щойно створений і ще не доданий до дерева.
- Вузол був видалений з дерева.
- Це кореневий вузол **Document**, який завжди має нульовий батьківський вузол.

Ви можете видалити вузол з батьківського, викликавши метод [Remove](https://reference.aspose.com/words/cpp/aspose.words/node/remove/).Наступний приклад коду показує, як отримати доступ до батьківського вузла:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-GetParentNode.cpp" >}}

#### Дочірні вузли

Найефективніший спосіб отримати доступ до дочірніх вузлів [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/) - це використання властивостей [FirstChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_firstchild/) та [LastChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_lastchild/), які повертають перший та останній дочірні вузли відповідно. Якщо немає дочірніх вузлів, ці властивості повертають значення *null*.

**CompositeNode**

Якщо вузол не має дочірніх вузлів, то властивість **ChildNodes** повертає порожню колекцію. Ви можете перевірити, чи містить **CompositeNode** будь-які дочірні вузли, використовуючи властивість [HasChildNodes](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_haschildnodes/).

Наступний приклад коду показує, як перерахувати безпосередні дочірні вузли `CompositeNode`, використовуючи перелічувач, наданий колекцією `ChildNodes`:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-EnumerateChildNodes.cpp" >}}

Наступний приклад коду показує, як перерахувати безпосередні дочірні вузли `CompositeNode` за допомогою індексованого доступу:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-IndexChildNodes.cpp" >}}

#### Споріднені вузли

Ви можете отримати вузол, який безпосередньо передує певному вузлу або слідує за ним, використовуючи властивості [PreviousSibling](https://reference.aspose.com/words/cpp/aspose.words/node/get_previoussibling/) та [NextSibling](https://reference.aspose.com/words/cpp/aspose.words/node/get_nextsibling/) відповідно. Якщо вузол є останнім дочірнім по відношенню до свого батьківського вузла, то властивість **NextSibling** дорівнює *null*. І навпаки, якщо вузол є першим дочірнім по відношенню до свого батьківського елементу, то властивість **PreviousSibling** дорівнює *null*.

Наступний приклад коду показує, як ефективно відвідувати всі прямі та непрямі дочірні вузли складеного вузла:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-RecurseAllNodes.cpp" >}}

### Типізований доступ до дочірніх і батьківських вузлів

До цього часу ми обговорювали властивості, які повертають один із базових типів – **Node** або **CompositeNode**. Але іноді виникають ситуації, коли може знадобитися привести значення до певного класу вузлів, наприклад **Run** або **Paragraph**. Тобто, ви не можете повністю відмовитися від приведення при роботі з Aspose.Words DOM, який є складовим.

Щоб зменшити потребу в приведенні у відповідність, більшість класів Aspose.Words надають властивості та колекції, які забезпечують суворо набраний доступ. Існує три основні шаблони типізованого доступу:

- Батьківський вузол надає набрані властивості **FirstXXX** та **LastXXX**. Наприклад, у **Document** є властивості [FirstSection](https://reference.aspose.com/words/cpp/aspose.words/document/get_firstsection/) і [LastSection](https://reference.aspose.com/words/cpp/aspose.words/document/get_lastsection/). Аналогічно, у **Table** є такі властивості, як [FirstRow](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_firstrow/), [LastRow](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_lastrow/) та інші.
- Батьківський вузол надає набрану колекцію дочірніх вузлів, таких як [Document.Sections](https://reference.aspose.com/words/cpp/aspose.words/document/get_sections/), [Body.Paragraphs](https://reference.aspose.com/words/cpp/aspose.words/story/get_paragraphs/) та інші.
- Дочірній вузол надає набраний доступ до свого батьківського вузла, наприклад [Run.ParentParagraph](https://reference.aspose.com/words/cpp/aspose.words/inline/get_parentparagraph/), [Paragraph.ParentSection](https://reference.aspose.com/words/cpp/aspose.words/paragraph/get_parentsection/) та інші.

Набрані властивості-це просто корисні ярлики, які іноді забезпечують легший доступ, ніж загальні властивості, успадковані від [Node.ParentNode](https://reference.aspose.com/words/cpp/aspose.words/node/get_parentnode/) та [CompositeNode.FirstChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_firstchild/).

Наступний приклад коду показує, як використовувати набрані властивості для доступу до вузлів дерева документів:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-TypedAccess.cpp" >}}
