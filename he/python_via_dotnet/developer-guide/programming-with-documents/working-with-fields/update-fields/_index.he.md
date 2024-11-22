---
title: שדות תעופה Python
second_title: Aspose.Words עבור Python via .NET
articleTitle: עדכון שדות
linktitle: עדכון שדות
description: "שדות עדכון במסמך בדרכים שונות ושימוש באפשרות אחרת Python."
type: docs
weight: 30
url: /he/python-net/update-fields/
timestamp: 2024-01-27-14-07-04
---

בדרך כלל, שדה מוכנס לתוך Microsoft Word כבר מכיל ערך עדכני. לדוגמה, אם השדה הוא נוסחה או מספר דף, הוא יכיל את הערך הרצוי הנכון לגרסה נתונה של המסמך. אבל אם יש לך יישום אשר יוצר או משנה מסמך עם שדות כמו מיזוג שני מסמכים או המאוכלס אותו עם נתונים, אז באופן אידיאלי כל התחומים חייבים להיות מעודכנים עבור המסמך להיות שימושי.

## כיצד לעדכן שדות

כאשר מסמך טעון, Aspose.Words לחקות את ההתנהגות של Microsoft Word עם האפשרות לעדכן באופן אוטומטי שדות מוחלפו. ניתן לסכם את ההתנהגות כדלקמן:

- כאשר אתה פותח / שומר מסמך שהשדות נשארים שלמים
- אתה יכול לעדכן במפורש את כל התחומים במסמך (למשל לבנות מחדש את TOC) כאשר אתה צריך
- בעת הדפסה / חזרה ל- PDF או XPS השדות הקשורים למספר העמודים ב Headers/footers מעודכנים
- כאשר אתה מבצע Mail Merge כל התחומים מעודכנים באופן אוטומטי

### עדכון שדות

כדי לעדכן במפורש שדות במסמך כולו, פשוט לקרוא [update_fields](https://reference.aspose.com/words/python-net/aspose.words/document/update_fields/). כדי לעדכן שדות הכלולים במסגרת מסמך, קבל [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) להתנגד ולקרוא [update_fields](https://reference.aspose.com/words/python-net/aspose.words/range/update_fields/) שיטה. In In In Aspose.Words, אתה יכול להשיג **Range** עבור כל צומת בעץ המסמך, כגון [Section](https://reference.aspose.com/words/python-net/aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), וכו' באמצעות [Node.range](https://reference.aspose.com/words/python-net/aspose.words/node/range/) רכוש. אתה יכול לעדכן את התוצאה של שדה אחד על ידי קריאה [update](https://reference.aspose.com/words/python-net/aspose.words.fields/field/update/) שיטה.

### עדכון אוטומטי של Page-Related Fields במהלך Rendering

כאשר אתה מבצע המרה של מסמך לפורמט קבוע של דף לדוגמה ל- PDF או PDF או XPS, ואז Aspose.Words באופן אוטומטי לעדכן את שדות הקשורים ל-Page פריסה `PAGE`, `PAGEREF` נמצא בראש/עמודי המסמך. התנהגות זו מחקה את ההתנהגות של Microsoft Word בעת הדפסה של מסמך.

אם אתה רוצה לעדכן את כל השדות האחרים במסמך, עליך להתקשר [update_fields](https://reference.aspose.com/words/python-net/aspose.words/document/update_fields/) לפני הגשת המסמך.

הדוגמה הבאה של הקוד מראה כיצד לעדכן את כל התחומים לפני ביצוע מסמך:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-UpdateDocFields.py" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ הדגימה של דוגמה זו [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

### עדכון שדה אוטומטי במהלך Mail Merge

כשאתם מבצעים mail merge" כל התחומים במסמך מעודכנים באופן אוטומטי. הסיבה לכך היא Mail Merge זה מקרה של עדכון שדה. התוכנית פוגשת Mail Merge שדה וצריכה לעדכן את התוצאה שלה, אשר כרוך לתפוס את הערך ממקור הנתונים ולהכניס אותו לתחום. ההיגיון הוא כמובן מורכב יותר, למשל, כאשר סוף המסמך /mail merge האזור מגיע אבל יש עדיין נתונים נוספים להתמזג, אז האזור צריך להיות משוכפל ואת מערכת שדות חדשה מעודכן.

## עקבו אחרי Dirty Attribute

Wdirty הוא תכונה ברמה שדה כי יהיה לרענן רק את השדה שאתה מציין כאשר המסמך נפתח. זה אומר ל-MS Word רק לרענן שדה זה בפעם הבאה שהמסמכים נפתחים. אתה יכול להשתמש [update_dirty_fields](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/update_dirty_fields/) רכוש כדי לציין אם לעדכן את התחומים עם התכונה המלוכלכת. כאשר הערך של **תגית: Dirty_fields** מוגדר `True`" לכל התחומים יש `True` ערך [Field.is_dirty](https://reference.aspose.com/words/python-net/aspose.words.fields/field/is_dirty/) או [FieldChar.is_dirty](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/is_dirty/) נכסים מעודכנים על עומס המסמכים.

הדוגמה הבאה של הקוד מראה כיצד לעדכן שדות שיש להם את התכונה המלוכלכת:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-UpdateDirtyFields.py" >}}

## עדכון אחרון הנכס לפני החיסכון

אתה יכול להשתמש [SaveOptions.update_last_saved_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_last_saved_time_property/) רכוש אם לעדכן את הנכס המובנה המתאים [last_saved_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/last_saved_time/) בעת שמירת המסמך.

דוגמה לקוד הבא מראה כיצד לעדכן את הנכס:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-UpdateLastSavedTimeProperty.py" >}}

