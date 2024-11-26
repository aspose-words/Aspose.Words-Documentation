---
title: הדפסה מסמך
second_title: Aspose.Words עבור Java
articleTitle: הדפסה מסמך מתודולוגיה או שימוש באבחון
linktitle: הדפסה מסמך מתודולוגיה או שימוש באבחון
description: "הדפסה מסמך באמצעות Java באמצעות הגדרות, הדפסה Preview, ומדפי התקדמות הדפסה."
type: docs
weight: 55
url: /he/java/print-a-document-programmatically-or-using-dialogs/
timestamp: 2024-01-27-14-07-04
---

מאמר זה מתאר כיצד להדפיס מסמך עיבוד מילים באמצעות Aspose.Words API. זה גם מדגים את השיטות של הדפסה מסמך עם הגדרות, הדפסה Preview, ודיאלוגי התקדמות הדפסה.

## הדפסה מסמך עם הגדרות ותצוגה מקדימה של הדפסה

בעת עבודה עם מסמכים, נדרש לעתים קרובות להדפיס אותם למדפסת שנבחרה. זה עוזר להשתמש בדיאלוג תצוגה מקדימה הדפסה כדי לבדוק באופן ויזואלי כיצד המסמך המודפס יופיע ולבחור אפשרויות הדפסה רלוונטיות.

The The The Aspose.Words אין דיאלוגים או צורות בנויות, אלא מיישם את [AsposeWordsPrintDocument](https://reference.aspose.com/words/java/com.aspose.words/asposewordsprintdocument/) שיעור מעלים הן את java.awt.print. הדפסה ו-Java.awt.print. עמוד

הדוגמה הבאה מראה כיצד להשתמש בכיתות אלה כדי להדפיס מסמך מתוך Aspose.Words באמצעות דיאלוגי תצוגה מקדימה והגדרות:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-DocumentPreviewAndPrint-PrintDialog.java" >}}

{{% alert color="primary" %}} You can download an example of using the **PrintPreviewDialog** class from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Rendering_and_printing/PrintDocuments.java). {{% /alert %}}

## הדפסת דפים מרובים על One Sheet

Aspose.Words ליישם את **MultipagePrintDocument** שיעור, כדי לתקן את פעולת ההדפסה כדי ליישם את ההיגיון מותאם אישית שלך על ידי הגדרת הדרך שבה המסמך יופיע בדף המודפס. The The The **MultipagePrintDocument** הכיתה מספקת את היכולת להדפיס כמה דפים על גיליון אחד של נייר.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-MultiplePagesOnSheet-MultiplePagesOnSheet.java" >}}

ניתן להוריד דוגמה לשימוש **MultipagePrintDocument** מעמד [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/c693ec7a8957051c206edc69612094a4169f6def/Examples/DocsExamples/Java/src/main/java/DocsExamples/Rendering_and_printing/PrintDocuments.java#L46)

התוצאה של דוגמה קוד זה מוצגת להלן:

![print_several_pages_on_one_sheet_aspose_words_java](/words/java/print-a-document-programmatically-or-using-dialogs/print-several-pages-on-one-sheet.png)/
