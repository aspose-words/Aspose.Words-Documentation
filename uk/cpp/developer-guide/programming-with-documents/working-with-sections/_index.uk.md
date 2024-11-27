---
title: Робота з розділами в C++
second_title: Aspose.Words для C++
articleTitle: Робота з розділами
linktitle: Робота з розділами
description: "Розуміння концепцій розділів документа і методів роботи з ними за допомогою C++. Вставка розділу в документ C++. Видалення розділу C++. Копіювання розділів між документами."
type: docs
weight: 120
url: /uk/cpp/working-with-sections/
timestamp: 2024-01-31-14-23-37
---

Іноді потрібно, щоб формат документа не був однаковим для всіх сторінок. Наприклад, може знадобитися змінити формат нумерації сторінок, змінити розмір та орієнтацію сторінок або використовувати першу сторінку документа як титульну сторінку без будь-якої нумерації. Цього можна досягти за допомогою розділів.

Розділи-це вузли рівня, які керують верхніми та нижніми колонтитулами, орієнтацією, стовпцями, полями, форматуванням номерів сторінок та іншими параметрами.

Aspose.Words дозволяє керувати розділами, розділяти документ та вносити зміни у форматування, що застосовуються лише до певного розділу. Aspose.Words у розділі "розрив" зберігається інформація про форматування розділів, наприклад, колонтитули, налаштування сторінки та стовпців.

У цій статті пояснюється, як працювати з розділами та розривами розділів.

## Що таке розділ і розрив розділу

Розділи документа представлені класами [Section](https://reference.aspose.com/words/cpp/aspose.words/section/) і [SectionCollection](https://reference.aspose.com/words/cpp/aspose.words/sectioncollection/). Об'єкти розділу є безпосередніми дочірніми об'єктами вузла [Document](https://reference.aspose.com/words/cpp/aspose.words/document/), до яких можна отримати доступ за допомогою властивості [Sections](https://reference.aspose.com/words/cpp/aspose.words/document/get_sections/). Ви можете керувати цими вузлами, використовуючи деякі методи, такі як [Remove](https://reference.aspose.com/words/cpp/aspose.words/nodecollection/remove/), [Add](https://reference.aspose.com/words/cpp/aspose.words/nodecollection/add/), [IndexOf](https://reference.aspose.com/words/cpp/aspose.words/nodecollection/indexof/), та інші.

Розрив розділу-це опція, яка ділить сторінки документа на розділи зі спеціальним макетом.

## Типи розриву розділу

Aspose.Words дозволяє розділяти і форматувати документи, використовуючи різні розбиття на розділи в перерахуванні [BreakType](https://reference.aspose.com/words/cpp/aspose.words/breaktype/):

- SectionBreakContinuous
- SectionBreakNewColumn
- SectionBreakNewPage
- SectionBreakEvenPage
- SectionBreakOddPage

Ви також можете використовувати перерахування [SectionStart](https://reference.aspose.com/words/cpp/aspose.words/sectionstart/), щоб вибрати тип розриву, який застосовується лише для першого розділу, наприклад NewColumn, NewPage, EvenPage, і OddPage.

## Управління розділом

Оскільки розділ є звичайним складеним вузлом, для управління розділами можна використовувати всі маніпуляції з вузлами API: додавати, видаляти і виконувати інші операції з розділами. Детальніше про вузли ви можете прочитати в статті [Aspose.Words Об'єктна модель документа (DOM)](/words/cpp/aspose-words-document-object-model/).

З іншого боку, ви також можете використовувати `DocumentBuilder` API для роботи з розділами. У цій статті ми зосередимося саме на цьому способі роботи з розділами.

## Вставка або видалення розриву розділу

Aspose.Words дозволяє вставити розрив розділу в текст, використовуючи метод [InsertBreak](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertbreak/).

Наступний приклад коду показує, як вставити розрив розділу в документ:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "insert-section-breaks.cpp" >}}

Використовуйте метод [Remove](https://reference.aspose.com/words/cpp/aspose.words/node/remove/), щоб видалити розрив розділу. Якщо вам не потрібно видаляти розрив певного розділу, а замість цього видалити вміст цього розділу, ви можете скористатися методом [ClearContent](https://reference.aspose.com/words/cpp/aspose.words/section/clearcontent/).

Наступний приклад коду показує, як видалити розриви розділів:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "remove-section-breaks.h" >}}

{{% alert color="primary" %}}

Зверніть увагу, що розрив розділу містить інформацію про розділ, який йде перед ним, а не про розділ, який слідує за ним. Таким чином, якщо ви видалите розрив розділу, текст перед видаленим розривом отримає властивості наступного за ним розриву розділу. Це може призвести до того, що весь документ стане альбомним, а колонтитули зміняться або повністю зникнуть.

{{% /alert %}}

## Перемістити розділ

Якщо ви хочете перемістити розділ з однієї позиції в іншу у своєму документі, вам потрібно отримати Індекс цього розділу. Aspose.Words дозволяє отримати позицію розділу з [SectionCollection](https://reference.aspose.com/words/cpp/aspose.words/sectioncollection/). Ви можете використовувати властивість [Sections](https://reference.aspose.com/words/cpp/aspose.words/document/get_sections/), щоб отримати всі розділи у вашому документі. Але якщо ви хочете отримати лише перший розділ, Ви можете використовувати властивість [FirstSection](https://reference.aspose.com/words/cpp/aspose.words/document/get_firstsection/).

Наступний приклад коду показує, як отримати доступ до першого розділу та повторити дочірні елементи складеного вузла:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "section-child-nodes.h" >}}

## Вкажіть розташування розділу

Іноді ви хочете, щоб ваш документ виглядав краще, створюючи креативні макети для різних розділів документа. Якщо ви хочете вказати тип поточної сітки розділів, ви можете вибрати режим макета розділу, використовуючи перерахування [SectionLayoutMode](https://reference.aspose.com/words/cpp/aspose.words/sectionlayoutmode/):

- За замовчуванням
- Сітка
- LineGrid
- SnapToChars

Наступний приклад коду показує, як обмежити кількість рядків, які можуть бути на кожній сторінці:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "line-grid-section-layout-mode.h" >}}

## Редагувати розділ

Коли ви додаєте новий розділ до свого документа, у ньому не буде основної частини чи абзацу, які ви могли б відредагувати. Aspose.Words дозволяє гарантувати, що розділ містить основну частину принаймні з одним абзацом, використовуючи метод [EnsureMinimum](https://reference.aspose.com/words/cpp/aspose.words/section/ensureminimum/) – він автоматично додасть основний вузол (або HeaderFooter) до документа, а потім додасть до нього абзац.

Наступний приклад коду показує, як підготувати новий вузол розділу за допомогою **EnsureMinimum**:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "ensure-minimum.h" >}}

### Додавати або доповнювати вміст

Якщо ви хочете намалювати якусь фігуру або додати текст або зображення на початку/кінці розділу, ви можете використовувати методи [AppendContent](https://reference.aspose.com/words/cpp/aspose.words/section/appendcontent/) та [PrependContent](https://reference.aspose.com/words/cpp/aspose.words/section/prependcontent/) класу [Section](https://reference.aspose.com/words/cpp/aspose.words/section/).

Наступний приклад коду показує, як додати вміст існуючого розділу:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "append-section-content.h" >}}

### Клонувати розділ

Aspose.Words дозволяє дублювати розділ, створюючи його повну копію методом [Clone](https://reference.aspose.com/words/cpp/aspose.words/section/clone/).

Наступний приклад коду показує, як клонувати перший розділ у вашому документі:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "clone-section.h" >}}

### Копіювання розділів між документами

У деяких випадках у вас можуть бути великі документи з великою кількістю розділів, і ви хочете скопіювати вміст розділу з одного документа в інший.

Aspose.Words дозволяє копіювати розділи між документами, використовуючи метод [ImportNode](https://reference.aspose.com/words/cpp/aspose.words/documentbase/importnode/).

Наступний приклад коду показує, як копіювати розділи між документами:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "copy-section.h" >}}

### Робота з верхнім і нижнім колонтитулами розділів

Основні правила відображення верхнього або нижнього колонтитула для кожного розділу досить прості:

1. Якщо в розділі немає власних колонтитулів певного типу, то він береться з попереднього розділу.
2. Тип верхнього та нижнього колонтитулів, що відображаються на сторінці, регулюється налаштуваннями розділу "інша перша сторінка" та "різні парні та непарні сторінки" – якщо вони вимкнені, то власні заголовки розділів ігноруються.

Наступний приклад коду показує, як створити 2 розділи з різними заголовками:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "link-to-previous-header-footer.h" >}}

Якщо ви хочете видалити текст із верхнього та нижнього колонтитулів, не видаляючи [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/) об'єктів у вашому документі, ви можете скористатися методом [ClearHeadersFooters](https://reference.aspose.com/words/cpp/aspose.words/section/clearheadersfooters/). Крім того, ви можете використовувати метод [DeleteHeaderFooterShapes](https://reference.aspose.com/words/cpp/aspose.words/section/deleteheaderfootershapes/), щоб видалити всі фігури з верхнього та нижнього колонтитулів у вашому документі.

Наступний приклад коду показує, як очистити вміст усіх колонтитулів та колонтитулів у розділі:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "delete-header-footer-content.h" >}}

У наступному прикладі коду показано, як видалити всі фігури з усіх верхніх і нижніх колонтитулів розділу:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "delete-header-footer-shapes.h" >}}

## Налаштування властивостей сторінки в розділі

Перед друком сторінки або документа може знадобитися налаштувати розмір і оформлення окремої сторінки або всього документа в цілому. За допомогою налаштування сторінки ви можете змінити параметри сторінок документа, такі як поля, орієнтація та розмір, для друку різних перших сторінок або непарних сторінок.

Aspose.Words дозволяє налаштувати властивості сторінок та розділів за допомогою класу [PageSetup](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/).

Наступний приклад коду показує, як встановити такі властивості, як розмір сторінки та орієнтація для поточного розділу:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "page-setup-and-section-formatting.h" >}}

Наступний приклад коду показує, як змінити властивості сторінки у всіх розділах:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "modify-page-setup-in-all-sections.h" >}}

## Дивіться також

- [Логічні рівні вузлів у документі](/words/cpp/logical-levels-of-nodes-in-a-document/)
- [Вставка та додавання документів](/words/cpp/insert-and-append-documents/)
