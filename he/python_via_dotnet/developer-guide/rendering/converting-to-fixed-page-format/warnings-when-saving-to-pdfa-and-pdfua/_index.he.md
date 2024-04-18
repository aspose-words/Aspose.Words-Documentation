---
title: אזהרות בעת שמירת PDF/A ו- PDF/UA
second_title: Aspose.Words עבור Python
articleTitle: אזהרות בנושא נגישות בעת שמירת PDF/A ו- PDF/UA
linktitle: אזהרות בנושא נגישות בעת שמירת PDF/A ו- PDF/UA
description: "PDF/A ו- PDF/UA כופים דרישות נגישות הקשורות לתוכן המסמך. בעת שמירת PDF/A או PDF/UA Python הבעיה מפרה את הציות, אזהרה ניתנת."
type: docs
weight: 29
url: /he/python-net/warnings-when-saving-to-pdfa-and-pdfua/
---

פורמטים PDF/A ו- PDF/UA כופים מספר דרישות נגישות הקשורות לתוכן מסמך שלא ניתן להשלים במהלך המרה אוטומטית מ- Word ל- PDF. דרישות אלה מתוארות במאמר הקודם * עבודה עם PDF/A או PDF/UA *. האזהרות ניתנות לחלק מהבעיות הללו.

אזהרות ניתנות בעת שמירת אחד מפורמטי PDF/A או PDF/UA, והנושא מפר תאימות. לדוגמה, האזהרה על שם המסמך החסר תימסר בעת שמירת PDF/UA ולא תונפק בעת שמירת PDF/A.

כל האזהרות הן [WarningType](https://reference.aspose.com/words/python-net/aspose.words/warningtype/)**.המונחים: minor formattingLoss** ו [WarningSource](https://reference.aspose.com/words/python-net/aspose.words/warningsource/)**. PDf**. הנה רשימה של ערכי האזהרה החדשים:

|  ערך אזהרה |  PDF/A |  PDF/UA |
|  ------------------------------------------------------------  |  ----------------------  |  ----------------------  |
|  המסמך מכיל כותרות שרמות אינן עוקבות. זה מפר את דרישות הציות. מסמך הפלט לא יהיה תואם לחלוטין" |                          |   {{< emoticons/tick >}}  |
|  "ישנן צורות ללא טקסטalt במסמך. זה מפר את דרישות הציות. מסמך הפלט לא יהיה תואם לחלוטין" |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |
|  "יש שולחנות ללא טקסטalt במסמך. זה מפר את דרישות הציות. מסמך הפלט לא יהיה תואם לחלוטין" |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |
|  המסמך מכיל דמויות Unicode PUA. זה מפר את דרישות הציות. מסמך הפלט לא יהיה תואם לחלוטין" |   {{< emoticons/tick >}}  |                          |
|  המסמך מכיל .notdef glyph. זה מפר את דרישות הציות. מסמך הפלט לא יהיה תואם לחלוטין" |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |