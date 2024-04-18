---
title: OLE Objects и онлайн-видео
second_title: Aspose.Words для Python via .NET
articleTitle: Работа с объектами OLE и онлайн-видео
linktitle: Работа с объектами OLE и онлайн-видео
description: "Вставить оле-объекты или онлин-водео в документ с использованием Python."
type: docs
weight: 360
url: /ru/python-net/working-with-ole-objects/
---

OLE (Object Linking and Embedding) - это технология, с помощью которой пользователи могут работать с документами, содержащими "объекты", созданные или отредактированные сторонними приложениями. То есть OLE позволяет редактировать приложения для экспорта этих "объектов" в другое редактирующее приложение, а затем импортировать их с дополнительным контентом.

В этой статье мы поговорим о вставке объекта OLE и настройке его свойств, а также о вставке онлайн-видео в документ.

## Включить OLE Объект

Если вам нужен объект OLE, позвоните [insert_ole_object](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_ole_object/) Способ и передать его **ProgId** явно с другими параметрами.

Следующий пример кода показывает, как вставить OLE Объект в документе:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-DocumentBuilderInsertOleObject.py" >}}

### Установите имя файла и расширение при вставке объекта OLE

Пакет OLE является устаревшим и "недокументированным" способом хранения встроенных объектов, если обработчик OLE неизвестен.

Ранний Windows Такие версии, как Windows 3.1, 95 и 98 имели пакет. Приложение exe, которое может быть использовано для встраивания любого типа данных в документ. Теперь эта заявка исключена из WindowsНо Microsoft Word и другие приложения по-прежнему используют его для встраивания данных, если обработчик OLE отсутствует или неизвестен. The `OlePackage` Класс позволяет пользователям получить доступ к свойствам пакета OLE.

Следующий пример кода показывает, как установить имя файла, расширение и отображаемое имя для пакета OLE:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOleObjectwithOlePackage.py" >}}

### Получить доступ к OLE Object Raw Data

Пользователи могут получить доступ к данным объекта OLE, используя различные свойства и методы `OleFormat` класс. Например, можно получить `OLE` исходные данные объекта или путь и имя исходного файла для связанного объекта OLE.

Следующий пример кода показывает, как получить OLE Объектные необработанные данные с использованием [get_raw_data](https://reference.aspose.com/words/python-net/aspose.words.drawing/oleformat/get_raw_data/) метод:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-GetAccessToOLEObjectRawData.py" >}}

### Включить OLE Объект как икона

Объекты OLE также могут быть вставлены в документы в виде изображений.

Следующий пример кода показывает, как вставить объект OLE в качестве значка. Для этой цели, [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) Класс раскрывает [insert_ole_object_as_icon](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_ole_object_as_icon/) метод:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIcon.py" >}}

Следующий пример кода показывает, как вставить встроенный объект OLE в виде значка из потока в документ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIconUsingStream.py" >}}

## Включить онлайн видео

Онлайн-видео можно вставить в документ Word из вкладки *"Включить"> "Онлайн-видео"*. Вы можете вставить онлайн-видео в документ в текущем месте, позвонив по адресу: [insert_online_video](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_online_video/) метод.

The [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) Класс вводит четыре перегрузки этого метода. Первый работает с самыми популярными видеоресурсами и берет `URL` Видео как параметр. Например, первая перегрузка поддерживает простую вставку онлайн-видео из [YouTube](https://www.youtube.com/) и [Вимео](https://vimeo.com/) ресурсов.

Следующий пример кода показывает, как вставить онлайн-видео из *Vimeo* В документе:

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

Вторая перегрузка работает со всеми другими видеоресурсами и принимает в качестве параметра встроенный HTML-код. HTML-код для встраивания видео может варьироваться в зависимости от поставщика, поэтому свяжитесь с соответствующим поставщиком для получения подробной информации.

{{% alert color="primary" %}}

Обратите внимание, что документ будет автоматически оптимизирован для показа видео в формате MS Word 2013.

{{% /alert %}}

Следующий пример кода показывает, как вставить онлайн-видео в документ, используя такой HTML-код:

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