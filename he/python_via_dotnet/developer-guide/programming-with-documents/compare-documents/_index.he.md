---
title: השוואת מסמכים Python
second_title: Aspose.Words עבור Python via .NET
articleTitle: השוואת מסמכים
linktitle: השוואת מסמכים
description: "השוואת שני מסמכים בכל פורמטים נתמך ומציגה שינויים בתוכן באמצעות Python. אתה יכול ליישם אפשרויות מתקדמות בעת השוואת."
type: docs
weight: 60
url: /he/python-net/compare-documents/
---

השוואת מסמכים היא תהליך שמזהה שינויים בין שני מסמכים וכולל את השינויים כשינויים. תהליך זה משווה שני מסמכים, כולל גרסאות של מסמך ספציפי אחד, ולאחר מכן את השינויים בין שני המסמכים יוצגו כחידושים במסמך הראשון.

שיטת ההשוואה מושגת על ידי השוואת מילים ברמת האופי או ברמת המילה. אם מילה מכילה שינוי של לפחות דמות אחת, כתוצאה מכך, ההבדל יוצג כשינוי של המילה כולה, לא אופי. תהליך זה של השוואה הוא משימה רגילה בתעשיות המשפטיות והכספיות.

במקום לחפש באופן ידני הבדלים בין מסמכים או בין גרסאות שונות, ניתן להשתמש בהם. Aspose.Words עבור השוואת מסמכים ולקבל שינויים תוכן בפורמט, ראש / מ"ר, טבלאות ועוד.

מאמר זה מסביר כיצד להשוות מסמכים וכיצד לציין את תכונות ההשוואה המתקדמות.

{{% alert color="primary" %}}

**נסה באינטרנט**

ניתן להשוות שני מסמכים באינטרנט על ידי שימוש [השוואת מסמכים באינטרנט](https://products.aspose.app/words/comparison) כלי.

שים לב כי שיטת ההשוואה, המתוארת להלן, משמשת בכלי זה כדי להבטיח קבלת תוצאות שוות. אז תקבל את אותן התוצאות גם על ידי שימוש בכלי ההשוואה באינטרנט או באמצעות שיטת ההשוואה. Aspose.Words.

{{% /alert %}}

## מגבלות ותבניות קבצים תמיכה {#limitations-and-supported-file-formats}

השוואת מסמכים היא תכונה מורכבת מאוד. ישנם חלקים מגוונים של שילוב תוכן שיש לנתח כדי לזהות את כל ההבדלים. הסיבה למורכבות זו נובעת מהעובדה כי Aspose.Words מטרות לקבל את אותן תוצאות השוואה כמו Microsoft Word אלגוריתם השוואה

ההגבלה הכללית של שני מסמכים ששווים היא שאין עליהם תיקונים לפני שהם קוראים לשיטת ההשוואה כפי שקיים הגבלה זו. Microsoft Word.

{{% alert color="primary" %}}

שימו לב שניתן להשוות בין שני מסמכים בתוך [תגיות Document Formats](/words/he/python-net/supported-document-formats/). בעיקרון, אתה יכול להשוות אובייקטים מסמך ואפילו אתה יכול ליצור פריטים אלה מאפס ללא כל פורמט ספציפי.

{{% /alert %}}

## השוואת שני מסמכים {#compare-two-documents}

כאשר אתה משווה מסמכים, ההבדלים של המסמך האחרון מן העבר מופיעים כחידושים אל העבר. כאשר אתה משנה מסמך, כל עריכה תהיה גרסה משלה לאחר הפעלת שיטת ההשוואה.

Aspose.Words מאפשר לזהות הבדלים במסמכים באמצעות [compare](https://reference.aspose.com/words/python-net/aspose.words/document/compare/) שיטה – זה דומה Microsoft Word מסמך השוואת תכונה זה מאפשר לך לבדוק מסמכים או גירסאות מסמך כדי למצוא הבדלים ושינויים, כולל שינויים פורמט כגון שינויים גופניים, צבירת שינויים, תוספת של מילים ופסקאות.

כתוצאה מהשוואה, ניתן לקבוע מסמכים שווים או לא שווים. פירוש המונח "שווה" הוא ששיטת ההשוואה אינה מסוגלת לייצג שינויים כשינויים. משמעות הדבר היא כי הן מסמך טקסט והן פורמט טקסט הן אותו הדבר. אבל יש הבדלים נוספים בין המסמכים. לדוגמה, Microsoft Word תומך רק שינויים פורמט עבור סגנונות, ואתה לא יכול לייצג הוספת סגנון / מחיקה. מסמכים יכולים להיות קבוצה שונה של סגנונות, [compare](https://reference.aspose.com/words/python-net/aspose.words/document/compare/) השיטה עדיין לא מייצרת תיקונים.

לדוגמה הקוד הבא מראה כיצד לבדוק אם שני מסמכים שווים או לא:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-compare_documents-CompareForEqual.py" >}}

הדוגמה הבאה מציגה כיצד ליישם את `Compare` שיטה לשתי מסמכים:

{{< highlight python >}}
# The source document doc1.
doc1 = aw.Document()
builder = aw.DocumentBuilder(doc1)
builder.writeln("This is the original document.")

# The target document doc2.
doc2 = aw.Document()
builder = aw.DocumentBuilder(doc2)
builder.writeln("This is the edited document.")

# If either document has a revision, an exception will be thrown.
if (doc1.revisions.count == 0 and doc2.revisions.count == 0) :
    doc1.compare(doc2, "authorName", datetime.today())

# If doc1 and doc2 are different, doc1 now has some revisions after the comparison, which can now be viewed and processed.
self.assertEqual(2, doc1.revisions.count)

for r in doc1.revisions :
    print(f"Revision type: {r.revision_type}, on a node of type \"{r.parent_node.node_type}\"")
    print(f"\tChanged text: \"{r.parent_node.get_text()}\"")

# All the revisions in doc1 are differences between doc1 and doc2, so accepting them on doc1 transforms doc1 into doc2.
doc1.revisions.accept_all()

# doc1, when saved, now resembles doc2.
doc1.save(docs_base.artifacts_dir + "Document.Compare.docx")
doc1 = aw.Document(docs_base.artifacts_dir + "Document.Compare.docx")
self.assertEqual(0, doc1.revisions.count)
self.assertEqual(doc2.get_text().strip(), doc1.get_text().strip())
{{< /highlight >}}

## המונחים: Advanced Comparing Properties {#specify-advanced-comparing-properties}

יש הרבה תכונות שונות של [CompareOptions](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/) שיעור שאתה יכול ליישם כאשר אתה רוצה להשוות מסמכים.

לדוגמה, Aspose.Words מאפשר לך להתעלם שינויים שבוצעו במהלך ניתוח השוואה עבור סוגים מסוימים של אובייקטים בתוך המסמך המקורי. אתה יכול לבחור את הנכס המתאים לסוג האובייקט, כגון [ignore_headers_and_footers](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/ignore_headers_and_footers/), [ignore_formatting](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/ignore_formatting/), [ignore_comments](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/ignore_comments/), אחרים על ידי הצבתם `True`.

בנוסף, Aspose.Words מספק [granularity](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/granularity/) רכוש שבו אתה יכול לציין אם לעקוב אחר שינויים על ידי אופי או במילה.

נכס משותף נוסף הוא בחירה שבה מסמך להציג שינויים בהשוואה. לדוגמה, "קופסת דו-שיח המסמכים" ב-Compare Microsoft Word יש את האפשרות "לראות שינויים" - זה גם משפיע על תוצאות ההשוואה. Aspose.Words מספק [target](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/target/) רכוש שמשרת מטרה זו.

הדוגמה הבאה של הקוד מראה כיצד להגדיר את התכונות המתקדמות של השוואת נכסים:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-compare_documents-CompareOptions.py" >}}
