---
title: Сохранить документ в C#
second_title: Aspose.Words для .NET
articleTitle: Сохранить документ
linktitle: Сохранить документ
type: docs
description: "Сохранить документ в любом поддерживаемом формате с помощью C#."
keywords: "save a document c#, save a document to file c#, save a document to stream c#, save a document Aspose .NET, save formats supported by Aspose.Words .NET"
weight: 20
url: /ru/net/save-a-document/
timestamp: 2024-07-09-19-00-42
---

Большинство задач, которые вам нужно выполнить Aspose.Words Сохранить документ. Чтобы сохранить документ Aspose.Words обеспечивает [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) Методика [Document](https://reference.aspose.com/words/net/aspose.words/document/) класс. Есть перегрузки, которые позволяют сохранить документ в файл, поток или ASP.NET Объект HttpResponse для отправки в клиентский браузер. Документ может быть сохранен в любом формате сохранения, поддерживаемом Aspose.Words. Для списка всех поддерживаемых форматов сохранения см. [SaveFormat](https://reference.aspose.com/words/net/aspose.words/saveformat/) перечисление.

## Сохранить в файл {#save-a-document-to-a-file}

Просто используйте [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) Метод с именем файла. Aspose.Words Определите формат сохранения из расширения файла, которое вы указали.

Следующий пример кода показывает, как загрузить и сохранить документ в файл:

{{< gist "aspose-words-gists" "6b49e2482a4ca546ffd2b4f9fa642041" "load-save.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## Сохранить в потоке {#save-a-document-to-a-stream}

Передайте потоку объект в [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) метод. Необходимо четко указать формат сохранения при сохранении в потоке.

Следующий пример кода показывает, как загрузить и сохранить документ в поток:

{{< gist "aspose-words-gists" "6b49e2482a4ca546ffd2b4f9fa642041" "load-save-stream.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

## Отправить документ клиентскому браузеру {#sending-a-document-to-a-client-browser}

Чтобы отправить документ в браузер клиента, используйте специальную перегрузку, которая занимает четыре параметра: имя файла, формат сохранения, тип сохранения и ASP.NET Объект HttpResponse. Способ, которым документ будет представлен пользователю, представляет собой [ContentDisposition](https://reference.aspose.com/words/net/aspose.words/contentdisposition/) перечисление, которое определяет, предоставит ли документ, отправленный в браузер, возможность открыть себя непосредственно в браузере или в приложении, связанном с расширением файла.

Следующий пример кода показывает, как отправить документ в браузер клиента из ASP.NET код:

{{< gist "aspose-words-gists" "6b49e2482a4ca546ffd2b4f9fa642041" "send-to-client-browser.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

Эта перегрузка `Save` Метод недоступен при использовании .NET Профиль клиента DLL. Этот DLL находится в **net3.5_ClientProfile** папка. The .NET Профиль клиента исключает сборки, такие как **System.Web**, Следовательно, **HttpResponse** недоступна. Это полностью по дизайну.

Это может проявляться как ошибка:

**"Никакая перегрузка для метода "Сохранить" не требует параметров "4"**

Если вам нужно использовать Aspose.Words в ASP.NET применение, Рекомендуется использовать .NET 2.0 DLL, где доступна правильная перегрузка, как описано в этой статье.

## Скачать PCL {#save-a-document-to-pcl}

Aspose.Words Поддерживает сохранение документа в PCL (Printer Command Language). Aspose.Words Документы могут сохраняться в формате PCL 6 (PCL 6 Enhanced или PCL XL). The `PclSaveOptions` Класс можно использовать для указания дополнительных опций при сохранении документа в формате PCL.

Следующий пример кода показывает, как сохранить документ в PCL, используя параметры сохранения:

{{< gist "aspose-words-gists" "b5a3c7ccb6e79a15c8d9d65e050a881b" "docx-to-pcl.cs" >}}

## Смотрите также

- Информация о ASP.NET [HttpОтвет](https://docs.microsoft.com/en-us/dotnet/api/system.web.httpresponse?view=netframework-4.8) объект
