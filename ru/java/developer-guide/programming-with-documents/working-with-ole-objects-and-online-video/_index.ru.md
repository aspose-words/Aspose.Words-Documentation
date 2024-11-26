---
title: Работа с Ole-объектами
second_title: Aspose.Words для Java
articleTitle: Работа с Ole-объектами
linktitle: Работа с Ole-объектами
description: "Создайте и измените OLE для встраивания в ваш документ, используя Java."
type: docs
weight: 360
url: /ru/java/working-with-ole-objects/
timestamp: 2024-01-27-14-07-04
---

OLE расшифровывается как "Связывание и внедрение объектов". Это технология, с помощью которой пользователи могут работать с документами, содержащими "объекты", созданные или отредактированные сторонними приложениями. То есть OLE позволяет приложению экспортировать эти "объекты" в другое приложение для редактирования, а затем импортировать их обратно с некоторым дополнительным содержимым.

В этой статье мы поговорим о вставке объекта OLE и настройке его свойств в документ.

## Вставить Ole-объект

Если вам нужен объект OLE, вызовите метод [InsertOleObject](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObject-java.io.InputStream-java.lang.String-boolean-java.io.InputStream) и передайте ему **ProgId** явно с другими параметрами.

В следующем примере кода показано, как вставить объект OLE в документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

### Задайте имя и расширение файла при вставке объекта OLE

OLE пакет - это устаревший и "недокументированный" способ хранения встроенных объектов, если обработчик OLE неизвестен.

В ранних версиях Windows, таких как Windows 3.1, 95 и 98, было приложение Packager.exe, которое можно было использовать для встраивания данных любого типа в документ. Это приложение теперь исключено из Windows, но Microsoft Word и другие приложения по-прежнему используют его для встраивания данных, если обработчик OLE отсутствует или неизвестен. Класс `OlePackage` позволяет пользователям получать доступ к свойствам OLE Package.

В следующем примере кода показано, как задать имя файла, расширение и отображаемое имя для OLE Package:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

### Получить доступ к необработанным данным объекта OLE

Пользователи могут обращаться к данным объекта OLE, используя различные свойства и методы класса `OleFormat`. Например, можно получить исходные данные объекта `OLE` или путь и имя исходного файла для связанного объекта OLE.

В следующем примере кода показано, как получить необработанные данные объекта OLE с помощью метода [GetRawData](https://reference.aspose.com/words/java/com.aspose.words/oleformat/#getRawData):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

### Вставить объект OLE в качестве значка

OLE объекты также могут быть вставлены в документы в виде изображений.

В следующем примере кода показано, как вставить объект OLE в качестве значка. Для этой цели класс **DocumentBuilder** предоставляет метод [InsertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.io.InputStream-java.lang.String-java.lang.String-java.lang.String).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.java" >}}

В следующем примере кода показано, как вставить внедренный объект OLE в качестве значка из потока в документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIconUsingStream.java" >}}

## Вставить онлайн-видео

Онлайн-видео можно вставить в документ Word на вкладке *"Insert" > "Online Video"*. Вы можете вставить онлайн-видео в документ в текущем местоположении, вызвав метод [InsertOnlineVideo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOnlineVideo-java.lang.String-double-double):

Класс [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) вводит четыре перегрузки этого метода. Первая перегрузка работает с наиболее популярными видеоресурсами и принимает `URL` видео в качестве параметра. Например, первая перегрузка поддерживает простую вставку онлайн-видео из [YouTube](https://www.youtube.com/) и [Вимео](https://vimeo.com/) ресурсы.

В следующем примере кода показано, как вставить онлайн-видео из *Vimeo* в документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Video-InsertOnlineVideo-InsertOnlineVideo.java" >}}

Вторая перегрузка работает со всеми другими видеоресурсами и использует встроенный код HTML в качестве параметра. Код HTML для встраивания видео может отличаться в зависимости от поставщика, поэтому обратитесь к соответствующему поставщику за подробностями.

{{% alert color="primary" %}}

Пожалуйста, обратите внимание, что документ будет автоматически оптимизирован для MS Word 2013 для отображения видео.

{{% /alert %}}

В следующем примере кода показано, как вставить онлайн-видео в документ, используя такой код HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Video-InsertOnlineVideo-InsertOnlineVideoWithEmbedHtml.java" >}}
