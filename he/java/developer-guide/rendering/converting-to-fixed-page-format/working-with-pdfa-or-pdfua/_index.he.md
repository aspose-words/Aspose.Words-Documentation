---
title: עבודה עם PDF/A או PDF/UA
second_title: Aspose.Words עבור Java
articleTitle: עבודה עם PDF/A או PDF/UA
linktitle: עבודה עם PDF/A או PDF/UA
description: "המרת PDF/A-1, PDF/A-2, PDF/A-4 ו- PDF/UA באמצעות Java. ישנן מספר בעיות בעת המרת מסמכי PDF/A. Aspose.Words עבור Java פותר אותם."
type: docs
weight: 28
url: /he/java/working-with-pdfa-or-pdfua/
timestamp: 2024-01-27-14-07-04
---

פורמט PDF/A ו- PDF/UA מחייב מספר דרישות הקשורות לתוכן המסמך שלא ניתן להשלים במהלך המרה אוטומטית של מסמך בפורמט Word ל- PDF. דרישות אלה יש לאמת ולתקן במסמך Word לפני המרה או במסמך PDF לאחר המרה על מנת לייצר מסמך PDF/A ו- PDF/UA.

דרישות בסיסיות הן למבנה או גופנים של מסמך PDF/A ו- PDF/UA, אשר נבחן בסעיפים הבאים.

{{% alert color="primary" %}}

שימו לב כי תפוקה של PDF/UA-1 תהיה גם WCAG 2.0 וסעיף 508.

{{% /alert %}}

## דרישות מבנה

הדרישות הנוכחיות הן ל- PDF/A-1a, PDF/A-2a, PDF/A-4 ו- PDF/UA-1.

יש כמה ניואנסים של איך Aspose.Words עובד בעת המרת תקני פורמט PDF שונים. יש לקחת בחשבון אם אתה רוצה לקבל את התוצאה הצפויה.

{{% alert color="primary" %}}

הערה: אין דרישות מבנה הגיוניות ל- PDF/A-4. מסיבה זו, אנו לא רואים את הגירסה PDF/A-4 בסעיף זה "דרישות מבנה הגוף".

{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>הסעיף מספר לנו את הדברים הבאים (הסבר לראות פרטים):</summary>
    <p></p>
    <p>זה בלתי צפוי לכותבים לייצר מידע מבני או סמנטי באמצעות תהליכים אוטומטיים ללא אימות הולם.</p>
    <p>ISO 19005-2, 6.7.1</p>
</details>
{{% /alert %}}

הקטעים הבאים מתארים את הניואנסים של איך Aspose.Words עובד בעת המרת תקני פורמט PDF שונים ואפשרויות לפתרון שלהם.

### מבנה סוג

|  תקן PDF Aspose.Words |  נוכחות של דרישה |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

מסמך PDF הוא רצף של בלוקים כגון כותרות, פסקאות, שולחנות ואחרים. בלוקים אלה יוצרים מבנה מסמך – חזק או חלש.

שני המבנים החזקים והחלשים תקפים ל- PDF/A. Microsoft Word למסמכים יש מבנה חלש על ידי עיצוב, Aspose.Words יוצר PDF עם המבנה החלש בהתאמה וגם יוצר כותרות על פי רמות המתאר של פסקאות במסמך המקור.

עבור מסמך PDF / UA-1 עם מבנה חלש, יש צורך נוסף כי מספרי הכותרת הולכים על מנת ללא פערים.

{{% alert color="secondary" %}}
<details>
    <summary>הסעיף מספר לנו את הדברים הבאים (הסבר לראות פרטים):</summary>
    <p></p>
    <p>המבנה ברמת בלוק עשוי לעקוב אחר אחת משתי פרדיגמות עיקריות:</p>
    </ol>
      <li>מאוד מובנה. האלמנטים הקבוצתיים הקנינים לרמות רבות ככל שיידרשו כדי לשקף את הארגון של החומר למאמרים, קטעים, חתך וכן הלאה. בכל רמה, הילדים של אלמנט הקבוצתי צריכים לכלול כותרת (H), אחת או יותר פסקאות (P) עבור תוכן ברמה זו, ואולי אחד או יותר אלמנטים מקבוצתיים עבור חתך מקונן.</li>
      <li>בנוי בצורה מסובכת. המסמך הוא שטוח יחסית, שיש לו אולי רק רמה אחת או שתיים של אלמנטים קבוצתיים, עם כל כותרות, פסקאות, ושמות אחרות כמו הילדים המיידיים שלהם. במקרה זה, הארגון של החומר אינו משתקף במבנה הלוגי; עם זאת, הוא עשוי להתבטא על ידי שימוש בכותרות עם רמות ספציפיות (H1–H6).</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.4.3.5.</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>עבור מסמכי PDF/UA-1, המפרט מכיל תוספת הקשורה לרמות הכותרת (לבדוק פרטים):</summary>
    <p></p>
    <p>אם מסמך Smantics דורש רצף יורד של ראשים, רצף כזה ימשיך בסדר מספרי קפדני ולא לדלג על רמת כותרת בין-מחדשת. H1 H2 H3 מותר, בעוד H1 H3 אינו.</p>
    <p>ISO-14289-1, 7.4.2</p>
</details>
{{% /alert %}}

כדי להבטיח את התפוקה הנכונה, משתמשים צריכים להבטיח כי התוכן של מסמך המקור מאורגן כראוי ואת רמות קווי המתאר מפורטים כראוי עבור פסקאות. אחרת, המשתמש צריך לאמת ולתקן את המבנה של מסמך PDF התפוקה.

{{% alert color="secondary" %}}
<details>
    <summary>בבלוק זה, אתה יכול לראות דוגמאות: כיצד להגדיר רמות מתאר ב Microsoft Word או לבדוק ולתקן את המבנה של מסמך ה- PDF של הפלט (לבדוק פרטים).</summary>
    <p></p>
    <p>In In In Microsoft Word סגנונות ברירת מחדל "Heading X" ניתן להשתמש כדי להגדיר את רמת המתאר:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-heading1-2.png" alt="MWHeading1-2" style="width:800px"/>
    <p>בנוסף, ניתן לבדוק את רמת המתאר או לשנות בחלון "Paragraph":</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-outline-level.png" alt="MWOutlineLevel" style="width:800px"/>
    <p>ב- Acrobat ניתן לבדוק את מבנה המסמך או להשתנות בחלונית "Tags":</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-tags-pane.png" alt="AcrobatTagsPane" style="width:800px"/>
</details>
{{% /alert %}}

### כתיבת התוכן כאמנות

|  תקן PDF Aspose.Words |  נוכחות של דרישה |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

כרגע, Aspose.Words סימני עמוד ראשי ורגליים, שים לב מפרידים, תאים חוזרים על השולחן, ותמונות דקורטיביות כמו חפצים. שימו לב כי רשימה זו עשויה להיות מעודכנת בעתיד.

{{% alert color="secondary" %}}
<details>
    <summary>הסעיף מספר לנו את הדברים הבאים (הסבר לראות פרטים):</summary>
    <p></p>
    <p>אובייקטים גרפיים במסמך ניתן לחלק לשתי כיתות:</p>
    </ol>
      <li>התוכן האמיתי של מסמך כולל אובייקטים המייצגים חומר שהוצג במקור על ידי המחבר של המסמך.</li>
      <li>Artifacts הם אובייקטים גרפיים שאינם חלק מהתוכן המקורי של המחבר אלא נוצרים על ידי הכותב התואם במהלך הדמיה, פריסה או תהליכים מכניים אחרים.</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.2.2.1.</p>
</details>
{{% /alert %}}

אם מסמך מכיל תוכן אחר שחייב להיות מסומן כחפץ, או אם כל אחד מהתכנים המוצפים הוא תוכן אמיתי, הלקוחות צריכים לתקן זאת בפלט PDF.

{{% alert color="secondary" %}}
<details>
    <summary>בלוק זה, אתה יכול לראות דוגמאות: איך לסמן צורות כמו דקורטיבי ב Microsoft Word או לסמן צורה כחפץ במסמך ה- PDF של הפלט (הסבר לראות פרטים).</summary>
    <p></p>
    <p>לדוגמה, צורות יכול להיות מסומן כמו דקורטיבי ב Microsoft Word, כך ייצואו ל- PDF כחפץ:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-decorative-shape.png" alt="MWDecorativeShape" style="width:800px"/>
    <p>אתה יכול לסמן צורה כחפץ בפלט PDF:</p>
      <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-mark-as-artifact-delete-empty-tag.png" alt="PdfDeleteEmptyTag" style="width:800px"/>
    <p>כמו כן, אתה יכול להעביר טקסט בראש מהחפץ לתוכן אמיתי בפלט PDF:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-switch-text-in-header.png" alt="AcrobatSwitchTextInHeader" style="width:800px"/>
</details>
{{% /alert %}}

### שפה טבעית

|  תקן PDF Aspose.Words |  נוכחות של דרישה |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

שפת טקסט מפורטת Microsoft Word מסמכים Aspose.Words מייצא את השפה המפורטת לפלט PDF עם *Lang* תכונה המצורפת לרצף תוכן מסומן או תג ספאן - הוא נשלט על ידי [ExportLanguageToSpanTag](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getExportLanguageToSpanTag) רכוש. בדרך כלל אין בעיות שפה כאשר הטקסט נכנס על ידי המשתמש באמצעות Microsoft Word. אבל יש אפשרות שהשפה עשויה להיות לא מדויקת אם הטקסט נוצר באופן אוטומטי.

{{% alert color="secondary" %}}
<details>
    <summary>הסעיף מספר לנו את הדברים הבאים (הסבר לראות פרטים):</summary>
    <p></p>
    <p>שפה טבעית ברירת המחדל עבור כל הטקסט בקובץ צריך להיות מוגדר על ידי כניסה לנג במילון קטלוג של המסמך.</p>
    <p>כל התוכן הטקסטואלי בתוך קובץ השונה משפת ברירת המחדל צריך להיות מסומן על ידי שימוש `Lang` רכוש המצורף לרצף תוכן מסומן, או על ידי כניסה לאנג במילון יסוד מבנה...</p>
    <p>ISO19005-2, 6.7.4</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>בנוסף ל- PDF/UA-1, הסעיף מספר לנו את הפרטים הבאים (הסברים לראות פרטים):</summary>
    <p></p>
    <p>שפה טבעית תכריז... שינויים בשפה הטבעית יוכרזו.</p>
    <p>ISO-14289-1, 7.2</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>בבלוק זה, אתה יכול לראות דוגמאות: כיצד להבטיח שהשפה מוגדרת כראוי (לבדוק פרטים).</summary>
    <p></p>
    <p>משתמשים צריכים לוודא שהשפה מוגדרת כראוי במסמך Word המקור:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-language.png" alt="MWLanguage" style="width:800px"/>
    <p>מסמך PDF:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-check-change-language.png" alt="AcrobatCheckChangeLanguage" style="width:800px"/>
</details>
{{% /alert %}}

### איור Caption

|  תקן PDF Aspose.Words |  נוכחות של דרישה |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-2a |                           |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Microsoft Word מסמכים מאפשרים למשתמשים להוסיף כותרת.

{{% alert color="secondary" %}}
<details>
    <summary>הסעיף מספר לנו את הדברים הבאים (הסבר לראות פרטים):</summary>
    <p></p>
    <p>הכיתוב המלווה דמות יהיה מתוייג עם תג Caption.</p>
    <p>ISO-14289-1, 7.3</p>
</details>
{{% /alert %}}

כיום Aspose.Words לא יכול לייצא כתוביות עם תג Caption, אז הם חייבים להיות מלוטשים בפלט PDF.

{{% alert color="secondary" %}}
<details>
    <summary>בבלוק זה, אתה יכול לראות דוגמאות: כיצד להוסיף את הכיתוב (לבדוק פרטים).</summary>
    <p></p>
    <p>In In In Microsoft Word, ניתן להכניס את הכיתוב דרך תפריט ההקשר:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/figure-caption-mw.png" alt="figure-caption-mw" style="width:800px"/>
    <p>ב- Acrobat ניתן להוסיף או להשתנות באמצעות `Object` תגית:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/figure-caption-acrobat.png" alt="figure-caption-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

### תיאורים אלטרנטיביים

|  תקן PDF Aspose.Words |  נוכחות של דרישה |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Microsoft Word מסמכים מאפשרים למשתמשים להוסיף טקסט חלופי לתמונות, צורות וטבלאות. Aspose.Words ייצוא טקסט חלופי לפלט PDF.

{{% alert color="secondary" %}}
<details>
    <summary>הסעיף מספר לנו את הדברים הבאים (הסבר לראות פרטים):</summary>
    <p></p>
    <p>לכל רכיבי המבנה שתוכןם אין אנלוגיה טקסטאלית מוגדרת מראש, למשל תמונות, פורמולה וכו ', צריך לספק תיאור טקסט חלופי באמצעות כניסת אלט במילון האלמנט...</p>
    <p>לא תיאורים אלטרנטיים מספקים תיאורים טקסטואליים המסייעים בפרשנות הנכונה של תוכן לא טקסטואלי אחר.</p>
    <p>ISO19005-2, 6.7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>בבלוק זה, אתה יכול לראות דוגמאות: כיצד להבטיח שלכל האלמנטים יש טקסט חלופי (לבדוק פרטים).</summary>
    <p></p>
    <p>משתמשים צריכים לוודא שלכל האלמנטים יש טקסט חלופי במסמך Word המקור:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-table-alt-text.png" alt="MWTableAltText" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-shape-alt-text.png" alt="MWShapeAltText" style="width:800px"/>
    <p>מסמך PDF:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-table-alt-text.png" alt="AcrobatTableAltText" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-shape-alt-text.png" alt="AcrobatShapeAltText" style="width:800px"/>
</details>
{{% /alert %}}

### תיאורים של Hyperlinks

|  תקן PDF Aspose.Words |  נוכחות של דרישה |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-2a |                           |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

בנוסף לנקודה הקודמת, Microsoft Word מסמכים גם מאפשרים למשתמשים להוסיף טקסט חלופי להיפר קישורים. Aspose.Words ייצוא טקסט חלופי לפלט PDF.

למרבה הצער, לא כל יישום מאפשר לך להגדיר תיאור חלופי. לדוגמה, Adobe Acrobat כיום לא ניתן להגדיר תיאור כזה של Hyperlinks. אבל בפנים Microsoft Word, אתה יכול לעשות את זה כדלקמן:

<img src="/words/java/working-with-pdfa-or-pdfua/alternate-descriptions-hyperlinks-mw.png" alt="alternate-descriptions-hyperlinks-mw" style="width:800px"/>

לפעמים יש בעיה כי לא ניתן להגדיר טקסט alt עבור היפרlinks מהופנט בטבלה של תוכן (TOC) דרך Microsoft Word GUI Aspose.Words יכול לעדכן שדות כאלה וליצור את הקישורים בכוחות עצמו.

עקבו אחר הדוגמא לעדכון `TOC` שדות באמצעות Aspose.Words Document Object Model ()DOM):

{{< highlight java >}}
Document doc = new Document(fileName);
ArrayList<FieldHyperlink> tocHyperLinks = new ArrayList<>();

for (Field field : doc.getRange().getFields()) {
    if (field.getType() == FieldType.FIELD_HYPERLINK) {
        FieldHyperlink hyperlink = (FieldHyperlink) field;
        if (hyperlink.getFieldCode().startsWith("#_Toc")) {
            tocHyperLinks.add(hyperlink);
        }
    }
}

for (FieldHyperlink link : tocHyperLinks)
    link.setScreenTip(link.getDisplayResult());

PdfSaveOptions opt = new PdfSaveOptions();
opt.setCompliance(PdfCompliance.PDF_UA_1);
opt.setDisplayDocTitle(true);
opt.setExportDocumentStructure(true);
opt.getOutlineOptions().setHeadingsOutlineLevels(3);
opt.getOutlineOptions().setCreateMissingOutlineLevels(true);

String outFile = fileName.substring(0,fileName.lastIndexOf('.')) + "_aw.pdf";
doc.save(outFile, opt);
{{< /highlight >}}

### כותרות שולחן

|  תקן PDF Aspose.Words |  נוכחות של דרישה |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-2a |                           |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

שולחנות ב- PDF/UA-1 מסמכים חייבים להיות ראשיים - עמודה, שורה או שניהם. PDF/A דורש רק סימון שולחן סטנדרטי, שאין לו מגבלות נוספות. שימו לב Aspose.Words יוצר את הסימון שולחן סטנדרטי באופן אוטומטי.

{{% alert color="secondary" %}}
<details>
    <summary>הסעיף מספר לנו את הדברים הבאים (הסבר לראות פרטים):</summary>
    <p></p>
    <p>שולחנות צריכים לכלול ראשי... שולחנות יכולים להכיל כותרות עמודה, כותרות שורות או שניהם.</p>
    <p>ISO-14289-1, 7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>בבלוק זה, ניתן לראות דוגמאות: כיצד להגדיר את מנהל השולחן (לבדוק פרטים).</summary>
    <p></p>
    <p>ראש השולחן יכול להיות להגדיר את המקור Microsoft Word מסמך:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-mw.png" alt="table-headers-mw" style="width:800px"/>
    <p>הפלט PDF:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-acrobat-header-cell.png" alt="table-headers-acrobat-header-cell" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-acrobat-scope1.png" alt="table-headers-acrobat-scope1" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-acrobat-scope2.png" alt="table-headers-acrobat-scope2" style="width:800px"/>
</details>
{{% /alert %}}

### החלפת טקסט

|  תקן PDF Aspose.Words |  נוכחות של דרישה |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

{{% alert color="secondary" %}}
<details>
    <summary>הסעיף מספר לנו את הדברים הבאים (הסבר לראות פרטים):</summary>
    <p></p>
    <p>הפרטים מספרים לנו את הדברים הבאים:</p>
    <p>כל רכיבי המבנה הטקסטואלי המיוצגים באופן לא סטנדרטי, למשל, דמויות מותאמות אישית או גרפיקה פנימית, צריך לספק טקסט חלופי באמצעות טקסט חלופי. `ActualText` כניסה במילון היסוד של המבנה...</p>
    <p>ISO19005-2, 6.7.7</p>
</details>
{{% /alert %}}

Microsoft Word מסמך אינו מאפשר למשתמשים להגדיר טקסט חלופי. לכן יש לאמת ולקבוע את הפלט PDF:

<img src="/words/java/working-with-pdfa-or-pdfua/acrobat-replacement-text.png" alt="AcrobatReplacementText" style="width:800px"/>

### Abbreviations ו- Acronyms

|  תקן PDF Aspose.Words |  נוכחות של דרישה |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

{{% alert color="secondary" %}}
<details>
    <summary>הסעיף מספר לנו את הדברים הבאים (הסבר לראות פרטים):</summary>
    <p></p>
    <p>כל המקרים של abbreviations ו acronyms בתוכן טקסטאלי צריך להיות ממוקם ברצף תוכן מסומן עם תג ספאן אשר הנכס E מספק הרחבה טקסטואלית של קיצור או acronym...</p>
<p>ISO19005-2, 6.7.8</p>
</details>
{{% /alert %}}

Microsoft Word מסמך אינו מאפשר למשתמשים להגדיר קיצורים ו-Acronyms. לכן יש לאמת ולקבוע את הפלט PDF:

<img src="/words/java/working-with-pdfa-or-pdfua/acrobat-split-add-expansion-text.png" alt="AcrobatSplitAddExpansionText" style="width:800px"/>

## מסמך

|  תקן PDF Aspose.Words |  נוכחות של דרישה |
|  --------------------------------------------------  |  ------------------------------------------------------------  |
|  PDF/A-1a |                                                                |
|  PDF/A-2a |                                                                |
|  PDF/A-4 |                                                                |
|  PDF/UA-1 |  {{< emoticons/tick >}}<br/>מסמך PDF/UA-1 צריך להיות בעל שם |

{{% alert color="secondary" %}}
<details>
    <summary>הסעיף מספר לנו את הדברים הבאים (הסבר לראות פרטים):</summary>
    <p></p>
    <p>הפרטים מספרים לנו את הדברים הבאים:</p>
    <p>זרם המטא-נתונים במילון הקטלוג של המסמך יכיל כניסה ל- dc:title, שבו dc הוא הקידומת המומלצת עבור schema metadata Core דבלין...</p>
    <p>ISO-14289-1, 7.1</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>בבלוק זה, אתה יכול לראות דוגמאות: כיצד להגדיר את הכותרת של המסמך (לבדוק פרטים).</summary>
    <p></p>
    <p>ניתן להגדיר את שם המסמך או את המקור Microsoft Word מסמך:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/document-title-mw.png" alt="document-title-mw" style="width:800px"/>
    <p>הפלט PDF:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/document-title-acrobat.png" alt="document-title-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

## דרישות פונט

|  תקן PDF Aspose.Words |  נוכחות של דרישה |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-1b |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

ישנם גם מספר ניואנסים של עבודה עם גופנים כאשר ממיר ל- PDF/A-1, PDF/A-2, PDF/A-4 או PDF/UA-1 פורמטים באמצעות PDF/UA-1. Aspose.Words. הם חייבים לקחת בחשבון אם אתה רוצה למנוע בעיות אפשריות עם מסמך הפלט.

הקטעים להלן מתארים ניואנסים ואפשרויות כאלה לפתרון שלהם.

### דרישות משפטיות

|  תקן PDF Aspose.Words |  נוכחות של דרישה |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-1b |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Aspose.Words לא לאמת את המגבלות החוקיות של הגופנים המשמשים - זה תלוי במשתמשים. במילים אחרות, המשתמש לא צריך לספק גופנים לא מתאימים להמרות PDF באמצעות שימוש Aspose.Words.

{{% alert color="secondary" %}}
<details>
    <summary>הסעיף מספר לנו את הדברים הבאים (הסבר לראות פרטים):</summary>
    <p></p>
    <p>רק תוכניות גופניות אשר מוטבעות באופן חוקי בקובץ עבור ביצוע בלתי מוגבל, אוניברסלי ישמש.</p>
    <p>ISO19005-2, 6.2.11.4.1 ISO-14289-1, 7.21.4.1 (בדרך כלל באותן ציטוטים בשני היבטים)</p>
</details>
{{% /alert %}}

### .לא הגנה Glyph

|  תקן PDF Aspose.Words |  נוכחות של דרישה |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-1b |                           |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

השימוש `.notdef` glyph אסור. The The The `.notdef` glyph יופיע אם מסמך מכיל דמויות שאינן קיימות בגופן הנבחר, אשר גם לא ניתן לפתור באמצעות מנגנון פונטה Fallback.

{{% alert color="secondary" %}}
<details>
    <summary>הסעיף מספר לנו את הדברים הבאים (הסבר לראות פרטים):</summary>
    <p></p>
    <p>מסמך תואם לא יכלול התייחסות ל- .notdef glyph מכל אחד מהטקסט המציג מפעילי, ללא קשר למצב עריכת טקסט, בכל זרם תוכן.</p>
    <p>ISO19005-2, 6.2.11.8 ISO-14289-1, 7.21.8 (בדרך כלל אותם ציטוטים בשני היבטים)</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>בבלוק זה, אתה יכול לראות דוגמאות: כיצד להסיר או להחליף את הדמויות האלה (לבדוק פרטים).</summary>
    <p></p>
    <p>משתמשים צריכים להסיר או להחליף תווים אלה במסמך Word המקור:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-notdef-glyph.png" alt="MWNotdefGlyph" style="width:800px"/>
    <p>או מסמך PDF הפלט באמצעות הכלי "עריכה PDF":</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-remove-notdef-glyph-edit-pdf-tool.png" alt="AcrobatRemoveNotdefGlyph-EditPdfTool" style="width:800px"/>
</details>
{{% /alert %}}

### אזור שימוש פרטי (PUA)

|  תקן PDF Aspose.Words |  נוכחות של דרישה |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-1b |                           |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

תווים לשימוש פרטי (PUA) מופיעים בעיקר עבור Windows גופנים סמליים כמו "Symbol", "Wingdings", "Webdings", ואחרים. Microsoft Word פורמטים אינם מספקים אפשרות לאחסן טקסט בפועל עבור תווים.

{{% alert color="secondary" %}}
<details>
    <summary>הסעיף מספר לנו את הדברים הבאים (הסבר לראות פרטים):</summary>
    <p></p>
    <p>לרמה התאמה בלבד, עבור כל דמות... אשר ממפה קוד או קודים באזור השימוש הפרטי של Unicode (PUA), כניסה אקטואליתText... תהיה נוכח עבור אופי זה או רצף של דמויות אשר אופי כזה הוא חלק.</p>
    <p>ISO19005-2, 6.2.11.7.3</p>
</details>
{{% /alert %}}

"Segoe UIסמל" הוא סמל Windows גופן Unicode שניתן להשתמש בו כאלטרנטיבה לגופנים סמליים.

{{% alert color="secondary" %}}
<details>
    <summary>בבלוק זה, אתה יכול לראות דוגמאות: מה המשתמש צריך לעשות כדי לפתור את הבעיה עם גופנים סימבוליים (לבדוק פרטים).</summary>
    <p></p>
    <p>להחליף את הגופן הסמלי עם Unicode אחד במסמך Word המקור:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-insert-symbol.png" alt="MWInsertSymbol" style="width:800px"/>
    <p>או להוסיף כניסה ActualText לדמויות הבעייתיות במסמך PDF הפלט:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-span-tag-actual-text.png" alt="AcrobatSpanTagActualText" style="width:800px"/>
</details>
{{% /alert %}}
