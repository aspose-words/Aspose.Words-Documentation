---
title: Робота з OLE Об'єктами та Інтернет-відео C#
second_title: Aspose.Words для .NET
articleTitle: Робота з OLE Об'єкти та Інтернет-відео
linktitle: Робота з OLE Об'єкти та Інтернет-відео
description: "Створення та модифікація електронної пошти у вашому документі C#й"
type: docs
weight: 360
url: /uk/net/working-with-ole-objects/
---

OLE (Object Linking and Embedding) є технологією, за допомогою якої користувачі можуть працювати з документами, що містять "об'єкти", створеними або редаговані сторонніми додатками. Це, OLE дозволяє редагувати додаток, щоб експортувати ці "об'єкти" до іншої програми редагування, а потім імпортувати їх з додатковим вмістом.

У цій статті ми будемо говорити про вставку об'єкта OLE і налаштування його властивостей, а також вставлення онлайн відео в документ.

## Вставити OLE Об'єкт

Якщо ви хочете OLE Об'єкт, зателефонуйте [InsertOleObject](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertoleobject/) метод і пройти його **ProgId** явно з іншими параметрами.

Приклад наступного коду показує, як вставляти OLE Об'єкт в документ:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertOleObject.cs" >}}

### Встановити ім'я та розширення файлів, коли Inserting OLE Об'єкт

OLE пакет є спадковим і "необхідним" способом зберігати вбудовані об'єкти, якщо OLE обробник невідомий.

Рано Windows варіанти, такі як Windows 3.1, 95, і 98 мали пакет. exe додаток, який може бути використаний для складання будь-якого типу даних в документ. Це додаток тепер виключено з Windows, але Microsoft Word і інші додатки, як і раніше, використовують його для складання даних, якщо обробник OLE відсутній або невідомо. Про нас `OlePackage` Клас надає користувачам доступ до властивостей пакету OLE.

Приклад наступного коду показує, як встановити ім'я файлу, розширення та ім'я відображення для OLE Package:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.cs" >}}

### Отримати доступ до сирих даних OLE

Користувачі можуть отримати доступ до даних об'єктів OLE за допомогою різних властивостей та методів `OleFormat` клас. Наприклад, можна отримати `OLE` об'єкт сирої інформації або шлях і ім'я файлу джерела для об'єкту OLE.

Приклад наступного коду показує, як отримати OLE Об'єкт сирої інформації з використанням [GetRawData](https://reference.aspose.com/words/net/aspose.words.drawing/oleformat/getrawdata/) метод:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.cs" >}}

### Вставити OLE Об'єкт ікони

OLE об'єкти можна вставляти в документи як зображення.

Приклад коду показує, як вставити об'єкт OLE як іконку. Для цієї мети [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) клас виводить [InsertOleObjectAsIcon](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertoleobjectasicon/) метод:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.cs" >}}

Приклад коду показує, як вставляти вбудований об'єкт OLE як іконку з потоку в документ:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIconUsingStream.cs" >}}

{{% alert color="primary" %}}

Максимальний розмір іконки повинен бути 32х32 для коректного відображення.

{{% /alert %}}

## Вставити онлайн відео

Онлайн відео можна вставляти в документ Word з * "Insert" > "Online Video"* вкладка. Ви можете вставити онлайн відео в документ на поточному місці, викликаючи [InsertOnlineVideo](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertonlinevideo/) метод.

Про нас [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) клас представляє чотири перевантаження цього методу. Перші роботи з найпопулярнішими відео ресурсами та займають `URL` відео як параметр. Наприклад, перший перевантаження підтримує просту вставку онлайн відео з [Веб-сайт](https://www.youtube.com/) і [Вімео](https://vimeo.com/) ресурси.

Приклад наступного коду показує, як вставляти онлайн відео з *Vimeo* в документ:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Video-InsertOnlineVideo-InsertOnlineVideo.cs" >}}

Другий перевантаження працює з усіма іншими відеоресурсами і займає вбудований HTML-код як параметр. HTML-код для вбудовування відео може відрізнятися залежно від постачальника, тому зв'яжіться з відповідним постачальником для деталей.

{{% alert color="primary" %}}

Будь ласка, зауважте, що документ буде автоматично оптимізований для MS Word 2013, щоб показати відео.

{{% /alert %}}

Приклад наступного коду показує, як вставити онлайн відео в документ за допомогою такого HTML коду:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Video-InsertOnlineVideoWithEmbedHtml-InsertOnlineVideoWithEmbedHtml.cs" >}}