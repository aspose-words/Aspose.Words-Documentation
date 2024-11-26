---
title: Печат на документ в C#
second_title: Aspose.Words вместо .NET
articleTitle: Печат на документ Програмиране или използване на диалогови файлове
linktitle: Печат на документ Програмиране или използване на диалогови файлове
description: "Печат на документ върху Server използване на неуправляемия XpsPrint API или чрез избран принтер със Настройки и печат Диалози в C#."
type: docs
weight: 55
url: /bg/net/print-a-document-programmatically-or-using-dialogs/
timestamp: 2024-01-31-14-23-37
---

Тази статия описва как да отпечатате документ за обработка на думи от ASP.NET или Windows Приложение на услугата Aspose.Words и `XpsPrint` API. Той също така демонстрира методите за отпечатване на документ със Настройки, печат и разпечатване на диалози за прогрес и обяснява как да се намали времето на първото обаждане за печат на документ.

## Печат на документ върху Server през `XpsPrint` API

Този раздел е предназначен за потребители, които искат да представят XPS документ за неуправляемия XpsPrint API от a .NET приложение Aspose.Words.

### Ограничения за отпечатване на документ в ASP.NET или Windows Услуги

При разработване на .NET приложение, което произвежда някои печатен изход, обикновено можете да използвате класове, предвидени в *System.Drawing.Printing* пространство за име, или Windows Класове на фондацията за представяне (WPF). Въпреки това, ако заявлението е ASP.NET или Windows Услугата приложение, опциите за печат са ограничени, защото Microsoft обезкуражава използването на този подход. На .NET Framework Класовете за печат не се поддържат от приложението за услуги. Това включва ASP страници, които обикновено се изпълняват в контекста на услугата сървър.

Класовете в рамките на *System.Drawing.Printing* не се поддържа място за използване в рамките на Windows услуга или ASP.NET прилагането или услугата и опитите за тяхното използване могат да доведат до намаляване на експлоатационните показатели на услугите, изключения от работното време и други въпроси. Използване на WPF за изграждане Windows Услугите също не се поддържат. Тъй като WPF е технология за представяне, Windows услуга изисква подходящи разрешения за извършване на визуални операции, включващи взаимодействие с потребителя. Ако Windows Службата няма такива разрешения, може да има неочаквани резултати.

На Aspose.Words [Document](https://reference.aspose.com/words/net/aspose.words/document/) Обектът осигурява семейство [Print](https://reference.aspose.com/words/net/aspose.words/document/methods/print/index) методи за отпечатване на документи. Тези методи използват .NET класове на печат, определени в *System.Drawing.Printing* Имепространство. Има много. Aspose.Words клиенти, които успешно ги използват за отпечатване в техните сървърни приложения. Въпреки това тази статия показва алтернативен метод за отпечатване, който съответства на Microsoftпрепоръки.

### Методи за отпечатване на документ върху Server

Правилният начин за отпечатване на документи според Microsoft е чрез използване на неуправляем XpsPrint API. Това. API е наличен на Windows 7, Windows Server 2008 R2, и върху Windows Vista при условие че платформата се актуализира Windows Vista е инсталиран.

От Aspose.Words може лесно да конвертира всеки документ в XPS Трябва само да напишете кода, който преминава XPS документ към `XpsPrint` API. Единственият проблем е, че `XpsPrint` API е неуправляем и изисква известно познание за технологията Platform Invoke.

За да отпечатате документ, Aspose.Words осигурява **XpsPrintHelper** Класът съдържа прост метод за печат, където просто трябва да посочите следните параметри (вж. повече подробности в статията) [Печат на документ чрез XPS API](/words/net/missing-features-in-openxml/)):

- Документ, който искате да отпечатате.
- Име на принтера.
- Име на длъжността (по избор).
- Булева стойност, уточнявайки дали програмата трябва да изчака, докато печатната работа е завършена. Следователно системата или ще провери дали документът е отпечатан успешно, или ще се върне веднага след изпращането на печатната работа. В последния случай е невъзможно да се установи дали печатната работа е била успешна.

След като се сблъскате с проблеми, които представят или печатат документа, методът ще направи изключение.

Примерът с кода по-долу показва как да отпечатате документ с помощта на **XpsPrintHelper** клас:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintDocViaXpsPrint-PrintDocViaXpsPrint.cs" >}}

Когато стартирате проекта, той отпечатва примерен документ на посочения принтер и отваря конзолен прозорец, за да покаже резултатите от печат. Когато печатната работа завърши или направи грешка, системата ще покаже съобщение за успех или текст на хвърленото изключение.

Можете също така да зададете някои настройки за печат с помощта на [PageSetup](https://reference.aspose.com/words/net/aspose.words/pagesetup/) Клас. Например, в Microsoft Word, Принтерите са определени за всеки раздел и са специфични за принтера. Следователно, можете да програмно да промените тези стойности за всеки раздел чрез [FirstPageTray](https://reference.aspose.com/words/net/aspose.words/pagesetup/firstpagetray/) както и [OtherPagesTray](https://reference.aspose.com/words/net/aspose.words/pagesetup/otherpagestray/) имоти.

{{% alert color="primary" %}}

В някои случаи може да се наложи да използвате тази проба без Aspose.Words. Например, когато вече имате XPS документ и просто искате да го отпечатате от ASP.NET или Windows Молба за обслужване. След това можете просто да изтриете `Print` метод.

{{% /alert %}}

Има две претоварвания на **XpsPrintHelper**.**Print** метод. Първото претоварване отнема а [Document](https://reference.aspose.com/words/net/aspose.words/document/) обект и го спестява в `MemoryStream` в XPS формат. Второто претоварване приема a `Stream` Възразявам. Потокът трябва да съдържа документ в XPS формат.

Можете да изтеглите примерите за претоварване на метода от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/download/MissingFeaturesofOpenXMLWordsv1.1/Print.Document.via.XPS.API.zip).

Можете да изтеглите примерния файл от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

## Отпечатване на документ със настройки и печат Диалози за преглед

При работа с документи често се изисква да бъдат отпечатани на избран принтер. Полезно е да използвате прозорец за преглед на печат, за да проверите визуално как ще се появи отпечатаният документ и да изберете съответните опции за печат.

На Aspose.Words няма вградени диалози или форми, но прилага [AsposeWordsPrintDocument](https://reference.aspose.com/words/net/aspose.words.rendering/asposewordsprintdocument/) клас, въз основа на .NET **PrintDocument** Клас. Пример за този клас може да бъде предаден на **PrintPreviewDialog** форма за преглед и печат на документа. Също така, [PrintPreviewDialog](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.printpreviewdialog?view=netframework-4.8) клас определя изхода за предаване на принтер.

Следният пример показва как да използвате тези класове, за да отпечатате документ от Aspose.Words чрез прозореца за печат и настройки:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintPreviewSettingsDialog-PrintPreviewSettingsDialog.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintPreviewSettingsDialog-PrintPreviewSettingsDialogEvent.cs" >}}

{{% alert color="primary" %}}

На **AllowSomePages** имотът ви позволява да изберете набор от страници за печат, ако стойността на този имот е вярна. По подразбиране, всички страници в обхвата са избрани за печат.

{{% /alert %}}

За да оптимизирате външния вид на Print Preview настройките на диалоговия прозорец, посочете свойствата на **PrintPreviewDialog** Клас.

## Печат на множество страници на един лист

Винаги е полезно да имаме повече гъвкавост при отпечатването на документи. Използване .NET както и Aspose.Words лесно можете да настроите печатната операция, за да приложите Вашата обичайна логика, като определите начина, по който документът ще се появи на печатната страница.

Както в предишния раздел, Aspose.Words прилага **MultipagePrintDocument** клас, който се основава на .NET **PrintDocument** Клас. Това означава, че съществува .NET печат инфраструктура може да се използва по такъв начин, че печатът и печат предварителен прозорец ще позволи визуализиране на документа преди печат. На **MultipagePrintDocument** Класът дава възможност да се отпечатат няколко страници на един лист хартия.

{{% alert color="primary" %}} You can download an example of using the **MultipagePrintDocument** class from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/MultipagePrintDocumentExample). {{% /alert %}}

Резултатът от този пример с код е показан по-долу:

![print-a-document-programmatically-or-using-dialogs-aspose-words-net](/words/net/print-a-document-programmatically-or-using-dialogs/print-a-document-programmatically-or-using-dialogs-1.png)

## Скриване на диалога за напредъка при отпечатването на документ

Диалогът за напредъка при печат не се появява при отпечатване на документ чрез [Print](https://reference.aspose.com/words/net/aspose.words/document/print/) метод. Този прозорец обаче се появява по време на печат с друг [Print](https://reference.aspose.com/words/net/aspose.words.rendering/asposewordsprintdocument/) метод. В този случай, за да се предотврати появата на диалоговия прозорец за печат, трябва да се определят валидни настройки на принтера и стандартен контролер за печат в този метод, както е показано в примера по-долу:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintProgressDialog-PrintProgressDialog.cs" >}}

Можете да изтеглите примерния файл от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

## Как да се намали времето на първото посещение за печат на документ

Aspose.Words чете и каше някои полета на **PrinterSettings** за намаляване на времето за печатане. Можете да постигнете това като се обадите на [CachePrinterSettings](https://reference.aspose.com/words/net/aspose.words.rendering/asposewordsprintdocument/cacheprintersettings/) метод. Този метод се нарича преди да започне печатът, ако не е бил изпълнен по-рано. Имайте предвид, че общото време на отпечатване с и без да се обаждате на този метод е почти същото. Целта на използването на този метод е да се намали времето на първото повикване на [Print](https://reference.aspose.com/words/net/aspose.words/document/print/) метод. Следният пример с код показва как да използвате този метод:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-Print_CachePrinterSettings-CachePrinterSettings.cs" >}}

## Вижте също

- [Обновяване на платформата за Windows Vista](https://docs.microsoft.com/en-us/windows/win32/win7ip/platform-update-for-windows-vista-overview)
