---
title: Робота з секціями в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Робота з секціями
linktitle: Робота з секціями
description: "Створення та управління розділами та перервами в документі Pythonй Вставте розділ в документ Pythonй Видалити розділ Pythonй Копіювати розділи між документами."
type: docs
weight: 120
url: /uk/python-net/working-with-sections/
timestamp: 2024-09-25-11-08-55
---

Іноді ви хочете документ, який не має однакового форматування на всіх сторінках. Наприклад, ви можете змінити формати номерів сторінок, мати різний розмір сторінки та орієнтацію, або мати першу сторінку документа, як сторінка кришки без будь-якого номера. Ви можете досягти цього з секціями.

Секції - це рівні вузли, які контрольні заголовки та піддони, спрямованість, стовпчики, запаси, форматування номерів сторінок та інші.

Aspose.Words дозволяє керувати розділами, розділяти документ на розділи, а також здійснювати форматування змін, які застосовуються тільки в конкретному розділі. Aspose.Words зберігає інформацію про форматування розділів, таких як заголовки та піддони, налаштування сторінок та налаштування стовпців в розділі.

У статті описано, як працювати з розділами та перервами секцій.

## Які розділи та розділи

Зрізи документів представлені [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) і [SectionCollection](https://reference.aspose.com/words/python-net/aspose.words/sectioncollection/) класи. Об'єкти секцій є безпосередніми дітьми [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) Доступ до вузла і можна отримати через [Sections](https://reference.aspose.com/words/python-net/aspose.words/document/sections/) майно. Ви можете керувати цими вузлами, використовуючи деякі методи, такі як [Remove](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/remove/#node), [Add](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/add/#node), [IndexOf](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/index_of/#node), та інші.

Роздільна перерва - це варіант, який розділяє сторінки документів на розділи з налаштованими макетами.

## Види секцій

Aspose.Words дозволяє розбити та форматувати документи за допомогою різних розділів [BreakType](https://reference.aspose.com/words/python-net/aspose.words/breaktype/) заохочення:

- СекціяБреакКонтинуус
- СекціяБреакНовіКолумн
- СекціяБреакNewPage
- СекціяБреакЗвениПадж
- секціяБреакОдддаПадж

Ви також можете використовувати [SectionStart](https://reference.aspose.com/words/python-net/aspose.words/sectionstart/) оберіть тип перерви, який застосовується тільки для першого розділу, таких як NewColumn, NewPage, вечірок і OddPage.

## Управління секцією

Так як секція є нормальною композитною вершиною, вся маніпуляція вузлів API можна використовувати для маніпуляції секцій: для додавання, видалення та інших операцій на секціях. Детальніше про вузли в статті [Aspose.Words Document Object Model (DOM)](/words/uk/python-net/aspose-words-document-object-model/)й

З іншого боку, ви також можете використовувати `DocumentBuilder` API працювати з секціями. У цій статті ми зосередимося на такому конкретному шляху роботи з розділами.

## Вставити або видалити перерву секція

Aspose.Words дозволяє вставляти перерву в текст за допомогою [InsertBreak](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_break/#breaktype) метод.

Приклад наступного коду показує, як вставити перерву розділу в документ:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "insert-section-breaks.py" >}}

Використання [Remove](https://reference.aspose.com/words/python-net/aspose.words/node/remove/#default) спосіб видалити перерву розділу. Якщо ви не повинні видалити конкретну перерву розділу і замість видалення вмісту цього розділу, ви можете використовувати [ClearContent](https://reference.aspose.com/words/python-net/aspose.words/section/clear_content/#default) метод.

Приклад коду показує, як видалити перерву секцій:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "remove-section-breaks.py" >}}

{{% alert color="primary" %}}

Зауважте, що розділ перерву має інформацію про розділ, який йде перед ним, а не розділ, який йде після нього. Таким чином, якщо видалити перерву секція, текст перед вилученим перервом отримає властивості перерву розділу, що перервуться. Це може викликати весь документ, щоб стати краєвидом, або заголовками та піддонами, щоб змінити або повністю зникнути.

{{% /alert %}}

## Перемістити розділ

Якщо ви хочете перемістити розділ з одного положення в інший документ, вам потрібно отримати індекс цього розділу. Aspose.Words дозволяє отримати позицію з розділу [SectionCollection](https://reference.aspose.com/words/python-net/aspose.words/sectioncollection/)й Ви можете використовувати [Sections](https://reference.aspose.com/words/python-net/aspose.words/document/sections/) отримайте всі розділи в документі. Але якщо ви хочете отримати тільки перший розділ, ви можете використовувати [FirstSection](https://reference.aspose.com/words/python-net/aspose.words/document/first_section/) майно.

Наприклад, наступний код показує, як отримати доступ до першого розділу і протерти через дітей композитного вузла:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "section-child-nodes.py" >}}

## Вкажіть розділ Layout

Якщо ви хочете, щоб ваш документ краще виглядати, зробивши творчі макети для різних розділів документів. Якщо ви хочете вказати тип сітки поточного розділу, ви можете вибрати режим макета розділу за допомогою [SectionLayoutMode](https://reference.aspose.com/words/python-net/aspose.words/sectionlayoutmode/) заохочення:

- За замовчуванням
- Сітка
- Лінія
- SnapToChars

Приклад коду показує, як обмежити кількість рядків, які кожна сторінка може мати:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "line-grid-section-layout-mode.py" >}}

## Редагування розділу

Коли ви додаєте новий розділ до вашого документа, немає тіла або пункту, який ви можете редагувати. Aspose.Words дозволяє гарантувати, що розділ містить тіло з принаймні одним пунктом, використовуючи [EnsureMinimum](https://reference.aspose.com/words/python-net/aspose.words/section/ensure_minimum/#default) метод – він автоматично додасть Body (або HeaderFooter) вершину до документа, а потім додайте параметр до нього.

Приклад наступного коду показує, як підготувати новий вузол розділу за допомогою **EnsureMinimum**:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "ensure-minimum.py" >}}

### Додаток або попередній контент

Якщо ви хочете малювати певну форму або додати текст або зображення на початку/кінець розділу, ви можете використовувати [AppendContent](https://reference.aspose.com/words/python-net/aspose.words/section/append_content/#section) і [PrependContent](https://reference.aspose.com/words/python-net/aspose.words/section/prepend_content/#section) методи [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) клас.

Приклад коду показує, як застосувати вміст існуючого розділу:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "append-section-content.py" >}}

### Клон секція

Aspose.Words дозволяє дублювати розділ, створивши повну копію його за допомогою [Clone](https://reference.aspose.com/words/python-net/aspose.words/section/clone/#default) метод.

Приклад коду показує, як клонувати перший розділ у вашому документі:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "clone-section.py" >}}

### Копіювати розділи між документами

У деяких випадках ви можете мати великі документи з багатьма розділами, і ви хочете копіювати вміст розділу з одного документа в інший.

Aspose.Words дозволяє копіювати розділи між документами [ImportNode](https://reference.aspose.com/words/python-net/aspose.words/nodeimporter/import_node/#node_bool) метод.

Приклад коду показує, як копіювати розділи між документами:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "copy-section.py" >}}

### Робота з головуванням секцій та нижньою колонкою

Основні правила відображення заголовка або нижній колонтитул для кожного розділу досить прості:

1,1 км Якщо секція не має власних голів / ботів певного типу, то вона береться з попереднього розділу.
2,2 км Тип заголовка / нижній колонтитула, що відображається на сторінці, здійснюється за допомогою розділу "Different First Page" та "Different Odd & Навіть сторінки" - якщо вони вимкнені, то заголовки розділу ігноруються.

Приклад коду показує, як створити 2 розділи з різними заголовками:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "link-to-previous-header-footer.py" >}}

Якщо ви хочете видалити текст заголовків і нижніх колонок без видалення [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/) об'єкти у вашому документі можна використовувати [ClearHeadersFooters](https://reference.aspose.com/words/python-net/aspose.words/section/clear_headers_footers/#default) метод. Крім того, можна використовувати [DeleteHeaderFooterShapes](https://reference.aspose.com/words/python-net/aspose.words/section/delete_header_footer_shapes/#default) спосіб видалити всі форми з заголовків і піддонів у вашому документі.

Приклад коду показує, як очистити вміст всіх заголовків і нижніх колонок в розділі:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "delete-header-footer-content.py" >}}

Приклад наступного коду, як видалити всі форми з усіх піддонів заголовків в розділі:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "delete-header-footer-shapes.py" >}}

## Налаштування властивостей сторінок в розділі

Перед тим як друкувати сторінку або документ, який ви можете налаштувати і змінити розмір і макет однієї сторінки або цілого документа. З налаштуванням сторінки ви можете змінити налаштування сторінок документів, таких як поля, орієнтація та розмір для друку різних сторінок або непарних сторінок.

Aspose.Words дозволяє налаштовувати властивості сторінок та розділів за допомогою [PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/) клас.

Приклад коду показує, як встановити такі властивості, як розмір сторінки та спрямованість на поточний розділ:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "page-setup-and-section-formatting.py" >}}

Приклад коду показує, як змінити властивості сторінок у всіх розділах:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "modify-page-setup-in-all-sections.py" >}}

## Дивитися ще

- [Логічні рівні імен у документі](/words/python-net/logical-levels-of-nodes-in-a-document/#document-and-section-logical-level)
- [Документи](/words/uk/python-net/insert-and-append-documents/)
