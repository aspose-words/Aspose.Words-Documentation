---
title: עבודה עם PDF/A או PDF/UA
second_title: Aspose.Words עבור C++
articleTitle: עבודה עם PDF/A או PDF/UA
linktitle: עבודה עם PDF/A או PDF/UA
description: "להמיר ל PDF/A-1, PDF/A-2, PDF/A-4 ו PDF/UA באמצעות C++. יש כמה בעיות בעת המרה למסמכים PDF/A, ו Aspose.Words עבור C++ פותר אותם."
type: docs
weight: 38
url: /he/cpp/working-with-pdfa-or-pdfua/
timestamp: 2024-01-27-14-07-04
---

PDF/A ו PDF/UA פורמט מטיל מספר דרישות הקשורות לתוכן המסמך שלא ניתן למלא במהלך המרה אוטומטית ממסמך ב Word פורמט ל PDF. דרישות אלה צריכות להיות מאומתות ומתוקנות במסמך Word לפני ההמרה או במסמך PDF לאחר ההמרה כדי להפיק מסמך תואם לחלוטין PDF/A ו - PDF/UA.

הדרישות הבסיסיות הן למבנה או לגופנים של מסמך PDF/A ו - PDF/UA, אותם נשקול בסעיפים הבאים.

{{% alert color="primary" %}}

שים לב כי PDF/UA-1 הפלט יהיה גם WCAG 2.0 וסעיף 508 תואם.

{{% /alert %}}

## דרישות מבנה המסמך

הדרישות הנוכחיות הן עבור PDF/A-1a, PDF/A-2a, PDF/A-4, ו PDF/UA-1 פורמטים.

יש כמה ניואנסים של איך Aspose.Words עובד בעת המרה לסטנדרטים שונים של פורמט PDF. הם חייבים להילקח בחשבון אם אתה רוצה לקבל את התוצאה הצפויה.

{{% alert color="primary" %}}

שימו לב שאין דרישות מבנה לוגי עבור PDF/A-4. מסיבה זו, איננו רואים את גרסת PDF/A-4 בסעיף "דרישות מבנה מסמך" זה.

{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>המפרט אומר לנו את הדברים הבאים (הרחב כדי לראות פרטים):</summary>
    <p></p>
    <p>לא מומלץ לסופרים לייצר מידע מבני או סמנטי באמצעות תהליכים אוטומטיים ללא אימות מתאים.</p>
    <p>ISO 19005-2, 6.7.1</p>
</details>
{{% /alert %}}

הפרקים הקטנים להלן מתארים ניואנסים של איך Aspose.Words עובד בעת המרה לסטנדרטים שונים של פורמט PDF ואפשרויות לפתרון שלהם.

### סוג מבנה

| PDF רמות תאימות סטנדרטיות בתוך Aspose.Words | נוכחות של דרישה |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

מסמך PDF הוא רצף של בלוקים כגון כותרות, פסקאות, טבלאות ואחרים. בלוקים אלה יוצרים מבנה מסמך-חזק או חלש.

שני המבנים החזקים והחלשים תקפים עבור PDF/A. Microsoft Word למסמכים יש מבנה חלש לפי עיצוב, ו Aspose.Words יוצר PDF עם המבנה החלש בהתאמה וגם מייצר כותרות בהתאם לרמות המתאר של פסקאות במסמך המקור.

עבור מסמך PDF/UA-1 עם מבנה חלש, נדרש בנוסף שמספרי הכותרת יסתדרו ללא פערים.

{{% alert color="secondary" %}}
<details>
    <summary>המפרט אומר לנו את הדברים הבאים (הרחב כדי לראות פרטים):</summary>
    <p></p>
    <p>מבנה רמת הבלוק עשוי לעקוב אחר אחת משתי פרדיגמות עיקריות:</p>
    </ol>
      <li>מובנה מאוד. אלמנטים הקיבוץ מקננים לרמות רבות ככל שיידרש כדי לשקף את ארגון החומר למאמרים, סעיפים, סעיפי משנה וכן הלאה. בכל רמה, ילדי אלמנט הקיבוץ צריכים להיות מורכבים מכותרת (ח), פסקה אחת או יותר (עמ') לתוכן ברמה זו, ואולי אלמנט קיבוץ נוסף אחד או יותר לסעיפי משנה מקוננים.</li>
      <li>מבנה חלש. המסמך שטוח יחסית, עם אולי רק רמה אחת או שתיים של אלמנטים קיבוציים, עם כל הכותרות, הפסקאות ושאר BLSEs כילדיהם המיידיים. במקרה זה, ארגון החומר אינו בא לידי ביטוי במבנה הלוגי; עם זאת, הוא עשוי לבוא לידי ביטוי על ידי שימוש בכותרות עם רמות ספציפיות(H1–H6).</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.4.3.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>עבור מסמכים PDF/UA-1, המפרט מכיל תוספת הקשורה לרמות הכותרת (הרחב כדי לראות פרטים):</summary>
    <p></p>
    <p>אם סמנטיקה של מסמכים דורשת רצף יורד של כותרות, רצף כזה ימשיך בסדר מספרי קפדני ולא ידלג על רמת כותרת מתערבת. H1 H2 H3 מותר, בעוד H1 H3 לא.</p>
    <p>ISO-14289-1, 7.4.2</p>
</details>
{{% /alert %}}

כדי להבטיח פלט נכון, על המשתמשים לוודא שתוכן מסמך המקור מאורגן כראוי ורמות המתאר מוגדרות כהלכה לפסקאות. אחרת, על המשתמש לאמת ולתקן את מבנה הפלט PDF מסמך.

{{% alert color="secondary" %}}
<details>
    <summary>בבלוק זה תוכלו לראות דוגמאות: כיצד להגדיר רמות מתאר ב Microsoft Word או לבדוק ולתקן את מבנה הפלט PDF מסמך (הרחב כדי לראות פרטים).</summary>
    <p></p>
    <p>ב Microsoft Word ברירת מחדל" כותרת איקס " ניתן להשתמש בסגנונות להגדרת רמת המתאר:</p>
    <img src="m-w-heading1-2.png" alt="MWHeading1-2" style="width:800px"/>
    <p>בנוסף, ניתן לבדוק או לשנות את רמת המתאר בחלון " פסקה:</p>
    <img src="m-w-outline-level.png" alt="MWOutlineLevel" style="width:800px"/>
    <p>באקרובט ניתן לבדוק או לשנות את מבנה המסמך בחלונית " תגים:</p>
    <img src="acrobat-tags-pane.png" alt="AcrobatTagsPane" style="width:800px"/>
</details>
{{% /alert %}}

### סימון התוכן כחפץ

| PDF רמות תאימות סטנדרטיות בתוך Aspose.Words | נוכחות של דרישה |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

כרגע, Aspose.Words מסמן כותרות עליונות ותחתונות של עמודים, מפרידי הערות, תאי כותרת טבלה חוזרים ותמונות דקורטיביות כממצאים. שים לב שרשימה זו עשויה להתעדכן בעתיד.

{{% alert color="secondary" %}}
<details>
    <summary>המפרט אומר לנו את הדברים הבאים (הרחב כדי לראות פרטים):</summary>
    <p></p>
    <p>ניתן לחלק את האובייקטים הגרפיים במסמך לשתי מחלקות:</p>
    </ol>
      <li>התוכן האמיתי של מסמך כולל אובייקטים המייצגים חומר שהוצג במקור על ידי מחבר המסמך.</li>
      <li>חפצים הם אובייקטים גרפיים שאינם חלק מהתוכן המקורי של המחבר אלא נוצרים על ידי הכותב המתאים במהלך עימוד, פריסה או תהליכים מכניים למהדרין אחרים.</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.2.2.1</p>
</details>
{{% /alert %}}

אם מסמך מכיל תוכן אחר שיש לסמן כחפץ, או אם כל התוכן המלאכותי הוא תוכן אמיתי, על הלקוחות לתקן זאת בפלט PDF.

{{% alert color="secondary" %}}
<details>
    <summary>בבלוק זה תוכלו לראות דוגמאות: כיצד לסמן צורות כדקורטיביות ב Microsoft Word או לסמן צורה כחפץ בפלט PDF מסמך (הרחב כדי לראות פרטים).</summary>
    <p></p>
    <p>לדוגמה, צורות יכולות להיות מסומנות כדקורטיביות ב Microsoft Word, כך שהן ייצאו ל PDF כחפץ:</p>
    <img src="m-w-decorative-shape.png" alt="MWDecorativeShape" style="width:800px"/>
    <p>ניתן לסמן צורה כחפץ בפלט PDF:</p>
   <img src="acrobat-mark-as-artifact-delete-empty-tag.png" alt="PdfDeleteEmptyTag" style="width:800px"/>
    <p>כמו כן, ניתן להחליף טקסט בכותרת מהחפץ לתוכן אמיתי בפלט PDF:</p>
    <img src="acrobat-switch-text-in-header.png" alt="AcrobatSwitchTextInHeader" style="width:800px"/>
</details>
{{% /alert %}}

### מפרט שפה טבעית

| PDF רמות תאימות סטנדרטיות בתוך Aspose.Words | נוכחות של דרישה |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

שפת הטקסט מוגדרת במסמכים Microsoft Word. Aspose.Words מייצא את השפה שצוינה לפלט PDF עם התכונה *Lang* המצורפת לרצף תוכן מסומן או לתג טווח-היא נשלטת על ידי המאפיין [ExportLanguageToSpanTag](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_exportlanguagetospantag/). בדרך כלל אין בעיות שפה כאשר המשתמש מזין טקסט באמצעות Microsoft Word. אך קיימת אפשרות שהשפה עשויה להיות לא מדויקת אם הטקסט נוצר באופן אוטומטי.

{{% alert color="secondary" %}}
<details>
    <summary>המפרט אומר לנו את הדברים הבאים (הרחב כדי לראות פרטים):</summary>
    <p></p>
    <p>יש לציין את השפה הטבעית המוגדרת כברירת מחדל עבור כל הטקסט בקובץ על ידי ערך לאנג במילון הקטלוג של המסמך.</p>
    <p>יש לציין את כל התוכן הטקסטואלי בתוך קובץ השונה משפת ברירת המחדל על ידי שימוש במאפיין `Lang` המצורף לרצף תוכן מסומן, או על ידי ערך לאנג במילון רכיבי מבנה ...</p>
    <p>ISO-19005-2, 6.7.4</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>בנוסף עבור PDF/UA-1, המפרט אומר לנו את הדברים הבאים (הרחב כדי לראות פרטים):</summary>
    <p></p>
    <p>שפה טבעית תוכרז ... שינויים בשפה טבעית יוכרזו.</p>
    <p>ISO-14289-1, 7.2</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>בבלוק זה תוכלו לראות דוגמאות: כיצד להבטיח שהשפה מוגדרת כהלכה (הרחב כדי לראות פרטים).</summary>
    <p></p>
    <p>על המשתמשים לוודא שהשפה מוגדרת כהלכה במסמך המקור Word:</p>
    <img src="m-w-language.png" alt="MWLanguage" style="width:800px"/>
    <p>או הפלט PDF מסמך:</p>
    <img src="acrobat-check-change-language.png" alt="AcrobatCheckChangeLanguage" style="width:800px"/>
</details>
{{% /alert %}}

### כיתוב איור

| PDF רמות תאימות סטנדרטיות בתוך Aspose.Words | נוכחות של דרישה |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/UA-1 | {{< emoticons/tick >}} |

Microsoft Word מסמכים מאפשרים למשתמשים להוסיף כיתוב איור.

{{% alert color="secondary" %}}
<details>
    <summary>המפרט אומר לנו את הדברים הבאים (הרחב כדי לראות פרטים):</summary>
    <p></p>
    <p>כיתוב המלווה דמות יתויג בתג כיתוב.</p>
    <p>ISO-14289-1, 7.3</p>
</details>
{{% /alert %}}

נכון לעכשיו Aspose.Words לא ניתן לייצא כיתובים עם תג הכיתוב, ולכן יש לסמן אותם בפלט PDF.

{{% alert color="secondary" %}}
<details>
    <summary>בבלוק זה תוכלו לראות דוגמאות: כיצד להכניס את הכיתוב (הרחב כדי לראות פרטים).</summary>
    <p></p>
    <p>ב Microsoft Word, ניתן להוסיף את הכיתוב דרך תפריט ההקשר:</p>
    <img src="figure-caption-mw.png" alt="figure-caption-mw" style="width:800px"/>
    <p>באקרובט ניתן להוסיף או לשנות את הכיתוב באמצעות תיבת הדו-שיח `Object` מאפיינים:</p>
    <img src="figure-caption-acrobat.png" alt="figure-caption-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

### תיאורים חלופיים

| PDF רמות תאימות סטנדרטיות בתוך Aspose.Words | נוכחות של דרישה |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Microsoft Word מסמכים מאפשרים למשתמשים להוסיף טקסט חלופי לתמונות, צורות וטבלאות. Aspose.Words מייצא טקסט חלופי כזה לפלט PDF.

{{% alert color="secondary" %}}
<details>
    <summary>המפרט אומר לנו את הדברים הבאים (הרחב כדי לראות פרטים):</summary>
    <p></p>
    <p>כל האלמנטים המבניים שלתוכן שלהם אין אנלוג טקסט טבעי קבוע מראש, למשל תמונות, נוסחאות, וכו'., צריך לספק תיאור טקסט חלופי באמצעות הכניסה האלט במילון אלמנטים מבנה...</p>
    <p>NOTE תיאורים חלופיים מספקים תיאורים טקסטואליים המסייעים בפרשנות נכונה של תוכן שאינו טקסטואלי אטום אחרת.</p>
    <p>ISO-19005-2, 6.7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>בבלוק זה תוכלו לראות דוגמאות: כיצד להבטיח שלכל האלמנטים יש טקסט חלופי (הרחב כדי לראות פרטים).</summary>
    <p></p>
    <p>על המשתמשים לוודא שלכל האלמנטים יש טקסט חלופי במסמך המקור Word:</p>
    <img src="m-w-table-alt-text.png" alt="MWTableAltText" style="width:800px"/>
    <p></p>
    <img src="m-w-shape-alt-text.png" alt="MWShapeAltText" style="width:800px"/>
    <p>או הפלט PDF מסמך:</p>
    <img src="acrobat-table-alt-text.png" alt="AcrobatTableAltText" style="width:800px"/>
    <p></p>
    <img src="acrobat-shape-alt-text.png" alt="AcrobatShapeAltText" style="width:800px"/>
</details>
{{% /alert %}}

### תיאורים חלופיים עבור קישורים

| PDF רמות תאימות סטנדרטיות בתוך Aspose.Words | נוכחות של דרישה |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/UA-1 | {{< emoticons/tick >}} |

בנוסף לנקודה הקודמת, Microsoft Word מסמכים מאפשרים למשתמשים להוסיף טקסט חלופי להיפר-קישורים. Aspose.Words מייצא טקסט חלופי כזה לפלט PDF.

למרבה הצער, לא כל יישום מאפשר לך להגדיר תיאור חלופי. לדוגמה, Adobe Acrobat כרגע אינו מאפשר להגדיר תיאור כזה עבור היפר-קישורים. אבל ב Microsoft Word, אתה יכול לעשות זאת באופן הבא:

<img src="alternate-descriptions-hyperlinks-mw.png" alt="alternate-descriptions-hyperlinks-mw" style="width:800px"/>

לפעמים יש בעיה שלא ניתן להגדיר טקסט חלופי עבור היפר-קישורים שנוצרו אוטומטית בתוכן העניינים (TOC) דרך Microsoft Word GUI. Aspose.Words יכול לעדכן שדות כאלה וליצור את הקישורים בכוחות עצמו.

עקוב אחר דוגמת הקוד כדי לעדכן שדות `TOC` באמצעות מודל אובייקט המסמך Aspose.Words (DOM):

{{< highlight cpp >}}
auto doc = MakeObject<Document>(filename);
auto tocHyperLinks = doc->get_Range()->get_Fields()->
    LINQ_Where([](SharedPtr<Field> f) {return f->get_Type() == FieldType::FieldHyperlink; })->            
    LINQ_Where([](SharedPtr<FieldHyperlink> f) { return f->get_DisplayResult().StartsWith(u"#_Toc"); });

for (const auto& link : tocHyperLinks)
    link->set_ScreenTip(link->get_DisplayResult());

auto opt = MakeObject<PdfSaveOptions>();
opt->set_Compliance(PdfCompliance::PdfUa1);
opt->set_DisplayDocTitle(true);
opt->set_ExportDocumentStructure(true);
opt->get_OutlineOptions()->set_HeadingsOutlineLevels(3);
opt->get_OutlineOptions()->set_CreateMissingOutlineLevels(true);

auto outFile = filename.substr(0, filename.find_last_of('.')) + "_aw.pdf";
doc->Save(outFile, opt);
{{< /highlight >}}

### כותרות טבלה

| PDF רמות תאימות סטנדרטיות בתוך Aspose.Words | נוכחות של דרישה |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/UA-1 | {{< emoticons/tick >}} |

בטבלאות ב PDF/UA-1 המסמכים חייבים להיות כותרות-עמודה, שורה או שניהם. PDF/A דורש רק סימון טבלה רגיל, שאין לו מגבלות נוספות. שים לב ש Aspose.Words מייצר את סימון הטבלה הסטנדרטי באופן אוטומטי.

{{% alert color="secondary" %}}
<details>
    <summary>המפרט אומר לנו את הדברים הבאים (הרחב כדי לראות פרטים):</summary>
    <p></p>
    <p>טבלאות יכולות להכיל כותרות עמודות, כותרות שורות או שניהם.</p>
    <p>ISO-14289-1, 7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>בבלוק זה תוכלו לראות דוגמאות: כיצד להגדיר את כותרת הטבלה (הרחב כדי לראות פרטים).</summary>
    <p></p>
    <p>ניתן להגדיר את כותרת הטבלה או את המקור Microsoft Word מסמך:</p>
    <img src="table-headers-mw.png" alt="table-headers-mw" style="width:800px"/>
    <p>או הפלט PDF:</p>
    <img src="table-headers-acrobat-header-cell.png" alt="table-headers-acrobat-header-cell" style="width:800px"/>
    <p></p>
    <img src="table-headers-acrobat-scope1.png" alt="table-headers-acrobat-scope1" style="width:800px"/>
    <p></p>
    <img src="table-headers-acrobat-scope2.png" alt="table-headers-acrobat-scope2" style="width:800px"/>
</details>
{{% /alert %}}

### החלפת טקסט

| PDF רמות תאימות סטנדרטיות בתוך Aspose.Words | נוכחות של דרישה |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 |  |

{{% alert color="secondary" %}}
<details>
    <summary>המפרט אומר לנו את הדברים הבאים (הרחב כדי לראות פרטים):</summary>
    <p></p>
    <p>המפרט אומר לנו את הדברים הבאים:</p>
    <p>כל רכיבי המבנה הטקסטואלי המיוצגים באופן לא סטנדרטי, למשל, תווים מותאמים אישית או גרפיקה מוטבעת, צריכים לספק טקסט חלופי באמצעות הערך `ActualText` במילון רכיבי המבנה...</p>
    <p>ISO-19005-2, 6.7.7</p>
</details>
{{% /alert %}}

Microsoft Word המסמך אינו מאפשר למשתמשים להגדיר טקסט חלופי. אז זה צריך להיות מאומת קבוע בפלט PDF:

<img src="acrobat-replacement-text.png" alt="AcrobatReplacementText" style="width:800px"/>

### קיצורים וראשי תיבות הרחבות

| PDF רמות תאימות סטנדרטיות בתוך Aspose.Words | נוכחות של דרישה |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 |  |

{{% alert color="secondary" %}}
<details>
    <summary>המפרט אומר לנו את הדברים הבאים (הרחב כדי לראות פרטים):</summary>
    <p></p>
    <p>יש למקם את כל המופעים של קיצורים וראשי תיבות בתוכן טקסטואלי ברצף תוכן מסומן עם תג טווח שמאפיין זה מספק הרחבה טקסטואלית של הקיצור או ראשי התיבות...</p>
<p>ISO-19005-2, 6.7.8</p>
</details>
{{% /alert %}}

Microsoft Word המסמך אינו מאפשר למשתמשים להגדיר קיצורים וראשי תיבות הרחבות. אז זה צריך להיות מאומת קבוע בפלט PDF:

<img src="acrobat-split-add-expansion-text.png" alt="AcrobatSplitAddExpansionText" style="width:800px"/>

## כותרת המסמך

| PDF רמות תאימות סטנדרטיות בתוך Aspose.Words | נוכחות של דרישה |
| -------------------------------------------------- | ------------------------------------------------------------ |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/A-4 |  |
| PDF/UA-1 | {{< emoticons/tick >}}<br />מסמך ב PDF/UA-1 צריך להיות בעל כותרת. |

{{% alert color="secondary" %}}
<details>
    <summary>המפרט אומר לנו את הדברים הבאים (הרחב כדי לראות פרטים):</summary>
    <p></p>
    <p>המפרט אומר לנו את הדברים הבאים:</p>
    <p>זרם המטא נתונים במילון הקטלוג של המסמך יכיל ערך די. סי:כותרת, כאשר די. סי הוא הקידומת המומלצת לסכימת המטא נתונים הליבה של דבלין…</p>
    <p>ISO-14289-1, 7.1</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>בבלוק זה תוכלו לראות דוגמאות: כיצד להגדיר את כותרת המסמך (הרחב כדי לראות פרטים).</summary>
    <p></p>
    <p>ניתן להגדיר את כותרת המסמך או את המקור Microsoft Word מסמך:</p>
    <img src="document-title-mw.png" alt="document-title-mw" style="width:800px"/>
    <p>או הפלט PDF:</p>
    <img src="document-title-acrobat.png" alt="document-title-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

## דרישות גופן

| PDF רמות תאימות סטנדרטיות בתוך Aspose.Words | נוכחות של דרישה |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-1b | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

ישנם גם מספר ניואנסים של עבודה עם גופנים בעת המרה ל PDF/A-1, PDF/A-2, PDF/A-4 או PDF/UA-1 פורמטים באמצעות Aspose.Words. הם חייבים להילקח בחשבון אם אתה רוצה למנוע בעיות אפשריות עם מסמך הפלט.

הסעיפים שלהלן מתארים ניואנסים ואפשרויות כאלה לפתרונם.

### דרישות משפטיות גופן

| PDF רמות תאימות סטנדרטיות בתוך Aspose.Words | נוכחות של דרישה |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-1b | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Aspose.Words אינו מאמת את ההגבלות החוקיות של הגופנים המשומשים-זה תלוי במשתמשים. במילים אחרות, משתמש לא צריך לספק גופנים לא הולמים להמרה PDF באמצעות Aspose.Words.

{{% alert color="secondary" %}}
<details>
    <summary>המפרט אומר לנו את הדברים הבאים (הרחב כדי לראות פרטים):</summary>
    <p></p>
    <p>יש להשתמש רק בתוכניות גופן הניתנות להטמעה חוקית בקובץ לצורך עיבוד אוניברסלי ללא הגבלה.</p>
    <p>ISO-19005-2, 6.2.11.4.1; ISO-14289-1, 7.21.4.1 (בדיוק אותם ציטוטים בשני מפרט)</p>
</details>
{{% /alert %}}

### .נוטדף Glyph

| PDF רמות תאימות סטנדרטיות בתוך Aspose.Words | נוכחות של דרישה |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-1b |  |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

השימוש בגליף `.notdef` אסור. הגליף `.notdef` יופיע אם מסמך מכיל תווים שאינם קיימים בגופן שנבחר ואשר גם לא ניתן לפתור אותם באמצעות מנגנון החזרה של הגופן.

{{% alert color="secondary" %}}
<details>
    <summary>המפרט אומר לנו את הדברים הבאים (הרחב כדי לראות פרטים):</summary>
    <p></p>
    <p>מסמך תואם לא יכיל התייחסות ל .נוטדף גליף מכל אחד מהטקסט המציג אופרטורים, ללא קשר למצב עיבוד טקסט, בכל זרם תוכן.</p>
    <p>ISO-19005-2, 6.2.11.8; ISO-14289-1, 7.21.8 (בדיוק אותם ציטוטים בשני מפרט)</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>בבלוק זה תוכלו לראות דוגמאות: כיצד להסיר או להחליף תווים אלה (הרחב כדי לראות פרטים).</summary>
    <p></p>
    <p>על המשתמשים להסיר או להחליף תווים אלה במסמך המקור Word:</p>
    <img src="m-w-notdef-glyph.png" alt="MWNotdefGlyph" style="width:800px"/>
    <p>או הפלט PDF מסמך באמצעות הכלי " ערוך PDF:</p>
    <img src="acrobat-remove-notdef-glyph-edit-pdf-tool.png" alt="AcrobatRemoveNotdefGlyph-EditPdfTool" style="width:800px"/>
</details>
{{% /alert %}}

### אזור שימוש פרטי (PUA)

| PDF רמות תאימות סטנדרטיות בתוך Aspose.Words | נוכחות של דרישה |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-1b |  |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 |  |

תווים של אזור שימוש פרטי (PUA) מופיעים בעיקר עבור Windows גופן סמלי כמו "סמל", "כנפיים", "רשתות" ואחרים. Microsoft Word פורמטים אינם מספקים אפשרות לאחסן טקסט בפועל עבור תווים.

{{% alert color="secondary" %}}
<details>
    <summary>המפרט אומר לנו את הדברים הבאים (הרחב כדי לראות פרטים):</summary>
    <p></p>
    <p>עבור רמת התאמה בלבד, עבור כל תו ... זה ממופה לקוד או לקודים באזור השימוש הפרטי של יוניקוד (PUA), ערך ActualText... יהיה נוכח עבור אופי זה או רצף של תווים אשר אופי כזה הוא חלק.</p>
    <p>ISO-19005-2, 6.2.11.7.3</p>
</details>
{{% /alert %}}

"סמל סגו UI" הוא גופן יוניקוד Windows שיכול לשמש כחלופה לגופנים סמליים.

{{% alert color="secondary" %}}
<details>
    <summary>בבלוק זה תוכלו לראות דוגמאות: מה המשתמש צריך לעשות כדי לפתור את הבעיה בגופנים סמליים (הרחב כדי לראות פרטים).</summary>
    <p></p>
    <p>החלף את הגופן הסמלי בגופן יוניקוד במסמך המקור Word:</p>
    <img src="m-w-insert-symbol.png" alt="MWInsertSymbol" style="width:800px"/>
    <p>או להוסיף ערך ActualText לתווים הבעייתיים בפלט PDF מסמך:</p>
    <img src="acrobat-span-tag-actual-text.png" alt="AcrobatSpanTagActualText" style="width:800px"/>
</details>
{{% /alert %}}
