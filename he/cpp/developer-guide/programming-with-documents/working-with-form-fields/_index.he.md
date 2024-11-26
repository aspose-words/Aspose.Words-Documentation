---
title: עבודה עם שדות טופס ב C++
second_title: Aspose.Words עבור C++
articleTitle: עבודה עם שדות טופס
linktitle: עבודה עם שדות טופס
description: "הבנת שדות טופס תכונה, עבודה עם שדות טופס באמצעות C++."
type: docs
weight: 380
url: /he/cpp/working-with-form-fields/
timestamp: 2024-01-27-14-07-04
---

מסמך המכיל מילוי החסר (שדות) ידוע כטופס. לדוגמה, ניתן ליצור טופס הרשמה ב Microsoft Word המשתמש ברשימות נפתחות שמהן משתמשים יכולים לבחור ערכים. שדה טופס הוא מיקום שבו מאוחסן סוג מסוים של נתונים, כגון שם או כתובת. שדות טופס ב Microsoft Word כוללים קלט טקסט, Combobox ו checkbox.

אתה יכול להשתמש בשדות טופס בפרויקט שלך כדי "לתקשר" עם המשתמשים שלך. לדוגמה, אתה יוצר מסמך שתוכנו מוגן, אך רק שדות טופס ניתנים לעריכה. המשתמשים יכולים להזין את הנתונים בשדות הטופס ולשלוח את המסמך. היישום שלך שמשתמש Aspose.Words יכול לאחזר נתונים משדות הטופס ולעבד אותם.

הצבת שדות טופס למסמך באמצעות קוד היא קלה. [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) יש שיטות מיוחדות להכנסתן, אחת לכל סוג שדה טופס. כל אחת מהשיטות מקבלת פרמטר מחרוזת המייצג את שם שדה הטופס. השם יכול להיות מחרוזת ריקה. אם עם זאת אתה מציין שם לשדה הטופס, סימניה נוצרת אוטומטית עם אותו שם.

## הוספת שדות טופס

שדות טופס הם מקרה מסוים של שדות Word המאפשר "אינטראקציה" עם המשתמש. שדות טופס ב Microsoft Word כוללים תיבת טקסט, תיבה משולבת ו checkbox.

**DocumentBuilder**

דוגמת הקוד הבאה מראה כיצד להוסיף שדה טופס combobox למסמך:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertFormFields-InsertFormFields.cpp" >}}

## קבלת שדות טופס

אוסף של שדות טופס מיוצג על ידי הכיתה [FormFieldCollection](https://reference.aspose.com/words/cpp/aspose.words.fields/formfieldcollection/) שניתן לאחזר באמצעות המאפיין [FormFields](https://reference.aspose.com/words/cpp/aspose.words/range/get_formfields/). המשמעות היא שתוכל להשיג שדות טופס הכלולים בכל צומת מסמך כולל המסמך עצמו.

דוגמת הקוד הבאה מראה כיצד להשיג אוסף של שדות טופס:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.cpp" >}}

אתה יכול לקבל שדה טופס מסוים לפי האינדקס או השם שלו.

דוגמת הקוד הבאה מראה כיצד לגשת לשדות טופס:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormFieldsGetByName-FormFieldsGetByName.cpp" >}}

המאפיינים **FormField** מאפשרים לך לעבוד עם שם שדה טופס, סוג ותוצאה.

דוגמת הקוד הבאה מראה כיצד לעבוד עם שם שדה טופס, סוג ותוצאה:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.cpp" >}}
