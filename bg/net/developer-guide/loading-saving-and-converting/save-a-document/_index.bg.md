---
title: Запис на документ в C#
second_title: Aspose.Words вместо .NET
articleTitle: Запис на документ
linktitle: Запис на документ
type: docs
description: "Запис на документ във всеки поддържан формат, като се използва C#."
keywords: "save a document c#, save a document to file c#, save a document to stream c#, save a document Aspose .NET, save formats supported by Aspose.Words .NET"
weight: 20
url: /bg/net/save-a-document/
---

Повечето от задачите, които трябва да изпълните Aspose.Words включва запазване на документ. Запис на документ Aspose.Words осигурява [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) метод на [Document](https://reference.aspose.com/words/net/aspose.words/document/) Клас. Има претоварване, което позволява запис на документ във файл, поток, или ASP.NET HtpResponse обект за изпращане до клиент браузър. Документът може да бъде записан във всеки поддържан от Aspose.Words. За списъка на всички поддържани формати за запис вижте [SaveFormat](https://reference.aspose.com/words/net/aspose.words/saveformat/) Изброяване.

## Запис във файл {#save-a-document-to-a-file}

Просто използвайте [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) метод с име на файл. Aspose.Words ще определи формата за запис от разширението на файла, който посочите.

Следният пример за код показва как да заредите и запишете документ във файл:

{{< gist "aspose-words-gists" "6b49e2482a4ca546ffd2b4f9fa642041" "load-save.cs" >}}

{{% alert color="primary" %}}

Можете да изтеглите шаблонния файл на този пример от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## Запис към поток {#save-a-document-to-a-stream}

Предайте обект на поток [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) метод. Необходимо е изрично да се посочи формата за запис при запис към поток.

Следният пример за код показва как да се зареди и запази документ към поток:

{{< gist "aspose-words-gists" "6b49e2482a4ca546ffd2b4f9fa642041" "load-save-stream.cs" >}}

{{% alert color="primary" %}}

Можете да изтеглите шаблонния файл на този пример от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

## Изпращане на документ на клиент браузър {#sending-a-document-to-a-client-browser}

За да изпратите документ на клиентски браузър, използвайте специално претоварване, което отнема четири параметъра: име на файл, запис на формат, запис на тип и ASP.NET HtpResponse обект. Начинът, по който документът ще бъде представен на потребителя е представен от [ContentDisposition](https://reference.aspose.com/words/net/aspose.words/contentdisposition/) изброяване, което определя дали изпратеният на браузъра документ ще предостави възможност да се отвори директно в браузъра или в приложението, свързано с разширението на файла.

Следният пример за код показва как да изпратите документ до клиента от браузър ASP.NET код:

{{< gist "aspose-words-gists" "6b49e2482a4ca546ffd2b4f9fa642041" "send-to-client-browser.cs" >}}

{{% alert color="primary" %}}

Можете да изтеглите шаблонния файл на този пример от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

Това претоварване на `Save` не е наличен метод при използване на .NET Профил на клиента DLL. Този DLL се намира в **net3.5_ClientProfile** папка. На .NET Клиентският профил изключва възли като **System.Web**, следователно, **HttpResponse** не е на разположение. Това е изцяло по дизайн.

Това може да се прояви като грешка:

**"Не претоварване за метод "Запази" изисква параметри "4."**

Ако имате нужда да използвате Aspose.Words в ASP.NET приложение, Препоръчва се употребата на .NET 2.0 DLL, където правилното претоварване е на разположение, както е описано в тази статия.

## Запис в PCL {#save-a-document-to-pcl}

Aspose.Words поддържа запазване на документ в PCL (Printer Command Language). Aspose.Words може да записва документи във формат PCL 6 (PCL 6 подобрена или PCL XL). На `PclSaveOptions` Класът може да се използва за определяне на допълнителни опции при запис на документ във формат PCL.

Следният пример за код показва как да запишете документ в PCL чрез използване на опции за запис:

{{< gist "aspose-words-gists" "b5a3c7ccb6e79a15c8d9d65e050a881b" "docx-to-pcl.cs" >}}

## Вижте също

- Информация за ASP.NET [HtpResponse](https://docs.microsoft.com/en-us/dotnet/api/system.web.httpresponse?view=netframework-4.8) Обект
