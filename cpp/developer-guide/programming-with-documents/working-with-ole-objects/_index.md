---
title: Working with Ole Objects
type: docs
aliases:
 - /cpp/working-with-ole-objects-and-online-video/
weight: 110
url: /cpp/working-with-ole-objects/
---

## Inserting Ole Object

If you want Ole Object call DocumentBuilder.InsertOleObject. Pass to this method the ProgId explicitly with other parameters. The code example given below shows how to insert Ole Object into a document.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertOleObject.cpp" >}}

### Set File Name and Extension when Inserting Ole Object

OLE package is a legacy and "undocumented" way to store embedded objects if the OLE handler is unknown. Early Windows versions such as Windows 3.1, 95 and 98 had Packager.exe application which could be used to embed any type of data into the document. Now, this application is excluded from Windows but MS Word and other applications still use it to embed data if the OLE handler is missing or unknown. OlePackage class allows accessing OLE Package properties. The code example given below shows how to set the file name, extension and display name for OLE Package.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.cpp" >}}

### Get Access to OLE Object Raw Data

The following code example demonstrates how to get OLE Object raw data using OleFormat.GetRawData() method.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.cpp" >}}

### Insert Ole Object as Icon

The following code example shows how to insert OLE Object as an icon. For this purpose, the DocumentBuilder class exposes the InsertOleObjectAsIcon method.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.cpp" >}}
The following code example demonstrates how to inserts an embedded OLE object as an icon from a stream into the document.
{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIconUsingStream.cpp" >}}
