---
title: Вкажіть параметри навантаження в Java
second_title: Aspose.Words для Java
articleTitle: Вкажіть параметри навантаження
linktitle: Вкажіть параметри навантаження
description: "Встановити розширені властивості при завантаженні документа Java отримати більш точний контроль процесу."
type: docs
weight: 10
url: /uk/java/specify-load-options/
timestamp: 2024-01-27-14-07-04
---

При завантаженні документа ви можете встановити додаткові властивості. Aspose.Words Ви з [LoadOptions](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/) клас, що дозволяє більш точно контролювати процес завантаження. Деякі формати навантаження мають відповідний клас, який містить параметри навантаження для цього формату навантаження, наприклад, є [PdfLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfloadoptions/) для завантаження у формат PDF або [TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/) для завантаження до TXT. У статті наведено приклади роботи з опціями роботи **LoadOptions** клас.

## Комплекти Microsoft Word Версія для зміни

Різні варіанти Microsoft Word додаток може відображати документи по-різному. Наприклад, є відома проблема з документами OOXML, такими як DOCX або DOTВиготовлено за допомогою WPS Office. У таких випадках можуть бути відсутні важливі елементи розмітки документів або можуть тлумачитися різні, що викликаються Microsoft Word 2019 рік для відображення такого документа по-іншому Microsoft Word 2010.

За замовчуванням Aspose.Words відкриті документи Microsoft Word Правила 2019 Якщо необхідно зробити завантаження документів, як це буде відбуватися в одному з попередніх Microsoft Word версії додатків, ви повинні явно вказати потрібну версію за допомогою [MswVersion](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getMswVersion) майно майна **LoadOptions** клас.

Приклад коду показує, як встановити Microsoft Word версія з опціями завантаження:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-SetMSWordVersion.java" >}}

## Налаштування мовних переваг для зміни

Деталі відображення документа в Microsoft Word залежать не тільки від версії програми і **MswVersion** значення нерухомості, але також на налаштуваннях мови. Microsoft Word може показувати документи по-різному в залежності від діалогових налаштувань "Офісні мови", які можна знайти в розділі "Файл → Варіанти → Лангуж". За допомогою цього діалогу користувач може вибрати, наприклад, основну мову, доказування мов, відображення мов і так далі. Aspose.Words забезпечує [LanguagePreferences](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getLanguagePreferences) властивість як еквівалент цього діалогу. Якщо Aspose.Words вихід відрізняється від Microsoft Word вихід, встановити відповідне значення для **EditingLanguage** – це може покращити вихідний документ.

Приклад коду показує, як встановити японську мову як **EditingLanguage**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-AddJapaneseAsEditinglanguages.java" >}}

## Зареєструватися WarningCallback проблеми управління Під час завантаження документів

Деякі документи можуть бути пошкоджені, містять недійсні записи, або мають функції, які не підтримуються Aspose.Wordsй Якщо ви хочете дізнатися про проблеми, які виникли при завантаженні документа, Aspose.Words забезпечує [IWarningCallback](https://reference.aspose.com/words/java/com.aspose.words/iwarningcallback/) інтерфейс.

Приклад коду показує виконання **IWarningCallback** інтерфейс:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-DocumentLoadingWarningCallback.java" >}}

Щоб отримати інформацію про всі проблеми протягом усього часу завантаження, використовуйте [WarningCallback](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getWarningCallback) майно.

Приклад коду показує, як використовувати цю властивість:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-LoadOptionsWarningCallback.java" >}}

## Використання ресурсів Зворотній зв'язок для управління навантаженням зовнішніх ресурсів

Документ може містити зовнішні посилання на зображення, розміщені десь на локальному диску, мережі або інтернеті. Aspose.Words автоматично завантажує такі зображення в документ, але є ситуації, коли цей процес потрібно контролювати. Наприклад, щоб визначити, чи дійсно потрібно навантажити певне зображення або, можливо, пропустити його. Про нас [ResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getResourceLoadingCallback) Варіант навантаження дозволяє контролювати це.

Приклад коду показує виконання [IResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/iresourceloadingcallback/) інтерфейс:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-HtmlLinkedResourceLoadingCallback.java" >}}

Приклад коду показує, як використовувати **ResourceLoadingCallback** майно:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-LoadOptionsResourceLoadingCallback.java" >}}

## Використовуйте TempFolder, щоб уникнути помилок

Aspose.Words підтримує надзвичайно великі документи, які мають тисячі сторінок, пов’язаних з багатим змістом. Завантаження таких документів може знадобитися багато оперативної пам'яті. У процесі завантаження Aspose.Words потребує ще більше пам'яті для проведення тимчасових структур, які використовуються для оформлення документа.

Якщо у вас є проблема з виключенням пам'яті при завантаженні документа, спробуйте використовувати [TempFolder](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getTempFolder) майно. У цьому випадку Aspose.Words зберігати дані в тимчасових файлах замість пам'яті, і це може допомогти уникнути такого виключення.

Приклад наступного коду показує, як встановити **TempFolder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-SetTempFolder.java" >}}

## Встановити конвертацію

Найсучасніші формати документів зберігають їх вміст у Unicode і не вимагають особливої обробки. З іншого боку, є ще багато документів, які використовують деякі попередні кодування, а іноді або пропускають кодування інформації або навіть не підтримують кодування інформації за природою. Aspose.Words намагається автоматично виявити відповідне кодування за замовчуванням, але в рідкісному випадку можна використовувати кодування різних з одного виявленого алгоритмом розпізнавання кодування. У цьому випадку використовуйте [Encoding](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getEncoding) майно, щоб отримати або встановити кодування.

Приклад коду показує, як встановити кодування для перенадання автоматично вибраного кодування:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-LoadOptionsEncoding.java" >}}

## Зашифровані документи

Ви можете завантажити Документи Word зашифровані паролем. Для цього скористайтеся спеціальним конструктором перевантаження, який приймає [LoadOptions](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/) об'єкт. Цей об'єкт містить [Password](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getPassword) властивість, яка визначає рядок пароля.

Приклад наступного коду показує, як завантажити документ, зашифрований паролем:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenEncryptedDocument.java" >}}

Якщо ви не знаєте заздалегідь, чи зашифровано файл, ви можете використовувати файл [FileFormatUtil](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/) клас, який надає корисні методи для роботи з форматами файлів, такі як виявлення формату файлу або перетворення розширень файлів в / з конвертації формату файлів. Щоб визначити, чи зашифрований документ і вимагає пароля, щоб відкрити його, використовуйте пароль [IsEncrypted](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#isEncrypted) майно.

Приклад коду показує, як перевірити OpenDocument або він зашифрований або не:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-VerifyODTdocument.java" >}}
