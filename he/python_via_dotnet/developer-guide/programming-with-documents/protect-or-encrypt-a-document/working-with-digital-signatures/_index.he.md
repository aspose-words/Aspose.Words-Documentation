---
title: עבודה עם חתימה דיגיטלית
second_title: Aspose.Words עבור Python via .NET
articleTitle: עבודה עם חתימה דיגיטלית
linktitle: עבודה עם חתימה דיגיטלית
description: "באופן דיגיטלי לחתום על מסמכים וזיהוי, ספירה, לאמת ולהסיר חתימות דיגיטליות קיימות באמצעות שימוש Python."
type: docs
weight: 40
url: /he/python-net/working-with-digital-signatures/
---

חתימה דיגיטלית משמשת כדי לאמת מסמך כדי לקבוע כי השולח של המסמך הוא מי הם אומרים שהם ואת התוכן של המסמך לא נחטף.

Aspose.Words תומך במסמכים עם חתימות דיגיטליות ומספק גישה אליהם ומאפשרת לך לזהות ולאמת חתימות דיגיטליות על מסמך ולחתום על מסמך PDF שנוצר עם תעודה מספקת. בזמן הנוכחי חתימות דיגיטליות נתמכות על מסמכי DOC, OOXML ו- ODT. הרשמה של מסמכים נוצרים נתמכת בפורמט PDF.

{{% alert color="primary" %}}

**נסה באינטרנט**

אתה יכול לנסות את הפונקציונליות שלנו [חתימה מקוונת חינם](https://products.aspose.app/words/signature).

{{% /alert %}}

## החתימות הדיגיטליות אינן שמורות על Open and Save

נקודה חשובה לציין כי מסמך טעון ולאחר מכן ניצל באמצעות Aspose.Words תאבד כל חתימה דיגיטלית שחתומה על המסמך. זה על ידי עיצוב כחתימה דיגיטלית מבטיח שהתוכן לא שונה ואמת יותר את זיהוי מי חתם על המסמך. עקרונות אלה יבוטלו אם החתימות המקוריות יועברו למסמך המתקבל.

בגלל זה, אם אתה מעבד מסמכים שהועלו לשרת זה יכול להיות אומר שאתה עלול להשחית מסמך שהועלו לשרת שלך בדרך זו מבלי לדעת. לכן כדאי לבדוק את החתימות הדיגיטליות על מסמך ולבצע את הפעולה המתאימה אם יימצאו, לדוגמה, ניתן לשלוח התראה ללקוח להודיע להם כי המסמך שהם עוברים מכיל חתימות דיגיטליות אשר יאבדו אם הוא מעובד. ניתן להוריד קובץ תבנית של דוגמא זו [כאן](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Digitally%20signed.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-DetectDocumentSignatures.py" >}}

הקוד לעיל משתמש [FileFormatUtil.detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) שיטה לזהות אם מסמך מכיל חתימה דיגיטלית מבלי לטעון את המסמך קודם. זה מספק דרך יעילה ובטוחה לבדוק מסמך לחתימות לפני עיבודן. בעת ביצוע, השיטה מחזירה [FileFormatInfo](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/) אובייקט המספק את הנכס [FileFormatInfo.has_digital_signature](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/has_digital_signature/). הנכס הזה חוזר true אם המסמך מכיל חתימה דיגיטלית אחת או יותר. חשוב לציין כי שיטה זו אינה מאשרת את החתימות, היא קובעת רק אם החתימות קיימות. אימות חתימות דיגיטליות מכוסה בסעיף הבא.

{{% alert color="primary" %}}

אתה יכול גם לבדוק אם מסמך יש חתימה דיגיטלית לאחר טעינה על ידי בדיקת החתימות `Count` רכוש [Document.digital_signatures](https://reference.aspose.com/words/python-net/aspose.words/document/digital_signatures/) אוסף.

{{% /alert %}}

## חתימה דיגיטלית על Macros (VBA פרויקטים)

חתימה דיגיטלית על מאקרו לא ניתן לגשת או לחתום. כי Aspose.Words אין להתמודד ישירות עם מאקרו במסמך. עם זאת, חתימות דיגיטליות על מאקרו נשמרות כאשר מייצא את המסמך בחזרה לכל פורמט מילים. ניתן לשמר את החתימות הללו על קוד VBA מכיוון שהתוכן בינארי של המאקרו לא השתנה גם אם המסמך עצמו משתנה.

### גישה ובדוק חתימה דיגיטלית

מסמך יכול להיות מספר חתימות דיגיטליות. ניתן לגשת לכל החתימות הללו באמצעות [Document.digital_signatures](https://reference.aspose.com/words/python-net/aspose.words/document/digital_signatures/) אוסף. כל חפץ שחזר הוא [DigitalSignature](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/) זה מייצג חתימה דיגיטלית אחת השייכת למסמך. זה מספק חברים המאפשרים לך לבדוק את תוקף החתימה.

הנכס החשוב ביותר לבדוק עם חתימה דיגיטלית הוא תוקף של כל חתימה במסמך. ניתן לאמת את כל החתימות במסמך בבת אחת באמצעות קריאה [DigitalSignatureCollection.is_valid](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignaturecollection/is_valid/) רכוש. זה ישוב true אם כל החתימות במסמך תקפים או אם המסמך אין חתימה, false אם לפחות חתימה דיגיטלית אחת אינה תקפה.

ניתן גם לאמת כל חתימה באופן אישי באמצעות קריאה [DigitalSignature.is_valid](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/is_valid/). חתימה לא יכולה לחזור לתוקף מסיבות רבות, למשל המסמך השתנה מאז החתימה או האישור הופסק. בנוסף, ניתן לגשת גם לפרטים נוספים של החתימה. מדגם הקוד להלן מראה כיצד לאמת כל חתימה במסמך ולהציג מידע בסיסי על החתימה. ניתן להוריד קובץ תבנית של דוגמא זו [כאן](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Digitally%20signed.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-AccessAndVerifySignature.py" >}}

## מסמך Word

[DigitalSignatureUtil](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/) הכיתה מספקת שיטות לחתימה. [DigitalSignatureUtil.sign](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/sign/) מסמך מקור באמצעות [CertificateHolder](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/certificateholder/) עם חתימה דיגיטלית וכותב מסמך חתום לזרם היעד

להלן דוגמאות כיצד לחתום על מסמך פשוט

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SingDocument.py" >}}

להלן דוגמאות כיצד לחתום על מסמך מוצפן

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SigningEncryptedDocument.py" >}}

### מסמך Word עם קו חתימה

ניתן לחתום על מסמך מקור באמצעות [CertificateHolder](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/certificateholder/) ו [SignOptions](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/signoptions/) עם חתימה דיגיטלית וכותב מסמך חתום לקובץ היעד. שימוש [SignOptions](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/signoptions/) מחלקה אתה יכול לציין אפשרויות לחתימה. להלן דוגמה: כיצד ליצור קו חתימה חדש ולחתום מסמך

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-CreatingAndSigningNewSignatureLine.py" >}}

להלן דוגמה: כיצד לשנות את קו החתימה הקיים ואת מסמך הסימנים

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SigningExistingSignatureLine.py" >}}

### מסמך Word באמצעות ספק חתימה Identifier

להלן דוגמה מראה כיצד לחתום על מסמך Word באמצעות מזהה ספק חתימה. ספק השירות הקריפטוגרפי (CSP) הוא מודול תוכנה עצמאי אשר למעשה מבצע אלגוריתמי הצפנה עבור אימות, סיבולת והצפנה. MS Office שומרת לעצמה את הערך של {00000000-0000-0000-0000-0000-0000-0000-0000 0000-000000 000 000 000 000 000 000 $) עבור ספק החתימה ברירת המחדל שלה.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SetSignatureProviderID.py" >}}

### ליצור חתימה חדשה מסמך Sign Word באמצעות ספק Identifier

להלן דוגמאות כיצד ליצור קו חתימה ולחתום מסמך Word באמצעות מזהה ספק חתימה.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-CreateNewSignatureLineAndSetProviderID.py" >}}

## להעריך מחדש את ערך החתימה הדיגיטלי

Aspose.Words כמו כן, מספק את היכולת לשחזר את ערך החתימה הדיגיטלי מ מסמך חתום דיגיטלית כמערך ע"י שימוש במערך ע"י שימוש. [SignatureValue](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/signature_value/) רכוש.

הדוגמה הבאה של הקוד מראה כיצד להשיג את ערך החתימה הדיגיטלי כמערך עוטה ממסמכים:

{{< highlight csharp >}}
doc = aw.Document(MY_DIR + "Digitally signed.docx")

for digital_signature in doc.digital_signatures:
    signature_value = base64.b64encode(digital_signature.signature_value)
    print(f"Base64 signature value is: {signature_value}")
{{< /highlight >}}