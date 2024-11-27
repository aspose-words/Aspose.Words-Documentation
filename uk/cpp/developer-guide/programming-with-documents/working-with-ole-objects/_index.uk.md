---
title: Робота з OLE об'єктами в C++
second_title: Aspose.Words для C++
articleTitle: Робота з об'єктами OLE
linktitle: Робота з об'єктами OLE
description: "Створіть та змініть OLE для вбудовування у ваш документ за допомогою C++."
type: docs
weight: 360
url: /uk/cpp/working-with-ole-objects/
timestamp: 2024-01-27-14-07-04
---

OLE (Зв'язування та вбудовування об'єктів) - це технологія, за допомогою якої користувачі можуть працювати з документами, що містять "об'єкти", створені або відредаговані сторонніми програмами. Тобто OLE Дозволяє програмі редагування експортувати ці "об'єкти" в іншу програму редагування, а потім імпортувати їх із додатковим вмістом.

У цій статті ми поговоримо про вставку об'єкта OLE та налаштування його властивостей у документ.

## Вставити об'єкт OLE

Якщо вам потрібен об'єкт OLE, викличте метод [InsertOleObject](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertoleobject/) і передайте йому **ProgId** явно з іншими параметрами.

Наступний приклад коду показує, як вставити об'єкт OLE у документ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-DocumentBuilderInsertOleObject.h" >}}

### Встановіть ім'я та розширення файлу під час вставки об'єкта OLE

OLE пакет-це застарілий і" недокументований " спосіб зберігання вбудованих об'єктів, якщо обробник OLE невідомий.

Ранні версії Windows, такі як Windows 3.1, 95 та 98, мали додаток Packager.exe, який можна було використовувати для вбудовування даних будь-якого типу в документ. Ця програма тепер виключена з Windows, але Microsoft Word та інші програми все ще використовують її для введення даних, якщо обробник OLE відсутній або невідомий. Клас `OlePackage` дозволяє користувачам отримувати доступ до властивостей OLE Package.

Наступний приклад коду показує, як встановити ім'я файлу, розширення та відображуване ім'я для OLE Package:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-InsertOleObjectwithOlePackage.h" >}}

### Отримати доступ до необроблених даних об'єкта OLE

Користувачі можуть отримати доступ до даних об'єкта OLE, використовуючи різні властивості та методи класу `OleFormat`. Наприклад, можна отримати вихідні дані об'єкта `OLE` або шлях і ім'я вихідного файлу для пов'язаного об'єкта OLE.

Наступний приклад коду показує, як отримати необроблені дані об'єкта OLE за допомогою методу [GetRawData](https://reference.aspose.com/words/cpp/aspose.words.drawing/oleformat/getrawdata/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-GetAccessToOLEObjectRawData.h" >}}

### Вставити об'єкт Ole як значок

OLE об'єкти також можуть бути вставлені в документи у вигляді зображень.

Наступний приклад коду показує, як вставити об'єкт OLE як піктограму. Для цієї мети клас [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) надає метод [InsertOleObjectAsIcon](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertoleobjectasicon/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-InsertOLEObjectAsIcon.h" >}}

Наступний приклад коду показує, як вставити вбудований об'єкт OLE як піктограму з потоку в документ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-InsertOLEObjectAsIconUsingStream.h" >}}

## Вставити онлайн-відео

Онлайн-відео можна вставити в документ Word на вкладці *"Insert" > "Online Video"*. Ви можете вставити онлайн-відео в документ у поточному місці, викликавши метод [InsertOnlineVideo](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertonlinevideo/).

Клас [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) вводить чотири перевантаження цього методу. Перше перевантаження працює з найпопулярнішими відеоресурсами і приймає `URL` відео як параметр. Наприклад, перше перевантаження підтримує просту вставку онлайн-відео з [YouTube](https://www.youtube.com/) і [Вімео](https://vimeo.com/) ресурс.

Наступний приклад коду показує, як вставити онлайн-відео з *Vimeo* у документ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Add content using DocumentBuilder-InsertOnlineVideo.h" >}}

Друге перевантаження працює з усіма іншими відеоресурсами і використовує вбудований код HTML як параметр. Код HTML для вбудовування відео може відрізнятися залежно від Постачальника, тому зверніться до відповідного постачальника для отримання деталей.

{{% alert color="primary" %}}

Будь ласка, зверніть увагу, що документ буде автоматично оптимізований для MS Word 2013 року для показу відео.

{{% /alert %}}

Наступний приклад коду показує, як вставити онлайн-відео в документ, використовуючи такий код HTML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Add content using DocumentBuilder-InsertOnlineVideoWithEmbedHtml.h" >}}
