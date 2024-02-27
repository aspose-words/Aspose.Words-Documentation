---
title: Сохранить документ в C#
second_title: Aspose.Words для .NET
articleTitle: Сохранить документ
linktitle: Сохранить документ
type: docs
description: "Сохраните документ в любом поддерживаемом формате, используя C#."
keywords: "save a document c#, save a document to file c#, save a document to stream c#, save a document Aspose .NET, save formats supported by Aspose.Words .NET"
weight: 20
url: /ru/net/save-a-document/
---

Большинство задач, которые вам нужно выполнить с помощью Aspose.Words, связаны с сохранением документа. Для сохранения документа Aspose.Words предоставляет метод [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) класса [Document](https://reference.aspose.com/words/net/aspose.words/document/). Существуют перегрузки, которые позволяют сохранять документ в файл, поток или объект ASP.NET HttpResponse для отправки в клиентский браузер. Документ можно сохранить в любом формате сохранения, поддерживаемом Aspose.Words. Список всех поддерживаемых форматов сохранения см. в перечислении [SaveFormat](https://reference.aspose.com/words/net/aspose.words/saveformat/).

## Сохранить в файл {#save-a-document-to-a-file}

Просто используйте метод [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) с именем файла. Aspose.Words определит формат сохранения по указанному вами расширению файла.

В следующем примере кода показано, как загрузить и сохранить документ в файл:

{{< gist "aspose-words-gists" "6b49e2482a4ca546ffd2b4f9fa642041" "load-save.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона этого примера по адресу [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## Сохранить в поток {#save-a-document-to-a-stream}

Передайте объект потока методу [Save](https://reference.aspose.com/words/net/aspose.words/document/save/). При сохранении в поток необходимо явно указать формат сохранения.

В следующем примере кода показано, как загрузить и сохранить документ в потоке:

{{< gist "aspose-words-gists" "6b49e2482a4ca546ffd2b4f9fa642041" "load-save-stream.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона этого примера по адресу [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

## Отправка документа клиентскому браузеру {#sending-a-document-to-a-client-browser}

Чтобы отправить документ в клиентский браузер, используйте специальную перегрузку, которая принимает четыре параметра: имя файла, формат сохранения, тип сохранения и объект ASP.NET HttpResponse. Способ представления документа пользователю представлен перечислением [ContentDisposition](https://reference.aspose.com/words/net/aspose.words/contentdisposition/), которое определяет, будет ли документ, отправленный в браузер, предоставлять возможность открыть себя непосредственно в браузере или в приложении, связанном с расширением файла.

В следующем примере кода показано, как отправить документ в клиентский браузер из кода ASP.NET:

{{< gist "aspose-words-gists" "6b49e2482a4ca546ffd2b4f9fa642041" "send-to-client-browser.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона этого примера по адресу [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

Эта перегрузка метода `Save` недоступна при использовании библиотеки профиля клиента .NET. Эта DLL находится в папке **net3.5_ClientProfile**. Профиль клиента .NET исключает такие сборки, как **System.Web**, поэтому **HttpResponse** недоступен. Это полностью задумано.

Это может проявляться как ошибка:

**"Никакая перегрузка метода Save не принимает параметров "4"**

Если вам нужно использовать Aspose.Words в приложении ASP.NET, рекомендуется использовать DLL .NET 2.0, где доступна правильная перегрузка, как описано в этой статье.

## Сохранить в PCL {#save-a-document-to-pcl}

Aspose.Words поддерживает сохранение документа в PCL (язык команд принтера). Aspose.Words может сохранять документы в формате PCL 6 (PCL 6 Enhanced или PCL XL). Класс `PclSaveOptions` можно использовать для указания дополнительных параметров при сохранении документа в формате PCL.

В следующем примере кода показано, как сохранить документ в PCL, используя параметры сохранения:

{{< gist "aspose-words-gists" "b5a3c7ccb6e79a15c8d9d65e050a881b" "docx-to-pcl.cs" >}}

## Смотрите также

- Информация об объекте ASP.NET [HttpResponse](https://docs.microsoft.com/en-us/dotnet/api/system.web.httpresponse?view=netframework-4.8)
