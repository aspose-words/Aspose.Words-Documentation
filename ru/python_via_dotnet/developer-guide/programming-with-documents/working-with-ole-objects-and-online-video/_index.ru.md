---
title: OLE Объекты и онлайн-видео
second_title: Aspose.Words для Python via .NET
articleTitle: Работа с объектами OLE и онлайн-видео
linktitle: Работа с объектами OLE и онлайн-видео
description: "Вставьте ole-объекты или onlinevodeo в документ, используя Python."
type: docs
weight: 360
url: /ru/python-net/working-with-ole-objects/
timestamp: 2024-01-27-14-07-04
---

OLE (Связывание и встраивание объектов) - это технология, с помощью которой пользователи могут работать с документами, содержащими "объекты", созданные или отредактированные сторонними приложениями. То есть OLE позволяет приложению редактирования экспортировать эти "объекты" в другое приложение редактирования, а затем импортировать их с дополнительным содержимым.

В этой статье мы поговорим о вставке объекта OLE и настройке его свойств, а также о вставке онлайн-видео в документ.

## Вставить объект OLE

Если вам нужен объект OLE, вызовите метод [insert_ole_object](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_ole_object/) и передайте ему **ProgId** явно с другими параметрами.

В следующем примере кода показано, как вставить объект OLE в документ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-DocumentBuilderInsertOleObject.py" >}}

### Задайте имя и расширение файла при вставке объекта OLE

OLE пакет - это устаревший и "недокументированный" способ хранения встроенных объектов, если обработчик OLE неизвестен.

В ранних версиях Windows, таких как Windows 3.1, 95 и 98, было приложение Packager.exe, которое можно было использовать для встраивания данных любого типа в документ. Это приложение теперь исключено из Windows, но Microsoft Word и другие приложения по-прежнему используют его для встраивания данных, если обработчик OLE отсутствует или неизвестен. Класс `OlePackage` позволяет пользователям получать доступ к свойствам OLE Package.

В следующем примере кода показано, как задать имя файла, расширение и отображаемое имя для OLE Package:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOleObjectwithOlePackage.py" >}}

### Получить доступ к необработанным данным объекта OLE

Пользователи могут обращаться к данным объекта OLE, используя различные свойства и методы класса `OleFormat`. Например, можно получить исходные данные объекта `OLE` или путь и имя исходного файла для связанного объекта OLE.

В следующем примере кода показано, как получить необработанные данные объекта OLE с помощью метода [get_raw_data](https://reference.aspose.com/words/python-net/aspose.words.drawing/oleformat/get_raw_data/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-GetAccessToOLEObjectRawData.py" >}}

### Вставить объект OLE в качестве значка

OLE объекты также могут быть вставлены в документы в виде изображений.

В следующем примере кода показано, как вставить объект OLE в качестве значка. Для этой цели класс [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) предоставляет метод [insert_ole_object_as_icon](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_ole_object_as_icon/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIcon.py" >}}

В следующем примере кода показано, как вставить внедренный объект OLE в качестве значка из потока в документ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIconUsingStream.py" >}}

## Вставить онлайн-видео

Онлайн-видео можно вставить в документ Word на вкладке *"Insert" > "Online Video"*. Вы можете вставить онлайн-видео в документ в текущем местоположении, вызвав метод [insert_online_video](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_online_video/).

Класс [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) вводит четыре перегрузки этого метода. Первая перегрузка работает с наиболее популярными видеоресурсами и принимает `URL` видео в качестве параметра. Например, первая перегрузка поддерживает простую вставку онлайн-видео из [YouTube](https://www.youtube.com/) и [Вимео](https://vimeo.com/) ресурсы.

В следующем примере кода показано, как вставить онлайн-видео из *Vimeo* в документ:

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

Вторая перегрузка работает со всеми другими видеоресурсами и использует встроенный код HTML в качестве параметра. Код HTML для встраивания видео может отличаться в зависимости от поставщика, поэтому обратитесь к соответствующему поставщику за подробностями.

{{% alert color="primary" %}}

Пожалуйста, обратите внимание, что документ будет автоматически оптимизирован для MS Word 2013 для отображения видео.

{{% /alert %}}

В следующем примере кода показано, как вставить онлайн-видео в документ, используя такой код HTML:

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
