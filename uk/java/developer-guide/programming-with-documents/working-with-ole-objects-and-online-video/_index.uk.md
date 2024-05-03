---
title: Робота з об'єктами Олеся
second_title: Aspose.Words для Java
articleTitle: Робота з об'єктами Олеся
linktitle: Робота з об'єктами Олеся
description: "Створення та модифікація електронної пошти у вашому документі Javaй"
type: docs
weight: 360
url: /uk/java/working-with-ole-objects/
---

OLE стоїть для "Об'єктного зв'язку і вбудовування". Це технологія, за допомогою якої користувачі можуть працювати з документами, що містять "об'єкти", створеними або редаговані сторонніми додатками. Це, OLE дозволяє експортувати ці "об'єкти" на інший додаток для редагування, а потім імпортувати їх назад з деякими додатковим вмістом.

У цій статті ми будемо говорити про вставку об’єкта ОЛЕ та налаштування його властивостей в документ.

## Вставте об'єкт Ole

Якщо ви хочете OLE Об'єкт, зателефонуйте [InsertOleObject](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObject-java.io.InputStream-java.lang.String-boolean-java.io.InputStream) метод і пройти його **ProgId** явно з іншими параметрами.

Приклад наступного коду показує, як вставляти OLE Об'єкт в документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

### Встановити ім'я та розширення файлів, коли Inserting OLE Об'єкт

OLE пакет є спадковим і "необхідним" способом зберігати вбудовані об'єкти, якщо OLE обробник невідомо.

Рано Windows варіанти, такі як Windows 3.1, 95, і 98 мали пакет. Заява, яка може бути використана для складання будь-якого типу даних в документ. Це додаток тепер виключено з Windows, але Microsoft Word і інші додатки, як і раніше, використовують його для складання даних, якщо обробник OLE відсутній або невідомо. Про нас `OlePackage` Клас надає користувачам доступ до властивостей пакету OLE.

Приклад коду показує, як встановити ім'я файлу, розширення та назву відображення для OLE Package:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

### Отримати доступ до сирих даних OLE

Користувачі можуть отримати доступ до даних об'єктів OLE за допомогою різних властивостей та методів `OleFormat` клас. Наприклад, можна отримати `OLE` об'єкт сирої інформації або шлях і ім'я файлу джерела для об'єкту OLE.

Приклад коду показує, як отримати OLE Об'єкт сировини з використанням [GetRawData](https://reference.aspose.com/words/java/com.aspose.words/oleformat/#getRawData) метод:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

### Вставити OLE Об'єкт ікони

OLE об'єкти можна вставляти в документи як зображення.

Приклад коду показує, як вставити об'єкт OLE як іконку. Для цієї мети **DocumentBuilder** клас виводить [InsertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.io.InputStream-java.lang.String-java.lang.String-java.lang.String) метод.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.java" >}}

Приклад коду показує, як вставляти вбудований об'єкт OLE як іконку з потоку в документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIconUsingStream.java" >}}

## Вставити онлайн відео

Онлайн відео можна вставляти в документ Word з * "Insert" > "Online Video"* вкладка. Ви можете вставити онлайн відео в документ на поточному місці за допомогою виклику [InsertOnlineVideo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOnlineVideo-java.lang.String-double-double) метод:

Про нас [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) клас представляє чотири перевантаження цього методу. Перші роботи з найпопулярнішими відео ресурсами та займають `URL` відео як параметр. Наприклад, перший перевантаження підтримує просту вставку онлайн відео з [Веб-сайт](https://www.youtube.com/) і [Вімео](https://vimeo.com/) ресурси.

Приклад наступного коду показує, як вставляти онлайн відео з *Vimeo* в документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Video-InsertOnlineVideo-InsertOnlineVideo.java" >}}

Другий перевантаження працює з усіма іншими відеоресурсами і приймає вбудований HTML-код як параметр. HTML-код для вбудовування відео може відрізнятися залежно від постачальника, тому зв'яжіться з відповідним постачальником для деталей.

{{% alert color="primary" %}}

Будь ласка, зверніть увагу, що документ буде автоматично оптимізований для MS Word 2013 для відображення відео.

{{% /alert %}}

Приклад коду показує, як вставити онлайн відео в документ за допомогою такого HTML коду:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Video-InsertOnlineVideo-InsertOnlineVideoWithEmbedHtml.java" >}}
