---
title: OLE Об'єкти та Інтернет Відео
second_title: Aspose.Words для Python via .NET
articleTitle: Робота з OLE Об'єкти та Інтернет-відео
linktitle: Робота з OLE Об'єкти та Інтернет-відео
description: "Вставте оле об'єктів або оліну в документ за допомогою Pythonй"
type: docs
weight: 360
url: /uk/python-net/working-with-ole-objects/
timestamp: 2024-01-27-14-07-04
---

OLE (Object Linking and Embedding) є технологією, за допомогою якої користувачі можуть працювати з документами, що містять "об'єкти", створеними або редаговані сторонніми додатками. Це, OLE дозволяє редагувати додаток, щоб експортувати ці "об'єкти" до іншої програми редагування, а потім імпортувати їх з додатковим вмістом.

У цій статті ми будемо говорити про вставку об'єкта OLE і налаштування його властивостей, а також вставлення онлайн відео в документ.

## Вставити OLE Об'єкт

Якщо ви хочете OLE Об'єкт, зателефонуйте [insert_ole_object](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_ole_object/) метод і пройти його **ProgId** явно з іншими параметрами.

Приклад наступного коду показує, як вставляти OLE Об'єкт в документ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-DocumentBuilderInsertOleObject.py" >}}

### Встановити ім'я та розширення файлів, коли Inserting OLE Об'єкт

OLE пакет є спадковим і "необхідним" способом зберігати вбудовані об'єкти, якщо OLE обробник невідомий.

Рано Windows варіанти, такі як Windows 3.1, 95, і 98 мали пакет. exe додаток, який може бути використаний для складання будь-якого типу даних в документ. Це додаток тепер виключено з Windows, але Microsoft Word і інші додатки, як і раніше, використовують його для складання даних, якщо обробник OLE відсутній або невідомо. Про нас `OlePackage` Клас надає користувачам доступ до властивостей пакету OLE.

Приклад наступного коду показує, як встановити ім'я файлу, розширення та ім'я відображення для OLE Package:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOleObjectwithOlePackage.py" >}}

### Отримати доступ до сирих даних OLE

Користувачі можуть отримати доступ до даних об'єктів OLE за допомогою різних властивостей та методів `OleFormat` клас. Наприклад, можна отримати `OLE` об'єкт сирої інформації або шлях і ім'я файлу джерела для об'єкту OLE.

Приклад наступного коду показує, як отримати OLE Об'єкт сирої інформації з використанням [get_raw_data](https://reference.aspose.com/words/python-net/aspose.words.drawing/oleformat/get_raw_data/) метод:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-GetAccessToOLEObjectRawData.py" >}}

### Вставити OLE Об'єкт ікони

OLE об'єкти можна вставляти в документи як зображення.

Приклад коду показує, як вставити об'єкт OLE як іконку. Для цієї мети [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) клас виводить [insert_ole_object_as_icon](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_ole_object_as_icon/) метод:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIcon.py" >}}

Приклад коду показує, як вставляти вбудований об'єкт OLE як іконку з потоку в документ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIconUsingStream.py" >}}

## Вставити онлайн відео

Онлайн відео можна вставляти в документ Word з * "Insert" > "Online Video"* вкладка. Ви можете вставити онлайн відео в документ на поточному місці, викликаючи [insert_online_video](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_online_video/) метод.

Про нас [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) клас представляє чотири перевантаження цього методу. Перші роботи з найпопулярнішими відео ресурсами та займають `URL` відео як параметр. Наприклад, перший перевантаження підтримує просту вставку онлайн відео з [Веб-сайт](https://www.youtube.com/) і [Вімео](https://vimeo.com/) ресурси.

Приклад наступного коду показує, як вставляти онлайн відео з *Vimeo* в документ:

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

Другий перевантаження працює з усіма іншими відеоресурсами і займає вбудований HTML-код як параметр. HTML-код для вбудовування відео може відрізнятися залежно від постачальника, тому зв'яжіться з відповідним постачальником для деталей.

{{% alert color="primary" %}}

Будь ласка, зауважте, що документ буде автоматично оптимізований для MS Word 2013, щоб показати відео.

{{% /alert %}}

Приклад наступного коду показує, як вставити онлайн відео в документ за допомогою такого HTML коду:

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
