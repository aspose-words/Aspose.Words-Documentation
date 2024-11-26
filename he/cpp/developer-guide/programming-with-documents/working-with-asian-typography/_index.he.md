---
title: אסיה טיפוגרפיה ב C++
second_title: Aspose.Words עבור C++
articleTitle: עבודה עם טיפוגרפיה אסיאתית
linktitle: עבודה עם טיפוגרפיה אסיאתית
description: "עבודה עם טיפוגרפיה אסיאתית באמצעות C++. התאם את הרווח בין הטקסט האסייתי והלטיני ב C++."
type: docs
weight: 240
url: /he/cpp/working-with-asian-typography/
timestamp: 2024-02-01-16-17-05
---

טיפוגרפיה אסייתית היא קבוצה של אפשרויות לפסקאות טקסט במסמכים שנכתבו בשפות אסיאתיות.

Aspose.Words תומך בטיפוגרפיה אסיאתית באמצעות הכיתה [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) וחלק מהמאפיינים שלה.

## התאם אוטומטית את הרווח בין טקסט או מספרים אסיאתיים ולטיניים

אם אתה מעצב תבנית עם טקסט מזרח אסייתי ולטיני וברצונך לשפר את מראה תבנית הטופס שלך על ידי שליטה ברווחים בין שני סוגי הטקסט, תוכל להגדיר את תבנית הטופס שלך כך שתתאים אוטומטית את הרווחים בין שני סוגי הטקסט הללו. כדי להשיג זאת, אתה יכול להשתמש [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_addspacebetweenfareastandalpha/) ו [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_addspacebetweenfareastanddigit/) מאפיינים של הכיתה `ParagraphFormat`.

דוגמת הקוד הבאה מראה כיצד להשתמש בתכונות **AddSpaceBetweenFarEastAndAlpha** ו - **AddSpaceBetweenFarEastAndDigit**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cpp" >}}

## הגדר אפשרויות מעבר קו

לשונית הטיפוגרפיה האסיאתית של תיבת הדו-שיח מאפייני פסקה ב Microsoft Word יש קבוצת מעבר שורה. ניתן להגדיר את האפשרויות של קבוצה זו באמצעות [FarEastLineBreakControl](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_fareastlinebreakcontrol/), [WordWrap](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_wordwrap/), [HangingPunctuation](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_hangingpunctuation/) מאפיינים של הכיתה **ParagraphFormat**.

דוגמת הקוד הבאה מראה כיצד להשתמש בתכונות אלה:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetAsianTypographyLinebreakGroupProp.cpp" >}}
