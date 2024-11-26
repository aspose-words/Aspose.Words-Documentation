---
title: Вкажіть параметри навантаження в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Вказати параметри навантаження
linktitle: Вказати параметри навантаження
description: "Більш точно контролювати процес завантаження Pythonй"
type: docs
weight: 10
url: /uk/python-net/specify-load-options/
timestamp: 2024-01-27-14-07-04
---

При завантаженні документа ви можете встановити додаткові властивості. Aspose.Words Ви з [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/) клас, який дозволяє більш точно контролювати процес завантаження. Деякі формати навантаження мають відповідний клас, який зберігає параметри навантаження для цього формату навантаження, наприклад, є [PdfLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/) для завантаження у формат PDF або [TxtLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/) для завантаження до TXT. У статті наведено приклади роботи з опціями роботи [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/) клас.

## Комплекти Microsoft Word Версія для зміни

Різні варіанти Microsoft Word додаток може відображати документи по-різному. Наприклад, є відома проблема з документами OOXML, такими як DOCX або DOTВиготовлений за допомогою WPS Office. У такому випадку можна відхилити основні елементи документу або можуть тлумачити різні причини, що викликаються Microsoft Word 2019 рік показати такий документ по-іншому Microsoft Word 2010.

За замовчуванням Aspose.Words відкриті документи Microsoft Word Правила 2019 Якщо необхідно зробити завантаження документів, як це буде відбуватися в одному з попередніх Microsoft Word версії додатків, ви повинні явно вказати потрібну версію за допомогою [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/) майно майна [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/) клас.

Приклад коду показує, як встановити Microsoft Word версія з опціями завантаження:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-SetMSWordVersion.py" >}}

## Настроювання мовних переваг для зміни Зовнішній вигляд

Деталі відображення документа в Microsoft Word залежать не тільки від версії програми і [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/) значення майна, але також на налаштуваннях мови. Microsoft Word може показувати документи по-різному залежно від діалогових налаштувань "Офісні мови", які можна знайти в розділі "Файл → Варіанти → Лангуж". За допомогою цього діалогу користувач може вибрати, наприклад, основну мову, доказування мов, відображення мов і так далі. Aspose.Words забезпечує [language_preferences](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/language_preferences/) властивість як еквівалент цього діалогу. Якщо Aspose.Words вихід відрізняється від Microsoft Word вихід, встановити відповідне значення для [EditingLanguage](https://reference.aspose.com/words/python-net/aspose.words.loading/editinglanguage/) – це може покращити вихідний документ.

Приклад наступного коду показує, як встановити японську мову як [EditingLanguage](https://reference.aspose.com/words/python-net/aspose.words.loading/editinglanguage/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-AddJapaneseAsEditinglanguages.py" >}}

## Використовуйте TempFolder, щоб уникнути помилок

Aspose.Words підтримує надзвичайно великі документи, які мають тисячі сторінок, пов’язаних з багатим змістом. Навантаження таких документів може знадобитися багато оперативної пам'яті. У процесі завантаження Aspose.Words потребує ще більше пам'яті для проведення тимчасових структур, які використовуються для оформлення документа.

Якщо у вас є проблема з виключенням пам'яті при завантаженні документа, спробуйте використовувати [temp_folder](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/temp_folder/) майно. У цьому випадку Aspose.Words зберігати дані в тимчасових файлах замість пам'яті, і це може допомогти уникнути такого виключення.

Приклад наступного коду показує, як встановити [temp_folder](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/temp_folder/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-UseTempFolder.py" >}}

## Встановити конвертацію

Найсучасніші формати документів зберігають їх вміст у Unicode і не вимагають особливої обробки. З іншого боку, є ще багато документів, які використовують деякі попередні кодування, а іноді або пропускають кодування інформації або навіть не підтримують кодування інформації за природою. Aspose.Words намагається автоматично виявити відповідне кодування за замовчуванням, але в рідкісному випадку можна використовувати кодування з одного виявленого алгоритмом розпізнавання кодування. У цьому випадку використовуйте [encoding](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/encoding/) майно, щоб отримати або встановити кодування.

Приклад коду показує, як встановити кодування для перенадання автоматично вибраного кодування:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-LoadWithEncoding.py" >}}

## Зашифровані документи

Ви можете завантажити Документи Word зашифровані паролем. Для цього скористайтеся спеціальним конструктором перевантаження, який приймає [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/) об'єкт. Цей об'єкт містить [password](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/password/) властивість, яка визначає рядок пароля.

Приклад наступного коду показує, як завантажити документ, зашифрований паролем:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-OpenEncryptedDocument.py" >}}

Якщо ви не знаєте заздалегідь, чи зашифровано файл, ви можете використовувати файл [FileFormatUtil](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/) клас, який надає корисні методи для роботи з форматами файлів, такі як виявлення формату файлу або перетворення розширень файлів в / з конвертації формату файлів. Щоб визначити, чи зашифрований документ і вимагає пароля, щоб відкрити його, використовуйте пароль [is_encrypted](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/is_encrypted/) майно.

Приклад наступного коду показує, як перевірити документ або його зашифровано або не:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-VerifyEncryptedDocument.py" >}}
