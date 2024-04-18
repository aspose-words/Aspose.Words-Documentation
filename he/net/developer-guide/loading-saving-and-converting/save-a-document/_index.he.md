---
title: שמור מסמך C#
second_title: Aspose.Words עבור .NET
articleTitle: שמור מסמך
linktitle: שמור מסמך
type: docs
description: "שמור מסמך בכל פורמט נתמך באמצעות C#."
keywords: "save a document c#, save a document to file c#, save a document to stream c#, save a document Aspose .NET, save formats supported by Aspose.Words .NET"
weight: 20
url: /he/net/save-a-document/
---

רוב המשימות שאתה צריך לבצע Aspose.Words כרוך בהצלת מסמך. להציל מסמך Aspose.Words מספק [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) שיטת [Document](https://reference.aspose.com/words/net/aspose.words/document/) מעמד. ישנם עומסים המאפשרים שמירת מסמך לקובץ, זרם, או ASP.NET אובייקט HtpResponse למשלוח לדפדפן לקוח. ניתן לשמור את המסמך בכל פורמט הצלה נתמך על ידי Aspose.Words. לרשימה של כל הפורמטים הנתמכות, ראה את [SaveFormat](https://reference.aspose.com/words/net/aspose.words/saveformat/) אזהרה.

## שמור לקובץ {#save-a-document-to-a-file}

פשוט להשתמש [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) שיטה עם שם קובץ Aspose.Words יקבע את תבנית החסכון מסיומת הקובץ שאתה מציין.

הדוגמה הבאה של הקוד מראה כיצד לטעון ולחסוך מסמך לקובץ:

{{< gist "aspose-words-gists" "6b49e2482a4ca546ffd2b4f9fa642041" "load-save.cs" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ התבנית של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## לשמור על זרם {#save-a-document-to-a-stream}

לעבור אובייקט זרימה [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) שיטה. יש צורך לציין את תבנית החיסכון במפורש בעת שמירה על זרם.

הדוגמה הבאה של הקוד מראה כיצד לטעון ולהציל מסמך לזרם:

{{< gist "aspose-words-gists" "6b49e2482a4ca546ffd2b4f9fa642041" "load-save-stream.cs" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ התבנית של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

## שלח מסמך לדפדפן לקוחות {#sending-a-document-to-a-client-browser}

על מנת לשלוח מסמך לדפדפן לקוח, השתמש בעומס מיוחד שלוקח ארבעה פרמטרים: שם הקובץ, לשמור פורמט, להקליד סוג, וכן ASP.NET אובייקט HtpResponse האופן שבו המסמך יוצג למשתמש מיוצג על ידי [ContentDisposition](https://reference.aspose.com/words/net/aspose.words/contentdisposition/) הארה, הקובעת האם המסמך שנשלח לדפדפן יספק אפשרות לפתוח את עצמו ישירות בדפדפן או ביישום הקשור להרחבה הקובץ.

הדוגמה הבאה של הקוד מראה כיצד לשלוח מסמך לדפדפן הלקוח מדפדפן ASP.NET קוד:

{{< gist "aspose-words-gists" "6b49e2482a4ca546ffd2b4f9fa642041" "send-to-client-browser.cs" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ התבנית של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

עומס זה של `Save` שיטה אינה זמינה בעת שימוש .NET פרופיל לקוחות זה DLL ממוקם בתוך **Net3.5_ClientProfile** תיקיה. The The The .NET פרופיל לקוחות לא כולל אסיפות כגון **System.Web**, לכן, **HttpResponse** לא זמין. זה לגמרי על ידי עיצוב.

זה יכול להתבטא כטעות:

**"אין עומס על השיטה 'Save' לוקח פרמטרים '4'."**

אם אתה צריך להשתמש Aspose.Words פנימה ASP.NET יישום, מומלץ להשתמש .NET 2.0DLL, שם ניתן להשתמש בעומס הנכון, כפי שתואר במאמר זה.

## עקבו אחרי PCL {#save-a-document-to-pcl}

Aspose.Words תמיכה בשמירת מסמך ל- PCL (שפת פיקוד הדפסה). Aspose.Words ניתן לחסוך מסמכים בפורמט PCL 6 (PCL 6 Enhanced או PCL XL). The The The `PclSaveOptions` ניתן להשתמש בכיתה כדי לציין אפשרויות נוספות בעת שמירת מסמך לתוך פורמט PCL.

הדוגמה הבאה של הקוד מראה כיצד לחסוך מסמך ל- PCL באמצעות אפשרויות הצלה:

{{< gist "aspose-words-gists" "b5a3c7ccb6e79a15c8d9d65e050a881b" "docx-to-pcl.cs" >}}

## ראה גם

- מידע על ASP.NET [HtpResponse](https://docs.microsoft.com/en-us/dotnet/api/system.web.httpresponse?view=netframework-4.8) אובייקט
