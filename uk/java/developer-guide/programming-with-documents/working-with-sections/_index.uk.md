---
title: Робота з секціями в Java
second_title: Aspose.Words для Java
articleTitle: Робота з секціями
linktitle: Робота з секціями
description: "Розуміння концепції розділу документів та маніпуляцій Javaй Вставте розділ в документ Javaй Видалити розділ Javaй Копіювати розділи між документами."
type: docs
weight: 120
url: /uk/java/working-with-sections/
timestamp: 2024-01-31-14-23-37
---

Іноді ви хочете документ, який не має однакового форматування на всіх сторінках. Наприклад, ви можете змінити формати номерів сторінок, мати різний розмір сторінки та орієнтацію, або мати першу сторінку документа, як сторінка кришки без будь-якого номера. Ви можете досягти цього з секціями.

Секції - це рівні вузли, які контрольні заголовки та піддони, спрямованість, стовпчики, поля, форматування номерів сторінок та інші.

Aspose.Words дозволяє керувати розділами, розділяти документ на розділи, а також здійснювати форматування змін, які застосовуються тільки до певного розділу. Aspose.Words зберігає інформацію про форматування розділів, таких як заголовки та піддони, налаштування сторінок та налаштування стовпців в розділі.

У статті описано, як працювати з розділами та перервами секцій.

## Які розділи та розділи

Зрізи документів представлені [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) і [SectionCollection](https://reference.aspose.com/words/java/com.aspose.words/sectioncollection/) класи. Секційні об'єкти негайні діти [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) Доступ до вузла і можна отримати через [Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections) майно. Ви можете керувати такими вузлами, використовуючи деякі методи, такі як [Remove](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#remove-com.aspose.words.Node), [Add](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#add-com.aspose.words.Node), [IndexOf](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#indexOf-com.aspose.words.Node), та інші.

Роздільна перерва - це варіант, який розділяє сторінки документів на розділи з настройованими макетами.

## Види секцій

Aspose.Words дозволяє розбити та форматувати документи за допомогою різних розділів [BreakType](https://reference.aspose.com/words/java/com.aspose.words/breaktype/) заохочення:

- СекціяБреакКонтинуус
- СекціяБреакНовіКолумн
- СекціяБреакNewPage
- СекціяБреакЗвениПадж
- СекціяБреакОдддДП

Ви також можете використовувати [SectionStart](https://reference.aspose.com/words/java/com.aspose.words/sectionstart/) оберіть тип перерви, який застосовується тільки для першого розділу, таких як NewColumn, NewPage, Вечір і OddPage.

## Управління секцією

Так як секція є нормальною композитною вершиною, вся маніпуляція вузлів API можна використовувати для маніпуляції секцій: для додавання, видалення та інших операцій на секціях. Детальніше про вузли в статті [Aspose.Words Document Object Model (DOM)](/words/uk/java/aspose-words-document-object-model/)й

З іншого боку, ви також можете використовувати `DocumentBuilder` API працювати з секціями. У цій статті ми зосередимося на такому конкретному шляху роботи з розділами.

## Вставити або видалити перерву секція

Aspose.Words дозволяє вставляти перерву в текст за допомогою [InsertBreak](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertBreak-int) метод.

Приклад коду показує, як вставити перерву розділу в документ:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "insert-section-breaks.java" >}}

Використання [Remove](https://reference.aspose.com/words/java/com.aspose.words/node/#remove) спосіб видалити перерву розділу. Якщо ви не повинні видалити конкретну перерву розділу і замість видалення вмісту цього розділу, ви можете використовувати [ClearContent](https://reference.aspose.com/words/java/com.aspose.words/section/#clearContent) метод.

Приклад коду показує, як видалити перерву секцій:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "remove-section-breaks.java" >}}

{{% alert color="primary" %}}

Зверніть увагу, що перерву розділу має інформацію про розділ, який йде перед ним, а не розділ, який йде після нього. Таким чином, якщо ви знімаєте перерву розділу, текст перед вилученим перервом отримає властивості перерву розділу, що перервуться. Це може викликати весь документ, щоб стати краєвидом, або заголовками та піддонами, щоб змінити або повністю зникнути.

{{% /alert %}}

## Перемістити розділ

Якщо ви хочете перемістити розділ з одного положення в інший документ, вам потрібно отримати індекс цього розділу. Aspose.Words дозволяє отримати позицію з розділу [SectionCollection](https://reference.aspose.com/words/java/com.aspose.words/sectioncollection/)й Ви можете використовувати [Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections) отримайте всі розділи в документі. Але якщо ви хочете отримати тільки перший розділ, ви можете використовувати [FirstSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getFirstSection) майно.

Наприклад, наступний код показує, як отримати доступ до першого розділу і протерти через дітей композитного вузла:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "section-child-nodes.java" >}}

## Вкажіть розділ Layout

Якщо ви хочете, щоб ваш документ краще виглядати, зробивши творчі макети для різних розділів документів. Якщо ви хочете вказати тип сітки поточного розділу, ви можете вибрати режим макета розділу за допомогою [SectionLayoutMode](https://reference.aspose.com/words/java/com.aspose.words/sectionlayoutmode/) заохочення:

- За замовчуванням
- Сітка
- Лінія
- SnapToChars

Приклад коду показує, як обмежити кількість рядків, які кожна сторінка може мати:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "line-grid-section-layout-mode.java" >}}

## Редагування розділу

Коли ви додаєте новий розділ до вашого документа, немає тіла або пункту, який ви можете редагувати. Aspose.Words дозволяє гарантувати, що розділ містить тіло з принаймні одним абзацом, використовуючи [EnsureMinimum](https://reference.aspose.com/words/java/com.aspose.words/section/#ensureMinimum) метод – він автоматично доповнить вузол Body (або HeaderFooter) до документа, а потім додасть параметр до нього.

Приклад наступного коду показує, як підготувати новий вузол розділу за допомогою **EnsureMinimum**:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "ensure-minimum.java" >}}

### Додаток або попередній контент

Якщо ви хочете малювати певну форму або додати текст або зображення на початку/кінець розділу, ви можете використовувати [AppendContent](https://reference.aspose.com/words/java/com.aspose.words/section/#appendContent-com.aspose.words.Section) і [PrependContent](https://reference.aspose.com/words/java/com.aspose.words/section/#prependContent-com.aspose.words.Section) методи [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) клас.

Приклад коду показує, як застосувати вміст існуючого розділу:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "append-section-content.java" >}}

### Клон секція

Aspose.Words дозволяє дублювати розділ, створивши повну копію його за допомогою [deepClone](https://reference.aspose.com/words/java/com.aspose.words/section/#deepClone) метод.

Приклад коду показує, як клонувати перший розділ у документі:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "clone-section.java" >}}

### Копіювати розділи між документами

У деяких випадках ви можете мати великі документи з багатьма розділами, і ви хочете копіювати вміст розділу з одного документа в інший.

Aspose.Words дозволяє копіювати розділи між документами [ImportNode](https://reference.aspose.com/words/java/com.aspose.words/documentbase/#importNode-com.aspose.words.Node-boolean) метод.

Приклад коду показує, як копіювати розділи між документами:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "copy-section.java" >}}

### Робота з головуванням секцій та нижній колонтитул

Основні правила відображення заголовка або нижній колонтитул для кожного розділу досить прості:

1,1 км Якщо секція не має власних голів / ботів певного типу, то вона береться з попереднього розділу.
2,2 км Тип заголовка / нижній колонтитула, що відображається на сторінці, здійснюється за допомогою розділу "Different First Page" та "Different Odd & Навіть сторінки" - якщо вони вимкнені, то заголовки розділу ігноруються.

Приклад коду показує, як створити 2 розділи з різними заголовками:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "link-to-previous-header-footer.java" >}}

Якщо ви хочете видалити текст заголовків і нижніх колонок без видалення [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) об'єкти в документі, ви можете використовувати [ClearHeadersFooters](https://reference.aspose.com/words/java/com.aspose.words/section/#clearHeadersFooters) метод. Крім того, можна використовувати [DeleteHeaderFooterShapes](https://reference.aspose.com/words/java/com.aspose.words/section/#deleteHeaderFooterShapes) спосіб видалити всі форми з заголовків та піддонів у документі.

Приклад коду показує, як очистити вміст всіх заголовків і нижніх колонок в розділі:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "delete-header-footer-content.java" >}}

Приклад наступного коду, як видалити всі форми з усіх нижніх колонок в розділі:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "delete-header-footer-shapes.java" >}}

## Налаштування властивостей сторінок в розділі

Перед тим як друкувати сторінку або документ, який ви можете налаштувати і змінити розмір і макет однієї сторінки або цілого документа. З налаштуванням сторінки ви можете змінити налаштування сторінок документів, таких як поля, орієнтація та розмір для друку різних сторінок або непарних сторінок.

Aspose.Words дозволяє налаштовувати властивості сторінок та розділів за допомогою [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) клас.

Приклад коду показує, як встановити такі властивості, як розмір сторінки та спрямованість на поточний розділ:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "page-setup-and-section-formatting.java" >}}

Приклад коду показує, як змінити властивості сторінок у всіх розділах:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "modify-page-setup-in-all-sections.java" >}}

## Дивитися ще

- [Логічні рівні імен у документі](/words/uk/java/logical-levels-of-nodes-in-a-document/)
- [Документи](/words/uk/java/insert-and-append-documents/)
