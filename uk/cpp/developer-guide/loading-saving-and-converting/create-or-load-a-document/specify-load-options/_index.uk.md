---
title: Вкажіть параметри завантаження в C++
second_title: Aspose.Words для C++
articleTitle: Вкажіть параметри завантаження
linktitle: Вкажіть параметри завантаження
description: "Більш точно контролюйте процес завантаження."
type: docs
weight: 10
url: /uk/cpp/specify-load-options/
timestamp: 2024-01-30-16-22-34
---

При завантаженні документа ви можете задати деякі додаткові властивості. Aspose.Words надає вам клас [LoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/), який дозволяє точніше керувати процесом завантаження. Деякі формати завантаження мають відповідний клас, який містить параметри завантаження для цього формату завантаження, наприклад, є [PdfLoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/pdfloadoptions/) для завантаження у формат PDF або [TxtLoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/txtloadoptions/) для завантаження у формат TXT. У цій статті наведені приклади роботи з параметрами класу **LoadOptions**.

## Встановіть версію Microsoft Word, щоб змінити зовнішній вигляд

Різні версії програми Microsoft Word можуть відображати документи по-різному. Наприклад, існує добре відома проблема з документами OOXML, такими як DOCX або DOTX, створеними за допомогою WPS Office. У такому випадку основні елементи розмітки документа можуть бути відсутніми або інтерпретуватися по-іншому, що призводить до того, що в Microsoft Word 2019 такий документ відображається інакше, ніж в Microsoft Word 2010.

За замовчуванням Aspose.Words відкриває документи за правилами Microsoft Word 2019 року. Якщо вам потрібно, щоб завантаження документів відбувалося так, як це відбувалося б в одній з попередніх версій Програми Microsoft Word, Вам слід явно вказати бажану версію, використовуючи властивість [MswVersion](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_mswversion/) класу **LoadOptions**.

Наступний приклад коду показує, як встановити версію Microsoft Word з параметрами завантаження:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-SetMSWordVersion.cpp" >}}

## Встановіть мовні налаштування, щоб змінити зовнішній вигляд

Особливості відображення документа в Microsoft Word залежать не тільки від версії програми і значення властивості **MswVersion**, але і від мовних налаштувань. Microsoft Word документи можуть відображатися по-різному залежно від налаштувань діалогового вікна "налаштування мови Office", які можна знайти в розділі "Файл → Параметри → Мова". За допомогою цього діалогового вікна користувач може вибрати, наприклад, основну мову, мови автентифікації, мови відображення тощо. Aspose.Words надає властивість [LanguagePreferences](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_languagepreferences/) як еквівалент цього діалогового вікна. Якщо вихідні дані Aspose.Words відрізняються від вихідних даних Microsoft Word, Встановіть відповідне значення для **EditingLanguage** – це може покращити якість вихідного документа.

Наступний приклад коду показує, як встановити японську мову як **EditingLanguage**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-Setuplanguagepreferences-AddJapaneseAsEditinglanguages.cpp" >}}

## Використовуйте WarningCallback для усунення проблем під час завантаження документа

Деякі документи можуть бути пошкоджені, містити недійсні записи або містити функції, які наразі не підтримуються Aspose.Words. Якщо ви хочете дізнатися про проблеми, які виникли під час завантаження документа, Aspose.Words надає інтерфейс [IWarningCallback](https://reference.aspose.com/words/cpp/aspose.words/iwarningcallback/).

Наступний приклад коду показує реалізацію інтерфейсу **IWarningCallback**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-DocumentLoadingWarningCallback.cpp" >}}

Щоб отримати інформацію про всі проблеми під час завантаження, використовуйте властивість `WarningCallback`.

Наступний приклад коду показує, як використовувати цю властивість:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadOptionsWarningCallback.cpp" >}}

## Використовуйте ResourceLoadingCallback для управління завантаженням зовнішніх ресурсів

Документ може містити зовнішні посилання на зображення, розташовані де-небудь на локальному диску, в мережі або в Інтернеті. Aspose.Words такі зображення автоматично завантажуються в документ, але бувають ситуації, коли цей процес потрібно контролювати. Наприклад, щоб вирішити, чи дійсно нам потрібно завантажити певне зображення або, можливо, пропустити його. Параметр завантаження ResourceLoadingCallback дозволяє керувати цим.

Наступний приклад коду показує реалізацію інтерфейсу IResourceLoadingCallback:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-HtmlLinkedResourceLoadingCallback.cpp" >}}

Наступний приклад коду показує, як використовувати властивість **ResourceLoadingCallback**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadOptionsResourceLoadingCallback.cpp" >}}

## Використовуйте TempFolder, щоб уникнути виключення з пам'яті

Aspose.Words підтримує дуже великі документи, що містять тисячі сторінок насиченого вмісту. Завантаження таких документів може зажадати значних витрат RAM. У процесі завантаження Aspose.Words потрібно ще більше пам'яті для зберігання тимчасових структур, що використовуються для синтаксичного аналізу документа.

Якщо під час завантаження документа у вас виникла проблема з виключенням "відсутність пам'яті", спробуйте використати властивість [TempFolder](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_tempfolder/). У цьому випадку Aspose.Words збереже деякі дані у тимчасових файлах замість пам'яті, і це може допомогти уникнути такого винятку.

Наступний приклад коду показує, як встановити **TempFolder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-SetTempFolder.cpp" >}}

## Задайте кодування явно

Більшість сучасних форматів документів зберігають свій вміст в Юнікоді і не вимагають спеціальної обробки. З іншого боку, все ще існує багато документів, які використовують деяке кодування, що передувало Unicode, і іноді або бракує інформації про кодування, або навіть не підтримується за своєю природою. Aspose.Words намагається автоматично визначити відповідне кодування за замовчуванням, але в рідкісних випадках вам може знадобитися використовувати кодування, відмінне від того, яке визначається нашим алгоритмом розпізнавання кодування. У цьому випадку використовуйте властивість [Encoding](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_encoding/), щоб отримати або встановити кодування.

Наступний приклад коду показує, як налаштувати кодування таким чином, щоб воно перевизначало автоматично вибране кодування:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadOptionsEncoding.cpp" >}}

## Завантажуйте зашифровані документи

Ви можете завантажити Word документи, зашифровані паролем. Для цього використовуйте спеціальний конструктор overload, який приймає об'єкт [LoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/). Цей об'єкт містить властивість [Password](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_password/), яка визначає рядок пароля.

Наступний приклад коду показує, як завантажити документ, зашифрований паролем:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-OpenEncryptedDocument-OpenEncryptedDocument.cpp" >}}

Якщо ви заздалегідь не знаєте, чи зашифрований файл, ви можете скористатися класом [FileFormatUtil](https://reference.aspose.com/words/cpp/aspose.words/fileformatutil/), який надає корисні методи для роботи з форматами файлів, наприклад, визначення формату файлу або перетворення розширень файлів у/з переліку форматів файлів. Щоб визначити, чи зашифрований документ і чи потрібен пароль для його відкриття, використовуйте властивість `IsEncrypted`.

Наступний приклад коду показує, як перевірити, зашифрований OpenDocument чи ні:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-VerifyODTdocument.cpp" >}}
