---
title: OLE обекти и онлайн видео
second_title: Aspose.Words вместо Python via .NET
articleTitle: Работа с OLE обекти и онлайн видео
linktitle: Работа с OLE обекти и онлайн видео
description: "Вмъкване на оле обекти или онлин водо в документ с помощта на Python."
type: docs
weight: 360
url: /bg/python-net/working-with-ole-objects/
timestamp: 2024-01-27-14-07-04
---

OLE (Object Linking and Embedding) е технология, чрез която потребителите могат да работят с документи, съдържащи "обекти," създадени или редактирани от приложения на трети страни. Това означава, OLE позволява редактиране на приложение за износ на тези "обекти" към друго приложение за редактиране и след това ги внася с допълнително съдържание.

В тази статия, ние ще говорим за въвеждане на OLE обект и определяне на неговите свойства, както и въвеждане на онлайн видео в документ.

## Вмъкване на OLE Обект

Ако искате OLE обект, обадете се [insert_ole_object](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_ole_object/) и да го преминете **ProgId** изрично с други параметри.

Следният пример с код показва как да се вмъкне OLE Обект в документ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-DocumentBuilderInsertOleObject.py" >}}

### Задаване името на файла и разширението при въвеждане на обект OLE

Пакетът OLE е наследство и "недокументиран" начин за съхранение на вградени обекти, ако не е известен.

Рано Windows версии като Windows 3.1, 95 и 98 са имали конвейер. exe приложение, което може да се използва за вграждане на всеки вид данни в документа. Това заявление вече е изключено от Windows, но Microsoft Word и други приложения все още го използват, за да вграждат данни, ако уредът за управление на OLE липсва или не е известен. На `OlePackage` класът позволява на потребителите да получат достъп до свойствата на пакета OLE.

Следният пример за код показва как да зададете името на файла, разширението и името на дисплея за OLE пакет:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOleObjectwithOlePackage.py" >}}

### Get Access to OLE Object Raw Data

Потребителите могат да получат достъп до данни от обекта на OLE чрез различни свойства и методи на `OleFormat` Клас. Например, възможно е да се получи `OLE` обект сурови данни или пътя и името на изходния файл за свързания обект OLE.

Следният пример за код показва как да получите OLE Обект на необработени данни с помощта на [get_raw_data](https://reference.aspose.com/words/python-net/aspose.words.drawing/oleformat/get_raw_data/) метод:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-GetAccessToOLEObjectRawData.py" >}}

### Вмъкване на OLE Обект като икона

Обектите на OLE могат да бъдат въвеждани и в документи като изображения.

Следният пример за код показва как да се вмъкне OLE Object като икона. За тази цел, [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) Класът показва [insert_ole_object_as_icon](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_ole_object_as_icon/) метод:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIcon.py" >}}

Следният пример за код показва как да се вмъкне вграден обект OLE като икона от поток в документа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIconUsingStream.py" >}}

## Вмъкване на онлайн видео

Онлайн видеото може да бъде вмъкнато в Word документ от *"Insert" > "Online Video"* tab. Можете да поставите онлайн видео в документ на текущото място, като се обадите на [insert_online_video](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_online_video/) метод.

На [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) Класът въвежда четири претоварване на този метод. Първият работи с най-популярните видео ресурси и отнема `URL` на видеото като параметър. Например, първото претоварване поддържа просто въвеждане на онлайн видео от [YouTube](https://www.youtube.com/) както и [Vimeo](https://vimeo.com/) ресурси.

Следният пример с код показва как да вмъкнете онлайн видео от *Vimeo* в документ:

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

Второто претоварване работи с всички други видео ресурси и приема вградени HTML код като параметър. HTML кодът за вграждане на видео може да варира в зависимост от доставчика, така че се свържете със съответния доставчик за подробности.

{{% alert color="primary" %}}

Моля, имайте предвид, че документът ще бъде автоматично оптимизиран, за да може MS Word 2013 да показва видео.

{{% /alert %}}

Следният пример за код показва как да вмъкнете онлайн видео в документ с помощта на такъв HTML код:

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
