---
title: כיצד לזהות שהגופן הוחלף ב C++
second_title: Aspose.Words עבור C++
articleTitle: כיצד לזהות שהגופן הוחלף
linktitle: כיצד לזהות שהגופן הוחלף
description: "אם אינך בטוח מדוע פריסת המסמך השתנתה או מדוע גופן מסוים אינו נראה כצפוי, הודעות אזהרות להחלפת גופנים יכולות לעזור."
type: docs
weight: 13
url: /he/cpp/how-to-recognize-that-the-font-was-replaced/
timestamp: 2024-09-24-14-35-44
---

לפעמים, ייתכן שלא ברור מדוע פריסת המסמך השתנתה, או מדוע גופן כלשהו אינו נראה כצפוי. במקרים כאלה, הודעות אזהרות להחלפת גופן המיושמות על ידי ממשק IWarningCallback באות להצלה. יש להם את סוג האזהרה [FontSubstitution](https://reference.aspose.com/words/cpp/aspose.words/warningtype/) ואת פורמט הטקסט הסטנדרטי של התיאור, " גופן '<OriginalFont>' לא נמצא. שימוש בגופן '<SubstitutionFont> ' במקום זאת. סיבה: <Reason>", עם הסיבות הבאות:

- "שם חלופי מהמסמך" - להחלפה ב [AltName](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontinfo/get_altname/)
- "החלפת גופן" - להחלפה על ידי כלל תצורת גופן
- "החלפת טבלה" - להחלפה לפי כלל טבלה
- "החלפת מידע גופנים" - להחלפה על ידי כלל מידע גופנים
- "החלפת גופן ברירת מחדל" - להחלפה לפי כלל גופן ברירת מחדל
- "גופן זמין ראשון" - להחלפה בגופן זמין ראשון
