---
title: Mail Merge עם XML מקור נתונים ב C#
second_title: Aspose.Words עבור .NET
articleTitle: Mail Merge עם XML מקור נתונים
linktitle: Mail Merge עם XML מקור נתונים
type: docs
description: "השתמש במגוון מקורות נתונים בעת ביצוע פעולת Mail Merge, כולל קובץ XML באמצעות C#. היתרון העיקרי בשימוש XML הוא היכולת להגדיר היררכיה ישירות במסמך."
keywords: "mail merge xml data source c#"
weight: 30
url: /he/net/mail-merge-with-xml-data-source/
timestamp: 2024-07-11-08-07-06
---

ניתן להשתמש במגוון מקורות נתונים בעת ביצוע פעולת Mail Merge, כולל קובץ XML. היתרון העיקרי בשימוש XML הוא היכולת להגדיר היררכיה ממש במסמך ואז פשוט להעביר אותה ל Aspose.Words.

מאמר זה יתאר כיצד לקרוא נתונים מקובץ XML ולא ישירות ממסד נתונים ויכלול XML כמקור הנתונים לביצוע פעולה Mail Merge.

## היתרונות של XML כמקור נתונים

XML מקורות נתונים שימושיים מאוד לאחסון נתונים ללא תקורה של מסד נתונים. הם נהדרים עבור יישומים לא מקוונים שבהם המשתמשים צריכים להוסיף, לערוך ולמחוק נתונים כאשר הם לא יכולים להתחבר למסד נתונים.

XML נתונים יכולים להוות אלטרנטיבה טובה למקור נתונים למאגרי מידע יחסיים, במיוחד אם אתה עובד עם יישומי אינטרנט. רוב שירותי האינטרנט משתמשים ב - XML כדי להחליף מידע. מסדי נתונים מכוונים XML משמשים באופן פעיל בשוק הנוכחי, ומפתחי מסדי נתונים יחסיים מוסיפים XML תאימות למוצרים שלהם כדי לקבל החזר מסד נתונים XML.

מכיוון ש XML מאחסן נתונים בפורמט טקסט רגיל, האחסון אינו תלוי בפלטפורמה. לפיכך, ניתן לייצא, לייבא או פשוט להעביר נתונים בקלות. XML פופולרי כמקור נתונים מכיוון שהוא מציע דרך לשמר את המשמעות הסמנטית של נתונים בעת תקשורת בין יישומים שונים.

## מילוי תבנית מיזוג עם נתונים מ XML באמצעות DataSet

XML הוא הסטנדרט האוניברסלי להחלפת נתונים, ו Microsoft Word פורמטים של מסמכים הם הפורמטים הפופולריים ביותר עבור Mail Merge תבניות. לכן, היכולת להריץ Mail Merge מקובץ XML למסמך תבנית Word הפכה לדרישה נפוצה.

Microsoft Word אינו מספק שיטה ישירה לעבודה עם XML נתונים כמקור נתונים לפעולה Mail Merge, ואילו Aspose.Words מאפשר לך לבצע פעולה Mail Merge עם נתונים ממקור נתונים XML. שים לב שגם מבנה המסמך XML יכול להיות מגוון והנתונים עדיין יקראו נכון. זה מאפשר סוגים שונים של מסמכים XML להתמזג בקלות.

השתמש בשיטת `ReadXML` כדי לקרוא את הסכימה והנתונים XML לאובייקט `DataSet`. אובייקט זה משמש כמקור נתונים עבור mail merge.

{{% alert color="primary" %}}

ניתן להשתמש באותן תבניות עבור מקורות נתונים שונים.

{{% /alert %}}

XML הבא מכיל את הנתונים הדרושים למילוי תבנית מיזוג:

{{< highlight csharp >}}
<?xml version="1.0" encoding="utf-8"?>
<customers>
	 <customer Name="John Ben Jan" ID="1" Domain="History" City="Boston"/>
 	<customer Name="Lisa Lane" ID="2" Domain="Chemistry" City="LA"/>
	 <customer Name="Dagomir Zits" ID="3" Domain="Heraldry" City="Milwaukee"/>
 	<customer Name="Sara Careira Santy" ID="4" Domain="IT" City="Miami"/>
</customers> 
{{< /highlight >}}

דוגמת הקוד הבאה מראה כיצד לטעון XML נתונים לתוך DataSet ולאחר מכן להשתמש בהם כמקור נתונים:

{{< gist "aspose-words-gists" "0441f68c5209fec25c47d1a0a203fbb0" "xml-mail-merge.cs" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ המדגם של דוגמה זו מ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20data%20-%20Customers.xml).

{{% /alert %}}

ניתן להבחין בהבדל בין התבנית לפני ביצוע הפעולה Mail Merge:

<img src="fill-merge-template-from-xml-using-dataset-1.png" alt="fill_merge_template_from_xml_using_dataset" style="width:250px"/>

ואחרי ביצוע הפעולה Mail Merge:

<img src="fill-merge-template-from-xml-using-dataset-2.png" alt="fill_merge_template_from_xml" style="width:285px"/>
