---
title: "התקנת אמת המונחים: Linux פנימה Java"
second_title: Aspose.Words עבור Java
articleTitle: "התקנת אמת המונחים: Linux"
linktitle: "התקנת אמת המונחים: Linux"
description: "Aspose.Words עבור Java מאפשר להפוך מסמך שנוצר באמצעות Microsoft Word על A Linux מכונה עם הדיוק הטוב ביותר"
type: docs
weight: 20
url: /he/java/install-truetype-fonts-on-linux/
timestamp: 2024-01-27-14-07-04
---

לרוב, תשתמש Aspose.Words להמיר מסמכי DOC או DOCX לפורמט PDF. אם אתה צריך לעשות את זה על Linux מכונה, נושא זה יעזור לך ללמוד כיצד להבטיח Aspose.Words להפוך את המסמכים שלך לדיוק הטוב ביותר.

לעתים קרובות, מסמכי DOC ו- DOCX, אשר יש להמירם נוצרו באמצעות שימוש Microsoft Word, על A Windows מערכת ההפעלה Mac OS לכן, רוב הפונטים המשמשים במסמכים DOC ו- DOCX הם "Windows גופנים" או "פונטים של Office" הם הגופנים המותקנים עם Microsoft Windows או Microsoft משרד. גופנים אלה כוללים Arial, Calibri, Cambria, המאה גותית, Courier New, Garamond, Tahoma, Verdana, Wingdings ורבים אחרים.

הבעיה היא שה `TrueType` גופנים המפורטים לעיל אינם מותקנים כברירת מחדל על Linux הפצה. אם אתה לוקח מסמך DOCX טיפוסי המתואם עם הגופן Cambria ונסה להמיר אותו לפורמט PDF על Linux, Aspose.Words תשתמש בגפן אחר כי קמבריה אינה זמינה. כתוצאה מכך, מסמך PDF ייראה שונה, בהשוואה למסמך DOCX המקורי. כדי לוודא שהמסמכים מומרים על ידי Aspose.Words נראה קרוב ככל האפשר למקור, עליך להתקין ".Windows גופן" על Linux מערכת.

ישנן שתי דרכים עיקריות לקבל גפנים TrueType על a Linux מערכת:

- העתק .TTF ו. קבצי TTC מ Windows מכונה על Linux מכונה Machine
- התקנת `TrueType` חבילה, כגון *msttcorefonts*

## העתקת פונטים מ Windows מכונה Machine

דרך קלה ומהירה להגיע לפונטים של TrueType. Linux המערכת היא להעתיק. TTF ו- קבצי TTC `C:\Windows\Fonts` במאי על Windows מכונה לבמאית כלשהי שלך Linux מכונה אתה לא צריך להתקין או לרשום את הפונטים האלה על Linux בכל אופן, אתה רק צריך לציין את המיקום של הפונטים באמצעות [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/) בכיתה Aspose.Words.

{{% alert color="primary" %}}

בדוק אם נדרש רישיון גופני ולקרוא את EULA בקפידה לפני התקנת MS פונטס על כל אחד מהם. Linux מערכת הפעלה

{{% /alert %}}

## התקנת `TrueType` חבילה

יש מספר Linux חבילות, המכיל Microsoft אוזני TrueType, שאתה יכול להוריד ולהתקין על שלך Linux מכונה הצעדים המדויקים עשויים להיות שונים במגוון Linux הפצה.

- On Ubuntu, השתמש ב-Synaptic Pack Manager כדי למצוא ולהתקין את החבילה *tf-mscores- Installer*.
- On OpenSUSE, השתמש ב-Yat2 לניהול תוכנה כדי למצוא ולהתקין את התוכנה *fetchmsttfonts* חבילה
- השתמש ב-שחרור פונטס מורשה מתחת ל-L, כאלטרנטיבה לסטנדרט Windows שם הסרטון: Arial, Times New Roman, and Courier New.
- עבור חבילות גופניות המתאימות לאחרים Linux הפצה, חיפוש תיעוד זמין באינטרנט.

לאחר התקנת החבילה, Aspose.Words ימצאו את הפונטים האלה בתיקיות על המערכת שלך ולהשתמש בהם בעת עבודה עם מסמכים.

## ראה גם

- - [שחרור פונטים](https://github.com/liberationfonts) כחלופה לסטנדרט Windows גופנים
