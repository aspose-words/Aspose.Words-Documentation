---
title: מה חדש
second_title: Aspose.Words עבור Python via .NET
articleTitle: מה חדש בפנים Aspose.Words עבור Python via .NET
linktitle: מה חדש בפנים Aspose.Words עבור Python via .NET
type: docs
description: "Aspose.Words עבור Python via .NET מתרחב ומשפר מדי יום. בדף זה, אתה יכול ללמוד על התכונות הענקיות והמעניינות ביותר של המוצר."
weight: 10
url: /he/python-net/what-s-new-in-aspose-words-for-python-net/
---

דף זה מתאר את החדש המעניין ביותר Aspose.Words תכונות שהוצגו במהדורות האחרונות.

## Aspose.Words עבור Python דרך .NET 24.9

Aspose.Words 24.9 מציגה הכנסת צורות קבוצתיות והכנסת StructuredDocumentTag באמצעות DocumentBuilder, משפרת את עיבוד התרשים הרדיאלי עם דרגות, משפרת חתימות דיגיטליות עם תמיכה ב-XAdES-EPES, מוסיפה זיהוי קו תחתון של Markdown, ומספקת גישה למפרידי הערות שוליים/הערות סיום.

### עיבוד והדפסה

#### סיום לימודים בתרשימים רדיאליים

עיבוד של סיום על תרשימים רדיאליים יושם.

### המרה, טעינה ושמירה של מסמכים

#### עיצוב קו תחתון בעת ​​טעינת קבצי Markdown

האפשרות לזהות עיצוב קו תחתון בעת ​​טעינת מסמכי Markdown שולבה על ידי הוספת מאפיין ציבורי חדש [import_underline_formatting property](https://reference.aspose.com/words/python-net/aspose.words.loading/markdownloadoptions/import_underline_formatting/).

### חתימות דיגיטליות

#### חתום על מסמכים עם XAdES-EPES

היכולת לחתום על מסמכים עם חתימות XML-DSig ברמת XAdES-EPES הוצגה על ידי הוספת מאפיין ציבורי חדש [xml_dsig_level](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/signoptions/xml_dsig_level/) וספירה ציבורית חדשה [XmlDsigLevel](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/xmldsiglevel/).

### אחר

* שיטה ציבורית חדשה [insert_group_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_group_shape/) נוספה לצורות קבוצתיות.
* שיטה ציבורית חדשה [insert_structured_document_tag](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_structured_document_tag/) נוספה כדי להוסיף **StructuredDocumentTags** למסמך.
* גישה ציבורית למפרידי הערות שוליים/הערות סיום ניתנה על ידי הוספת כמה מחלקות ומאפיינים ציבוריים.

{{% alert color="primary" %}}

למד עוד על [Aspose.Words עבור Python via .NET 24.9 הודעות](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-9-release-notes/).

{{% /alert %}}

## Aspose.Words עבור Python via .NET 24.5, 24.6, 24.7, 24.8

Aspose.Words 24.5 מרחיב אפשרויות למכלולים, משפר את יכולות העיבוד ומרחיב כמה אפשרויות אחרות.

Aspose.Words 24.6 משפר את אפשרויות העיבוד, משפר את פונקציונליות החיפוש וההשוואה ומרחיב מספר תכונות אחרות.

Aspose.Words 24.7 משנה את אופן העבודה עם ActiveX, מרחיב את יכולות העיבוד, כמו גם ייצוא לפורמטים Markdown ו-XLSX.

Aspose.Words 24.8 משפר התאמה אישית של תרשים עם שליטה מדויקת על תוויות ציר, מרחיב את ניהול הגופנים, משפר את הטיפול במבנה המסמכים ומוסיף יכולות חדשות ליצוא HTML/XAML, פונקציונליות PDF, המרת מסמכים וחתימות דיגיטליות.

### פורמטים נתמכים

החל מגרסה 24.7, ייצוא ל-PDF/UA-2 נתמך כדי להבטיח נגישות למשתמשים עם מוגבלויות.

### עיבוד והדפסה

#### שינויים ב Charts, Shapes, DrawingML <sup>24.5</sup>

* עיבוד אפקטים של DrawingML עבור גרפיקת SVG, הרחבת פונקציונליות קודמת מוגבלת לתמונות, יושם.
* תמיכה ביצירת תרשימים משולבים והתאמת מאפיינים כגון רוחב פערים, חפיפה וסולם בועות בתוך קבוצות סדרות הוצגה על ידי הוספת [ChartSeriesGroup](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriesgroup/) ו-[ChartSeriesGroupCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriesgroupcollection/) וכיתות [series_groups](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/series_groups/).
* פונקציונליות לתמרן אפקט SoftEdge של צורות יושמה על ידי הוספת המחלקה [SoftEdgeFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing/softedgeformat/).
* היכולת לשנות ערכי התאמה של צורות יושמה על ידי הוספת **AdjustmentCollection** ו-**Adjustment** שיעורים ציבוריים ו-[adjustments](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/adjustments/) תכונה.

#### שינויים בתרשימים, בצורות ובציור <sup>24.6</sup>

* יכולות התרשימים שופרו. כעת תוכל ליצור מגוון רחב יותר של תרשימים, כולל *מפות עצים*, *פרצי שמש*, *היסטוגרמות*, תרשימי *פארטו*, תרשימי *קופסה ושפם*, *מפלי מים* ו-*משפכים*. זה מאפשר לך לדמיין את הנתונים שלך בצורה מגוונת ואינפורמטיבית יותר.
* בקרת הצבע עבור עיצוב הצללים שופרה. אתה יכול לקבל שליטה מדויקת יותר על מראה המסמכים שלך על ידי גישה לצבעי צל.
* שיפור הביצועים לעיבוד רקע שופר. אתה יכול להאיץ משמעותית את העיבוד של רקעים המכילים אלמנטים קטנים הודות לטכנולוגיית ריצוף מקורית.
* נוספו שיפועים מציאותיים לצורות. כעת תוכל ליצור צורות DML עם מעברי צבע לא ליניאריים, המחקה את הסגנון החזותי של Microsoft Word למראה מלוטש יותר.

#### התאמה אישית של תווית נתוני תרשים <sup>24.7</sup>

נוספה היכולת להתאים אישית תוויות של נתוני תרשים כגון **Orientation** ו**Rotation**.

#### עיצוב מספרים מותאם אישית עבור רמות רשימה <sup>24.7</sup>

מגדיר עבור הנכס הציבורי [custom_number_style_format](https://reference.aspose.com/words/python-net/aspose.words.lists/listlevel/custom_number_style_format/) נוסף. כעת תוכל להגדיר סגנון מספר מותאם אישית עבור רמות הרשימה.

#### שינויים בעבודה עם ActiveX <sup>24.7</sup>

* כעת ניתן לשנות את המאפיינים של אובייקטי ActiveX, מה שנותן לך יותר שליטה על התנהגותם.
* נוספה היכולת לשנות את הערך של כפתור הבחירה ActiveX כדי לאפשר אינטראקציה דינמית.
* נוספה היכולת להעביר תיבת סימון של ActiveX ל"מסומנת" או "לא מסומנת".

#### שליטה על ציר התרשים תוויות תווית כיוון וסיבוב <sup>24.8</sup>

נוספה שליטה מדויקת על הכיוון והסיבוב של תוויות סימון ציר תרשים להתאמה אישית נוחה יותר – מחלקת [AxisTickLabels](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisticklabels/) הורחבה עם מאפיינים חדשים של [orientation](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisticklabels/orientation/) ו[rotation](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisticklabels/rotation/).

#### החלפת הנטוי האחורי בסימן הין <sup>24.8</sup>

ייצוא HTML ו-XAML התואם לאחור להחלפת תו האחורי בסימן Yen שופר. כדי להשיג זאת, המאפיין **replace_backslash_with_yen_sign** נוסף למחלקות [HtmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/) ו-[XamlFlowSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/xamlflowsaveoptions/).

#### שימוש בתגי SDT בתור שמות שדות טופס בעת ייצוא ל-PDF <sup>24.8</sup>

ייצוא PDF עם תמיכה בשימוש בתגי SDT כשמות שדות טופס שופר על ידי הוספת מאפיין [use_sdt_tag_as_form_field_name](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/use_sdt_tag_as_form_field_name/) חדש למחלקה [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/).

### המרה, טעינה ושמירה של מסמכים

#### ייצוא קישורים לפורמט Markdown <sup>24.7</sup>

היכולת לשלוט בייצוא של קישורים בפורמט Markdown נוספה באמצעות יישום המאפיין [link_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/link_export_mode/).

#### LowCode <sup>24.8</sup>

הוצגה מחלקה חדשה [LowCode.Converter](https://reference.aspose.com/words/python-net/aspose.words.lowcode/converter/), שנועדה לספק סט של שיטות להמרת סוגי מסמכים שונים באמצעות שורת קוד אחת.

### חפש והשווה

#### אפשרויות השוואה מתקדמות <sup>24.6</sup>
נוספה היכולת לייעל את זרימות העבודה של ניתוח נתונים עם פונקציונליות משופרת של השוואה. זה כולל אפשרות חדשה [ignore_store_item_id](https://reference.aspose.com/words/python-net/aspose.words.comparing/advancedcompareoptions/ignore_store_item_id/) וממשק שעוצב מחדש להשוואות מתקדמות.

### אחר

* הפונקציה להעלמת דפים ריקים ממסמך יושמה על ידי הוספת השיטה [remove_blank_pages](https://reference.aspose.com/words/python-net/aspose.words/document/remove_blank_pages/). <sup>24.5</sup>
* היכולת לבדוק נוכחות של פקודות מאקרו VBA מבלי לטעון מסמך ניתנה על ידי הוספת המאפיין [has_macros](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/has_macros/). <sup>24.5</sup>
* שמירה על מספור המקור בזמן הכנסת מסמך באמצעות מנוע הדיווח LINQ נתמך כעת. <sup>24.5</sup>
* מאפיין חדש [date_time_utc](https://reference.aspose.com/words/python-net/aspose.words/comment/date_time_utc/) נוסף - זה מספק חותמת זמן מדויקת יותר להערות, שיפור הארגון והמעקב. <sup>24.6</sup>
* מנוע הדיווח LINQ שופר. בוצעו הסרה סלקטיבית של פסקאות ריקות והגדרה של הודעות מותאמות אישית עבור חברי אובייקט חסרים, מה שהוביל לדוחות נקיים ואינפורמטיביים יותר. <sup>24.6</sup>
* פורמט התאריך והשעה מזוהה כעת באופן אוטומטי לייצוא חלק לפורמט XLSX. <sup>24.7</sup>
* הנכס הציבורי [is_protected](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/is_protected/), המאפשר לך לוודא אם פרויקט VBA מוגן, נוסף. <sup>24.7</sup>
* מידע הגופנים הורחב עם המאפיין **embedding_licensing_rights** שהתווסף למחלקות [FontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/) ו-[PhysicalFontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/physicalfontinfo/). <sup>24.8</sup>
* דרך לנקות ביעילות כותרות עליונות ותחתונות של מקטעים תוך שמירה על סימני מים נוספה לעבודה מדויקת יותר עם מבנה המסמך. כדי לנקות כותרות עליונות ותחתונות של סעיפים, השתמש בשיטה הציבורית החדשה [clear_headers_footers](https://reference.aspose.com/words/python-net/aspose.words/section/clear_headers_footers/#default). <sup>24.8</sup>
* הופעלה חתימה דיגיטלית של מסמכי XPS באמצעות [XpsSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/xpssaveoptions/) - מאפיין חדש [digital_signature_details](https://reference.aspose.com/words/python-net/aspose.words.saving/xpssaveoptions/digital_signature_details/) נוסף למטרה זו. <sup>24.8</sup>

{{% alert color="primary" %}}

למד עוד על [Aspose.Words עבור Python via .NET 24.5 הודעות](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-5-release-notes/).

למד עוד על [Aspose.Words עבור Python via .NET 24.6 הודעות](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-6-release-notes/).

למד עוד על [Aspose.Words עבור Python via .NET 24.7 הודעות](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-7-release-notes/).

למד עוד על [Aspose.Words עבור Python via .NET 24.8 הודעות](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-8-release-notes/).

{{% /alert %}}

## Aspose.Words עבור Python via .NET 24.1, 24.2, 24.3, 24.4

Aspose.Words 24.1 משפר את החוויה סביב ניהול צבעי שבץ, משפר את האובייקטים OLE, כמו גם מציג חדש `Bibliography Sources` הציבור API.

Aspose.Words 24.2 מהדורות מורחבות API ניהול סגנון גרסה זו של Aspose.Words כמו כן הציג את היכולת לציין SvgSaveOptions במהלך ביצוע, יותר גמישות עומס בקרה Markdown קבצים, ועבודה עם טקסט ההתייחסות להערות שוליים והערות קצה.

Aspose.Words 24.3 מציג חדש TIFF Reader/Writer ו Emulation של פעולות בינאריות עבור metafiles WMF. Aspose.Words 24.3 גם ממשיכה להרחיב את הטבלה API.

Aspose.Words 24.4 משפר את פורמטי החיסכון, כמה אפשרויות עיבוד, כמו גם משפר את העבודה עם חתימות דיגיטליות.

### פורמטים תומכים <sup>24.4</sup>

המודרני **WebP** פורמט התמונה נתמך כעת Aspose.Words עבור .NET Framework 4.6.2 ומעלה עכשיו אפשר לקרוא ולהכניס WebP תמונות לתוך מסמכים, כמו גם לשמור תמונות WebP פורמט.

שימו לב WebP זמין כעת רק .NET Standard ו .NET Framework v4.6.2 ומעלה

### גילוח ומדפס

#### בקרת צבע סטרייק <sup>24.1</sup>

The The The [Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/) שיעור הורחב עם קבוצה של נכסים ציבוריים חדשים הקשורים לניהול צבעי שבץ: [fore_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/fore_theme_color/) ו [back_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/back_theme_color/), [fore_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/fore_tint_and_shade/) ו [back_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/back_tint_and_shade/).

#### עקבו אחרי API הרחבה <sup>24.2 / 24.3 / 24.4</sup>

The The The **DrawingML Charts API** ממשיכים להתרחב.

#### Embed Fonts הוכרזו בחוקי פנים-פנים <sup>24.4</sup>

נוסף על יכולת להטביע גופנים שהוכרזו בחוקי @font-face לתוך הגדרות הגופן של המסמך המתקבל על ידי הוספת חדש חדש [support_font_face_rules](https://reference.aspose.com/words/python-net/aspose.words.loading/htmlloadoptions/support_font_face_rules/) רכוש.

#### עבודה עם Glow and Reflection Format <sup>24.4</sup>

היכולת לעבוד עם עיצוב זוהר והשתקפות עבור אובייקט ציור כבר מיושם.

### לטעון ולחסוך מסמכים

#### המונחים: SvgSaveOptions במהלך Rendering <sup>24.2</sup>

היכולת לציין [SvgSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/svgsaveoptions/) במהלך השימוש נוספו באמצעות [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/).[save](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/save/#bytesio_svgsaveoptions) ו [OfficeMathRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/officemathrenderer/).[save](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/save/#bytesio_svgsaveoptions) שיטות.

#### לשמור על קווים ריקים בעת טעינה Markdown קבצים <sup>24.2</sup>

היכולת לשמר קווים ריקים בעת טעינה Markdown הקבצים נוספו.

#### שם הסרטון: New TIFF Reader/Writer <sup>24.3</sup>

קורא/תסריט חדש Aspose.Words פותח. Aspose.Words עבור .NET 24.3 הוסיפו תמיכה בקריאת תמונות TIFF עם JPEG ו- JPEG הישן, וגם שיפרו באופן משמעותי את איכות הקריאה והכתיבה.

### אחרים

* היכולת לשנות את הטקסט של `TextBox` שליטה מלאה הוצגה על ידי הוספת חדש **Text** רכוש חדש **TextBoxControl** מעמד. <sup>24.1</sup>
* מקורות הביבליוגרפיה ציבוריים API נוצר באמצעות הוספת שם חדש [Aspose.Words.Bibliography](https://reference.aspose.com/words/python-net/aspose.words.bibliography/) עם השיעורים החדשים וההנחות שלה, ובאמצעות הוספת חדש [bibliography](https://reference.aspose.com/words/python-net/aspose.words/document/bibliography/) רכוש [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) מעמד. <sup>24.1</sup>
* נכסים ציבוריים חדשים [priority](https://reference.aspose.com/words/python-net/aspose.words/style/priority/), [unhide_when_used](https://reference.aspose.com/words/python-net/aspose.words/style/unhide_when_used/), ו [semi_hidden](https://reference.aspose.com/words/python-net/aspose.words/style/semi_hidden/) עבור ניהול סגנון משופר נוספו [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) מעמד. <sup>24.2</sup>
* הפונקציונליות כדי לאחזר את הודעת ההתייחסות בפועל להערות שוליים והערות קצה השתפרה עם [actual_reference_mark](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/actual_reference_mark/) רכוש ו [update_actual_reference_marks](https://reference.aspose.com/words/python-net/aspose.words/document/update_actual_reference_marks/#default) שיטה. <sup>24.2</sup>
* קבלת פעולות של raster בינארי עבור metafiles WMF כבר מיושם. <sup>24.3</sup>
* היכולת להגדיר אפשרויות חתימה למסמכים בתוך **SaveOptions** ניתן על ידי הוספת חדש [DigitalSignatureDetails](https://reference.aspose.com/words/python-net/aspose.words.saving/digitalsignaturedetails/) שיעור עם חברי ציבור חדשים, כמו גם הוספת נכסים חדשים [OoxmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/), [DocSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/) ו [OdtSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/odtsaveoptions/) שיעורים. <sup>24.4</sup>

{{% alert color="primary" %}}

למד עוד על [Aspose.Words עבור Python via .NET 24.1 הערות](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-1-release-notes/).

למד עוד על [Aspose.Words עבור Python via .NET 24.2 הערות](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-2-release-notes/).

למד עוד על [Aspose.Words עבור Python via .NET 24.3 הערות](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-3-release-notes/).

למד עוד על [Aspose.Words עבור Python via .NET 24.4 הודעות](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-4-release-notes/).

{{% /alert %}}

## Aspose.Words עבור Python via .NET 23.9, 23.10, 23.11, 23.12

Aspose.Words 23.9 מרחיבה את עריכת אפשרויות, metafile הופכת חיקוי, ו markdown לחסוך אפשרויות

Aspose.Words 23.10 משתפר, מרחיב אפשרויות טעינה והצלת מסמכים, ומאפשר למשתמשים למזג מסמכים בדרכים חדשות.

Aspose.Words 23.11 משפר את העבודה עם תיקונים, פורמט XLSX ופונטים על האגדה תרשים עם אפשרויות נוספות.

Aspose.Words 23.12 מציג תכונות חדשות והודעות עבור עבודה עם מסמכי PDF ו- OOXML, כמו גם תמיכה עבור WebP תמונות

### גילוח ומדפס

#### התאמה אישית של Axes כותרות ב DrawingML Charts <sup>23.9</sup>

היכולת להתאים אישית את כותרות ציר ב charts DrawingML הוצגה על ידי יישום של מעמד ציבורי חדש [ChartAxisTitle](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxistitle/) ו [title](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/title/) רכוש.

####  קביעת העמדה הוורטית של פונטים בתוך שערורייה <sup>23.9</sup>

כעת ניתן להגדיר את המיקום האנכי של גופנים בתוך סעיף באמצעות הציבור החדש [baseline_alignment](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/baseline_alignment/) רכוש וחדש [BaselineAlignment](https://reference.aspose.com/words/python-net/aspose.words/baselinealignment/) אזהרה.

#### בקרת צבע פנים <sup>23.10</sup>

היכולת לשחזר את הצבע הקדמי ללא מודינגס נוספה [Fill](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/) ו [Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/) שיעורים באמצעות **BaseForeColor** רכוש.

#### הרחבת הפונקציונליות של טבלאות <sup>23.10</sup>

הפונקציונליות של [ChartDataPointCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/), ו [ChartFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartformat/) השיעורים הורחבו עם שיטות ונכסים חדשים.

#### מותאם אוטומטית ו Fit a Image לתוך צורה <sup>23.10</sup>

דרך פשוטה להסתגל באופן אוטומטי ולהתאים תמונה בתוך צורה מסוימת מסופקת באמצעות החדש [fit_image_to_shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/imagedata/fit_image_to_shape/#default) שיטה.

#### Default Font Formating for Drawing ML עוד אגדה Entries <sup>23.11</sup>

היכולת לציין פורמט גרוטאות ברירת מחדל עבור רשומות אגדה של charts DrawingML נוספה באמצעות The [font](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartlegend/font/) רכוש. תכונה זו מאפשרת מראה צלול יותר ועקבי יותר עבור אלמנטים תרשים, שיפור אסתטיקה המסמך הכולל.

#### שם הסרטון: Page Layout When Open PDF in Reader <sup>23.12</sup>

היכולת לציין את פריסת העמוד לשימוש בעת פתיחת מסמך בקורא PDF נוספה באמצעות הצגת מסמך חדש [page_layout](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/page_layout/) רכוש [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) הכיתה והמבוא של חדש [PdfPageLayout](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfpagelayout/) אזהרה.

### לטעון ולחסוך מסמכים

#### מציג שם Folder ליצירת תמונה Markdown <sup>23.9</sup>

The The The [MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/) השיעור הורחב על ידי כולל [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder_alias/) רכוש, המאפשר לדגום את שם התיקיה המשמש לבניית תמונה URIS כתוב לתוך Markdown מסמך.

#### הקטנת PDF גודל בחוץ <sup>23.10</sup>

יישומים שונים של PDF להפוך אופטימיזציה לצמצום גודל התפוקה בעת שימוש [optimize_output](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/optimize_output/) הגדרות נעשות.

#### זיהוי Hyperlinks בעת טעינת מסמכי TXT <sup>23.10</sup>

התכונה לזהות היפרקישורים בעת טעינת מסמכי TXT יושמה על ידי הוספת חדש [detect_hyperlinks](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/detect_hyperlinks/) רכוש.

### אחרים

- metafile להפוך חיקוי כדי לקבוע את גודל הרסטריזציה כבר מיושם, במיוחד עבור רוחב עט WMF ורוחב עט קוסמטי EMF. כדי להשיג זאת, **ScaleWmfFontsToMetafileSize** רכוש הוחלף עם [emulate_rendering_to_size_on_page](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emulate_rendering_to_size_on_page/) רכוש ו [emulate_rendering_to_size_on_page_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emulate_rendering_to_size_on_page_resolution/) הרכוש נוסף. <sup>23.9</sup>
- שיטה פשוטה להוספת מסמך אחד למסמך אחר בעמדה הנוכחית של cursor הוצגה באמצעות שימוש [insert_document_inline](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document_inline/#document_importformatmode_importformatoptions) שיטה. <sup>23.10</sup>
- - היכולת לגשת ולשנות תכונות סגנון נוספה באמצעות הצגת החדש [locked](https://reference.aspose.com/words/python-net/aspose.words/style/locked/) רכוש. <sup>23.10</sup>
- פרמטר מסוג גנרי נוסף לשיטות של [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) מעמד. <sup>23.10</sup>
- - היכולת לכתוב את כל החלקים של מסמך על אותו גליון עבודה XLSX מסופקת באמצעות החדש [XlsxSectionMode](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsectionmode/) סוג ההארה והחדש [section_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/section_mode/) רכוש. <sup>23.11</sup>
* • דרך לשלוט כיצד הרחבות פורמט ZIP64 ישמשו למסמכים של OOXML ייושמו באמצעות הנכס החדש של Zip64Mode של הנכס החדש של ה- Zip64Mode. `OoxmlSaveOptions` קטגוריה ו- Zip64Mode enumeration <sup>23.12</sup>
* תמיכה WebP התמונה הוצגה. שימו לב כי תכונה זו זמינה רק עבור .NetStandart ו .NET6+ גרסאות <sup>23.12</sup>

{{% alert color="primary" %}}

למד עוד על [Aspose.Words עבור Python via .NET 23.9 הערות](/words/python-net/aspose-words-for-python-via-dotnet-23-9-release-notes/).

למד עוד על [Aspose.Words עבור Python via .NET 23.10 הערות](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-10-release-notes/).

למד עוד על [Aspose.Words עבור Python via .NET 23.11 הערות](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-11-release-notes/).

למד עוד על [Aspose.Words עבור .NET 23.12 הודעות](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-12-release-notes/).

{{% /alert %}}

## Aspose.Words עבור Python via .NET 23.5, 23.6, 23.7, 23.8

Aspose.Words 23.5 משפר את היכולת לעבוד עם נתוני סדרות תרשים ואת היכולת לעבוד עם מסמכי ODT, כמו גם לשפר כותרות / מ"ר וקטע הטקסט שלהם.

Aspose.Words 23.6 מרחיבה את אפשרויות ההגשה, מוסיף פורמט יצוא חדש, משפר את דיווח LINQ ו LowCode כלים.

Aspose.Words 23.7 משפר את יכולות הדיווח, מוסיף פורמט יצוא חדש, ומציג שינויים בעבודה עם שולחנות וחתימות דיגיטליות.

Aspose.Words 23.8 מרחיבה את היכולות של פורמטים שונים, משתפרת ומוסיפה אפשרויות חדשות לעבודה עם שדות

### פורמטים תומכים

* החל מגרסה 23.6, ניתן לחסוך מסמך בפורמט XLSX. עכשיו אתה יכול להמיר את המסמכים שלך לתבנית Excel. <sup>23.6</sup>

* החל מגירסה 23.7, ניתן לשמור דף מסמך או צורה בפורמט EPS. <sup>23.7</sup>

### תכונות פורמט חדש

- הפונקציונליות לייצר באופן אוטומטי שולחן של תוכן (TOC) עבור מסמכי MOBI הוצגה. <sup>23.8</sup>
- The [PdfEncryptionDetails](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfencryptiondetails/__init__/#str_str_pdfpermissions) הבניין הורחב עם [PdfPermissions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfencryptiondetails/__init__/#str_str_pdfpermissions). <sup>23.8</sup>
- שטיפת טקסט אנכי עבור metafiles EMF כבר מיושם. <sup>23.8</sup>

### Rendering

#### קבל ומשתנה סדרות נתונים <sup>23.5</sup>

התכונה כדי לקבל ולשנות את נתוני סדרות תרשים מסופק על ידי הוספת:

- כיתות חדשות: [ChartXValue](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvalue/), [ChartYValue](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartyvalue/), [ChartXValueCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartyvaluecollection/), [BubbleSizeCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/bubblesizecollection/), [ChartMultilevelValue](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartmultilevelvalue/)
- סוגים חדשים: [ChartXValueType](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvaluetype/), [ChartYValueType](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartyvaluetype/)

#### תמיכה ב- Advanced Typography <sup>23.6</sup>

התמיכה ב-WMF Advanced Typography, EMF ו-EMF+.

#### תוכן צבעוני על הדף <sup>23.6</sup>

רכוש הציבור [PageInfo.colored](https://reference.aspose.com/words/python-net/aspose.words.rendering/pageinfo/colored/), אם הדף צבעוני או לא, נוספו.

#### תגית: Chart Data Labels <sup>23.6</sup>

היכולת להגדיר מילוי, שבץ, ולקרוא פורמט עבור תוויות נתונים תרשים כבר מיושם.

### Mail Merge דיווח ו

#### המונחים: LINQ Reporting Engine <sup>23.6</sup>

דרך חדשה של שילוב HTML דינמי ל-LINQ Reporting Engine נוספה.

#### Mustache תגיות Support <sup>23.7</sup>

Mustache תגים נתמכים כעת [MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_regions_hierarchy/) ו [MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_field_names_for_region/) שיטות.

#### מציג את גודל התמונות Rendered <sup>23.8</sup>

נכס ציבורי חדש [image_size](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_size/) על מנת לציין את גודל התמונות שניתנו ב- pixel הוצג.

#### שמור על המרחבים הלבנים של JSON String Values - LINQ <sup>23.8</sup>

אפשרות נוספה ל- LINQ Reporting Engine כדי לשמר חללים לבנים לערכי JSON.

### LowCode <sup>23.6</sup>

חדש חדש חדש LowCode שיטות שנועדו למזג סוגים שונים של מסמכים במסמך פלט יחיד נוספו.

### אחרים

- תמיכה בטקסט עטיפה בראשים / מ"ר כבר יושמה. <sup>23.5</sup>
- - היכולת להסיר חתימות דיגיטליות ממסמכים של ODT נוספה דרך [RemoveAllSignatures](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/remove_all_signatures/#str_str) שיטה. <sup>23.5</sup>
- - רכוש הציבור [phonetic_guide](https://reference.aspose.com/words/python-net/aspose.words/run/phonetic_guide/) כדי להשיג את הבסיס ואת הטקסט השפשף של מדריך הטלפון [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) נוספו. <sup>23.5</sup>
- - היכולת לשחזר ערך חתימה דיגיטלית מ מסמך חתום דיגיטלית כמערך עוטה נוספה על ידי הצגת ערך חדש [signature_value](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/signature_value/) רכוש. <sup>23.7</sup>
- The [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) ו [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) השיעורים הורחבו עם חברי ציבור חדשים - [Row.next_row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/next_row/), [Row.previous_row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/previous_row/), [Cell.next_cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/next_cell/), ו [Cell.previous_cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/previous_cell/). <sup>23.7</sup>

{{% alert color="primary" %}}

למד עוד על [Aspose.Words עבור Python via .NET 23.5 הודעות](/words/python-net/aspose-words-for-python-via-dotnet-23-5-release-notes/).

למד עוד על [Aspose.Words עבור Python via .NET 23.6 הודעות](/words/python-net/aspose-words-for-python-via-dotnet-23-6-release-notes/).

למד עוד על [Aspose.Words עבור Python via .NET 23.7 הודעות](/words/python-net/aspose-words-for-python-via-dotnet-23-7-release-notes/).

למד עוד על [Aspose.Words עבור Python via .NET 23.8 הערות](/words/python-net/aspose-words-for-python-via-dotnet-23-8-release-notes/).

{{% /alert %}}

## Aspose.Words עבור Python via .NET 23.1, 23.2, 23.3, 23.4

Aspose.Words 23.1 משפר את הביצועים של raster ניתוח חיקוי, כמו גם משפר את המסמך ייצוא והוספת איכות.

Aspose.Words 23.2 מציג שמירת מסמכים בפורמט MOBI, משפר את עריכת התרשים, ועושה שינויים בולטים כדי לתעד פרטים.

Aspose.Words 23.3 משפר את יבוא המסמכים והצלתם עם נכסים חדשים, וגם משפר את איכות העבודה עם רקע וצבע קדמת וקודמת רדיו.

Aspose.Words 23.4 משפר את חישוב כמה פרמטרים ואת המיקום של השולחן וטקסט שמסביב.

### שיפור ביצועים

#### עקבו אחרי Raster Operations <sup>23.1</sup>

ביצועים ואיכות של חיקוי של פעולות raster עם metafiles השתפרו באופן משמעותי.

### פורמטים תומכים

#### ייצוא ל-MOBI <sup>23.2</sup>

החל מגרסה 23.2, ניתן לחסוך מסמך בפורמט MOBI (נקרא גם PRC, AZW - Amazon פורמט קובץ הספרים האלקטרוני של קינדל). עכשיו אתה לא יכול רק לטעון מסמכי MOBI, אלא גם לייצא את הקבצים שלך לתבנית MOBI.

### Rendering

#### תגית: Shading Theme Colors <sup>23.1</sup>

היכולת לעבוד עם צבעי ערכת נושא מושרש.

#### R-squared Coefficient in DML Charts <sup>23.1</sup>

תמיכה של R-squared coefficient in DML תרשים טרנדיות בעת הוספה.

#### טבלה Rendering שיפורים <sup>23.2</sup>

מאז 23.2 התרשים השתפר באופן משמעותי.

#### המונחים: Foreground Color control <sup>23.3</sup>

The The The [Fill](https://reference.aspose.com/words/net/aspose.words.drawing/fill/) הכיתה הורחבה עם קבוצה של נכסים ציבוריים חדשים הקשורים רקע וצבעי רקע: [fore_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/fore_theme_color/) ו [back_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/back_theme_color/), [fore_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/fore_tint_and_shade/) ו [back_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/back_tint_and_shade/).

#### Redal Gradients with the `SkiaSharp` תגית: Shader <sup>23.3</sup>

המונחים: radioal gradients with the `SkiaSharp` צל מקומי .NET Standard הוא כבר מיושם.

#### מרחק בין השולחן לבין טקסט מקיף <sup>23.4</sup>

היכולת להגדיר את המרחק בין השולחן לטקסט שמסביב נוספה על ידי הצגת תכונות חדשות ל [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) קטגוריה: [distance_left](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_left/), [distance_right](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_right/), [distance_top](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_top/), ו [distance_bottom](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_bottom/).

### לטעון ולחסוך מסמכים

#### ייצור `TOC` AZW3 Documents <sup>23.1</sup>

היכולת לייצר `TOC` (שולחן התוכן) למסמכים AZW3 נוספה באמצעות השימוש **epub_navigation_map_level** רכוש.

#### ייצוא פריטים לרשימה Markdown <sup>23.1</sup>

דרך לשלוט בייצוא של פריטים לרשימה Markdown פורמט ניתן על ידי הוספת [list_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/list_export_mode/) רכוש [MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/) מעמד.

#### מסמך חיסכון ביצורים <sup>23.3</sup>

שמירת הודעות מתקדמות עבור פורמטים MOBI ו-AZW3 יושמו.

#### משפט ומילה מכוונן <sup>23.3</sup>

היכולת לציין אם להתאים את המשפט ואת המילה ספאק באופן אוטומטי על יבוא מסמך נוספה על ידי הצגת הסימון. [adjust_sentence_and_word_spacing](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/adjust_sentence_and_word_spacing/) רכוש.

### אחרים

- - היכולת לציין את התאמת האופי של מסמך נוספה דרך [justification_mode](https://reference.aspose.com/words/python-net/aspose.words/document/justification_mode/) יישום הנכס <sup>23.2</sup>
- הדרך להורות Aspose.Words בין אם לכלול תיבות טקסט, הערות שוליים, והערות בנתוני ספירת מילים מסופקות על ידי הוספת [include_textboxes_footnotes_endnotes_in_stat](https://reference.aspose.com/words/python-net/aspose.words/document/include_textboxes_footnotes_endnotes_in_stat/) רכוש <sup>23.2</sup>
- אפשרות חדשה לסגנון מסמך, המאפשרת לציין האם הסגנון מוגדר מחדש באופן אוטומטי על בסיס הערך המתאים, הוצגה דרך [automatically_update](https://reference.aspose.com/words/python-net/aspose.words/style/automatically_update/) רכוש <sup>23.2</sup>
- - היכולת לקבוע אם [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) הוא מדריך טלפוני נוסף באמצעות [is_phonetic_guide](https://reference.aspose.com/words/python-net/aspose.words/run/is_phonetic_guide/) רכוש <sup>23.4</sup>
- דרך פשוטה לעבוד עם סדרה ואקסים של charts combo מיושם על ידי הצגת [ChartAxisCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxiscollection/) שיעור והוספת [Chart.axes](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/axes/) רכוש <sup>23.4</sup>
- תכונות ציבוריות חדשות הקשורות לצורה יחסית של מיקום ונפיחות נוספו ל [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) הכיתה <sup>23.4</sup>
- דיוק וביצוע חישוב בהירות צבע עבור פתרון צבע טקסט אוטומטי השתפר בהתאם הגרסאות האחרונות של הגרסאות האחרונות של Microsoft Word <sup>23.4</sup>

{{% alert color="primary" %}}

למד עוד על [Aspose.Words עבור Python via .NET 23.1 הערות](/words/python-net/aspose-words-for-python-via-dotnet-23-1-release-notes/).

למד עוד על [Aspose.Words עבור Python via .NET 23.2 הודעות](/words/python-net/aspose-words-for-python-via-dotnet-23-2-release-notes/).

למד עוד על [Aspose.Words עבור Python via .NET 23.3 הערות](/words/python-net/aspose-words-for-python-via-dotnet-23-3-release-notes/).

למד עוד על [Aspose.Words עבור Python via .NET 23.4 הערות](/words/python-net/aspose-words-for-python-via-dotnet-23-4-release-notes/).

{{% /alert %}}

## ראה גם

{{% alert color="primary" %}}

דף זה מכיל את החדשות העדכניות ביותר לשנתיים האחרונות. לפרטים על הודעות קודמות, ראה [תגית: Notes ""](/words/python-net/release-notes/) דפים בסעיפים הרלוונטיים.

{{% /alert %}}