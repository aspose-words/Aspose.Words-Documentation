---
title: עבודה עם חתימות דיגיטליות ב C++
second_title: Aspose.Words עבור C++
articleTitle: עבודה עם חתימות דיגיטליות
linktitle: עבודה עם חתימות דיגיטליות
description: "חתימה דיגיטלית על מסמכים וזיהוי, ספירה, אימות והסרה של חתימות דיגיטליות קיימות."
type: docs
weight: 160
url: /he/cpp/working-with-digital-signatures/
timestamp: 2024-01-27-14-07-04
---

חתימה דיגיטלית היא יישום טכנולוגי של חתימות אלקטרוניות לחתום על מסמכים ולאמת את החותם כדי להבטיח כי מסמך לא הותאם מאז חתימתו. כל חתימה דיגיטלית היא ייחודית עבור כל חותם בגלל ביצוע פרוטוקול PKI כדי ליצור מפתחות ציבוריים ופרטיים. חתימה דיגיטלית על מסמך פירושה יצירת חתימה באמצעות המפתח הפרטי של החותם שבו אלגוריתם מתמטי משמש להצפנת ההאש שנוצר.

Aspose.Words מאפשר לך לזהות, לספור או לאמת חתימות דיגיטליות קיימות, וגם להוסיף חתימה חדשה למסמך שלך כדי לגלות כל חבלה בו. ניתן גם להסיר את כל החתימות הדיגיטליות ממסמך. השתמש בכיתה [DigitalSignatureUtil](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/) כדי לעבוד עם חתימות דיגיטליות.

מאמר זה מסביר כיצד לבצע את כל האמור לעיל כדי לאמת את האותנטיות והשלמות של מסמך דיגיטלי.

{{% alert color="primary" %}}

**נסה באינטרנט**

אתה יכול לנסות את הפונקציונליות הזו עם שלנו [חתימה מקוונת חינם](https://products.aspose.app/words/signature).

{{% /alert %}}

## פורמטים נתמכים

Aspose.Words מאפשר לך לעבוד עם חתימות דיגיטליות על DOC, OOXML ו ODT מסמכים ולחתום על המסמך שנוצר בפורמט PDF או XPS.

## מגבלות של חתימות דיגיטליות

הטבלה שלהלן מתארת כמה מגבלות שאתה עלול להתמודד איתן בעת עבודה עם חתימות דיגיטליות באמצעות Aspose.Words, כמו גם כמה אפשרויות חלופיות.

| הגבלה | אפשרות חלופית |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| אובדן חתימות דיגיטליות על מסמך לאחר טעינה ושמירתו. לכן, עיבוד מסמך לשרת עלול לגרום לאובדן כל החתימות הדיגיטליות ללא הודעה מוקדמת. | בדוק אם למסמך יש חתימות דיגיטליות ובצע את הפעולה המתאימה אם נמצאו כאלה. לדוגמה, שלח התראה ללקוחות המודיעים להם שהמסמך שהם מעלים מכיל חתימות דיגיטליות שיאבדו אם יעובדו. |
| Aspose.Words תומך בעבודה עם פקודות מאקרו במסמך. אבל Aspose.Words עדיין לא תומך בחתימות דיגיטליות על פקודות מאקרו. | ייצא את המסמך בחזרה לכל פורמט Word והשתמש ב Microsoft Word כדי להוסיף חתימה דיגיטלית לפקודות מאקרו. |

## לזהות, לספור ולאמת חתימות דיגיטליות

Aspose.Words מאפשר לך לזהות חתימה דיגיטלית במסמך באמצעות שיטת [DetectFileFormat](https://reference.aspose.com/words/cpp/aspose.words/fileformatutil/detectfileformat/) ומאפיין [HasDigitalSignature](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo/get_hasdigitalsignature/). ראוי לציין כי בדיקה כזו תזהה רק את עובדת החתימה, אך לא את תוקפה.

מסמך יכול להיות חתום יותר מפעם אחת, וזה יכול להיעשות על ידי משתמשים שונים. כדי לבדוק את תוקפן של חתימות דיגיטליות, עליך לטעון אותן מהמסמך בשיטת [LoadSignatures](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/loadsignatures/) ולהשתמש במאפיין [IsValid](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignaturecollection/get_isvalid/). כמו כן Aspose.Words מאפשר לך לספור קבוצה של כל החתימות הדיגיטליות בתוך מסמך באמצעות המאפיין [Count](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignaturecollection/get_count/).

כל זה מספק דרך יעילה ובטוחה לבדוק מסמך לחתימות לפני עיבודו.

דוגמת הקוד הבאה מראה כיצד לזהות נוכחות של חתימות דיגיטליות ולאמת אותן:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "detect-document-signatures.h" >}}

## צור חתימה דיגיטלית {#create-a-digital-signature}

כדי ליצור חתימה דיגיטלית, תידרש לטעון תעודת חתימה המאשרת זהות. כשאתה שולח מסמך חתום דיגיטלית, אתה שולח גם את האישור והמפתח הציבורי שלך.

Aspose.Words מאפשר לך ליצור תעודת איקס 509, תעודה דיגיטלית המשתמשת בתקן המקובל בעולם איקס 509 PKI כדי לוודא שמפתח ציבורי שייך לחותם הכלול בתעודה. לשם כך, השתמש בשיטת [Create](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/certificateholder/create/) בתוך הכיתה [CertificateHolder](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/certificateholder).

הסעיפים הבאים מסבירים כיצד להוסיף חתימה דיגיטלית, שורת חתימה וכיצד לחתום על מסמך שנוצר PDF.

### חתום על מסמך

Aspose.Words מאפשר לך לחתום על מסמך DOC, DOCX או ODT באופן דיגיטלי באמצעות שיטת [Sign](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/sign/) ו [SignOptions](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/signoptions/) מאפיינים.

דוגמת הקוד הבאה מראה כיצד לחתום על מסמכים באמצעות בעל אישור ואפשרויות חתימה:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "sign-document.h" >}}

### הוסף שורת חתימה

שורת חתימה היא ייצוג חזותי של חתימה דיגיטלית במסמך. Aspose.Words מאפשר לך להוסיף שורת חתימה בשיטת [DocumentBuilder.InsertSignatureLine](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertsignatureline/). ניתן גם להגדיר את הפרמטרים לייצוג זה באמצעות הכיתה [SignatureLineOptions](https://reference.aspose.com/words/cpp/aspose.words/signaturelineoptions/).

לדוגמה, התמונה למטה מראה כיצד ניתן להציג חתימות תקפות ולא חוקיות.

<img src="valid.png" alt="valid-signature" style="width:300px"/>

<img src="invalid.png" alt="invalid-signature" style="width:300px"/>

כמו כן, אם מסמך מכיל שורת חתימה ואין חתימה דיגיטלית, יש תכונה לבקש מהמשתמש להוסיף חתימה.

דוגמת הקוד הבאה מראה כיצד לחתום על מסמך עם אישור אישי ושורת חתימה ספציפית:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "create-new-signature-line-and-set-provider-id.h" >}}

### חתום על מסמך שנוצר PDF {#sign-a-generated-pdf-document}

Aspose.Words מאפשר לך לחתום ולקבל את כל הפרטים של מסמך PDF באמצעות המאפיינים [PdfDigitalSignatureDetails](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfdigitalsignaturedetails/).

דוגמת הקוד הבאה מראה כיצד לחתום על PDFשנוצר:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "digitally-signed-pdf-using-certificate-holder.h" >}}

## אחזר את ערך החתימה הדיגיטלית

Aspose.Words מספק גם את היכולת לאחזר את ערך החתימה הדיגיטלית ממסמך חתום דיגיטלית כמערך בתים באמצעות המאפיין [SignatureValue](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignature/get_signaturevalue/).

דוגמת הקוד הבאה מראה כיצד להשיג את ערך החתימה הדיגיטלית כמערך בתים ממסמך:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "signature-value.h" >}}

## הסר חתימות דיגיטליות

Aspose.Words מאפשר לך להסיר את כל החתימות הדיגיטליות ממסמך חתום בשיטת [RemoveAllSignatures](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/).

דוגמת הקוד הבאה מראה כיצד לטעון ולהסיר חתימות דיגיטליות ממסמך:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "remove-signatures.h" >}}

{{% alert color="primary" %}}

שים לב שלא ניתן להסיר רק חתימה דיגיטלית אחת במסמך.

{{% /alert %}}
