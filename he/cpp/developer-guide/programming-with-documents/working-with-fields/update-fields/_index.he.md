---
title: עדכון שדות ב C++
second_title: Aspose.Words עבור C++
articleTitle: עדכון שדות
linktitle: עדכון שדות
description: "למד כיצד לעדכן שדות ב C++. עדכן שדות באופן תכנותי או השתמש בעדכון שדה אוטומטי באמצעות C++ API."
type: docs
weight: 30
url: /he/cpp/update-fields/
timestamp: 2024-01-27-14-07-04
---

בדרך כלל, שדה שהוכנס ל - Microsoft Word כבר מכיל ערך עדכני. לדוגמה, אם השדה הוא נוסחה או מספר עמוד, הוא יכיל את הערך המחושב הנכון עבור הגרסה הנתונה של המסמך. אבל אם יש לך יישום שיוצר או משנה מסמך עם שדות כמו מיזוג שני מסמכים או אכלוס נתונים, באופן אידיאלי יש לעדכן את כל השדות כדי שהמסמך יהיה שימושי.

## כיצד לעדכן שדות

כאשר מסמך נטען, Aspose.Words מחקה את ההתנהגות של Microsoft Word עם האפשרות לעדכן שדות באופן אוטומטי כבויה. ניתן לסכם את ההתנהגות כדלקמן::

- כאשר אתה פותח / שומר מסמך השדות נשארים שלמים
- אתה יכול לעדכן במפורש את כל השדות במסמך, למשל, לבנות מחדש `TOC`, כאשר אתה צריך
- כאשר אתה מעבד ל PDF או XPS השדות הקשורים למספור עמודים בכותרות עליונות / תחתונות מתעדכנים
- בעת ביצוע Mail Merge כל השדות מתעדכנים באופן אוטומטי

### עדכן שדות באופן תכנותי

כדי לעדכן באופן מפורש שדות במסמך כולו, פשוט התקשר לשיטה [UpdateFields](https://reference.aspose.com/words/cpp/aspose.words/document/updatefields/). כדי לעדכן שדות הכלולים בחלק ממסמך, השג אובייקט [Range](https://reference.aspose.com/words/cpp/aspose.words/range/) והתקשר לשיטה [UpdateFields](https://reference.aspose.com/words/cpp/aspose.words/range/updatefields/). ב Aspose.Words, אתה יכול להשיג **Range** עבור כל צומת בעץ המסמך, כגון [Section](https://reference.aspose.com/words/cpp/aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/), וכו'. שימוש במאפיין [Node.Range](https://reference.aspose.com/words/cpp/aspose.words/node/get_range/).ניתן לעדכן את התוצאה של שדה יחיד על ידי קריאה לשיטת [Update](https://reference.aspose.com/words/cpp/aspose.words.fields/field/update/).

### עדכון אוטומטי של שדות הקשורים לדף במהלך העיבוד

כאשר אתה מבצע המרה של מסמך לפורמט של דף קבוע, למשל ל PDF או XPS, ולאחר מכן Aspose.Words יעדכן באופן אוטומטי שדות הקשורים לפריסת הדף `PAGE`, `PAGEREF` שנמצאים בכותרות העליונות / תחתונות של המסמך. התנהגות זו מחקה את ההתנהגות של Microsoft Word בעת הדפסת מסמך.

אם ברצונך לעדכן את כל השדות האחרים במסמך, עליך להתקשר [UpdateFields](https://reference.aspose.com/words/cpp/aspose.words/document/updatefields/) לפני עיבוד המסמך.

דוגמת הקוד הבאה מראה כיצד לעדכן את כל השדות לפני עיבוד מסמך:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-UpdateDocFields-UpdateDocFields.cpp" >}}

### עדכון שדה אוטומטי במהלך Mail Merge

בעת ביצוע mail merge, כל השדות במסמך יעודכנו אוטומטית. הסיבה לכך היא ש Mail Merge הוא מקרה של עדכון שדה. התוכנית נתקלת בשדה Mail Merge וצריכה לעדכן את התוצאה שלה, הכוללת תפיסת הערך ממקור הנתונים והכנסתו לשדה. ההיגיון כמובן מסובך יותר, למשל, כאשר מגיעים לסוף המסמך/mail merge אזור אך עדיין יש למזג נתונים נוספים, אז צריך לשכפל את האזור ולעדכן את מערך השדות החדש.

## עדכון LastSavedTime נכס לפני השמירה

באפשרותך להשתמש במאפיין [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_updatelastsavedtimeproperty/) אם לעדכן את מאפיין המסמך המובנה המתאים [LastSavedTime](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_lastsavedtime/) בעת שמירת המסמך.

דוגמת הקוד הבאה מראה כיצד לעדכן נכס זה:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithSaveOptions-UpdateLastSavedTimeProperty.cpp" >}}


