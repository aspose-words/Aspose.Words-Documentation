---
title: Печать документа в формате C#
second_title: Aspose.Words для .NET
articleTitle: Печать документа программно или с использованием диалоговых окон
linktitle: Печать документа программно или с использованием диалоговых окон
description: "Распечатайте документ на сервере, используя неуправляемый API-файл XpsPrint, или через выбранный принтер с настройками и диалоговыми окнами предварительного просмотра в формате C#."
type: docs
weight: 55
url: /ru/net/print-a-document-programmatically-or-using-dialogs/
---

В этой статье описывается, как распечатать текстовый документ из приложения службы ASP.NET или Windows с использованием Aspose.Words и `XpsPrint` API. Он также демонстрирует методы печати документа с помощью диалоговых окон "Настройки", "Предварительный просмотр" и "Ход печати", а также объясняет, как сократить время первого вызова печати документа.

## Печать документа на сервере через `XpsPrint` API

Этот раздел предназначен для пользователей, которые хотят отправить документ XPS в неуправляемый формат API XpsPrint из приложения .NET с использованием Aspose.Words.

### Ограничения печати документа в приложениях службы ASP.NET или Windows

При разработке .NET-приложения, которое выводит некоторые печатные данные, вы обычно можете использовать классы, предоставленные в пространстве имен *System.Drawing.Printing*, или классы Windows Presentation Foundation (WPF). Однако если приложение представляет собой приложение службы ASP.NET или Windows, возможности печати ограничены, поскольку Microsoft не рекомендует использовать этот подход. Классы печати .NET Framework не поддерживаются приложением-службой. Сюда входят страницы ASP, которые обычно выполняются в контексте серверной службы.

Классы в пространстве имен *System.Drawing.Printing* не поддерживаются для использования в службе Windows или приложении или службе ASP.NET, и попытка их использования может привести к снижению производительности службы, исключениям во время выполнения и другим проблемам. Использование WPF для создания сервисов Windows также не поддерживается. Поскольку WPF — это технология представления, службе Windows требуются соответствующие разрешения для выполнения визуальных операций, включающих взаимодействие с пользователем. Если у службы Windows нет таких разрешений, могут быть неожиданные результаты.

Объект Aspose.Words [Document](https://reference.aspose.com/words/net/aspose.words/document/) предоставляет семейство методов [Print](https://reference.aspose.com/words/net/aspose.words/document/methods/print/index) для печати документов. Эти методы используют классы печати .NET, определенные в пространстве имен *System.Drawing.Printing*. Многие клиенты Aspose.Words успешно используют его для печати в своих серверных приложениях. Тем не менее, в этой статье демонстрируется альтернативный метод печати, соответствующий рекомендациям Microsoft.

### Способы печати документа на сервере

Правильный способ распечатать документы в соответствии с Microsoft — использовать неуправляемый формат XpsPrint API. Этот API доступен в форматах Windows 7, Windows Server 2008 R2 и Windows Vista при условии, что установлено обновление платформы для Windows Vista.

Поскольку Aspose.Words может легко преобразовать любой документ в XPS, вам нужно всего лишь написать код, который передает документ XPS в `XpsPrint` API. Единственная проблема заключается в том, что `XpsPrint` API неуправляем и требует некоторых знаний технологии Platform Invoke.

Для печати документа Aspose.Words предоставляет класс **XpsPrintHelper**, содержащий простой метод Print, в котором вам просто нужно указать следующие параметры (подробнее см. в статье [Распечатать документ по телефону XPS API](/words/net/missing-features-in-openxml/)):

- Документ, который вы хотите распечатать.
- Имя принтера.
- Название вакансии (необязательно).
— Логическое значение, определяющее, должна ли программа ждать завершения задания печати. Поэтому система либо проверит, успешно ли был напечатан документ, либо вернется сразу после отправки задания на печать. В последнем случае невозможно определить, было ли задание печати успешным.

При возникновении каких-либо проблем с отправкой или печатью документа метод выдает исключение.

В приведенном ниже примере кода показано, как распечатать документ с использованием класса **XpsPrintHelper**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintDocViaXpsPrint-PrintDocViaXpsPrint.cs" >}}

При запуске проекта он печатает образец документа на указанном принтере и открывает окно консоли для отображения результатов печати. Когда задание печати завершится или произойдет ошибка, система отобразит сообщение об успехе или текст выданного исключения.

Вы также можете установить некоторые параметры печати, используя класс [PageSetup](https://reference.aspose.com/words/net/aspose.words/pagesetup/). Например, в Microsoft Word лотки принтера определяются для каждого раздела и зависят от конкретного принтера. Таким образом, вы можете программно изменить эти значения для каждого раздела через свойства [FirstPageTray](https://reference.aspose.com/words/net/aspose.words/pagesetup/firstpagetray/) и [OtherPagesTray](https://reference.aspose.com/words/net/aspose.words/pagesetup/otherpagestray/).

{{% alert color="primary" %}}

В некоторых случаях вам может потребоваться использовать этот пример без Aspose.Words. Например, если у вас уже есть документ XPS и вы просто хотите распечатать его из приложения службы ASP.NET или Windows. Затем вы можете просто удалить метод `Print`.

{{% /alert %}}

Существует две перегрузки метода **XpsPrintHelper**.**Print**. Первая перегрузка принимает объект [Document](https://reference.aspose.com/words/net/aspose.words/document/) и сохраняет его в `MemoryStream` в формате XPS. Вторая перегрузка принимает объект `Stream`. Поток должен содержать документ в формате XPS.

Вы можете скачать примеры перегрузки методов из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/download/MissingFeaturesofOpenXMLWordsv1.1/Print.Document.via.XPS.API.zip).

Вы можете скачать образец файла этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

## Печать документа с настройками и диалоговыми окнами предварительного просмотра

При работе с документами часто требуется распечатать их на выбранном принтере. Полезно использовать диалоговое окно предварительного просмотра, чтобы визуально проверить, как будет выглядеть напечатанный документ, и выбрать соответствующие параметры печати.

Aspose.Words не имеет встроенных диалогов или форм, но реализует класс [AsposeWordsPrintDocument](https://reference.aspose.com/words/net/aspose.words.rendering/asposewordsprintdocument/), основанный на классе .NET **PrintDocument**. Экземпляр этого класса можно передать в форму **PrintPreviewDialog** для предварительного просмотра и печати документа. Кроме того, класс [PrintPreviewDialog](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.printpreviewdialog?view=netframework-4.8) определяет выходные данные для передачи на принтер.

В следующем примере показано, как использовать эти классы для печати документа из Aspose.Words через диалоговые окна предварительного просмотра и настроек:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintPreviewSettingsDialog-PrintPreviewSettingsDialog.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintPreviewSettingsDialog-PrintPreviewSettingsDialogEvent.cs" >}}

{{% alert color="primary" %}}

Свойство **AllowSomePages** позволяет выбрать диапазон страниц для печати, если значение этого свойства равно True. По умолчанию для печати выбираются все страницы диапазона.

{{% /alert %}}

Чтобы оптимизировать внешний вид настроек диалогового окна предварительного просмотра, укажите свойства класса **PrintPreviewDialog**.

## Печать нескольких страниц на одном листе

Всегда полезно иметь большую гибкость при печати документов. Используя .NET и Aspose.Words, вы можете легко настроить операцию печати для реализации своей собственной логики, определив, как документ будет выглядеть на печатной странице.

Как и в предыдущем разделе, Aspose.Words реализует класс **MultipagePrintDocument**, основанный на классе .NET **PrintDocument**. Это означает, что существующую инфраструктуру печати .NET можно использовать таким образом, чтобы диалоговые окна печати и предварительного просмотра позволяли визуализировать документ перед печатью. Класс **MultipagePrintDocument** предоставляет возможность распечатать несколько страниц на одном листе бумаги.

{{% alert color="primary" %}} You can download an example of using the **MultipagePrintDocument** class from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/MultipagePrintDocumentExample). {{% /alert %}}

Результат этого примера кода показан ниже:

![print-a-document-programmatically-or-using-dialogs-aspose-words-net](/words/net/print-a-document-programmatically-or-using-dialogs/print-a-document-programmatically-or-using-dialogs-1.png)

## Скрытие диалогового окна хода печати при печати документа

Диалоговое окно хода печати не отображается при печати документа с помощью метода [Print](https://reference.aspose.com/words/net/aspose.words/document/print/). Однако это диалоговое окно появляется во время печати другим методом [Print](https://reference.aspose.com/words/net/aspose.words.rendering/asposewordsprintdocument/). В этом случае, чтобы диалоговое окно "Печать" не появлялось, в этом методе следует указать действительные настройки принтера и стандартный контроллер печати, как показано в примере ниже:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintProgressDialog-PrintProgressDialog.cs" >}}

Вы можете скачать образец файла этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

## Как сократить время первого звонка для печати документа

Aspose.Words считывает и кэширует некоторые поля **PrinterSettings**, чтобы сократить время печати. Этого можно добиться, вызвав метод [CachePrinterSettings](https://reference.aspose.com/words/net/aspose.words.rendering/asposewordsprintdocument/cacheprintersettings/). Этот метод вызывается перед началом печати, если он не выполнялся ранее. Обратите внимание, что общее время печати с вызовом этого метода и без него практически одинаково. Цель использования этого метода — сократить время первого вызова метода [Print](https://reference.aspose.com/words/net/aspose.words/document/print/). В следующем примере кода показано, как использовать этот метод:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-Print_CachePrinterSettings-CachePrinterSettings.cs" >}}

## Смотрите также

- [Обновление платформы для Windows Vista](https://docs.microsoft.com/en-us/windows/win32/win7ip/platform-update-for-windows-vista-overview)
