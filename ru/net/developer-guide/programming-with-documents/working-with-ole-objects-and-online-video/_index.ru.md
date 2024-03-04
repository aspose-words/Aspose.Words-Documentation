---
title: Работа с OLE-объектами и онлайн-видео в C#
second_title: Aspose.Words для .NET
articleTitle: Работа с OLE-объектами и онлайн-видео
linktitle: Работа с OLE-объектами и онлайн-видео
description: "Создайте и измените внедрение OLE в свой документ, используя C#."
type: docs
weight: 360
url: /ru/net/working-with-ole-objects/
---

OLE (Object Linking and Embedding) — это технология, с помощью которой пользователи могут работать с документами, содержащими "объекты", созданные или отредактированные сторонними приложениями. То есть OLE позволяет приложению редактирования экспортировать эти "объекты" в другое приложение редактирования, а затем импортировать их с дополнительным содержимым.

В этой статье мы поговорим о вставке OLE-объекта и настройке его свойств, а также о вставке онлайн-видео в документ.

## Вставить OLE-объект

Если вам нужен объект OLE, вызовите метод [InsertOleObject](https://reference.aspose.com/words/ru/net/aspose.words/documentbuilder/insertoleobject/) и передайте ему **ProgId** явно с другими параметрами.

В следующем примере кода показано, как вставить объект OLE в документ:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertOleObject.cs" >}}

### Задайте имя и расширение файла при вставке объекта OLE

Пакет OLE — это устаревший и "недокументированный" способ хранения внедренных объектов, если обработчик OLE неизвестен.

Ранние версии Windows, такие как Windows 3.1, 95 и 98, имели приложение Packager.exe, которое можно было использовать для встраивания в документ данных любого типа. Это приложение теперь исключено из Windows, но Microsoft Word и другие приложения по-прежнему используют его для внедрения данных, если обработчик OLE отсутствует или неизвестен. Класс `OlePackage` позволяет пользователям получать доступ к свойствам пакета OLE.

В следующем примере кода показано, как задать имя файла, расширение и отображаемое имя для пакета OLE:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.cs" >}}

### Получите доступ к необработанным данным объекта OLE

Пользователи могут получать доступ к данным объекта OLE, используя различные свойства и методы класса `OleFormat`. Например, можно получить необработанные данные объекта `OLE` или путь и имя исходного файла для связанного объекта OLE.

В следующем примере кода показано, как получить необработанные данные объекта OLE с помощью метода [GetRawData](https://reference.aspose.com/words/ru/net/aspose.words.drawing/oleformat/getrawdata/):

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.cs" >}}

### Вставьте объект OLE как значок

Объекты OLE также можно вставлять в документы как изображения.

В следующем примере кода показано, как вставить объект OLE в качестве значка. Для этой цели класс [DocumentBuilder](https://reference.aspose.com/words/ru/net/aspose.words/documentbuilder/) предоставляет метод [InsertOleObjectAsIcon](https://reference.aspose.com/words/ru/net/aspose.words/documentbuilder/insertoleobjectasicon/):

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.cs" >}}

В следующем примере кода показано, как вставить внедренный объект OLE в виде значка из потока в документ:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIconUsingStream.cs" >}}

{{% alert color="primary" %}}

Максимальный размер значка должен быть 32x32 для корректного отображения.

{{% /alert %}}

## Вставить онлайн-видео

Онлайн-видео можно вставить в документ Word на вкладке * "Вставка" &gt; "Онлайн-видео" *. Вы можете вставить онлайн-видео в документ в текущем месте, вызвав метод [InsertOnlineVideo](https://reference.aspose.com/words/ru/net/aspose.words/documentbuilder/insertonlinevideo/).

Класс [DocumentBuilder](https://reference.aspose.com/words/ru/net/aspose.words/documentbuilder/) представляет четыре перегрузки этого метода. Первый работает с наиболее популярными видеоресурсами и принимает в качестве параметра `URL` видео. Например, первая перегрузка поддерживает простую вставку онлайн-видео с ресурсов [YouTube](https://www.youtube.com/) и [Вимео](https://vimeo.com/).

В следующем примере кода показано, как вставить онлайн-видео с номера *Vimeo* в документ:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Video-InsertOnlineVideo-InsertOnlineVideo.cs" >}}

Вторая перегрузка работает со всеми другими видеоресурсами и принимает в качестве параметра встроенный HTML-код. HTML-код для встраивания видео может различаться в зависимости от поставщика, поэтому для получения подробной информации обратитесь к соответствующему поставщику.

{{% alert color="primary" %}}

Обратите внимание, что документ будет автоматически оптимизирован для MS Word 2013 для отображения видео.

{{% /alert %}}

В следующем примере кода показано, как вставить онлайн-видео в документ с помощью такого HTML-кода:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Video-InsertOnlineVideoWithEmbedHtml-InsertOnlineVideoWithEmbedHtml.cs" >}}