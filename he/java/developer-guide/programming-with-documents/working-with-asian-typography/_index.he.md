---
title: אסטוגרפיה באסיה Java
second_title: Aspose.Words עבור Java
articleTitle: עבודה עם אסיאתי Typography
linktitle: עבודה עם אסיאתי Typography
description: "עבודה עם טיפוגרפיה אסייתית Java. התאמת חלל בין טקסט אסיאתי ללטינית Java."
type: docs
weight: 240
url: /he/java/working-with-asian-typography/
---

טייפוגרפיה אסיה היא קבוצה של אפשרויות לפסקאות טקסט במסמכים שנכתבו בשפות אסיה.

Aspose.Words תמיכה אסיאתית Typography באמצעות [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) מעמד וחלק מהנכסים שלו.

## התאמה אוטומטית של חלל בין טקסטים אסיאתיים ללטינית או מספרים

אם אתה מעצב תבנית עם טקסט מזרח אסיה ולטינית ורוצה לשפר את המראה של תבנית הטופס שלך על ידי שליטה על החללים בין שני סוגי הטקסט, אתה יכול להגדיר תבנית הטופס שלך כדי להתאים באופן אוטומטי את החללים בין שני סוגים אלה של טקסט. כדי להשיג זאת, אתה יכול להשתמש [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getAddSpaceBetweenFarEastAndAlpha) ו [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getAddSpaceBetweenFarEastAndDigit) תכונות של `ParagraphFormat` מעמד.

דוגמה לקוד הבא מראה כיצד להשתמש **AddSpaceBetweenFarEastAndAlpha** ו **AddSpaceBetweenFarEastAndDigit** תכונות:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderSetSpaceBetweenAsianAndLatinText.java" >}}

## אפשרויות ל- Line Break Options

הכרטיסיה האסייתית טיפוגרפיה של תיבת הדו-שיח התכונות של פסקה Microsoft Word יש קו שובר קבוצה. את האפשרויות של קבוצה זו ניתן להגדיר באמצעות [FarEastLineBreakControl](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getFarEastLineBreakControl), [WordWrap](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getWordWrap), [HangingPunctuation](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getHangingPunctuation) תכונות של **ParagraphFormat** מעמד.

דוגמה לקוד הבא מראה כיצד להשתמש בתכונות אלה:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-SetAsianTypographyLinebreakGroupProp.java" >}}

## שינוי Paragraph אסיה ספיגה ו Indents

הדוגמה הבאה של הקוד מראה כיצד לשנות את סעיף האסיאתי שמצמצמצוץ ומבודדים:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ChangeAsianParagraphSpacingandIndents.java" >}}