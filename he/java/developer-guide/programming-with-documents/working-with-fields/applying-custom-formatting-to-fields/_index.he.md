---
title: החל פורמט מותאם אישית לשדות
second_title: Aspose.Words עבור Java
articleTitle: החל פורמט מותאם אישית לשדות
linktitle: החל פורמט מותאם אישית לשדות
description: "פורמט והערכה שדות תוצאה Java."
type: docs
weight: 40
url: /he/java/applying-custom-formatting-to-fields/
---

לפעמים משתמשים צריכים ליישם פורמט מותאם אישית לתחומים. במאמר זה נבחן כמה דוגמאות כיצד ניתן לעשות זאת.

כדי ללמוד אפשרויות נוספות, ראה את הרשימה המלאה של נכסים עבור כל סוג שדה בכיתה המקבילה.

## כיצד ליישם פורמט מותאם אישית לשדות

Aspose.Words מספק API לפורמט מותאם אישית של התוצאה של השדה. אתה יכול ליישם [IFieldResultFormatter](https://reference.aspose.com/words/java/com.aspose.words/ifieldresultformatter/) ממשק כדי לשלוט כיצד התוצאה של השדה מעוצבת. אתה יכול ליישם מתג פורמט המספרי, כלומר /###, תאריך / זמן פורמט מתג, i.e.\@ "d.MMyyyy", והחלפת תבנית מספר, כלומר * Ordinal.

הדוגמה הבאה של הקוד מראה כיצד ליישם פורמט מותאם אישית עבור התוצאה השדה.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormatFieldResult-FormatFieldResult.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldResultFormatter-FieldResultFormatter.java" >}}

## כיצד להעריך `IF` מצב

אם אתה רוצה להעריך `IF` מצב לאחר mail merge, אתה יכול להשתמש [EvaluateCondition](https://reference.aspose.com/words/java/com.aspose.words/fieldif/#evaluateCondition) שיטה שמחזירה מיד את התוצאה של הערכת הביטוי.

דוגמה לקוד הבא מראה כיצד להשתמש בשיטה זו:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-EvaluateIFCondition-EvaluateIFCondition.java" >}}

## כיצד ליישם פורמט מותאם אישית לשדה הזמן

כברירת מחדל Aspose.Words עדכונים `TIME` שטח עם פורמט זמן קצר בתרבות הנוכחית. אם אתה רוצה לעצב את `TIME` שדה לפי הדרישה שלך, אתה יכול להשיג את זה על ידי יישום [IFieldUpdateCultureProvider](https://reference.aspose.com/words/java/com.aspose.words/ifieldupdatecultureprovider/) ממשק.

דוגמאות הקוד הבאות מראות כיצד ליישם פורמט מותאם אישית `TIME` שדה:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldUpdateCulture-FieldUpdateCulture.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldUpdateCultureProvider-FieldUpdateCultureProvider.java" >}}
