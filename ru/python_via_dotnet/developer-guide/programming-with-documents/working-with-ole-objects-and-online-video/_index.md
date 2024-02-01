---
title: Объекты OLE и онлайн-видео
second_title: Aspose.Words для Python via .NET
articleTitle: Работа с OLE-объектами и онлайн-видео
linktitle: Работа с OLE-объектами и онлайн-видео
description: "Вставьте старые объекты или онлайн-видео в документ, используя Python."
type: docs
weight: 360
url: /ru/python-net/working-with-ole-objects/
---

OLE (Object Linking and Embedding) — это технология, с помощью которой пользователи могут работать с документами, содержащими "объекты", созданные или отредактированные сторонними приложениями. То есть OLE позволяет приложению редактирования экспортировать эти "объекты" в другое приложение редактирования, а затем импортировать их с дополнительным содержимым.

В этой статье мы поговорим о вставке OLE-объекта и настройке его свойств, а также о вставке онлайн-видео в документ.

## Вставить OLE-объект

Если вам нужен объект OLE, вызовите метод [insert_ole_object](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_ole_object/) и передайте ему **ProgId** явно с другими параметрами.

В следующем примере кода показано, как вставить объект OLE в документ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-DocumentBuilderInsertOleObject.py" >}}

### Задайте имя и расширение файла при вставке объекта OLE

Пакет OLE — это устаревший и "недокументированный" способ хранения внедренных объектов, если обработчик OLE неизвестен.

Ранние версии Windows, такие как Windows 3.1, 95 и 98, имели приложение Packager.exe, которое можно было использовать для встраивания в документ данных любого типа. Это приложение теперь исключено из Windows, но Microsoft Word и другие приложения по-прежнему используют его для внедрения данных, если обработчик OLE отсутствует или неизвестен. Класс `OlePackage` позволяет пользователям получать доступ к свойствам пакета OLE.

В следующем примере кода показано, как задать имя файла, расширение и отображаемое имя для пакета OLE:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOleObjectwithOlePackage.py" >}}

### Получите доступ к необработанным данным объекта OLE

Пользователи могут получать доступ к данным объекта OLE, используя различные свойства и методы класса `OleFormat`. Например, можно получить необработанные данные объекта `OLE` или путь и имя исходного файла для связанного объекта OLE.

В следующем примере кода показано, как получить необработанные данные объекта OLE с помощью метода [get_raw_data](https://reference.aspose.com/words/python-net/aspose.words.drawing/oleformat/get_raw_data/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-GetAccessToOLEObjectRawData.py" >}}

### Вставьте объект OLE как значок

Объекты OLE также можно вставлять в документы как изображения.

В следующем примере кода показано, как вставить объект OLE в качестве значка. Для этой цели класс [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) предоставляет метод [insert_ole_object_as_icon](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_ole_object_as_icon/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIcon.py" >}}

В следующем примере кода показано, как вставить внедренный объект OLE в виде значка из потока в документ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIconUsingStream.py" >}}

## Вставить онлайн-видео

Онлайн-видео можно вставить в документ Word на вкладке * "Вставка" &gt; "Онлайн-видео" *. Вы можете вставить онлайн-видео в документ в текущем месте, вызвав метод [insert_online_video](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_online_video/).

Класс [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) представляет четыре перегрузки этого метода. Первый работает с наиболее популярными видеоресурсами и принимает в качестве параметра `URL` видео. Например, первая перегрузка поддерживает простую вставку онлайн-видео с ресурсов [YouTube](https://www.youtube.com/) и [Вимео](https://vimeo.com/).

В следующем примере кода показано, как вставить онлайн-видео с номера *Vimeo* в документ:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

# Pass direct url from youtu.be.
url = "https://www.youtube.com/watch?v=t_1LYZ102RA"

width = 360
height = 270

shape = builder.insert_online_video(url, width, height)

doc.save(docs_base.artifacts_dir + "WorkingWithOleObjectsAndActiveX.insert_online_video.docx")
{{< /highlight >}}

Вторая перегрузка работает со всеми другими видеоресурсами и принимает в качестве параметра встроенный HTML-код. HTML-код для встраивания видео может различаться в зависимости от поставщика, поэтому для получения подробной информации обратитесь к соответствующему поставщику.

{{% alert color="primary" %}}

Обратите внимание, что документ будет автоматически оптимизирован для MS Word 2013 для отображения видео.

{{% /alert %}}

В следующем примере кода показано, как вставить онлайн-видео в документ с помощью такого HTML-кода:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

# Shape width/height.
width = 360
height = 270

# Poster frame image.
f = open(docs_base.images_dir + "Logo.jpg", "rb")
imageBytes = f.read()
f.close()

# Visible url
vimeoVideoUrl = "https://vimeo.com/52477838"

# Embed Html code.
vimeoEmbedCode = ""

builder.insert_online_video(vimeoVideoUrl, vimeoEmbedCode, imageBytes, width, height)

doc.save(docs_base.artifacts_dir + "WorkingWithOleObjectsAndActiveX.insert_online_video_with_embed_html.docx")
{{< /highlight >}}