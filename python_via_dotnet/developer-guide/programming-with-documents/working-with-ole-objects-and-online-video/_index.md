---
title: Working with Ole Objects and Online Video
type: docs
weight: 160
url: /python/working-with-ole-objects-and-online-video/
---

## Inserting Ole Object

If you want Ole Object call **DocumentBuilder.insert_ole_object**. Pass to this method the ProgId explicitly with other parameters. The code example given below shows how to insert Ole Object into a document.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-DocumentBuilderInsertOleObject.py" >}}

### Set File Name and Extension when Inserting Ole Object

OLE package is a legacy and "undocumented" way to store embedded objects if the OLE handler is unknown. Early Windows versions such as Windows 3.1, 95 and 98 had Packager.exe application which could be used to embed any type of data into the document. Now, this application is excluded from Windows but MS Word and other applications still use it to embed data if the OLE handler is missing or unknown. OlePackage class allows accessing OLE Package properties. The code example given below shows how to set the file name, extension and display name for OLE Package.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOleObjectwithOlePackage.py" >}}

### Get Access to OLE Object Raw Data

The following code example demonstrates how to get OLE Object raw data using **OleFormat.get_raw_data** method.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-GetAccessToOLEObjectRawData.py" >}}

### Insert Ole Object as Icon

The following code example shows how to insert OLE Object as an icon. For this purpose, the **DocumentBuilder** class exposes the **insert_ole_object_as_icon** method.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIcon.py" >}}
The following code example demonstrates how to inserts an embedded OLE object as an icon from a stream into the document.
{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIconUsingStream.py" >}}

## Inserting Online Video

Online video can be inserted in MS Word from Insert tab > Online Video. You can insert online video into the document at the current location by calling **DocumentBuilder.insert_online_video** method. Four overloads of this method have introduced in DocumentBuilder class. The first one works with the most popular video resources and takes the URL to the video as a parameter. 

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

# Pass direct url from youtu.be.
url = "https://youtu.be/t_1LYZ102RA"

width = 360
height = 270

shape = builder.insert_online_video(url, width, height)

doc.save(docs_base.artifacts_dir + "WorkingWithOleObjectsAndActiveX.insert_online_video.docx")
{{< /highlight >}}


Simple insertion of online video from the following resources is supported:

* <https://www.youtube.com/>
* <https://vimeo.com/>

The second overload works with all other video resources and takes embed Html code as a parameter:

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

The Html code for embedding video can vary between providers, consult your corresponding provider of choice for details. Note that the document will be automatically optimized for MS Word 2013 to show video.
