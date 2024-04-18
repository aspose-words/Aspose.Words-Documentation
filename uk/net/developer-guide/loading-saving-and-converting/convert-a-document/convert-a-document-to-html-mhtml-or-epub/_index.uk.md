---
title: Перетворення документа в HTML, MHTML або EPUB в C#
second_title: Aspose.Words для .NET
articleTitle: Перетворення документа в HTML, MHTML або EPUB
linktitle: Перетворення документа в HTML, MHTML або EPUB
description: "Перетворення документа з практично будь-якого формату в HTML або MHTML, а також у формат EPUB за допомогою C#й Ви також можете вказати параметри збереження для управління вихідним документом."
type: docs
weight: 20
url: /uk/net/convert-a-document-to-html-mhtml-or-epub/
---

У форматах HTML і MHTML є дуже популярними і можуть бути використані на будь-якій веб-платформі. З цієї причини, перетворення документів в HTML і MHTML є важливою особливістю Aspose.Wordsй

EPUB (коротко для "Електронної публічності") - формат HTML, який використовується для розподілу електронних книг. Цей формат повністю підтримується Aspose.Words для експорту електронних книг, які сумісні з найчистішими пристроями.

## Конвертувати документ

Для простого перетворення в HTML, MHTML, або EPUB, один з [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/) використовується метод перевантаження. Ви можете зберегти документ на файл або потік і явно встановити вихідний документ, зберегти формат або визначити його з розширення імені файлу.

Наступний приклад показує, як перетворити DOCX в HTML з визначенням формату збереження:

**.NET**

{{< highlight csharp >}}

// Load the document from disk.
Document doc = new Document(dataDir + "Test File.docx");

// Save the document into HTML.
doc.Save(dataDir + "Document", SaveFormat.Html);
{{< /highlight >}}

Для перетворення документа в MHTML або EPUB, використовуйте `SaveFormat.Mhtml` або `SaveFormat.Epub` відповідно.

## Конвертувати документацію з круглою кнопкою

Формат HTML не підтримує багато Microsoft Word Ми можемо самі зателефонувати одержувачу і узгодити зручний час і місце вручення квітів, а якщо необхідно, то збережемо сюрприз. Така інформація також називається "круглою інформацією". Для цього Aspose.Words дає можливість експортувати інформацію про круглі смуги при збереженні HTML, MHTML або EPUB за допомогою [ExportRoundtripInformation](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/exportroundtripinformation/) майно. Збереження інформації про круглий план дозволяє відновити такі властивості, як вкладки, коментарі, заголовки та нижній колонтитули під час завантаження документів, зазначених форматів, що зберігаються у вигляді вкладок **Document** об'єкт.

Значення за замовчуванням **true** для HTML **false** для MHTML та EPUB:

- Коли **true**, Інформація про круглий рядок експортується як - aw - * CSS властивості відповідних елементів HTML
- Коли **false**, немає інформації про круглі смуги, щоб бути виведеними у виготовлені файли

Приклад коду показує, як експортувати інформацію про круглі смуги при перетворенні документа з DOCX в HTML:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToHtmlWithRoundtrip-ConvertDocumentToHtmlWithRoundtrip.cs" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл шаблону цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx)й

{{% /alert %}}

## Вказати параметри збереження при переході в HTML

Aspose.Words дозволяє конвертувати документ Word в HTML за допомогою параметра за замовчуванням або користувацького збереження. Нижче описано приклади користувацьких варіантів збереження.

### Вкажіть папку для економії ресурсів

Використання Aspose.Words Ми можемо вказати фізичну папку, де всі ресурси, такі як зображення, шрифти та зовнішній CSS, зберігаються при перетворенні документа в HTML. За замовчуванням, це порожній рядок.

Визначення [ResourceFolder](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/resourcefolder/) майно є найпростішим способом встановити папку, де всі ресурси повинні бути написані. Ми можемо використовувати індивідуальні властивості, такі як [FontsFolder](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/fontsfolder/) що зберігає шрифти до вказаної папки та [ImagesFolder](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/imagesfolder/) що зберігає зображення до вказаної папки. Коли вказано відносний шлях, **FontsFolder** і **ImagesFolder** в папку, де знаходиться збір коду, **ResourceFolder** і [CssStyleSheetFileName](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/cssstylesheetfilename/) вкажіть папку виходу, де знаходиться HTML-документ.

У цьому прикладі **ResourceFolder** визначає відносний шлях. Цей шлях відноситься до папки виходу, де зберігаються HTML-документ. Значення значення **ResourceFolderAlias** використовується для створення URL-адрес для всіх ресурсів.

Приклад коду показує, як працювати з цими властивостями:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ExportResourcesUsingHtmlSaveOptions-ExportResourcesUsingHtmlSaveOptions.cs" >}}

Використання [ResourceFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/resourcefolderalias/) майно, ми також можемо вказати ім'я папки, що використовується для побудови URIs всіх ресурсів, записаних в HTML документ. Цей простий спосіб вказати, як URI повинні бути створені для всіх файлів ресурсів. Те ж інформацію можна вказати на зображення і шрифти окремо за допомогою [ImagesFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/imagesfolderalias/) і [FontsFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/fontsfolderalias/) властивості, відповідно.

Не існує індивідуальних властивостей для CSS. Поведінка поведінки **FontsFolder**, **FontsFolderAlias**, **ImagesFolder**, **ImagesFolderAlias** і **CssStyleSheetFileName** не змінюються властивості. Зверніть увагу, що **CssStyleSheetFileName** майно використовується як для позначення назви папки, так і назви файлів.

- до **ResourceFolder** має більш низький пріоритет, ніж папки, вказані через **FontsFolder**, **ImagesFolder**, і **CssStyleSheetFileName**й Якщо папка вказана в папці **ResourceFolder** не існує, він буде створений автоматично.
- до **ResourceFolderAlias** має менший пріоритет, ніж **FontsFolderAlias** і **ImagesFolderAlias**й Якщо **ResourceFolderAlias** порожній, значення значення **ResourceFolder** Для створення ресурсу URIS використовуються власні властивості. Якщо **ResourceFolderAlias** Встановлюється до "." (dot), ресурс URIs міститиме лише імена файлів, які не вказують на шлях.

### Експорт base64 кодування ресурсів

Aspose.Words надає можливість вказати, чи повинні бути вбудованими в HTML в кодуваннях Base64. Для виконання цього використовуйте [ExportFontsAsBase64](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/exportfontsasbase64/) властивість – це розширення [ExportFontResources](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/exportfontresources/) майно. За замовчуванням, його значення **false**, і шрифти записані в окремі файли. Але якщо цей варіант встановлюється **true**, шрифти будуть вбудовані в CSS документа в кодуванні Base64. Про нас **ЕкспортФонтсАсБаза64** лише в HTML форматі і не впливає на EPUB і MHTML.

Приклад коду показує, як експортувати шрифти Base64-encoded до HTML:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ExportFontsAsBase64-ExportFontsAsBase64.cs" >}}

## Вкажіть параметри збереження при переході в EPUB

Aspose.Words дозволяє конвертувати документ Word у формат EPUB за замовчуванням або користувацькі параметри збереження. Ви можете вказати кількість варіантів, пройшовши екземпляр [HtmlSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/) до [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/) метод.

Приклад наступного коду показує, як перетворити документ Word в EPUB з вказуванням деяких варіантів користувацького збереження:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToEPUB-ConvertDocumentToEPUB.cs" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл шаблону цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx)й

{{% /alert %}}

## Дивитися ще

- [Як експортувати інформацію про круглі смуги при збереженні HTML](/words/net/custom-styles-used-for-proper-aspose-words-html-aspose-words-roundtrip/)
