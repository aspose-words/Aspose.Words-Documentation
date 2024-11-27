---
title: צור או טען מסמך ב C++
second_title: Aspose.Words עבור C++
articleTitle: יצירה או טעינה של מסמך
linktitle: יצירה או טעינה של מסמך
type: docs
description: "צור מסמך ריק או כדי לטעון אותו מקובץ או זרם באמצעות C++."
keywords: "create a document c++, load a document c++, create a blank document c++, load a document from file c++, load a document from stream c++, create a document Aspose C++, load a document Aspose C++, load formats supported by Aspose.Words C++"
weight: 10
url: /he/cpp/create-or-load-a-document/
timestamp: 2024-01-27-14-07-04
---

כמעט כל משימה שברצונך לבצע עם Aspose.Words כרוכה בטעינת מסמך. הכיתה `Document` מייצגת מסמך שנטען בזיכרון. למסמך יש כמה קונסטרוקטורים עמוסים המאפשרים לך ליצור מסמך ריק או לטעון אותו מקובץ או זרם. ניתן לטעון את המסמך בכל פורמט עומס הנתמך על ידי Aspose.Words. עבור רשימת כל פורמטי העומס הנתמכים, ראה את הספירה [LoadFormat](https://reference.aspose.com/words/cpp/aspose.words/loadformat/).

## צור מסמך חדש {#create-a-new-document}

אנו נתקשר לבנאי [Document](https://reference.aspose.com/words/cpp/class/aspose.words.document) ללא פרמטרים ליצירת מסמך ריק חדש. אם ברצונך ליצור מסמך באופן תכנותי, הדרך הפשוטה ביותר היא להשתמש בכיתה [DocumentBuilder](https://reference.aspose.com/words/cpp/class/aspose.words.document_builder) כדי להוסיף תוכן מסמך.

דוגמת הקוד הבאה מראה כיצד ליצור מסמך באמצעות בונה המסמכים:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-CreateDocument-CreateDocument.cpp" >}}

{{% alert color="primary" %}}

שימו לב לערכי ברירת המחדל:

- מסמך ריק מכיל קטע אחד עם פרמטרי ברירת מחדל, פסקה ריקה אחת, כמה סגנונות מסמכים. למעשה מסמך זה זהה לתוצאה של יצירת "המסמך החדש" ב Microsoft Word.
- גודל נייר המסמך הוא [PaperSize](https://reference.aspose.com/words/cpp/aspose.words/papersize/).**Letter**.

{{% /alert %}}

## טען מסמך

כדי לטעון מסמך קיים בכל אחד מהפורמטים `LoadFormat`, העבר את שם הקובץ או הזרם לאחד מבנאי המסמכים. הפורמט של המסמך הטעון נקבע באופן אוטומטי על ידי הסיומת שלו.

### טען מקובץ {#load-from-a-file}

העבר שם קובץ כמחרוזת לבנאי המסמכים כדי לפתוח מסמך קיים מקובץ.

דוגמת הקוד הבאה מראה כיצד לפתוח מסמך מקובץ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToDisk-OpenDocument.cpp" >}}

ניתן להוריד את קובץ התבנית של דוגמה זו מ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

### טען מזרם {#load-from-a-stream}

כדי לפתוח מסמך מזרם, פשוט העבירו אובייקט זרם המכיל את המסמך לבנאי המסמכים.

דוגמת הקוד הבאה מראה כיצד לפתוח מסמך מזרם:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToStream-OpeningFromStream.cpp" >}}

{{% alert color="primary" %}}

ניתן להוריד את קובץ התבנית של דוגמה זו מ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}
