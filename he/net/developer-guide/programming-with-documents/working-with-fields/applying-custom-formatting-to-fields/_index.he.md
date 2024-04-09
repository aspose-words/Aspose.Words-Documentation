---
title: החל פורמט מותאם אישית לשדות C#
second_title: Aspose.Words עבור .NET
articleTitle: החל פורמט מותאם אישית לשדות
linktitle: החל פורמט מותאם אישית לשדות
description: "פורמט והערכה שדות תוצאה C#."
type: docs
weight: 40
url: /he/net/applying-custom-formatting-to-fields/
---

לפעמים משתמשים צריכים ליישם פורמט מותאם אישית לתחומים. במאמר זה נבחן כמה דוגמאות כיצד ניתן לעשות זאת.

כדי ללמוד אפשרויות נוספות, ראה את הרשימה המלאה של תכונות עבור כל סוג שדה בכיתה המקבילה בכיתה [שדות שם](https://reference.aspose.com/words/net/aspose.words.fields/).

## כיצד ליישם פורמט מותאם אישית לשדות

Aspose.Words מספק API לפורמט מותאם אישית של התוצאה של השדה. אתה יכול ליישם [IFieldResultFormatter](https://reference.aspose.com/words/net/aspose.words.fields/ifieldresultformatter/) ממשק כדי לשלוט כיצד התוצאה של השדה מעוצבת. אתה יכול ליישם מתג פורמט המספרי, כלומר /###, תאריך / זמן פורמט מתג, i.e.\@ "d.MMyyy", והחלפת מספר פורמט, כלומר * Ordinal.

הדוגמה הבאה של הקוד מראה כיצד ליישם פורמט מותאם אישית עבור התוצאה השדה:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FormatFieldResult-FormatFieldResult.cs" >}}

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FormatFieldResult-FieldResultFormatter.cs" >}}

## כיצד להעריך `IF` מצב

אם אתה רוצה להעריך `IF` מצב לאחר mail merge, אתה יכול להשתמש [EvaluateCondition](https://reference.aspose.com/words/net/aspose.words.fields/fieldif/evaluatecondition/) שיטה זו מחזירה מיד את התוצאה של הערכת הביטוי.

דוגמה לקוד הבא מראה כיצד להשתמש בשיטה זו:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-EvaluateIFCondition-EvaluateIFCondition.cs" >}}

## כיצד ליישם פורמט מותאם אישית לשדה הזמן

כברירת מחדל Aspose.Words עדכונים `TIME` שטח עם פורמט זמן קצר בתרבות הנוכחית. הבנו שיש הבדל בין Microsoft Word פורמט ו .NET/ / / /Windows עיצוב, וגם בין .NET Framework גרסאות. אם אתה רוצה לעצב את `TIME` שדה לפי הדרישה שלך, אתה יכול להשיג את זה על ידי יישום [IFieldUpdateCultureProvider](https://reference.aspose.com/words/net/aspose.words.fields/ifieldupdatecultureprovider/) ממשק.

דוגמאות הקוד הבאות מראות כיצד ליישם פורמט מותאם אישית `TIME` שדה:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProvider.cs" >}}

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldUpdateCultureProvider-FieldUpdateCultureProviderGetCulture.cs" >}}
