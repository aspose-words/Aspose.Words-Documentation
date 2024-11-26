---
title: Збережіть документ у C#
second_title: Aspose.Words для .NET
articleTitle: Збережіть документ
linktitle: Збережіть документ
type: docs
description: "Збережіть документ у будь-якому форматі підтримки C#й"
keywords: "save a document c#, save a document to file c#, save a document to stream c#, save a document Aspose .NET, save formats supported by Aspose.Words .NET"
weight: 20
url: /uk/net/save-a-document/
timestamp: 2024-07-09-19-00-42
---

Більшість завдань, які потрібно виконувати з Aspose.Words задіяти збереження документа. Для збереження документа Aspose.Words забезпечує [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) метод методу [Document](https://reference.aspose.com/words/net/aspose.words/document/) клас. Є перевантаження, які дозволяють зберегти документ на файл, потік або ASP.NET HttpResponse об'єкт для відправки в браузер клієнта. Документ можна зберігати в будь-якому форматі збереження, що підтримується Aspose.Wordsй Для всіх підтриманих форматів збереження, див. інформацію [SaveFormat](https://reference.aspose.com/words/net/aspose.words/saveformat/) заохочення.

## Збережіть файл {#save-a-document-to-a-file}

Просто використовуйте [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) метод з ім'ям файлу. Aspose.Words визначати формат збереження з розширення файлу, який ви вказали.

Приклад наступного коду показує, як завантажити і зберегти документ на файл:

{{< gist "aspose-words-gists" "6b49e2482a4ca546ffd2b4f9fa642041" "load-save.cs" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл шаблону цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.doc)й

{{% /alert %}}

## Збережіть потік {#save-a-document-to-a-stream}

Пройдіть об'єкт потоку до [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) метод. Необхідно вказати формат збереження прямо при збереженні потоку.

Приклад наступного коду показує, як завантажити і зберегти документ на потік:

{{< gist "aspose-words-gists" "6b49e2482a4ca546ffd2b4f9fa642041" "load-save-stream.cs" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл шаблону цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx)й

{{% /alert %}}

## Надіслати документ на браузер Клієнта {#sending-a-document-to-a-client-browser}

Для того, щоб надіслати документ на браузер клієнта, скористайтеся спеціальним перевантаженням, яке займає чотири параметри: ім'я файлу, формат збереження, тип збереження і ASP.NET HttpResponse об'єкт. Таким чином, документ буде представлений користувачу [ContentDisposition](https://reference.aspose.com/words/net/aspose.words/contentdisposition/) анумація, яка визначає, чи буде надіслано документ на браузер, надасть можливість відкрити себе безпосередньо в браузері або в додатку, пов'язаному з розширенням файлів.

Приклад коду показує, як надіслати документ на браузер клієнта з ASP.NET Код:

{{< gist "aspose-words-gists" "6b49e2482a4ca546ffd2b4f9fa642041" "send-to-client-browser.cs" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл шаблону цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx)й

{{% /alert %}}

Це перевантаження `Save` метод не доступний при використанні .NET Профіль клієнта DLL. Цей DLL розташований в **net3.5_ClientProfile** папка. Про нас .NET Профіль клієнта виключає збір, такі як **System.Web**, Отже, **HttpResponse** немає. Це повністю за проектом.

Це може проявлятися як помилка:

**"Не перевантажуйте метод 'Зберегти' приймає параметри '4'."**

Якщо необхідно використовувати Aspose.Words в ASP.NET додаток, Рекомендується використовувати .NET 2.0 DLL, де доступний правильне перевантаження, як описано в цій статті.

## Зберегти на PCL {#save-a-document-to-pcl}

Aspose.Words підтримує збереження документа в PCL (Printer Command Language). Aspose.Words може зберігати документи в форматі PCL 6 (PCL 6 Enhanced або PCL XL) Про нас `PclSaveOptions` клас може використовуватися для уточнення додаткових параметрів при збереженні документа в формат PCL.

Приклад наступного коду показує, як зберегти документ на PCL за допомогою варіантів збереження:

{{< gist "aspose-words-gists" "b5a3c7ccb6e79a15c8d9d65e050a881b" "docx-to-pcl.cs" >}}

## Дивитися ще

- Інформація про ASP.NET [ХттпРеспонс](https://docs.microsoft.com/en-us/dotnet/api/system.web.httpresponse?view=netframework-4.8) об'єкт
