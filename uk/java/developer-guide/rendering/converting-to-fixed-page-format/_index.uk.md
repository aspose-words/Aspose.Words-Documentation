---
title: Перетворення в формат Фіксованого сторінки в Java
second_title: Aspose.Words для Java
articleTitle: Перетворення у формат Фіксованого сторінки
linktitle: Перетворення у формат Фіксованого сторінки
description: "Aspose.Words для Java Реалізує власний макет сторінки, що дозволяє виробляти всі формати сторінок, такі як PDF, XPS, і різні формати зображень."
type: docs
weight: 10
url: /uk/java/converting-to-fixed-page-format/
timestamp: 2024-01-31-14-23-37
---

Aspose.Words реалізує власний верстка сторінок двигуна. Перед тим, як продемонструвати свої технічні характеристики, варто спочатку обговорити документ на високому рівні. При подумці про документ, користувачі зазвичай уявляють низку паперових листів, що містять слова, зображення, таблиці та діаграми. Документи можуть бути різними типами, такими як текст, таблиці, слайди, малюнки САД, витратні матеріали та, отже, можуть мати істотно різні макети. Більшість додатків дозволяють надсилати документи на принтер; це коли користувач може фактично переглядати кінцевий вигляд документа.

## Відобразити документ у різних додатках

Різні документи, що переглядають або публікуються додатки, дозволяють користувачам відкрити (Adobe Acrobat, XPS Переглядайте, а іноді редагуйте (Adobe InDesign) документи окремих форматів. Ці додатки, як правило, виробляють так звані "фіксовані" документи формату. Цей формат документа описує, де вміст документа розміщений на кожній сторінці. Внутрішня, PDF або XPS Формат містить опис кожної сторінки, а також інструкції з малювання, вказавши макет змісту на сторінці. Це схоже на формати зображень, що описує, де вміст відображається як у растровій або векторній формі.

На відміну від деяких додатків редагування тексту не підтримують перегляд сторінок документа. Наприклад, Microsoft Блокнот підтримує дуже кілька функцій, крім просто відображення, редагування та друку тексту. Важливе спостереження за цими додатками не можуть показувати сторінки документа, а не розповісти користувача, скільки їх буде друкувати, тільки що дозволяє переглядати зміст документа. Документ може бути збережений у звичайному текстовому форматі і може бути відкритий багатьма іншими додатками. Використовуючи додаток, що дозволяє переглядати бінарний вміст довільного файлу, можна побачити, що зберігається в файлі документа – це просто звичайний текст, нічого іншого в ньому немає.

Легко більш складні текстові програми, такі як Microsoft WordPad, зберегти документ у форматі Rich Text (RTF), який підтримує більше функцій форматування, таких як вставка зображень, форматування символів, абзационних запасів і сипки. Однак формат RTF також містить лише зміст документа, що не містить інформації про сторінки.

Microsoft Word є найбільш просунутий текстовий додаток в Windows сьогодні. Формати файлів у форматі DOCX, що описує вміст документа, гнучко і широко, що дозволяє користувачам вказати розмір сторінки, орієнтацію на розділ документа, і, будучи додатком WYSIWYG навіть показати сторінки документів на екрані. Тим не менш, немає інформації про те, як вміст документа відображається на сторінках, доступних у файлі документа. Файл документа лише описує сам контент, а також взаємозв'язок об'єктів документа один до одного, поряд з деякими геометричними обмеженнями. В результаті перед відображенням документа, Microsoft Word ускладнює саму інформацію. Це де знаходиться макет сторінки.

## Що таке макет сторінки

Планування сторінок документа є структурою даних, що описує, де конкретний об'єкт знаходиться на сторінках для всіх об'єктів документа. Крім того, оскільки об'єкти мають властивості, які впливають на їх зовнішній вигляд, такі як розмір шрифту, затінення або ефект малювання, потрібно не тільки знати, де об'єкт є, але і які області (s) сторінки, він займає, і чи буде його застосувати до декількох сторінок, щоб інші об'єкти не перекривають однакову область (s).

Aspose.Words реалізовує функцію макетування сторінок, що дозволяє виробляти всі формати сторінок, такі як PDF, XPS, і різні формати зображень. Без макета сторінок, інформація, що зберігається в файлі фіксованої сторінки, не буде доступна і всі ці формати не будуть підтримуватися.

Відносно між документом і макетом сторінок досить простий. У якому документі описано зміст, відповідна верстка сторінки описує геометрію цього вмісту. Зауважте, що макет сторінки не існує без документа, оскільки не буде контенту для обчислення геометрії, але документ може існувати без макета сторінки. Наприклад, коли документ DOCX перетворюється в документ RTF, він зазвичай непотрібний знати геометрію, оскільки ні формат зберігає його.

## Створення сайту

Створення макета сторінок може бути дорогою процедурою, як з точки зору швидкості, так і пам'яті. Це пов'язано з кількома причинами:

- до Документ може мати велику кількість контенту, що може знадобитися для відображення на тисяч сторінках. Геометрія кожного об'єкта на кожній сторінці буде потрібно описати, споживаючи ресурси пам'яті.
- до Документ може мати багато правил, розміщення обмежень на геометрію. Уважний час обчислень може бути проведений, забезпечення кожного обмеження задоволені
- Деякі функції документів, наприклад, `NUMPAGES` поле, створення рекурсивних залежностей для значень майбутньої нерухомості, які не доступні в момент обчислення. Це призводить до повторюваних обчислень і додає в час обчислення.

Через вищезгадані причини, Aspose.Words створить макет сторінки тільки при необхідності. Типова причина для цього буде запитом на надання документів сторінок або отримання значення поля, що залежить від інформації, що міститься в макеті сторінки. Ви можете експортувати документ у HTML. Незважаючи на те, що HTML не є фіксованим форматом сторінок і він не описує геометрію об'єктів контенту, він все ще підтримує зображення. Такі зображення можуть бути у вигляді форм, створених у Microsoft Word з текстом всередині них. Наприклад, в HTML можна експортувати діаграму з вісь мітками. Aspose.Words потрібно надати зображення, а отже, потрібно знати, де відображати етикетку. Переглянути приклад діаграми нижче:

<img src="/words/java/converting-to-fixed-page-format/converting-to-fixed-page-format-1.png" alt="converting-to-fixed-page-format-aspose-words-" style="width:800px"/>

### Негеометрія Властивості

Крім обробки геометричної інформації, макет сторінки також відповідає за розрахунок кольорів та стилів кордону. У Microsoft Word, текстовий колір може бути вказаний як автоматичний, що означає, що вибір кольору повинен бути заснований на колірі затінення комірки або абзацу, або на основі кольору сторінки, де з'являється текст.

Розгортання сторінок, де з'явиться текст і який зміст буде продано за ним, що дозволяє розрахунок кольору. Є інші специфічні розрахунки, які виконуються макетом сторінки. Наприклад, горизонтальний кордон в таблиці залежить від того, чи триває настільний ряд у стовпці тексту, і чи розбивається він по стовпцях. Якщо рядок продається останнім в стовпці, нижній кордон використовується замість горизонтального.

![non_geometric_properties_aspose-words-java](/words/java/converting-to-fixed-page-format/converting-to-fixed-page-format-2.png)

У Aspose.Words, > Користувач може запитати, чи побудувати нову версію сторінки або оновити існуючу. І з них можна виконувати [UpdatePageLayout](https://reference.aspose.com/words/java/com.aspose.words/document/#updatePageLayout\(\)) метод, що надається методом [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) клас. Якщо макет сторінки не існує, але є необхідність для нього (наприклад, коли документ експортується до фіксованого формату сторінки), Aspose.Words автоматично зателефонуйте цей метод. Однак якщо вже існує макет сторінки, Aspose.Words використовувати наявний, щоб уникнути витрат на ресурси, необхідні для його оновлення. У цьому випадку користувач повинен викликати `UpdatePageLayout` метод, для того, щоб переконатися, що макет сторінки додано до дати з моделлю документа.

### Динамічна структура

Процес створення макета сторінок складається з наступних кроків:

- до *Conversion* – об’ємний зміст моделі документа та підготовка відповідних макетних об’єктів.
- до *Build* – об’єкти розмітки для представлення змісту документа на сторінках.
- до *Reflow* – оновлення розташування об’єктів для задоволення концентрацій геометрії.
- *Проектування макетів об'єктів на фіксовану сторінку презентації та заключення кольорової інформації*.
- *Будівництво та переробка вмісту форми* – покрокова необхідність, якщо документ містить форми з в'язаним вмістом тексту.

Примітка, що макет сторінки є динамічною структурою, яка може бути частково перебудована. Це особливо потрібно, коли неможливо розрахувати значення поля без перебудування структури макета документа. Поле може посилатися на розташування об'єкта на сторінці, а в той же час сама по собі поля також відображається на сторінці, що впливає на розташування посиленого об'єкта. Планування сторінки не може бути побудована в одному поході, оскільки значення поля не можуть бути доступні в момент розміщення на сторінці.

Розглянемо типовий сценарій при `NUMPAGES` поле з'являється в нижній частині першої сторінки в документі. Вартість даного поля – загальна кількість сторінок. Для того, щоб розташувати поле на сторінці, його значення слід знати. Якщо тільки перша сторінка в даний час побудована, то загальна кількість сторінок ще не відомо. У цьому випадку макет сторінки має використовувати значення за замовчуванням і пізніше повернутися до цього поля і змінити його значення відповідно до фактичних обчислень. Однак, зміна значення поля може впливати на інший зміст документа на сторінці і в кінцевому рахунку викликати нову сторінку, яку можна застосувати або існуючу сторінку, що вилучено, таким чином, що комп'ютерне значення застаріле. Ця проблема може бути вирішена, що дозволяє оновити існуючу версію сторінки.

При створенні макета також можна налаштувати [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) властивості, які впливають на вихід документа на сторінки.

## Збереження формату Фіксованої сторінки

Після побудови макета сторінки і розраховується геометрія об'єктів і їх положення на сторінці, документ можна зберегти в фіксованому форматі сторінки, що підтримується Aspose.Wordsй При збереженні документів на стаціонарні формати сторінок можна використовувати параметри рендерингу для всіх цих форматів. Вони дозволяють контролювати:

- до Кількість і кількість сторінок, що містяться в вихідного документі ([PageIndex](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/), [PageCount](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/)й
- Прогресування сторiнки-сторiнки документа (збереження)[PageSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/)й
- Набір символів, які використовуються для відображення чисел ([NumeralFormat](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/)й
- Метафайл-плеєр[MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/)й Докладніше див. інформацію [Рушники Windows Метафайли](/words/uk/java/handling-windows-metafiles/) стаття.
- Якість швидкості рекомпресування зображень JPEG, значення якого може дещо відрізнятися, залежно від обраного формату збереження ([JpegQuality](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/jpegquality/)й
- Оптимізація векторної графіки в Aspose.Words вихід ()[OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/)й
- Параметри графіки при збереженні Tiff, Png, Bmp, Jpeg, Emf формати ([UseAntiAliasing](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getUseAntiAliasing), [UseHighQualityRendering](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/)й
- Збереження документа в сірому масштабі ([ColorMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/)й
- Перемикання між рендерингом форм DrawingML та формами западу ([DmlRenderingMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/)й
- Переключення режимів відображення ефектів DML (DML)[DmlEffectsRenderingMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/)й

Приклад нижче показує, як зберегти документ у форматі JPEG за допомогою програми JPEG `Save` метод і параметри рендерингу:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveDocumentToJPEG-SaveDocumentToJPEG.java" >}}
