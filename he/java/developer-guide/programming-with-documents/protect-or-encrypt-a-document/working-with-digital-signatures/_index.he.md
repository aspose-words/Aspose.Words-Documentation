---
title: עבודה עם חתימה דיגיטלית Java
second_title: Aspose.Words עבור Java
articleTitle: עבודה עם חתימה דיגיטלית
linktitle: עבודה עם חתימה דיגיטלית
description: "באופן דיגיטלי לחתום על מסמכים וזיהוי, ספירה, לאמת ולהסיר חתימות דיגיטליות קיימות באמצעות שימוש Java."
type: docs
weight: 30
url: /he/java/working-with-digital-signatures/
---

חתימה דיגיטלית היא יישום טכנולוגי של חתימות אלקטרוניות לחתום על מסמכים ולאמת את השלט כדי להבטיח כי מסמך לא השתנה מאז החתימה. כל חתימה דיגיטלית היא ייחודית עבור כל אחד מהחתמים בגלל ביצוע פרוטוקול PKI כדי ליצור הן מפתחות ציבוריים ופרטיים. לחתום על מסמך דיגיטלי פירושו ליצור חתימה באמצעות המפתח הפרטי של חותם שבו אלגוריתם מתמטי משמש כדי להצפין את הישבן שנוצר.

Aspose.Words מאפשר לך לזהות, לספור, או לאמת את החתימות הדיגיטליות הקיימות, וגם להוסיף חתימה חדשה למסמך שלך כדי לברר כל tampering בו. ניתן גם להסיר את כל החתימות הדיגיטליות מתוך מסמך. השתמש [DigitalSignatureUtil](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/) לעבוד עם חתימות דיגיטליות.

מאמר זה מסביר כיצד לעשות את כל האמור לעיל כדי לאמת את האותנטיות והשלמות של מסמך דיגיטלי.

{{% alert color="primary" %}}

שים לב שאתה יכול לגשת לחתימות דיגיטליות של המסמך שלך רק בעת הפעלת Java 6 גירסה ומעלה

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
|  אובדן חתימות דיגיטליות על מסמך לאחר טעינה והצלתו. לכן, עיבוד מסמך לשרת עלול לגרום לאובדן כל החתימות הדיגיטליות ללא הודעה |  בדוק אם מסמך יש חתימה דיגיטלית ולבצע את הפעולה המתאימה אם יימצאו. לדוגמה, לשלוח התראה ללקוחות להודיע להם כי המסמך שהם מעלים מכיל חתימות דיגיטליות שאבדו אם הוא מעובד |
|  Aspose.Words תומך בעבודה עם מאקרו במסמך. אבל Aspose.Words עדיין לא תומך בחתימות דיגיטליות על מאקרו |  מייצא את המסמך בחזרה לכל פורמט Word, ולהשתמש Microsoft Word להוסיף חתימה דיגיטלית למאקרו |

## Detect, Count ובדוק חתימות דיגיטליות

Aspose.Words מאפשר לך לזהות חתימה דיגיטלית במסמך באמצעות [DetectFileFormat](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/#detectFileFormat-java.io.InputStream) השיטה וה [HasDigitalSignature](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#hasDigitalSignature) רכוש. ראוי לציין כי בדיקה כזו רק תזהה את עובדת החתימה, אך לא את תוקפה.

ניתן לחתום על מסמך יותר מפעם אחת, וזה יכול להיעשות על ידי משתמשים שונים. כדי לבדוק את תוקף החתימות הדיגיטליות, עליך לטעון אותן מן המסמך באמצעות המסמך. [LoadSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#loadSignatures-java.io.InputStream) שיטה ושימוש [IsValid](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturecollection/#isValid) רכוש. גם Aspose.Words מאפשר לך לספור קבוצה של כל החתימות הדיגיטליות בתוך מסמך באמצעות המסמך. [Count](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturecollection/#getCount) רכוש.

כל זה מספק דרך יעילה ובטוחה לבדוק מסמך לחתימות לפני עיבודו.

הדוגמה הבאה של הקוד מראה כיצד לזהות את נוכחותן של חתימות דיגיטליות ולאמת אותם:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "detect-document-signatures.java" >}}

## ליצור חתימה דיגיטלית {#create-a-digital-signature}

כדי ליצור חתימה דיגיטלית, עליך לטעון תעודה חתימה המאשרת זהות. כאשר אתה שולח מסמך חתום דיגיטלית, אתה גם שולח את האישור שלך ואת המפתח הציבורי.

Aspose.Words מאפשר לך ליצור תעודת X.509, תעודה דיגיטלית המשתמשת תקן X.509 PKI המקובל בעולם כדי לוודא כי מפתח ציבורי שייך לסימן הכלול בתוך האישור. לעשות זאת, השתמש [Create](https://reference.aspose.com/words/java/com.aspose.words/certificateholder/#create-byte---java.lang.String) בתוך השיטה [CertificateHolder](https://reference.aspose.com/words/java/com.aspose.words/certificateholder/) מעמד.

הקטעים הבאים מסבירים כיצד להוסיף חתימה דיגיטלית, קו חתימה וכיצד לחתום על מסמך PDF שנוצר.

### לחתום על מסמך

Aspose.Words מאפשר לך לחתום על DOC, DOCX, או ODT לתעד דיגיטלית באמצעות ה- ODT. [Sign](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#sign-java.io.InputStream-java.io.OutputStream-com.aspose.words.CertificateHolder) שיטה ו [SignOptions](https://reference.aspose.com/words/java/com.aspose.words/signoptions/) תכונות.

הדוגמה הבאה של הקוד מראה כיצד לחתום על מסמכים באמצעות בעל תעודה ואפשרויות כניסה:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "sign-document.java" >}}

### הוסף קו חתימה

קו חתימה הוא ייצוג חזותי של חתימה דיגיטלית במסמך. Aspose.Words מאפשר לך להוסיף קו חתימה באמצעות [DocumentBuilder.InsertSignatureLine](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertSignatureLine-com.aspose.words.SignatureLineOptions) שיטה. אתה יכול גם להגדיר את הפרמטרים עבור ייצוג זה באמצעות [SignatureLineOptions](https://reference.aspose.com/words/java/com.aspose.words/signaturelineoptions/) מעמד.

לדוגמה, התמונה למטה מראה כיצד ניתן להציג חתימות תקפות ולא יסולא.

<img src="/words/java/working-with-digital-signatures/valid.png" alt="valid-digital-signature" style="width:300px"/>

<img src="/words/java/working-with-digital-signatures/invalid.png" alt="invalid-digital-signature" style="width:300px"/>

כמו כן, אם מסמך מכיל קו חתימה ואין חתימה דיגיטלית, יש תכונה לבקש מהמשתמש להוסיף חתימה.

הדוגמה הבאה של הקוד מראה כיצד לחתום על מסמך עם תעודה אישית ושורה חתימה ספציפית:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "create-new-signature-line-and-set-provider-id.java" >}}

### מסמך PDF שנוצר {#sign-a-generated-pdf-document}

Aspose.Words מאפשר לך לחתום ולקבל את כל הפרטים של מסמך PDF באמצעות מסמך PDF [PdfDigitalSignatureDetails](https://reference.aspose.com/words/java/com.aspose.words/pdfdigitalsignaturedetails/) תכונות.

לדוגמה הקוד הבא מראה כיצד לחתום על PDF שנוצר:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "digitally-signed-pdf-using-certificate-holder.java" >}}

התמונה להלן מראה כי מסמך PDF שנוצר נפתח בתוך Adobe Acrobat והחתימה הדיגיטלית מאומתת כנוכחת ומתאימות.

![create-digital-signed-pdf-aspose-words-java](/words/java/working-with-digital-signatures/signed-pdf-aspose-words-java.png)

## להעריך מחדש את ערך החתימה הדיגיטלי

Aspose.Words כמו כן, מספק את היכולת לשחזר את ערך החתימה הדיגיטלי מ מסמך חתום דיגיטלית כמערך ע"י ע"י שימוש במערך ע"י שימוש. [SignatureValue](https://reference.aspose.com/words/java/com.aspose.words/digitalsignature/#getSignatureValue) רכוש.

הדוגמה הבאה של הקוד מראה כיצד להשיג את ערך החתימה הדיגיטלי כמערך עוטה של מסמך:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "signature-value.java" >}}

## להסיר חתימות דיגיטליות

Aspose.Words מאפשר להסיר את כל החתימות הדיגיטליות מ מסמך חתום תוך שימוש [RemoveAllSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#removeAllSignatures-java.io.InputStream-java.io.OutputStream) שיטה.

לדוגמה הקוד הבא מראה כיצד לטעון ולהסיר חתימות דיגיטליות ממסמכים:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "remove-signatures.java" >}}

{{% alert color="primary" %}}

שים לב שאתה לא יכול להסיר רק חתימה דיגיטלית אחת במסמך שלך.

{{% /alert %}}
