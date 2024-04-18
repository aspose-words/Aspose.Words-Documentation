---
title: Печать документа в C#
second_title: Aspose.Words для .NET
articleTitle: Печать документа Программно или с помощью диалогов
linktitle: Печать документа Программно или с помощью диалогов
description: "Распечатать документ на a Server Использование неуправляемого XpsPrint API или через выбранный принтер с настройками и диалогами предварительного просмотра печати в C#."
type: docs
weight: 55
url: /ru/net/print-a-document-programmatically-or-using-dialogs/
---

В этой статье описывается, как распечатать документ для обработки текстов из ASP.NET или Windows Сервисное приложение с использованием Aspose.Words и `XpsPrint` API. Он также демонстрирует методы печати документа с помощью диалогов "Настройки", "Печать предварительного просмотра" и "Печать прогресса" и объясняет, как сократить время первого вызова для печати документа.

## Печать документа на a Server через `XpsPrint` API

Этот раздел предназначен для пользователей, которые хотят представить XPS Документ для неуправляемого XpsPrint API из одного .NET приложение, использующее Aspose.Words.

### Ограничения на печать документа в ASP.NET или Windows Сервисные приложения

Когда развивается .NET приложение, которое производит некоторый печатный выход, вы обычно можете использовать классы, представленные в *System.Drawing.Printing* пространство имен или Windows Презентационный фонд (WPF). Однако, если заявка является ASP.NET или Windows Сервисное приложение, возможности печати ограничены, поскольку Microsoft Не рекомендуется использовать этот подход. The .NET Framework Классы печати не поддерживаются приложением услуг. Это включает ASP страницы, которые обычно выполняются в контексте серверной службы.

Классы в пределах *System.Drawing.Printing* пространство имен не поддерживается для использования в Windows услуга или ASP.NET приложение или услуга и попытка их использования может привести к снижению производительности обслуживания, исключениям во время выполнения и другим проблемам. Использование WPF для создания Windows Услуги также не поддерживаются. Поскольку WPF является технологией презентации, Windows Сервис требует соответствующих разрешений для выполнения визуальных операций, связанных с взаимодействием с пользователем. Если Windows Сервис не имеет таких разрешений, возможны неожиданные результаты.

The Aspose.Words [Document](https://reference.aspose.com/words/net/aspose.words/document/) Объект обеспечивает семейство [Print](https://reference.aspose.com/words/net/aspose.words/document/methods/print/index) Методы печати документов. Эти методы используют .NET Классы печати, определенные в *System.Drawing.Printing* пространство имен. Есть много Aspose.Words Клиенты, которые успешно используют их для печати в своих серверных приложениях. Тем не менее, эта статья демонстрирует альтернативный метод печати, который соответствует требованиям. MicrosoftРекомендации.

### Способы распечатать документ на Server

Правильный способ печати документов в соответствии с Microsoft Использование неуправляемого XpsPrint API. Это API Доступен на Windows 7, Windows Server 2008 год R2, и так далее Windows Vista Обновление платформы для Windows Vista установлен.

С тех пор Aspose.Words Легко конвертировать любой документ в <p notrans="<p notrans=" XPS"=""></p>"> Вам нужно только написать код, который проходит XPS документом к `XpsPrint` API. Единственная проблема заключается в том, что `XpsPrint` API Она неуправляема и требует некоторого знания технологии Platform Invoke.

Чтобы распечатать документ, Aspose.Words обеспечивает **XpsPrintHelper** Класс содержит простой метод печати, где нужно просто указать следующие параметры (подробнее см. в статье). [Печать документов через XPS API](/words/net/missing-features-in-openxml/)):

- Документ, который вы хотите распечатать.
- Имя принтера.
- Наименование должности (факультативно).
- Булевое значение, определяющее, должна ли программа ждать, пока работа с печатью будет завершена. Таким образом, система либо проверит, был ли документ напечатан успешно, либо вернется сразу после отправки печати. В последнем случае невозможно определить, была ли работа с печатью успешной.

При возникновении каких-либо проблем с подачей или печатанием документа метод бросит исключение.

Приведенный ниже пример кода показывает, как распечатать документ, используя **XpsPrintHelper** класс:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintDocViaXpsPrint-PrintDocViaXpsPrint.cs" >}}

При запуске проекта он печатает образец документа на указанном принтере и открывает окно консоли для отображения результатов печати. Когда работа с печатью завершается или выводятся ошибки, система отображает сообщение об успехе или текст брошенного исключения.

Вы также можете установить некоторые настройки печати, используя [PageSetup](https://reference.aspose.com/words/net/aspose.words/pagesetup/) класс. Например, в Microsoft Word, Лотки принтера определены для каждого раздела и являются специфичными для принтера. Таким образом, вы можете программно изменить эти значения для каждого раздела. [FirstPageTray](https://reference.aspose.com/words/net/aspose.words/pagesetup/firstpagetray/) и [OtherPagesTray](https://reference.aspose.com/words/net/aspose.words/pagesetup/otherpagestray/) свойств.

{{% alert color="primary" %}}

В некоторых случаях вам может потребоваться использовать этот образец без Aspose.Words. Например, если у вас уже есть XPS документ и просто хотите распечатать его ASP.NET или Windows Заявка на обслуживание. Вы можете просто удалить `Print` метод.

{{% /alert %}}

Есть две перегрузки в **XpsPrintHelper**.**Print** метод. Первая перегрузка требует [Document](https://reference.aspose.com/words/net/aspose.words/document/) объект и превращает его в `MemoryStream` в XPS Формат. Вторая перегрузка принимает a `Stream` объект. Поток должен содержать документ в XPS Формат.

Вы можете скачать примеры метода перегрузки из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/download/MissingFeaturesofOpenXMLWordsv1.1/Print.Document.via.XPS.API.zip).

Вы можете скачать образец файла этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

## Печать документа с настройками и диалоги предварительного просмотра печати

При работе с документами часто требуется распечатать их на выбранный принтер. Полезно использовать диалог предварительного просмотра печати, чтобы визуально проверить, как будет отображаться печатный документ, и выбрать соответствующие варианты печати.

The Aspose.Words не имеет встроенных диалогов или форм, но реализует [AsposeWordsPrintDocument](https://reference.aspose.com/words/net/aspose.words.rendering/asposewordsprintdocument/) Класс, основанный на .NET **PrintDocument** класс. Пример этого класса может быть передан **PrintPreviewDialog** Форма для предварительного просмотра и печати документа. Кроме того, [PrintPreviewДиалог](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.printpreviewdialog?view=netframework-4.8) Класс определяет выход для передачи на принтер.

Следующий пример показывает, как использовать эти классы для печати документа из Aspose.Words С помощью диалогов Print Preview и Settings:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintPreviewSettingsDialog-PrintPreviewSettingsDialog.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintPreviewSettingsDialog-PrintPreviewSettingsDialogEvent.cs" >}}

{{% alert color="primary" %}}

The **AllowSomePages** Свойство позволяет выбрать ряд страниц для печати, если значение этого свойства истинно. По умолчанию все страницы в диапазоне выбираются для печати.

{{% /alert %}}

Для оптимизации внешнего вида диалоговых настроек Print Preview укажите свойства **PrintPreviewDialog** класс.

## Печать нескольких страниц на одном листе

Всегда полезно иметь больше гибкости при печати документов. использовать .NET и Aspose.Words Вы можете легко настроить операцию печати, чтобы реализовать свою собственную логику, определив, как документ будет отображаться на печатной странице.

Как и в предыдущем разделе, Aspose.Words осуществлять **MultipagePrintDocument** класс, который основывается на .NET **PrintDocument** класс. Это означает, что существующий .NET Инфраструктура печати может быть использована таким образом, что диалоги предварительного просмотра печати и печати позволят визуализировать документ перед печатью. The **MultipagePrintDocument** Класс обеспечивает возможность печати нескольких страниц на одном листе бумаги.

{{% alert color="primary" %}} You can download an example of using the **MultipagePrintDocument** class from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/MultipagePrintDocumentExample). {{% /alert %}}

Результат этого примера кода показан ниже:

![print-a-document-programmatically-or-using-dialogs-aspose-words-net](/words/net/print-a-document-programmatically-or-using-dialogs/print-a-document-programmatically-or-using-dialogs-1.png)

## Скрытие диалога с печатью при печати документа

Диалог прогресса печати не появляется при печати документа через [Print](https://reference.aspose.com/words/net/aspose.words/document/print/) метод. Однако этот диалог появляется во время печати с другим. [Print](https://reference.aspose.com/words/net/aspose.words.rendering/asposewordsprintdocument/) метод. В этом случае, чтобы предотвратить появление диалога печати, вы должны указать в этом методе действительные настройки принтера и стандартный контроллер печати, как показано в примере ниже:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintProgressDialog-PrintProgressDialog.cs" >}}

Вы можете скачать образец файла этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

## Как сократить время первого звонка для печати документа

Aspose.Words читать и кэшировать некоторые поля **PrinterSettings** сократить время печати. Вы можете достичь этого, позвонив [CachePrinterSettings](https://reference.aspose.com/words/net/aspose.words.rendering/asposewordsprintdocument/cacheprintersettings/) метод. Этот метод называется до начала печати, если он не был выполнен ранее. Обратите внимание, что общее время печати с и без вызова этого метода практически одинаково. Целью использования этого метода является сокращение времени первого вызова [Print](https://reference.aspose.com/words/net/aspose.words/document/print/) метод. Следующий пример кода показывает, как использовать этот метод:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-Print_CachePrinterSettings-CachePrinterSettings.cs" >}}

## Смотрите также

- [Обновление платформы для Windows Vista](https://docs.microsoft.com/en-us/windows/win32/win7ip/platform-update-for-windows-vista-overview)
