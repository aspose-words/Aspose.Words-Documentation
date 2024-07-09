---
title: שמור מסמך Java
second_title: Aspose.Words עבור Java
articleTitle: שמור מסמך
linktitle: שמור מסמך
type: docs
description: "שמור מסמך בכל פורמט נתמך באמצעות Java."
weight: 20
url: /he/java/save-a-document/
---

רוב המשימות שאתה צריך לבצע Aspose.Words כרוך בהצלת מסמך. להציל מסמך Aspose.Words מספק [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save(java.lang.String)) שיטת [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) מעמד. ניתן לשמור את המסמך בכל פורמט הצלה נתמך על ידי Aspose.Words. לרשימה של כל הפורמטים הנתמכות, ראה את [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) אזהרה.

## שמור לקובץ {#save-a-document-to-a-file}

פשוט להשתמש [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String) שיטה עם שם קובץ Aspose.Words יקבע את תבנית החסכון מסיומת הקובץ שאתה מציין.

הדוגמה הבאה של הקוד מראה כיצד לטעון ולחסוך מסמך לקובץ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSave-LoadAndSave.java" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ התבנית של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## לשמור על זרם {#save-a-document-to-a-stream}

לעבור אובייקט זרימה [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) שיטה. יש צורך לציין את תבנית החיסכון במפורש בעת שמירת זרם.

הדוגמה הבאה של הקוד מראה כיצד לטעון ולחסוך מסמך לזרם:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveToStream-LoadAndSaveToStream.java" >}}

ניתן להוריד את קובץ התבנית של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

## לשמור על PCL {#save-a-document-to-pcl}

Aspose.Words תומך בשמירת מסמך ל- PCL (שפת פיקוד הדפסה). Aspose.Words ניתן לחסוך מסמכים בפורמט PCL 6 (PCL 6 Enhanced או PCL XL). The The The `PclSaveOptions` ניתן להשתמש בכיתה כדי לציין אפשרויות נוספות בעת שמירת מסמך לתוך פורמט PCL.

הדוגמה הבאה של הקוד מראה כיצד לחסוך מסמך ל- PCL באמצעות אפשרויות הצלה:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToPCL-ConvertDocumentToPCL.java" >}}
