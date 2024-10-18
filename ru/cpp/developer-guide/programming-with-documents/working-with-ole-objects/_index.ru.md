---
title: Работа с OLE-объектами в C++
second_title: Aspose.Words для C++
articleTitle: Работа с OLE-объектами
linktitle: Работа с OLE-объектами
description: "Создавайте и изменяйте OLE-встраивание в свой документ с помощью C++."
type: docs
weight: 360
url: /ru/cpp/working-with-ole-objects/
---

OLE (Связывание и встраивание объектов) - это технология, с помощью которой пользователи могут работать с документами, содержащими "объекты", созданные или отредактированные сторонними приложениями. То есть OLE позволяет приложению для редактирования экспортировать эти "объекты" в другое приложение для редактирования, а затем импортировать их с дополнительным содержимым.

В этой статье мы поговорим о вставке OLE-объекта и настройке его свойств в документ.

## Вставить OLE-объект

Если вам нужен OLE-объект, вызовите метод [InsertOleObject](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertoleobject/) и передайте ему **ProgId** явно с другими параметрами.

В следующем примере кода показано, как вставить OLE-объект в документ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-DocumentBuilderInsertOleObject.h" >}}

### Задайте имя и расширение файла при вставке OLE-объекта

OLE-пакет - это устаревший и "недокументированный" способ хранения встроенных объектов, если обработчик OLE неизвестен.

В ранних версиях Windows, таких как Windows 3.1, 95 и 98, было Packager.exe приложение, которое можно было использовать для встраивания данных любого типа в документ. Это приложение теперь исключено из Windows, но Microsoft Word и другие приложения по-прежнему используют его для встраивания данных, если обработчик OLE отсутствует или неизвестен. Класс `OlePackage` позволяет пользователям получать доступ к свойствам пакета OLE.

В следующем примере кода показано, как задать имя файла, расширение и отображаемое имя для OLE-пакета:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-InsertOleObjectwithOlePackage.h" >}}

### Получите доступ к необработанным данным OLE-объекта

Пользователи могут обращаться к данным OLE-объекта, используя различные свойства и методы класса `OleFormat`. Например, можно получить исходные данные объекта `OLE` или путь и имя исходного файла для связанного OLE-объекта.

В следующем примере кода показано, как получить необработанные данные OLE-объекта с помощью метода [GetRawData](https://reference.aspose.com/words/cpp/aspose.words.drawing/oleformat/getrawdata/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-GetAccessToOLEObjectRawData.h" >}}

### Вставить Ole-объект в виде значка

OLE-объекты также можно вставлять в документы в виде изображений.

В следующем примере кода показано, как вставить OLE-объект в качестве значка. Для этой цели класс [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) предоставляет метод [InsertOleObjectAsIcon](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertoleobjectasicon/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-InsertOLEObjectAsIcon.h" >}}

В следующем примере кода показано, как вставить внедренный OLE-объект в виде значка из потока в документ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-InsertOLEObjectAsIconUsingStream.h" >}}

## Вставить онлайн-видео

Онлайн-видео можно вставить в документ Word на вкладке *"Insert" > "Online Video"*. Вы можете вставить онлайн-видео в документ в текущем местоположении, вызвав метод [InsertOnlineVideo](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertonlinevideo/).

Класс [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) вводит четыре перегрузки этого метода. Первая перегрузка работает с наиболее популярными видеоресурсами и принимает `URL` видео в качестве параметра. Например, первая перегрузка поддерживает простую вставку онлайн-видео из [ютуб](https://www.youtube.com/) и [Вимео](https://vimeo.com/) ресурсы.

В следующем примере кода показано, как вставить онлайн-видео из *Vimeo* в документ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Add content using DocumentBuilder-InsertOnlineVideo.h" >}}

Вторая перегрузка работает со всеми другими видеоресурсами и использует встроенный HTML-код в качестве параметра. HTML-код для встраивания видео может отличаться в зависимости от поставщика, поэтому обратитесь к соответствующему поставщику за подробностями.

{{% alert color="primary" %}}

Пожалуйста, обратите внимание, что документ будет автоматически оптимизирован для MS Word 2013 для отображения видео.

{{% /alert %}}

В следующем примере кода показано, как вставить онлайн-видео в документ, используя такой HTML-код:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Add content using DocumentBuilder-InsertOnlineVideoWithEmbedHtml.h" >}}