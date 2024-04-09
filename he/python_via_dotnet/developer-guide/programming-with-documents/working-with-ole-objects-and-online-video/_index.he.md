---
title: אובייקטים ווידאו באינטרנט
second_title: Aspose.Words עבור Python via .NET
articleTitle: עקבו אחרי OLE Objects and online Video
linktitle: עקבו אחרי OLE Objects and online Video
description: "הכנס אובייקטים או Onlin vodeo לתוך מסמך באמצעות Python."
type: docs
weight: 360
url: /he/python-net/working-with-ole-objects/
---

OLE (Object Linking and Embedding) היא טכנולוגיה שבאמצעותה משתמשים יכולים לעבוד עם מסמכים המכילים "אובייקטים" שנוצרו על ידי יישומים של צד שלישי. כלומר, OLE מאפשר יישום עריכה לייצא אלה "אובייקטים" ליישום עריכה אחר ולאחר מכן לייבא אותם עם תוכן נוסף.

במאמר זה נדבר על הוספת אובייקט OLE והגדרת התכונות שלו, כמו גם הוספת וידאו מקוון לתוך מסמך.

## המונחים: אובייקטים

אם אתה רוצה אובייקט מוחלט, התקשר [insert_ole_object](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_ole_object/) שיטה ולהעביר אותה **ProgId** במפורש עם פרמטרים אחרים.

דוגמה לקוד הבא מראה כיצד להוסיף אובייקטים במסמך:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-DocumentBuilderInsertOleObject.py" >}}

### הגדרת שם הקובץ והרחבה בעת הוספת אובייקט OLE

חבילת OLE היא מורשת ו-"לא מטופלת" דרך לאחסן חפצים מוטבעים אם מטפל OLE אינו ידוע.

מוקדם Windows גרסאות כגון Windows 3.1,95 ו-98 היו חבילה. יישום exe שניתן להשתמש בו כדי להטביע כל סוג של נתונים במסמך. יישום זה נשלל כעת Windowsאבל Microsoft Word יישומים אחרים עדיין משתמשים בו כדי להטמיע נתונים אם המטפל חסר או לא ידוע. The The The `OlePackage` הכיתה מאפשרת למשתמשים לגשת לתכונות החבילה.

הדוגמה הבאה של הקוד מראה כיצד להגדיר את שם הקובץ, הרחבה, ואת שם התצוגה של חבילת OLE:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOleObjectwithOlePackage.py" >}}

### גישה ל-OLE Object Raw Data

משתמשים יכולים לגשת לנתונים של OLE באמצעות תכונות ושיטות שונות של `OleFormat` מעמד. לדוגמה, ניתן לקבל את `OLE` אובייקטים נתונים גולמיים או הנתיב והשם של קובץ מקור עבור אובייקט OLE המקושר.

דוגמה לקוד הבא מראה כיצד להגיע ל-OLE נתונים גולמיים באמצעות [get_raw_data](https://reference.aspose.com/words/python-net/aspose.words.drawing/oleformat/get_raw_data/) שיטה:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-GetAccessToOLEObjectRawData.py" >}}

### המונחים: אובייקטים כאייקון

אובייקטים קטנים יכולים גם להיות מוכנסים למסמכים כתמונות.

הדוגמה הקודית הבאה מראה כיצד להכניס את אובייקט OLE כסמל. למטרה זו, [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) השיעור חושף את [insert_ole_object_as_icon](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_ole_object_as_icon/) שיטה:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIcon.py" >}}

הדוגמה הקודית הבאה מראה כיצד להכניס אובייקט מוטבע כסמל מזרם לתוך המסמך:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIconUsingStream.py" >}}

## הכנס וידאו באינטרנט

וידאו מקוון יכול להיות מוכנס לתוך מסמך Word מן * "Insert" > "Online Video" tab. באפשרותך להוסיף וידאו מקוון לתוך מסמך במיקום הנוכחי על ידי קריאה [insert_online_video](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_online_video/) שיטה.

The The The [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) הכיתה מציגה ארבעה מעלים של שיטה זו. הראשון עובד עם משאבי הווידאו הפופולריים ביותר ולוקח את `URL` וידאו כפרמטר. לדוגמה, העומס הראשון תומך בהכנסה פשוטה של קטעי וידאו מקוונים מ [YouTube](https://www.youtube.com/) ו [Vimeo](https://vimeo.com/) משאבים.

דוגמה לקוד הבא מראה כיצד להכניס סרטון מקוון *Vimeo* לתוך מסמך:

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

עומס שני עובד עם כל משאבי וידאו אחרים ולוקח קוד HTML מוטבע כפרמטר. קוד HTML להטמעת וידאו עשוי להשתנות בהתאם לספק, כך ליצור קשר עם הספק המתאים לפרטים.

{{% alert color="primary" %}}

שימו לב כי המסמך יהיה מותאם באופן אוטומטי עבור MS Word 2013 כדי להציג וידאו.

{{% /alert %}}

הדוגמה הבאה של הקוד מראה כיצד להכניס סרטון מקוון לתוך מסמך באמצעות קוד HTML כזה:

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