---
title: Укажите параметры загрузки в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Укажите параметры загрузки
linktitle: Укажите параметры загрузки
description: "Более точно контролируйте процесс загрузки с помощью Python."
type: docs
weight: 10
url: /ru/python-net/specify-load-options/
---

При загрузке документа вы можете установить некоторые дополнительные свойства. Aspose.Words предоставляет вам класс [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/), который позволяет более точно контролировать процесс загрузки. Некоторые форматы загрузки имеют соответствующий класс, который содержит параметры загрузки для этого формата загрузки, например, существует [PdfLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/) для загрузки в формат PDF или [TxtLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/) для загрузки в TXT. В данной статье приведены примеры работы с опциями класса [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/).

## Установите версию Microsoft Word, чтобы изменить внешний вид

В разных версиях приложения Microsoft Word документы могут отображаться по-разному. Например, существует хорошо известная проблема с документами OOXML, такими как DOCX или DOTX, созданными с помощью WPS Office. В таком случае важные элементы разметки документа могут отсутствовать или могут интерпретироваться по-другому, в результате чего Microsoft Word 2019 отображает такой документ иначе, чем Microsoft Word 2010.

По умолчанию Aspose.Words открывает документы, используя правила Microsoft Word 2019. Если вам нужно, чтобы загрузка документа выглядела так, как это происходило в одной из предыдущих версий приложения Microsoft Word, вам следует явно указать нужную версию, используя свойство [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/) класса [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/).

В следующем примере кода показано, как установить версию Microsoft Word с параметрами загрузки:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-SetMSWordVersion.py" >}}

## Установите языковые настройки, чтобы изменить внешний вид

Детали отображения документа в Microsoft Word зависят не только от версии приложения и значения свойства [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/), но и от языковых настроек. Microsoft Word может отображать документы по-разному в зависимости от настроек диалогового окна "Языковые настройки Office", которые можно найти в "Файл → Параметры → Язык". С помощью этого диалогового окна пользователь может выбрать, например, основной язык, языки проверки, языки отображения и т.д. Aspose.Words предоставляет свойство [language_preferences](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/language_preferences/) как эквивалент этого диалогового окна. Если выходные данные Aspose.Words отличаются от выходных данных Microsoft Word, установите соответствующее значение для [EditingLanguage](https://reference.aspose.com/words/python-net/aspose.words.loading/editinglanguage/) — это может улучшить выходной документ.

В следующем примере кода показано, как установить японский номер [EditingLanguage](https://reference.aspose.com/words/python-net/aspose.words.loading/editinglanguage/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-AddJapaneseAsEditinglanguages.py" >}}

## Используйте TempFolder, чтобы избежать исключения памяти

Aspose.Words поддерживает чрезвычайно большие документы, содержащие тысячи страниц с богатым содержимым. Загрузка таких документов может потребовать много оперативной памяти. В процессе загрузки Aspose.Words требуется еще больше памяти для хранения временных структур, используемых для анализа документа.

Если у вас возникла проблема с исключением "Недостаточно памяти" при загрузке документа, попробуйте использовать свойство [temp_folder](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/temp_folder/). В этом случае Aspose.Words будет хранить некоторые данные во временных файлах вместо памяти, и это может помочь избежать такого исключения.

В следующем примере кода показано, как установить [temp_folder](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/temp_folder/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-UseTempFolder.py" >}}

## Установите кодировку явно

Большинство современных форматов документов хранят свое содержимое в Юникоде и не требуют специальной обработки. С другой стороны, все еще существует множество документов, в которых используется кодировка, предшествующая Unicode, и иногда либо отсутствует информация о кодировке, либо даже не поддерживается информация о кодировке по своей природе. Aspose.Words пытается автоматически определить подходящую кодировку по умолчанию, но в редких случаях вам может потребоваться использовать кодировку, отличную от той, которая определяется нашим алгоритмом распознавания кодировки. В этом случае используйте свойство [encoding](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/encoding/), чтобы получить или установить кодировку.

В следующем примере кода показано, как установить кодировку для переопределения автоматически выбранной кодировки:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-LoadWithEncoding.py" >}}

## Загрузить зашифрованные документы

Вы можете загружать документы Word, зашифрованные паролем. Для этого используйте специальную перегрузку конструктора, принимающую объект [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/). Этот объект содержит свойство [password](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/password/), которое определяет строку пароля.

В следующем примере кода показано, как загрузить документ, зашифрованный паролем:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-OpenEncryptedDocument.py" >}}

Если вы заранее не знаете, зашифрован ли файл, вы можете использовать класс [FileFormatUtil](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/), который предоставляет служебные методы для работы с форматами файлов, такие как определение формата файла или преобразование расширений файлов в перечисления форматов файлов или из них. Чтобы определить, зашифрован ли документ и для его открытия требуется пароль, используйте свойство [is_encrypted](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/is_encrypted/).

В следующем примере кода показано, как проверить, зашифрован ли документ или нет:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-VerifyEncryptedDocument.py" >}}
