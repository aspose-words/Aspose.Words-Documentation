---
title: FAQ
second_title: Aspose.Words для .NET
articleTitle: FAQ - Aspose.Words для .NET
linktitle: FAQ - Aspose.Words для .NET
articleTitle: FAQ
linktitle: FAQ
type: docs
description: "Aspose.Words для .NET Ответы на наиболее часто задаваемые вопросы. Изучите эту страницу, чтобы быстро решить вашу проблему по общим вопросам или конкретным темам."
weight: 75
url: /ru/net/faq/
timestamp: 2024-11-18-12-56-02
---

Эта страница содержит ответы на наиболее часто задаваемые вопросы. Пожалуйста, изучите текущую страницу - возможно, это позволит вам быстро решить вашу проблему.

Если вы не нашли ответ на свой вопрос, вы можете задать его на форуме поддержки. Для получения информации о том, как правильно сообщить свой вопрос или проблему, см. [Техническая поддержка](/words/ru/net/technical-support/) Страница.

{{% alert color="primary" %}}

Часто задаваемые вопросы сгруппированы по темам для вашего удобства.

{{% /alert %}}

## Генерал

**Q: Что такое Aspose.Words?**

Aspose.Words для .NET Это библиотека классов, которая позволяет вашим приложениям выполнять широкий спектр задач обработки документов. с Aspose.Words для .NETВы можете создавать, изменять, конвертировать, визуализировать и печатать документы без сторонних приложений.

Подробности можно найти в нашей документации.

------

**Q: Что это значит "Aspose.Words не требует сторонних заявок?**

Aspose.Words для .NET не требует установки каких-либо сторонних приложений или дополнительных программных пакетов для работы. Просто скачать и установить Aspose.Words как описано в [Установка](/words/ru/net/installation/) Статья и начните.

------

**Q: какие платформы Aspose.Words Поддержка?**

Aspose.Words для .NET Он охватывает большинство популярных сред разработки и платформ развертывания. Его API может использоваться для разработки приложений для широкого спектра операционных систем, таких как Windows, Linux, Mac OS и различные платформы.

Подробнее см. в [Обзор продукта](/words/ru/net/product-overview/) Страница и ее [Платформы и Interopэрабельность](/words/net/platforms-and-interoperability/) Раздел.

------

**Q: Какие форматы документов делают Aspose.Words Поддержка?**

Aspose.Words для .NET поддерживает большинство популярных форматов документов, таких как DOC, DOCX, HTML, Markdown, PDF, XML и другие.

Вы можете увидеть полный список поддерживаемых форматов на [Поддерживаемые форматы документов](/words/ru/net/supported-document-formats/) Страница.

------

**Q: Как я могу попробовать Aspose.Words бесплатно?**

Вы можете сделать это двумя способами - с помощью пробной версии или 30-дневной временной лицензии. Пробная версия такая же, как и купленная, она обеспечивает полную функциональность продукта, но добавляет оценочный водяной знак в верхней части документа при загрузке и экономии и ограничивает максимальный размер документа несколькими сотнями абзацев. Временная лицензия позволяет тестировать Aspose.Words без судебных ограничений в течение 30 дней.

Видишь? [Лицензирование и подписка](/words/ru/net/licensing/) Страница для дополнительной информации.

{{% alert color="primary" %}}

Вы также можете попробовать некоторые из самых популярных Aspose.Words особенности через [Aspose.Words Бесплатный онлайн Приложения](https://products.aspose.app/words).

{{% /alert %}}

------

**Q: Как я могу купить Aspose.Words?**

Чтобы купить Aspose.Words Лицензия, вы должны пойти в [Покупка](https://purchase.aspose.com/buy) Страница, выберите "Aspose.Words"изделие и тип лицензии, который вам подходит. Затем добавьте лицензию в свою корзину и следуйте инструкциям корзины покупок.

После покупки, подать заявку на лицензию, как описано в [Купленная лицензия](/words/net/licensing/#purchased-license) Раздел.

Подробности о том, как установить Aspose.Words Его можно прочитать на [Установка](/words/ru/net/installation/) Страница.

------

**Q: Как я могу получить поддержку?**

Используйте бесплатный форум технической поддержки. Подробнее о том, как правильно сообщить о проблеме и что нужно сделать, прежде чем обращаться на форум, см. [Техническая поддержка](/words/ru/net/technical-support/) Страница.

## Оформление документа

{{% alert color="primary" %}}

Вы можете найти более подробную информацию о рендеринге в [Рендеринг](/words/ru/net/rendering/) Раздел документации.

{{% /alert %}}

**Q: Почему расположение и шрифты в выходном документе отличаются от оригинала?**

Шрифт может быть недоступен, или формат шрифта поддерживается Microsoft Word но не поддерживается Aspose.Words. Aspose.Words будет выполнять [Манипулирование и замена шрифтов TrueType](/words/ru/net/manipulating-and-substitution-truetype-fonts/).

Чтобы проверить, отсутствует ли шрифт:

*Внутри Aspose.Words использовать предупреждения о замене шрифта (подробнее см. раздел "Как распознать, что шрифт был заменен") [Манипулирование и замена шрифтов TrueType](/words/ru/net/manipulating-and-substitution-truetype-fonts/) статья).
*Внутри Microsoft Word Откройте диалоговое окно "Замена шрифта" (File → Options → Advanced → Замена шрифта).

------

**Q: Где хранить шрифты для ASP.NET заявки?**

В `APS.NET`, Доступ к папке системных шрифтов в режиме среднего доверия отсутствует. Пользователи должны хранить шрифты в собственной папке.

------

**Q: Почему шрифт не работает на не-Windows Платформы и символы Unicode заменяются на .notdef glyph?**

Мы часто видим, что `.notdef` glyph Вместо символа Unicode. Обычно это коробка или вопрос. glyph.

Это потому, что Microsoft Параметры резервного копирования Office выбираются по умолчанию, и Microsoft Офисные шрифты недоступны. Пользователи должны установить Microsoft Офисные шрифты или изменения параметров резервного копирования.

------

**Q: Почему сложный текст сценария, такой как тайский или иврит, может отображаться неточно по какой-то причине, например, неправильное положение для диакритики или неточные лигатуры?**

Некоторые сложные шрифты требуют обработки расширенных функций типографии, чтобы правильно их отображать. Продвинутая типография отключена в Aspose.Words По умолчанию. Пользователи должны включить расширенную типографику [TextShaperFactory](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/textshaperfactory/).

------

**Q: Нужны ли мне лицензионные файлы для используемых мной шрифтов?**

Да, знаешь. Поэтому при копировании шрифтов имейте в виду, что большинство шрифтов защищены авторским правом. Найдите заранее лицензии на шрифты и убедитесь, что они могут быть свободно переданы на другой компьютер.

## Вложенный Mail Merge

{{% alert color="primary" %}}

Вы можете найти более подробную информацию о mail merge в [Mail Merge и отчетность](/words/net/mail-merge-and-reporting/) Раздел документации.

{{% /alert %}}

**Q: Почему в генерируемой продукции нет слитых полей?**

Первоначальное название поля слияния остается неизменным без замены требуемыми данными из источника данных, а затем:

* Проверьте правильность загрузки данных в таблицы: установите [TableName](https://reference.aspose.com/words/net/aspose.words.mailmerging/imailmergedatasource/tablename/) Правильно со всеми необходимыми ключами и отношениями.
* Проверьте, правильно ли названы поля слияния. Используйте [GetFieldNames](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getfieldnames/) Способ получения всех имен полей слияния и обеспечения того, чтобы имя полей слияния в вашем шаблоне соответствовало названию в вашем источнике данных.

------

**Q: Почему на выходе вложенного слияния не отображаются данные из детской таблицы для первой записи в родительской таблице, а отображаются все элементы для последней записи в родительской таблице, даже те, которые фактически не связаны с ней?**

Это связано с тем, что области слияния в шаблоне неправильно сформированы, что может сделать все вложенными. mail merge Регионы вообще перестают что-либо показывать. The [StartTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/starttable/) открывающий тег и [EndTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endtable/) Тег закрытия должен совпадать и находиться в одном ряду или ячейке. Например, если вы начинаете гнездование областей слияния в клетке стола, вы должны закончить область слияния в том же ряду, что и первая клетка.

------

**Q: Почему каждая запись из родительской таблицы отображает каждый элемент в детской таблице, даже те, которые на самом деле не связаны с ней?**

Это связано с тем, что отношения между родительским и детским столами не установлены или они неправильно настроены. Необходимо:

* Обеспечить целостность данных в вашем **DataSet** и использовать **DataRelation** объект, представляющий отношения между родителями и детьми между соответствующими таблицами данных.
* Проверьте раздел "Как настроить отношения с данными в Nested Mail Merge с регионами" в статье [Вложенный Mail Merge с регионами](/words/net/nested-mail-merge-with-regions/).

------

**Q: Почему это исключение: "Система. Аргумент Исключение: Это ограничение не может быть включено, поскольку не все значения имеют соответствующие родительские значения при выполнении вложенных значений. mail merge?**

Это происходит потому, что не у каждой родительской записи есть запись ребенка, поэтому ваш источник данных не соответствует следующим критериям: каждая строка в родительской таблице должна иметь отношения один к одному с строками детской таблицы на основе первичных и внешних ключей.

Отключение внешних ключевых ограничений при создании **DataRelation**.

## Добавить или вставить документ

{{% alert color="primary" %}}

Более подробную информацию о программировании с документами можно найти в [Программирование с документами](/words/ru/net/programming-with-documents/) Раздел документации.

{{% /alert %}}

**Q: Почему контент, добавленный к документу, не отображается на одной странице?**

Результат приложения появляется на отдельной странице из-за разницы в [PageSetup](https://reference.aspose.com/words/net/aspose.words/pagesetup/) настройки разделов, где документы прилагаются вместе. делать идентичными **PageSetup** настройки разделов, где документы прилагаются вместе.

## Преобразовать документ

{{% alert color="primary" %}}

Вы можете найти более подробную информацию о преобразовании документа в [Преобразовать документ](/words/ru/net/convert-a-document/) Раздел документации.

{{% /alert %}}

**Q: Как конвертировать PDF в Word?**

Это очень просто, достаточно загрузить документ в модель и сохранить его в любом поддерживаемом формате.

Следующий пример кода показывает процесс преобразования файла PDF в DOC:

{{< highlight csharp >}}
// Open the source PDF document
Document pdfDocument = new Document(_dataDir + "PDFToDOC.pdf");

// Save the file into MS document format
pdfDocument.Save(_dataDir + "PDFToDOC_out.doc", SaveFormat.Doc); // .Docx, .Rtf, .WordML, etc.
{{< /highlight >}}

------

**Q: Как конвертировать DOCX в PDF?**

Это также очень просто, просто загрузите документ в модель и сохраните его в любом поддерживаемом формате.

Следующий пример кода показывает процесс преобразования файла DOCX в PDF:

{{< highlight csharp >}}
// Open the source DOCX document.
Document doc = new Document(_dataDir + "input.docx");

// Save the file to PDF format.
doc.Save(_dataDir + "output.pdf", SaveFormat.Pdf);
{{< /highlight >}}

## Манипулируйте документом

{{% alert color="primary" %}}

Более подробную информацию о программировании с документами можно найти в [Программирование с документами](/words/ru/net/programming-with-documents/) Раздел документации.

{{% /alert %}}

**Q: Как разделить страницу документа на страницу?**

Aspose.Words Позволяет разделить многостраничный документ по страницам.

Следующий пример кода показывает, как разделить документ и сохранить каждую страницу в виде отдельного документа:

{{< highlight csharp >}}
Document doc = new Document(MyDir + "Big document.docx");

int pageCount = doc.PageCount;

for (int page = 0; page < pageCount; page++)
{
	// Save each page as a separate document.
	Document extractedPage = doc.ExtractPages(page, 1);
	extractedPage.Save(ArtifactsDir + $"SplitDocument.PageByPage_{page + 1}.docx");
}
{{< /highlight >}}

------

**Q: Как открыть зашифрованный** **Документ?**

Можно попробовать открыть зашифрованный документ без пароля, что должно привести к исключению.

Следующий пример кода показывает, как открыть зашифрованный документ с паролем:

{{< highlight csharp >}}
// Create a document.
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
builder.Write("Hello world!");

//OoxmlSaveOptions only applies to Docx, Docm, Dotx, Dotm, or FlatOpc formats.
OoxmlSaveOptions options = new OoxmlSaveOptions(SaveFormat.Docx);

// Set a password with which the document will be encrypted, and which will be required to open it.
options.Password = "MyPassword";
doc.Save(ArtifactsDir + "OoxmlSaveOptions.SaveAsDocx.docx", options);

// Open the encrypted document by passing the correct password in a `LoadOptions` object.
doc = new Document(ArtifactsDir + "OoxmlSaveOptions.Password.docx", new LoadOptions("MyPassword"));

Assert.AreEqual("Hello world!", doc.GetText().Trim());
{{< /highlight >}}

------

**Q: Как распечатать документ?**

Всего две строки кода.

Следующий пример кода показывает, как распечатать документ двумя способами:

{{< highlight csharp >}}
Document doc = new Document(MyDir + "PrintMe.docx");

// Below are two ways of printing our document.
// 1 -  Print using the default printer:
doc.Print();

// 2 -  Specify a printer that we wish to print the document with by name:
string myPrinter = PrinterSettings.InstalledPrinters[4];

doc.Print(myPrinter);
{{< /highlight >}}

------

**Q: Как редактировать PDF документ?**

Просто загрузите PDF в Aspose.Words Модель документа и внесение изменений.

Следующий пример кода показывает, как редактировать документ:

{{< highlight csharp >}}
// Open the source PDF document
Document pdfDocument = new Document(_dataDir + "PDFToDOC.pdf");

DocumentBuilder builder = new DocumentBuilder(pdfDocument);
builder.MoveToDocumentEnd();
builder.Writeln("New paragraph with text");

pdfDocument.Save(_dataDir + "out.pdf", SaveFormat.Pdf);
{{< /highlight >}}

## Docker

**Q: Как использовать Aspose.Words в Docker?**

Чтобы получить подробный ответ, изучите статью [Как бегать Aspose.Words в Docker](/words/ru/net/how-to-run-aspose-words-in-docker/).
