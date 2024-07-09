---
title: Перетворення документа в HTML, MHTML або EPUB
second_title: Aspose.Words для Java
articleTitle: Перетворення документа в HTML, MHTML або EPUB
linktitle: Перетворення документа в HTML, MHTML або EPUB
description: "Зареєструватися Aspose.Words для Java для перетворення документів з Word або будь-яких інших підтримуваних форматів в HTML, MHTML або EPUB."
type: docs
weight: 20
url: /uk/java/convert-a-document-to-html-mhtml-or-epub/
---

У форматах HTML і MHTML є дуже популярними і можуть бути використані на будь-якій веб-платформі. З цієї причини, перетворення документів в HTML і MHTML є важливою особливістю Aspose.Wordsй

EPUB (коротко для "Електронної публічності") - формат HTML, який використовується для розподілу електронних книг. Цей формат повністю підтримується Aspose.Words для експорту електронних книг, які сумісні з найчистішими пристроями.

## Конвертувати документ

Для простого перетворення в HTML, MHTML, або EPUB, один з [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-int) використовується метод перевантаження. Ви можете зберегти документ на файл або потік і явно встановити вихідний документ, зберегти формат або визначити його з розширення імені файлу.

Наступний приклад показує, як перетворити DOCX в HTML з вказуванням формату збереження:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocxToHtml.java" >}}

Для перетворення документа в MHTML або EPUB, використовуйте `SaveFormat.MHTML` або `SaveFormat.EPUB` відповідно.

## Конвертувати документацію з круглою кнопкою

Формат HTML не підтримує багато Microsoft Word Ми можемо самі зателефонувати одержувачу і узгодити зручний час і місце вручення квітів, а якщо необхідно, то збережемо сюрприз. Така інформація також називається "круглою інформацією". Для цього Aspose.Words надає можливість експортувати інформацію про круглі смуги при збереженні HTML, MHTML або EPUB за допомогою [ExportRoundtripInformation](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportRoundtripInformation) майно. Збереження інформації про круглий план дозволяє відновити такі властивості, як вкладки, коментарі, заголовки та нижній колонтитули під час завантаження документів зазначених форматів у зворотному напрямку **Document** об'єкт.

Значення за замовчуванням **true** для HTML **false** для MHTML та EPUB:

- Коли **true**, Інформація про круглий рядок експортується як - aw - * CSS властивості відповідних елементів HTML
- Коли **false**, немає інформації про круглу смугу, що буде виводитися в отримані файли

Приклад коду показує, як експортувати інформацію про круглі смуги при перетворенні документа з DOCX в HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocumentToHtmlWithRoundtrip.java" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл шаблону цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ConvertDocumentToHtmlWithRoundtrip/Test%20File%20\(doc\).doc.

{{% /alert %}}

## Вказати параметри збереження при переході в HTML

Aspose.Words дозволяє конвертувати документ Word у HTML за допомогою параметра за замовчуванням або користувацького збереження. Нижче описано приклади користувацьких варіантів збереження.

### Вкажіть папку для економії ресурсів

Використання Aspose.Words Ми можемо вказати фізичну папку, де всі ресурси, такі як зображення, шрифти та зовнішній CSS, зберігаються при перетворенні документа в HTML. За замовчуванням, це порожній рядок.

Визначення [ResourceFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getResourceFolder) майно є найпростішим способом встановити папку, де всі ресурси повинні бути написані. Ми можемо використовувати індивідуальні властивості, такі як [FontsFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getFontsFolder) що зберігає шрифти до вказаної папки та [ImagesFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getImagesFolder) що зберігає зображення до вказаної папки. Коли вказано відносний шлях, **FontsFolder** і **ImagesFolder** в папку, де знаходиться збір коду, **ResourceFolder** і [CssStyleSheetFileName](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getCssStyleSheetFileName) вкажіть папку виходу, де знаходиться HTML-документ.

У цьому прикладі **ResourceFolder** визначає відносний шлях. Цей шлях відноситься до папки виходу, де зберігаються HTML-документ. Значення значення **ResourceFolderAlias** використовується для створення URL-адрес для всіх ресурсів.

Приклад коду показує, як працювати з цими властивостями:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ExportResourcesUsingHtmlSaveOptions.java" >}}

Використання [ResourceFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getResourceFolderAlias) майно, ми також можемо вказати ім'я папки, що використовується для побудови URIs всіх ресурсів, записаних в HTML документ. Цей простий спосіб вказати, як URI повинні бути створені для всіх файлів ресурсів. Те ж інформацію можна вказати на зображення і шрифти окремо через [ImagesFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getImagesFolderAlias) і [FontsFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getFontsFolderAlias) властивості, відповідно.

Тим не менш, немає індивідуального майна для CSS. Поведінка поведінки **FontsFolder**, **FontsFolderAlias**, **ImagesFolder**, **ImagesFolderAlias** і **CssStyleSheetFileName** не змінюються властивості. Зверніть увагу, що **CssStyleSheetFileName** використовується як для позначення назви папки, так і назви файлів.

- до **ResourceFolder** має більш низький пріоритет, ніж папки, вказані через **FontsFolder**, **ImagesFolder**, і **CssStyleSheetFileName**й Якщо папка вказана в папці **ResourceFolder** не існує, він буде створений автоматично.
- до **ResourceFolderAlias** має менший пріоритет, ніж **FontsFolderAlias** і **ImagesFolderAlias**й Якщо **ResourceFolderAlias** порожній, значення значення **ResourceFolder** Для створення ресурсу URIS використовується майно. Якщо **ResourceFolderAlias** Ми можемо самі зателефонувати одержувачу і узгодити зручний час і місце вручення квітів.

### Експорт base64 кодування ресурсів

Aspose.Words надає можливість вказати, чи повинні бути вбудовані в HTML в кодуваннях Base64. Для виконання цього використовуйте [ExportFontsAsBase64](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportFontsAsBase64) нерухомість – це розширення розширення майна [ExportFontResources](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportFontResources) майно. За замовчуванням, його значення **false**, і шрифти записані в окремі файли. Але якщо цей варіант встановлюється **true**, шрифти будуть вбудовані в CSS документу в кодуванні Base64. Про нас **ЕкспортФонтсАсБаза64** тільки HTML формат і не впливає на EPUB і MHTML.

Приклад коду показує, як експортувати шрифти Base64-encoded до HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ExportFontsAsBase64.java" >}}

## Вкажіть параметри збереження при переході в EPUB

Aspose.Words дозволяє конвертувати документ Word у формат EPUB за замовчуванням або користувацькі параметри збереження. Ви можете вказати кількість опцій, пройшовши екземпляр [HtmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/) до [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-com.aspose.words.SaveOptions) метод.

Приклад наступного коду показує, як перетворити документ Word в EPUB з вказуванням деяких варіантів користувацького збереження:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocumentToEPUB.java" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл шаблону цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ExportResourcesUsingHtmlSaveOptions/Document.EpubConversion.doc)й

{{% /alert %}}

## Дивитися ще

- [Як про те, що??? Українська](/words/java/custom-styles-used-for-proper-aspose-words-html-roundtrip/)
