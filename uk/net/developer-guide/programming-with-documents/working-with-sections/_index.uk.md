---
title: Робота з секціями в C#
second_title: Aspose.Words для .NET
articleTitle: Робота з секціями
linktitle: Робота з секціями
description: "Розуміння концепції розділу документів та маніпуляцій C#й Вставте розділ в документ C#й Видалити розділ C#й Копіювати розділи між документами."
type: docs
weight: 120
url: /uk/net/working-with-sections/
timestamp: 2024-09-25-11-08-55
---

Іноді ви хочете документ, який не має однакового форматування на всіх сторінках. Наприклад, ви можете змінити формати номерів сторінок, мати різний розмір сторінки та орієнтацію, або мати першу сторінку документа, як сторінка кришки без будь-якого номера. Ви можете досягти цього з секціями.

Секції - це рівні вузли, які контрольні заголовки та піддони, спрямованість, стовпчики, запаси, форматування номерів сторінок та інші.

Aspose.Words дозволяє керувати розділами, розділяти документ на розділи, а також здійснювати форматування змін, які застосовуються тільки в конкретному розділі. Aspose.Words зберігає інформацію про форматування розділів, таких як заголовки та піддони, налаштування сторінок та налаштування стовпців в розділі.

У статті описано, як працювати з розділами та перервами секцій.

## Які розділи та розділи

Зрізи документів представлені [Section](https://reference.aspose.com/words/net/aspose.words/section/) і [SectionCollection](https://reference.aspose.com/words/net/aspose.words/section/collection) класи. Об'єкти секцій є безпосередніми дітьми [Document](https://reference.aspose.com/words/net/aspose.words/document/) Доступ до вузла і можна отримати через [Sections](https://reference.aspose.com/words/net/aspose.words/document//properties/sections) майно. Ви можете керувати цими вузлами, використовуючи деякі методи, такі як [Remove](https://reference.aspose.com/words/net/aspose.words/nodecollection/remove/), [Add](https://reference.aspose.com/words/net/aspose.words/nodecollection/add/), [IndexOf](https://reference.aspose.com/words/net/aspose.words/nodecollection/indexof/), та інші.

Роздільна перерва - це варіант, який розділяє сторінки документів на розділи з налаштованими макетами.

## Види секцій

Aspose.Words дозволяє розбити та форматувати документи за допомогою різних розділів [BreakType](https://reference.aspose.com/words/net/aspose.words/breaktype/) заохочення:

* СекціяБреакКонтинуус
* Ім'я * СекціяБреакНовіКолумн
* РозділБреакНовийПейдж
* РозділБреакЗв'язатися
* СекціяБреакОдддаПадж

Ви також можете використовувати [SectionStart](https://reference.aspose.com/words/net/aspose.words/sectionstart/) оберіть тип перерви, який застосовується тільки для першого розділу, таких як NewColumn, NewPage, вечірок і OddPage.

## Управління секцією

Так як секція є нормальною композитною вершиною, вся маніпуляція вузлів API можна використовувати для маніпуляції секцій: для додавання, видалення та інших операцій на секціях. Детальніше про вузли в статті [Aspose.Words Document Object Model (DOM)](/words/uk/net/aspose-words-document-object-model/)й

З іншого боку, ви також можете використовувати `DocumentBuilder` API працювати з секціями. У цій статті ми зосередимося на такому конкретному шляху роботи з розділами.

## Вставити або видалити перерву секція

Aspose.Words дозволяє вставляти перерву в текст за допомогою [InsertBreak](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertbreak/) метод.

Приклад наступного коду показує, як вставити перерву розділу в документ:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "insert-section-breaks.cs" >}}

Використання [Remove](https://reference.aspose.com/words/net/aspose.words/node/remove/) спосіб видалити перерву розділу. Якщо ви не повинні видалити конкретну перерву розділу і замість видалення вмісту цього розділу, ви можете використовувати [ClearContent](https://reference.aspose.com/words/net/aspose.words/section/clearcontent/) метод.

Приклад коду показує, як видалити перерву секцій:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "remove-section-breaks.cs" >}}

{{% alert color="primary" %}}

Зауважте, що розділ перерву має інформацію про розділ, який йде перед ним, а не розділ, який йде після нього. Таким чином, якщо видалити перерву секція, текст перед вилученим перервом отримає властивості перерву розділу, що перервуться. Це може викликати весь документ, щоб стати краєвидом, або заголовками та піддонами, щоб змінити або повністю зникнути.

{{% /alert %}}

## Перемістити розділ

Якщо ви хочете перемістити розділ з одного положення в інший документ, вам потрібно отримати індекс цього розділу. Aspose.Words дозволяє отримати позицію з розділу [SectionCollection](https://reference.aspose.com/words/net/aspose.words/sectioncollection/) за допомогою використання [Item](https://reference.aspose.com/words/net/aspose.words/sectioncollection//properties/item) майно. Ви можете використовувати [Sections](https://reference.aspose.com/words/net/aspose.words/document/sections/) отримайте всі розділи в документі. Але якщо ви хочете отримати тільки перший розділ, ви можете використовувати [FirstSection](https://reference.aspose.com/words/net/aspose.words/document/firstsection/) майно.

Наприклад, наступний код показує, як отримати доступ до першого розділу і протерти через дітей композитного вузла:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "section-child-nodes.cs" >}}

## Вкажіть розділ Layout

Якщо ви хочете, щоб ваш документ краще виглядати, зробивши творчі макети для різних розділів документів. Якщо ви хочете вказати тип сітки поточного розділу, ви можете вибрати режим макета розділу за допомогою [SectionLayoutMode](https://reference.aspose.com/words/net/aspose.words/sectionlayoutmode/) заохочення:

* Ім'я *
* Сітка
* Лінійка
* SnapToChars

Приклад коду показує, як обмежити кількість рядків, які кожна сторінка може мати:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "line-grid-section-layout-mode.cs" >}}

## Редагування розділу

Коли ви додаєте новий розділ до вашого документа, немає тіла або пункту, який ви можете редагувати. Aspose.Words дозволяє гарантувати, що розділ містить тіло з принаймні одним пунктом, використовуючи [EnsureMinimum](https://reference.aspose.com/words/net/aspose.words/section/ensureminimum/) метод – він автоматично додасть Body (або HeaderFooter) вершину до документа, а потім додайте параметр до нього.

Приклад наступного коду показує, як підготувати новий вузол розділу за допомогою **EnsureMinimum**:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "ensure-minimum.cs" >}}

### Додаток або попередній контент

Якщо ви хочете малювати певну форму або додати текст або зображення на початку/кінець розділу, ви можете використовувати [AppendContent](https://reference.aspose.com/words/net/aspose.words/section/appendcontent/) і [PrependContent](https://reference.aspose.com/words/net/aspose.words/section/prependcontent/) методи [Section](https://reference.aspose.com/words/net/aspose.words/section/) клас.

Приклад коду показує, як застосувати вміст існуючого розділу:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "append-section-content.cs" >}}

### Клон секція

Aspose.Words дозволяє дублювати розділ, створивши повну копію його за допомогою [Clone](https://reference.aspose.com/words/net/aspose.words/section/clone/) метод.

Приклад коду показує, як клонувати перший розділ у вашому документі:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "clone-section.cs" >}}

### Копіювати розділи між документами

У деяких випадках ви можете мати великі документи з багатьма розділами, і ви хочете копіювати вміст розділу з одного документа в інший.

Aspose.Words дозволяє копіювати розділи між документами [ImportNode](https://reference.aspose.com/words/net/aspose.words/nodeimporter/importnode/) метод.

Приклад коду показує, як копіювати розділи між документами:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "copy-section.cs" >}}

### Робота з головуванням секцій та нижньою колонкою

Основні правила відображення заголовка або нижній колонтитул для кожного розділу досить прості:

1,1 км Якщо секція не має власних голів / ботів певного типу, то вона береться з попереднього розділу.
2,2 км Тип заголовка / нижній колонтитула, що відображається на сторінці, здійснюється за допомогою розділу "Different First Page" та "Different Odd & Навіть сторінки" - якщо вони вимкнені, то заголовки розділу ігноруються.

Приклад коду показує, як створити 2 розділи з різними заголовками:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "link-to-previous-header-footer.cs" >}}

Якщо ви хочете видалити текст заголовків і нижніх колонок без видалення [HeaderFooter](https://reference.aspose.com/words/net/aspose.words/headerfooter/) об'єкти у вашому документі можна використовувати [ClearHeadersFooters](https://reference.aspose.com/words/net/aspose.words/section/clearheadersfooters/) метод. Крім того, можна використовувати [DeleteHeaderFooterShapes](https://reference.aspose.com/words/net/aspose.words/section/deleteheaderfootershapes/) спосіб видалити всі форми з заголовків і піддонів у вашому документі.

Приклад коду показує, як очистити вміст всіх заголовків і нижніх колонок в розділі:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "delete-header-footer-content.cs" >}}

Приклад наступного коду, як видалити всі форми з усіх піддонів заголовків в розділі:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "delete-header-footer-shapes.cs" >}}

## Налаштування властивостей сторінок в розділі

Перед тим як друкувати сторінку або документ, який ви можете налаштувати і змінити розмір і макет однієї сторінки або цілого документа. З налаштуванням сторінки ви можете змінити налаштування сторінок документів, таких як поля, орієнтація та розмір для друку різних сторінок або непарних сторінок.

Aspose.Words дозволяє налаштовувати властивості сторінок та розділів за допомогою [PageSetup](https://reference.aspose.com/words/net/aspose.words/pagesetup/) клас.

Приклад коду показує, як встановити такі властивості, як розмір сторінки та спрямованість на поточний розділ:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "page-setup-and-section-formatting.cs" >}}

Приклад коду показує, як змінити властивості сторінок у всіх розділах:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "modify-page-setup-in-all-sections.cs" >}}

## Дивитися ще

* [Логічні рівні імен у документі](/words/net/logical-levels-of-nodes-in-a-document/#document-and-section-logical-level)
* [Документи](/words/uk/net/insert-and-append-documents/)

