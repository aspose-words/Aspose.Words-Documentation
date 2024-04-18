---
title: Вкажіть параметри навантаження в C#
second_title: Aspose.Words для .NET
articleTitle: Вказати параметри навантаження
linktitle: Вказати параметри навантаження
description: "Більш точно контролювати процес завантаження C#й"
type: docs
weight: 10
url: /uk/net/specify-load-options/
---

При завантаженні документа ви можете встановити додаткові властивості. Aspose.Words Ви з [LoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/) клас, який дозволяє більш точно контролювати процес завантаження. Деякі формати навантаження мають відповідний клас, який зберігає параметри навантаження для цього формату навантаження, наприклад, є [PdfLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/) для завантаження у формат PDF або [TxtLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/) для завантаження до TXT. У статті наведено приклади роботи з опціями роботи **LoadOptions** клас.

## Комплекти Microsoft Word Версія для зміни

Різні варіанти Microsoft Word додаток може відображати документи по-різному. Наприклад, є відома проблема з документами OOXML, такими як DOCX або DOTВиготовлений за допомогою WPS Office. У такому випадку можна відхилити основні елементи документу або можуть тлумачити різні причини, що викликаються Microsoft Word 2019 рік показати такий документ по-іншому Microsoft Word 2010.

За замовчуванням Aspose.Words відкриті документи Microsoft Word Правила 2019 Якщо необхідно зробити завантаження документів, як це буде відбуватися в одному з попередніх Microsoft Word версії додатків, ви повинні явно вказати потрібну версію за допомогою [MswVersion](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/mswversion/) майно майна **LoadOptions** клас.

Приклад коду показує, як встановити Microsoft Word версія з опціями завантаження:

{{< gist "aspose-words-gists" "62b066455ff6af0e8727e3fddae47aee" "load-docx-with-msword-version.cs" >}}

## Настроювання мовних переваг для зміни Зовнішній вигляд

Деталі відображення документа в Microsoft Word залежать не тільки від версії програми і **MswVersion** значення майна, але також на налаштуваннях мови. Microsoft Word може показувати документи по-різному залежно від діалогових налаштувань "Офісні мови", які можна знайти в розділі "Файл → Варіанти → Лангуж". За допомогою цього діалогу користувач може вибрати, наприклад, основну мову, доказування мов, відображення мов і так далі. Aspose.Words забезпечує [LanguagePreferences](https://reference.aspose.com/words/net/aspose.words.loading/languagepreferences/) властивість як еквівалент цього діалогу. Якщо Aspose.Words вихід відрізняється від Microsoft Word вихід, встановити відповідне значення для **EditingLanguage** – це може покращити вихідний документ.

Приклад наступного коду показує, як встановити японську мову як **EditingLanguage**:

{{< gist "aspose-words-gists" "5d49772a182a61eac0dcb9c13c98bc6e" "load-docx-with-japanese-as-editing-language.cs" >}}

## Зареєструватися WarningCallback проблеми управління Під час завантаження документів

Деякі документи можуть бути пошкоджені, містять недійсні записи, або мають функції, які не підтримуються Aspose.Wordsй Якщо ви хочете дізнатися про проблеми, які виникли при завантаженні документа, Aspose.Words забезпечує [IWarningCallback](https://reference.aspose.com/words/net/aspose.words/iwarningcallback/) інтерфейс.

Приклад коду показує виконання **IWarningCallback** інтерфейс:

{{< gist "aspose-words-gists" "98a2dc9a7968c829a68373fa824822c9" "document-loading-warning-callback.cs" >}}

Щоб отримати інформацію про всі проблеми протягом усього часу завантаження, використовуйте [WarningCallback](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/warningcallback/) майно.

Приклад коду показує, як використовувати цю властивість:

{{< gist "aspose-words-gists" "98a2dc9a7968c829a68373fa824822c9" "load-docx-with-warning-callback.cs" >}}

## Використання ресурсів Зворотній зв'язок для управління навантаженням зовнішніх ресурсів

Документ може містити зовнішні посилання на зображення, розташовані десь на локальному диску, мережі або інтернеті. Aspose.Words автоматично завантажує такі зображення в документ, але є ситуації, коли цей процес потрібно контролювати. Наприклад, щоб вирішити, чи дійсно потрібно навантажити певне зображення або, можливо, пропустити його. Про нас [ResourceLoadingCallback](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/resourceloadingcallback/) Варіант навантаження дозволяє контролювати це.

Приклад коду показує виконання [IResourceLoadingCallback](https://reference.aspose.com/words/net/aspose.words.loading/iresourceloadingcallback/) інтерфейс:

{{< gist "aspose-words-gists" "513c134d5e8e8126c385324f2d001a9b" "html-linked-resource-loading-callback.cs" >}}

Приклад наступного коду показує, як використовувати **ResourceLoadingCallback** майно:

{{< gist "aspose-words-gists" "513c134d5e8e8126c385324f2d001a9b" "load-html-with-resource-loading-callback.cs" >}}

## Використовуйте TempFolder, щоб уникнути помилок

Aspose.Words підтримує надзвичайно великі документи, які мають тисячі сторінок, пов’язаних з багатим змістом. Навантаження таких документів може знадобитися багато оперативної пам'яті. У процесі завантаження Aspose.Words потребує ще більше пам'яті для проведення тимчасових структур, які використовуються для оформлення документа.

Якщо у вас є проблема з виключенням пам'яті при завантаженні документа, спробуйте використовувати [TempFolder](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/tempfolder/) майно. У цьому випадку Aspose.Words зберігати дані в тимчасових файлах замість пам'яті, і це може допомогти уникнути такого виключення.

Приклад наступного коду показує, як встановити **TempFolder**:

{{< gist "aspose-words-gists" "80fb635124a6afc0e75b9f17d1eab40c" "load-docx-using-temp-folder.cs" >}}

## Встановити конвертацію

Найсучасніші формати документів зберігають їх вміст у Unicode і не вимагають особливої обробки. З іншого боку, є ще багато документів, які використовують деякі попередні кодування, а іноді або пропускають кодування інформації або навіть не підтримують кодування інформації за природою. Aspose.Words намагається автоматично виявити відповідне кодування за замовчуванням, але в рідкісному випадку можна використовувати кодування з одного виявленого алгоритмом розпізнавання кодування. У цьому випадку використовуйте [Encoding](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/encoding/) майно, щоб отримати або встановити кодування.

Приклад коду показує, як встановити кодування для перенадання автоматично вибраного кодування:

{{< gist "aspose-words-gists" "507181f2c99ba13012c441f1c436d9a7" "load-txt-using-encoding.cs" >}}

## Зашифровані документи

Ви можете завантажити Документи Word зашифровані паролем. Для цього скористайтеся спеціальним конструктором перевантаження, який приймає [LoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/) об'єкт. Цей об'єкт містить [Password](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/password/) властивість, яка визначає рядок пароля.

Приклад наступного коду показує, як завантажити документ, зашифрований паролем:

{{< gist "aspose-words-gists" "5b929b4208996737657de94443bc2852" "load-encrypted-docx.cs" >}}

Якщо ви не знаєте заздалегідь, чи зашифровано файл, ви можете використовувати файл [FileFormatUtil](https://reference.aspose.com/words/net/aspose.words/fileformatutil/) клас, який надає корисні методи для роботи з форматами файлів, такі як виявлення формату файлу або перетворення розширень файлів в / з конвертації формату файлів. Щоб визначити, чи зашифрований документ і вимагає пароля, щоб відкрити його, використовуйте пароль [IsEncrypted](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/isencrypted/) майно.

Приклад коду показує, як перевірити OpenDocument або він зашифрований або не:

{{< gist "aspose-words-gists" "935e41f0f59c7d8bd8a082ccc14f6b84" "verify-odt-is-encrypted.cs" >}}
