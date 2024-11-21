---
title: Работа с объектами Ole
second_title: Aspose.Words для Java
articleTitle: Работа с объектами Ole
linktitle: Работа с объектами Ole
description: "Создавайте и модифицируйте встраивание OLE в документ с помощью Java."
type: docs
weight: 360
url: /ru/java/working-with-ole-objects/
timestamp: 2024-01-27-14-07-04
---

OLE расшифровывается как "Object Linking and Embedding". Это технология, с помощью которой пользователи могут работать с документами, содержащими "объекты", созданные или отредактированные сторонними приложениями. То есть OLE позволяет приложению экспортировать эти "объекты" в другое приложение для редактирования, а затем импортировать их обратно с некоторым дополнительным контентом.

В этой статье мы поговорим о вставке объекта OLE и установке его свойств в документ.

## Вставить объект Ole

Если вам нужен объект OLE, позвоните [InsertOleObject](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObject-java.io.InputStream-java.lang.String-boolean-java.io.InputStream) Способ и передать его **ProgId** явно с другими параметрами.

Следующий пример кода показывает, как вставить OLE Объект в документе:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

### Установите имя файла и расширение при вставке объекта OLE

Пакет OLE является устаревшим и "недокументированным" способом хранения встроенных объектов, если обработчик OLE неизвестен.

Ранний Windows Такие версии, как Windows 3.1, 95 и 98 имели пакет. Приложение exe, которое может быть использовано для встраивания любого типа данных в документ. Теперь эта заявка исключена из WindowsНо Microsoft Word и другие приложения по-прежнему используют его для встраивания данных, если обработчик OLE отсутствует или неизвестен. The `OlePackage` Класс позволяет пользователям получить доступ к свойствам пакета OLE.

Следующий пример кода показывает, как установить имя файла, расширение и отображаемое имя для пакета OLE:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

### Получить доступ к OLE Object Raw Data

Пользователи могут получить доступ к данным объекта OLE, используя различные свойства и методы `OleFormat` класс. Например, можно получить `OLE` исходные данные объекта или путь и имя исходного файла для связанного объекта OLE.

Следующий пример кода показывает, как получить OLE Объектные необработанные данные с использованием [GetRawData](https://reference.aspose.com/words/java/com.aspose.words/oleformat/#getRawData) метод:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

### Включить OLE Объект как икона

Объекты OLE также могут быть вставлены в документы в виде изображений.

Следующий пример кода показывает, как вставить объект OLE в качестве значка. Для этой цели, **DocumentBuilder** Класс разоблачает [InsertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.io.InputStream-java.lang.String-java.lang.String-java.lang.String) метод.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.java" >}}

Следующий пример кода показывает, как вставить встроенный объект OLE в качестве значка из потока в документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIconUsingStream.java" >}}

## Включить онлайн видео

Онлайн-видео можно вставить в документ Word из вкладки *"Включить"> "Онлайн-видео"*. Вы можете вставить онлайн-видео в документ в текущем месте, позвонив по адресу: [InsertOnlineVideo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOnlineVideo-java.lang.String-double-double) метод:

The [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) Класс вводит четыре перегрузки этого метода. Первый работает с самыми популярными видеоресурсами и берет `URL` Видео как параметр. Например, первая перегрузка поддерживает простую вставку онлайн-видео из [YouTube](https://www.youtube.com/) и [Вимео](https://vimeo.com/) ресурсов.

Следующий пример кода показывает, как вставить онлайн-видео из *Vimeo* В документе:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Video-InsertOnlineVideo-InsertOnlineVideo.java" >}}

Вторая перегрузка работает со всеми другими видеоресурсами и принимает в качестве параметра встроенный HTML-код. HTML-код для встраивания видео может варьироваться в зависимости от поставщика, поэтому свяжитесь с соответствующим поставщиком для получения подробной информации.

{{% alert color="primary" %}}

Обратите внимание, что документ будет автоматически оптимизирован для показа видео в формате MS Word 2013.

{{% /alert %}}

Следующий пример кода показывает, как вставить онлайн-видео в документ, используя такой HTML-код:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Video-InsertOnlineVideo-InsertOnlineVideoWithEmbedHtml.java" >}}
