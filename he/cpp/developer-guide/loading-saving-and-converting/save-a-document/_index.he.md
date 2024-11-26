---
title: שמור מסמך ב C++
second_title: Aspose.Words עבור C++
articleTitle: שמירת מסמך
linktitle: שמירת מסמך
type: docs
description: "שמור מסמך בכל פורמט נתמך באמצעות C++."
keywords: "save a document c++, save a document to file c++, save a document to stream c++, save a document Aspose C++, save formats supported by Aspose.Words C++"
weight: 20
url: /he/cpp/save-a-document/
timestamp: 2024-01-27-14-07-04
---

רוב המשימות שאתה צריך לבצע עם Aspose.Words כרוכות בשמירת מסמך. כדי לשמור מסמך Aspose.Words מספק את שיטת [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) של הכיתה [Document](https://reference.aspose.com/words/cpp/aspose.words/document/). ניתן לשמור את המסמך בכל פורמט שמירה הנתמך על ידי Aspose.Words. לרשימת כל הפורמטים השמורים הנתמכים, ראה את הספירה [SaveFormat](https://reference.aspose.com/words/cpp/aspose.words/saveformat/).

## שמור בקובץ {#save-a-document-to-a-file}

פשוט השתמש בשיטת [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) עם שם קובץ. Aspose.Words יקבע את פורמט השמירה מסיומת הקובץ שתציין.

דוגמת הקוד הבאה מראה כיצד לטעון ולשמור מסמך בקובץ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToDisk-LoadAndSave.cpp" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ התבנית של דוגמה זו מ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## שמור בזרם {#save-a-document-to-a-stream}

העבר אובייקט זרם לשיטת [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/). יש לציין את פורמט השמירה במפורש בעת שמירה בזרם.

דוגמת הקוד הבאה מראה כיצד לטעון ולשמור מסמך בזרם:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToStream-LoadAndSaveToStream.cpp" >}}

ניתן להוריד את קובץ התבנית של דוגמה זו מ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).


## שמור ל PCL {#save-a-document-to-pcl}

Aspose.Words תומך בשמירת מסמך לתוך PCL (שפת פקודת מדפסת). Aspose.Words ניתן לשמור מסמכים בפורמט PCL 6 (PCL 6 משופר או PCL XL). ניתן להשתמש בכיתה `PclSaveOptions` כדי לציין אפשרויות נוספות בעת שמירת מסמך בפורמט PCL.

דוגמת הקוד הבאה מראה כיצד לשמור מסמך ב - PCL באמצעות אפשרויות שמירה:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToPCL-ConvertDocumentToPCL.cpp" >}}
