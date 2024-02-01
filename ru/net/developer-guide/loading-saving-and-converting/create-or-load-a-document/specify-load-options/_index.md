---
title: Укажите параметры загрузки в C#
second_title: Aspose.Words для .NET
articleTitle: Укажите параметры загрузки
linktitle: Укажите параметры загрузки
description: "Более точно контролируйте процесс загрузки с помощью C#."
type: docs
weight: 10
url: /ru/net/specify-load-options/
---

При загрузке документа вы можете установить некоторые дополнительные свойства. Aspose.Words предоставляет вам класс [LoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/), который позволяет более точно контролировать процесс загрузки. Некоторые форматы загрузки имеют соответствующий класс, который содержит параметры загрузки для этого формата загрузки, например, существует [PdfLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/) для загрузки в формат PDF или [TxtLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/) для загрузки в TXT. В данной статье приведены примеры работы с опциями класса **LoadOptions**.

## Установите версию Microsoft Word, чтобы изменить внешний вид

В разных версиях приложения Microsoft Word документы могут отображаться по-разному. Например, существует хорошо известная проблема с документами OOXML, такими как DOCX или DOTX, созданными с помощью WPS Office. В таком случае важные элементы разметки документа могут отсутствовать или могут интерпретироваться по-другому, в результате чего Microsoft Word 2019 отображает такой документ иначе, чем Microsoft Word 2010.

По умолчанию Aspose.Words открывает документы, используя правила Microsoft Word 2019. Если вам нужно, чтобы загрузка документа выглядела так, как это происходило в одной из предыдущих версий приложения Microsoft Word, вам следует явно указать нужную версию, используя свойство [MswVersion](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/mswversion/) класса **LoadOptions**.

В следующем примере кода показано, как установить версию Microsoft Word с параметрами загрузки:

{{< gist "aspose-words-gists" "62b066455ff6af0e8727e3fddae47aee" "load-docx-with-msword-version.cs" >}}

## Установите языковые настройки, чтобы изменить внешний вид

Детали отображения документа в Microsoft Word зависят не только от версии приложения и значения свойства **MswVersion**, но и от языковых настроек. Microsoft Word может отображать документы по-разному в зависимости от настроек диалогового окна "Языковые настройки Office", которые можно найти в "Файл → Параметры → Язык". С помощью этого диалогового окна пользователь может выбрать, например, основной язык, языки проверки, языки отображения и т.д. Aspose.Words предоставляет свойство [LanguagePreferences](https://reference.aspose.com/words/net/aspose.words.loading/languagepreferences/) как эквивалент этого диалогового окна. Если выходные данные Aspose.Words отличаются от выходных данных Microsoft Word, установите соответствующее значение для **EditingLanguage** — это может улучшить выходной документ.

В следующем примере кода показано, как установить японский язык как **EditingLanguage**:

{{< gist "aspose-words-gists" "5d49772a182a61eac0dcb9c13c98bc6e" "load-docx-with-japanese-as-editing-language.cs" >}}

## Используйте WarningCallback для устранения проблем при загрузке документа

Некоторые документы могут быть повреждены, содержать недопустимые записи или иметь функции, которые в настоящее время не поддерживаются Aspose.Words. Если вы хотите узнать о проблемах, возникших при загрузке документа, Aspose.Words предоставляет интерфейс [IWarningCallback](https://reference.aspose.com/words/net/aspose.words/iwarningcallback/).

В следующем примере кода показана реализация интерфейса **IWarningCallback**:

{{< gist "aspose-words-gists" "98a2dc9a7968c829a68373fa824822c9" "document-loading-warning-callback.cs" >}}

Чтобы получить информацию обо всех проблемах на протяжении всего времени загрузки, используйте свойство [WarningCallback](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/warningcallback/).

В следующем примере кода показано, как использовать это свойство:

{{< gist "aspose-words-gists" "98a2dc9a7968c829a68373fa824822c9" "load-docx-with-warning-callback.cs" >}}

## Используйте ResourceLoadingCallback для управления загрузкой внешних ресурсов

Документ может содержать внешние ссылки на изображения, расположенные где-то на локальном диске, в сети или в Интернете. Aspose.Words автоматически загружает такие изображения в документ, но бывают ситуации, когда этот процесс необходимо контролировать. Например, чтобы решить, действительно ли нам нужно загружать определенное изображение или, возможно, пропустить его. Опция загрузки [ResourceLoadingCallback](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/resourceloadingcallback/) позволяет вам контролировать это.

В следующем примере кода показана реализация интерфейса [IResourceLoadingCallback](https://reference.aspose.com/words/net/aspose.words.loading/iresourceloadingcallback/):

{{< gist "aspose-words-gists" "513c134d5e8e8126c385324f2d001a9b" "html-linked-resource-loading-callback.cs" >}}

В следующем примере кода показано, как использовать свойство **ResourceLoadingCallback**:

{{< gist "aspose-words-gists" "513c134d5e8e8126c385324f2d001a9b" "load-html-with-resource-loading-callback.cs" >}}

## Используйте TempFolder, чтобы избежать исключения памяти

Aspose.Words поддерживает чрезвычайно большие документы, содержащие тысячи страниц с богатым содержимым. Загрузка таких документов может потребовать много оперативной памяти. В процессе загрузки Aspose.Words требуется еще больше памяти для хранения временных структур, используемых для анализа документа.

Если у вас возникла проблема с исключением "Недостаточно памяти" при загрузке документа, попробуйте использовать свойство [TempFolder](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/tempfolder/). В этом случае Aspose.Words будет хранить некоторые данные во временных файлах вместо памяти, и это может помочь избежать такого исключения.

В следующем примере кода показано, как установить **TempFolder**:

{{< gist "aspose-words-gists" "80fb635124a6afc0e75b9f17d1eab40c" "load-docx-using-temp-folder.cs" >}}

## Установите кодировку явно

Большинство современных форматов документов хранят свое содержимое в Юникоде и не требуют специальной обработки. С другой стороны, все еще существует множество документов, в которых используется кодировка, предшествующая Unicode, и иногда либо отсутствует информация о кодировке, либо даже не поддерживается информация о кодировке по своей природе. Aspose.Words пытается автоматически определить подходящую кодировку по умолчанию, но в редких случаях вам может потребоваться использовать кодировку, отличную от той, которая определяется нашим алгоритмом распознавания кодировки. В этом случае используйте свойство [Encoding](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/encoding/), чтобы получить или установить кодировку.

В следующем примере кода показано, как установить кодировку для переопределения автоматически выбранной кодировки:

{{< gist "aspose-words-gists" "507181f2c99ba13012c441f1c436d9a7" "load-txt-using-encoding.cs" >}}

## Загрузить зашифрованные документы

Вы можете загружать документы Word, зашифрованные паролем. Для этого используйте специальную перегрузку конструктора, принимающую объект [LoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/). Этот объект содержит свойство [Password](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/password/), которое определяет строку пароля.

В следующем примере кода показано, как загрузить документ, зашифрованный паролем:

{{< gist "aspose-words-gists" "5b929b4208996737657de94443bc2852" "load-encrypted-docx.cs" >}}

Если вы заранее не знаете, зашифрован ли файл, вы можете использовать класс [FileFormatUtil](https://reference.aspose.com/words/net/aspose.words/fileformatutil/), который предоставляет служебные методы для работы с форматами файлов, такие как определение формата файла или преобразование расширений файлов в перечисления форматов файлов или из них. Чтобы определить, зашифрован ли документ и для его открытия требуется пароль, используйте свойство [IsEncrypted](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/isencrypted/).

В следующем примере кода показано, как проверить OpenDocument, зашифрован он или нет:

{{< gist "aspose-words-gists" "935e41f0f59c7d8bd8a082ccc14f6b84" "verify-odt-is-encrypted.cs" >}}
