---
title: התקן TrueType גופנים ב Linux ב C++
second_title: Aspose.Words עבור C++
articleTitle: התקן TrueType גופנים ב Linux
linktitle: התקן TrueType גופנים ב Linux
description: "Aspose.Words עבור C++ מאפשר עיבוד מסמך שנוצר באמצעות Microsoft Word במכונה Linux בדיוק הטוב ביותר. כדי להשיג זאת, העתק קבצי גופנים ממחשב Windows או התקן חבילת גופנים `TrueType` במחשב Linux שלך."
type: docs
weight: 20
url: /he/cpp/install-truetype-fonts-on-linux/
timestamp: 2024-01-27-14-07-04
---

לרוב, תשתמש Aspose.Words כדי להמיר DOC או DOCX מסמכים ל PDF פוּרמָט. אם אתה צריך לעשות את זה במחשב Linux, נושא זה יעזור לך ללמוד כיצד להבטיח Aspose.Words הוא עיבוד המסמכים שלך עם הדיוק הטוב ביותר.

לרוב, המסמכים DOC ו DOCX, אשר צריכים להיות מומרים נוצרו באמצעות Microsoft Word, על Windows או Mac OS מערכת הפעלה. לכן, רוב הפונטים המשמשים במסמכים DOC ו - DOCX הם "Windows פונטים" או "פונטים משרדיים", שהם הפונטים המותקנים עם Microsoft Windows או Microsoft אופיס. גופנים אלה כוללים אריאל, קליברי, קמבריה, המאה גותית, שליח חדש, גרמונד, טאהומה, ורדנה, כנפיים, ועוד רבים אחרים.

הבעיה היא שהגופנים `TrueType` המפורטים לעיל אינם מותקנים כברירת מחדל בהפצות Linux. אם אתה לוקח מסמך טיפוסי DOCX המעוצב עם גופן קמבריה ומנסה להמיר אותו ל PDF פורמט ב Linux, Aspose.Words ישתמש בגופן אחר מכיוון שקמבריה אינה זמינה. כתוצאה מכך, המסמך PDF ייראה שונה, בהשוואה למסמך DOCX המקורי. כדי לוודא שמסמכים שהומרו על ידי Aspose.Words מופיעים קרוב ככל האפשר למקור, עליך להתקין "Windows גופנים" במערכת Linux שלך.

ישנן שתי דרכים עיקריות להשיג TrueType גופנים במערכת Linux:

- העתק .TTF ו .TTC קבצים ממכונה Windows למכונה Linux שלך
- התקן חבילת גופנים `TrueType`, כגון *msttcorefonts*

## העתק גופנים ממכונה Windows

דרך קלה ומהירה להשיג TrueType גופנים במערכת Linux היא להעתיק .TTF ו .TTC קבצים מה-ג: \ Windows\Fonts ספרייה במחשב Windows לספריה כלשהי במחשב Linux שלך. אין צורך להתקין או לרשום גופנים אלה ב Linux בכל דרך שהיא; אתה רק צריך לציין את המיקום של הגופנים באמצעות [FontSettings](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_settings) בכיתה ב Aspose.Words.

{{% alert color="primary" %}}

ודא אם נדרש רישוי גופנים, וקרא בעיון את EULA לפני התקנת MS גופנים בכל מערכת הפעלה Linux.

{{% /alert %}}

## התקן חבילת גופנים `TrueType`

ישנן מספר חבילות Linux, המכילות Microsoft TrueType גופנים, שניתן להוריד ולהתקין במחשב Linux שלך. השלבים המדויקים עשויים להיות שונים בהפצות Linux שונות.

- ב Ubuntu, השתמש במנהל החבילות הסינפטי כדי למצוא ולהתקין את החבילה *ttf-mscorefonts-installer*.
- ב - openSUSE, השתמש בניהול תוכנה של יסט2 ססי כדי למצוא ולהתקין את החבילה *fetchmsttfonts*.
- השתמש בגופני שחרור המורשים תחת OFL, כחלופה לגופנים סטנדרטיים Windows: אריאל, טיימס ניו רומן, ו שליח חדש.
- עבור חבילות גופנים המתאימות להפצות Linux אחרות, חפש תיעוד זמין באינטרנט.

לאחר התקנת החבילה, Aspose.Words ימצא גופנים אלה בתיקיות במערכת שלך וישתמש בהם בעת עבודה עם מסמכים.

## ראה גם

- [גופני שחרור](https://github.com/liberationfonts) כחלופה לגופנים סטנדרטיים Windows
