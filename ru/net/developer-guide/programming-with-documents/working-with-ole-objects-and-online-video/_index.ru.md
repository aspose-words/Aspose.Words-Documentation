---
title: Работа с OLE-объектами и онлайн-видео C#
second_title: Aspose.Words для .NET
articleTitle: Работа с объектами OLE и онлайн-видео
linktitle: Работа с объектами OLE и онлайн-видео
description: "Создавайте и модифицируйте встраивание OLE в документ с помощью C#."
type: docs
weight: 360
url: /ru/net/working-with-ole-objects/
---

OLE (Object Linking and Embedding) - это технология, с помощью которой пользователи могут работать с документами, содержащими "объекты", созданные или отредактированные сторонними приложениями. То есть OLE позволяет редактировать приложения для экспорта этих "объектов" в другое редактирующее приложение, а затем импортировать их с дополнительным контентом.

В этой статье мы поговорим о вставке объекта OLE и настройке его свойств, а также о вставке онлайн-видео в документ.

## Включить OLE Объект

Если вам нужен объект OLE, позвоните [InsertOleObject](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertoleobject/) Способ и передать его **ProgId** явно с другими параметрами.

Следующий пример кода показывает, как вставить OLE Объект в документе:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertOleObject.cs" >}}

### Установите имя файла и расширение при вставке объекта OLE

Пакет OLE является устаревшим и "недокументированным" способом хранения встроенных объектов, если обработчик OLE неизвестен.

Ранний Windows Такие версии, как Windows 3.1, 95 и 98 имели пакет. Приложение exe, которое может быть использовано для встраивания любого типа данных в документ. Теперь эта заявка исключена из WindowsНо Microsoft Word и другие приложения по-прежнему используют его для встраивания данных, если обработчик OLE отсутствует или неизвестен. The `OlePackage` Класс позволяет пользователям получить доступ к свойствам пакета OLE.

Следующий пример кода показывает, как установить имя файла, расширение и отображаемое имя для пакета OLE:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.cs" >}}

### Получить доступ к OLE Object Raw Data

Пользователи могут получить доступ к данным объекта OLE, используя различные свойства и методы `OleFormat` класс. Например, можно получить `OLE` исходные данные объекта или путь и имя исходного файла для связанного объекта OLE.

Следующий пример кода показывает, как получить OLE Объектные необработанные данные с использованием [GetRawData](https://reference.aspose.com/words/net/aspose.words.drawing/oleformat/getrawdata/) метод:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.cs" >}}

### Включить OLE Объект как икона

Объекты OLE также могут быть вставлены в документы в виде изображений.

Следующий пример кода показывает, как вставить объект OLE в качестве значка. Для этой цели, [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) Класс раскрывает [InsertOleObjectAsIcon](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertoleobjectasicon/) метод:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.cs" >}}

Следующий пример кода показывает, как вставить встроенный объект OLE в виде значка из потока в документ:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIconUsingStream.cs" >}}

{{% alert color="primary" %}}

Максимальный размер значка должен быть 32x32 для правильного отображения.

{{% /alert %}}

## Включить онлайн видео

Онлайн-видео можно вставить в документ Word из вкладки *"Включить"> "Онлайн-видео"*. Вы можете вставить онлайн-видео в документ в текущем месте, позвонив по адресу: [InsertOnlineVideo](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertonlinevideo/) метод.

The [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) Класс вводит четыре перегрузки этого метода. Первый работает с самыми популярными видеоресурсами и берет `URL` Видео как параметр. Например, первая перегрузка поддерживает простую вставку онлайн-видео из [YouTube](https://www.youtube.com/) и [Вимео](https://vimeo.com/) ресурсов.

Следующий пример кода показывает, как вставить онлайн-видео из *Vimeo* В документе:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Video-InsertOnlineVideo-InsertOnlineVideo.cs" >}}

Вторая перегрузка работает со всеми другими видеоресурсами и принимает в качестве параметра встроенный HTML-код. HTML-код для встраивания видео может варьироваться в зависимости от поставщика, поэтому свяжитесь с соответствующим поставщиком для получения подробной информации.

{{% alert color="primary" %}}

Обратите внимание, что документ будет автоматически оптимизирован для показа видео в формате MS Word 2013.

{{% /alert %}}

Следующий пример кода показывает, как вставить онлайн-видео в документ, используя такой HTML-код:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Video-InsertOnlineVideoWithEmbedHtml-InsertOnlineVideoWithEmbedHtml.cs" >}}