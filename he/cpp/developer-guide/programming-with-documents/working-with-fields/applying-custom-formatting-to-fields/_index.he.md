---
title: החל עיצוב מותאם אישית על שדות ב C++
second_title: Aspose.Words עבור C++
articleTitle: החל עיצוב מותאם אישית על שדות
linktitle: החל עיצוב מותאם אישית על שדות
description: "לעצב ולהעריך שדות תוצאה באמצעות C++."
type: docs
weight: 40
url: /he/cpp/applying-custom-formatting-to-fields/
timestamp: 2024-01-27-14-07-04
---

לפעמים משתמשים צריכים להחיל עיצוב מותאם אישית על שדות. במאמר זה נבחן כמה דוגמאות כיצד ניתן לעשות זאת.

כדי ללמוד אפשרויות נוספות, עיין ברשימת המאפיינים המלאה עבור כל סוג שדה בכיתה המתאימה ב [Fields namespace](https://reference.aspose.com/words/cpp/namespace/aspose.words.fields).

## כיצד להחיל עיצוב מותאם אישית על תוצאת השדה

Aspose.Words מספק API לעיצוב מותאם אישית של התוצאה של השדה. אתה יכול ליישם [IFieldResultFormatter](https://reference.aspose.com/words/cpp/aspose.words.fields/ifieldresultformatter/) ממשק כדי לשלוט באופן שבו תוצאת השדה מעוצבת. ניתן להחיל מתג פורמט מספרי, כלומר \# "#.##", מתג פורמט תאריך / שעה, כלומר \@ "dd.MM.yyyy", ומתג פורמט מספר, כלומר \* Ordinal.

דוגמת הקוד הבאה מראה כיצד להחיל עיצוב מותאם אישית עבור תוצאת השדה:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormatFieldResult-FormatFieldResult.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldResultFormatter-FieldResultFormatter.cpp" >}}

## כיצד להעריך `IF` מצב

אם אתה רוצה להעריך `IF` מצב אחרי mail merge, אתה יכול להשתמש בשיטת [EvaluateCondition](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldif/evaluatecondition/) שמחזירה מיד את התוצאה של הערכת הביטוי.

דוגמת הקוד הבאה מראה כיצד להשתמש בשיטה זו:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-EvaluateIFCondition-EvaluateIFCondition.cpp" >}}

## כיצד להחיל עיצוב מותאם אישית לשדה זמן

כברירת מחדל Aspose.Words עדכונים `TIME` שדה עם פורמט זמן קצר תרבות נוכחית. אם ברצונך לעצב את השדה `TIME` בהתאם לדרישתך, תוכל להשיג זאת על ידי יישום ממשק [IFieldUpdateCultureProvider](https://reference.aspose.com/words/cpp/aspose.words.fields/ifieldupdatecultureprovider).

דוגמאות הקוד הבאות מראות כיצד להחיל עיצוב מותאם אישית על השדה `TIME`:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProvider.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProviderGetCulture.cpp" >}}
