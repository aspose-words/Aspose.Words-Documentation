---
title: עבודה עם חתימה דיגיטלית C#
second_title: Aspose.Words עבור .NET
articleTitle: עבודה עם חתימה דיגיטלית
linktitle: עבודה עם חתימה דיגיטלית
description: "באופן דיגיטלי לחתום על מסמכים וזיהוי, ספירה, לאמת ולהסיר חתימות דיגיטליות קיימות באמצעות שימוש C#."
type: docs
weight: 40
url: /he/net/working-with-digital-signatures/
timestamp: 2024-01-27-14-07-04
---

חתימה דיגיטלית היא יישום טכנולוגי של חתימות אלקטרוניות לחתום על מסמכים ולאמת את השלט כדי להבטיח כי מסמך לא השתנה מאז החתימה. כל חתימה דיגיטלית היא ייחודית עבור כל חתומה בגלל ביצוע פרוטוקול PKI כדי ליצור הן מפתחות ציבוריים ופרטיים. לחתום על מסמך דיגיטלי פירושו ליצור חתימה באמצעות המפתח הפרטי של חותם שבו אלגוריתם מתמטי משמש כדי להצפין את הישבן שנוצר.

Aspose.Words מאפשר לך לזהות, לספור, או לאמת את החתימות הדיגיטליות הקיימות, וגם להוסיף חתימה חדשה למסמך שלך כדי לברר כל tampering בו. ניתן גם להסיר את כל החתימות הדיגיטליות מתוך מסמך. השתמש [DigitalSignatureUtil](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/) לעבוד עם חתימות דיגיטליות.

מאמר זה מסביר כיצד לעשות את כל האמור לעיל כדי לאמת את האותנטיות והשלמות של מסמך דיגיטלי.

{{% alert color="primary" %}}

שים לב שאתה יכול לגשת לחתימות דיגיטליות של המסמך שלך רק בעת הפעלת .NET Framework 2.0 גירסה ומעלה

{{% /alert %}}

{{% alert color="primary" %}}

**נסה באינטרנט**

אתה יכול לנסות את הפונקציונליות שלנו [חתימה מקוונת חינם](https://products.aspose.app/words/signature).

{{% /alert %}}

## פורמטים תומכים

Aspose.Words מאפשר לך לעבוד עם חתימות דיגיטליות על מסמכי DOC, OOXML ו- ODT ולחתום על המסמך שנוצר ב- PDF או PDF. XPS פורמט.

## מגבלות של חתימה דיגיטלית

הטבלה להלן מתארת כמה מגבלות שניתן להתמודד איתן תוך כדי עבודה עם חתימה דיגיטלית דרך Aspose.Words, כמו גם כמה אפשרויות חלופיות.

|  הגבלת |  אפשרות חלופית |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  אובדן חתימות דיגיטליות על מסמך לאחר טעינה והצלתו. לכן, עיבוד מסמך לשרת עלול לגרום לאובדן כל החתימות הדיגיטליות ללא הודעה |  בדוק אם מסמך יש חתימה דיגיטלית ולבצע את הפעולה המתאימה אם יימצאו. לדוגמה, לשלוח התראה ללקוחות להודיע להם כי המסמך שהם מעלים מכיל חתימות דיגיטליות שאבדו אם יעובדו |
|  Aspose.Words תומך בעבודה עם מאקרו במסמך. אבל Aspose.Words עדיין לא תומך בחתימות דיגיטליות על מאקרו |  מייצא את המסמך בחזרה לכל פורמט Word, ולהשתמש Microsoft Word להוסיף חתימה דיגיטלית למאקרו |

## Detect, Count ובדוק חתימות דיגיטליות

Aspose.Words מאפשר לך לזהות חתימה דיגיטלית במסמך באמצעות [DetectFileFormat](https://reference.aspose.com/words/net/aspose.words/fileformatutil/detectfileformat/#detectfileformat/) השיטה וה [HasDigitalSignature](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/hasdigitalsignature/) רכוש. ראוי לציין כי בדיקה כזו רק תזהה את עובדת החתימה, אך לא את תוקפה.

ניתן לחתום על מסמך יותר מפעם אחת, וזה יכול להיעשות על ידי משתמשים שונים. כדי לבדוק את תוקף החתימות הדיגיטליות, עליך לטעון אותן מן המסמך באמצעות המסמך. [LoadSignatures](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/loadsignatures/#loadsignatures/) שיטה ושימוש [IsValid](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignaturecollection/isvalid/) רכוש. גם Aspose.Words מאפשר לך לספור קבוצה של כל החתימות הדיגיטליות בתוך מסמך תוך שימוש [Count](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignaturecollection/count/) רכוש.

כל זה מספק דרך יעילה ובטוחה לבדוק מסמך לחתימות לפני עיבודו.

הדוגמה הבאה של הקוד מראה כיצד לזהות את נוכחותן של חתימות דיגיטליות ולאמת אותם:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "detect-document-signatures.cs" >}}

## יצירת חתימה דיגיטלית {#create-a-digital-signature}

כדי ליצור חתימה דיגיטלית, עליך לטעון תעודה חתימה המאשרת זהות. כאשר אתה שולח מסמך חתום דיגיטלית, אתה גם שולח את האישור שלך ואת המפתח הציבורי.

Aspose.Words מאפשר לך ליצור תעודת X.509, תעודה דיגיטלית המשתמשת תקן X.509 PKI המקובל הבינלאומי כדי לאמת כי מפתח ציבורי שייך לסימן הכלול בתוך האישור. לעשות זאת, השתמש [Create](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/certificateholder/create/) בתוך השיטה [CertificateHolder](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/certificateholder/) מעמד.

הקטעים הבאים מסבירים כיצד להוסיף חתימה דיגיטלית, קו חתימה וכיצד לחתום על מסמך PDF שנוצר.

### לחתום על מסמך

Aspose.Words מאפשר לך לחתום על DOC, DOCX XPS, או ODT מסמך דיגיטלי באמצעות [Sign](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/sign/#sign/) שיטה ו [SignOptions](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/signoptions/) תכונות.

הדוגמה הבאה של הקוד מראה כיצד לחתום על מסמכים באמצעות בעל תעודה ואפשרויות כניסה:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "sign-document.cs" >}}

### הוסף קו חתימה

קו חתימה הוא ייצוג חזותי של חתימה דיגיטלית במסמך. Aspose.Words מאפשר לך להוסיף קו חתימה באמצעות [DocumentBuilder.InsertSignatureLine](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertsignatureline/) שיטה. ניתן גם להגדיר את הפרמטרים לייצוג זה באמצעות [SignatureLineOptions](https://reference.aspose.com/words/net/aspose.words/signaturelineoptions/) מעמד.

לדוגמה, התמונה למטה מראה כיצד ניתן להציג חתימות תקפות ולא יסולא.

<img src="/words/net/working-with-digital-signatures/valid.png" alt="drawing" style="width:300px"/>

<img src="/words/net/working-with-digital-signatures/invalid.png" alt="drawing" style="width:300px"/>

כמו כן, אם מסמך מכיל קו חתימה ואין חתימה דיגיטלית, יש תכונה לבקש מהמשתמש להוסיף חתימה.

הדוגמה הבאה של הקוד מראה כיצד לחתום על מסמך עם תעודה אישית ושורה חתימה ספציפית:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "create-new-signature-line-and-set-provider-id.cs" >}}

### מסמך PDF שנוצר {#sign-a-generated-pdf-document}

Aspose.Words מאפשר לך לחתום ולקבל את כל הפרטים של מסמך PDF באמצעות מסמך PDF [PdfDigitalSignatureDetails](https://reference.aspose.com/words/net/aspose.words.saving/pdfdigitalsignaturedetails/) תכונות.

דוגמה לקוד הבא מראה כיצד לחתום על PDF שנוצר:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "digitally-signed-pdf-using-certificate-holder.cs" >}}

## להעריך מחדש את ערך החתימה הדיגיטלי

Aspose.Words כמו כן, מספק את היכולת לשחזר את ערך החתימה הדיגיטלי מ מסמך חתום דיגיטלית כמערך ע"י שימוש במערך ע"י שימוש. [SignatureValue](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignature/signaturevalue/) רכוש.

הדוגמה הבאה של הקוד מראה כיצד להשיג את ערך החתימה הדיגיטלי כמערך עוטה ממסמכים:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "signature-value.cs" >}}

## להסיר חתימות דיגיטליות

Aspose.Words מאפשר להסיר את כל החתימות הדיגיטליות מ מסמך חתום באמצעות המסמך. [RemoveAllSignatures](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/#removeallsignatures/) שיטה.

לדוגמה הקוד הבא מראה כיצד לטעון ולהסיר חתימות דיגיטליות ממסמכים:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "remove-signatures.cs" >}}

{{% alert color="primary" %}}

שים לב שאתה לא יכול להסיר רק חתימה דיגיטלית אחת במסמך שלך.

{{% /alert %}}
