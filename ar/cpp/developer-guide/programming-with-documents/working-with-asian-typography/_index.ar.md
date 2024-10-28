---
title: الطباعة الآسيوية في C++
second_title: Aspose.Words ل C++
articleTitle: العمل مع الطباعة الآسيوية
linktitle: العمل مع الطباعة الآسيوية
description: "العمل مع الطباعة الآسيوية باستخدام C++. ضبط المسافة بين النص الآسيوي واللاتيني في C++."
type: docs
weight: 240
url: /ar/cpp/working-with-asian-typography/
---

الطباعة الآسيوية هي مجموعة من الخيارات للفقرات النصية في المستندات المكتوبة باللغات الآسيوية.

Aspose.Words يدعم الطباعة الآسيوية باستخدام فئة [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) وبعض خصائصها.

## ضبط المسافة تلقائيا بين النص أو الأرقام الآسيوية واللاتينية

إذا كنت تقوم بتصميم قالب مع كل من نص شرق آسيا واللاتينية وترغب في تحسين مظهر قالب النموذج الخاص بك عن طريق التحكم في المسافات بين كلا النوعين من النص، يمكنك تكوين قالب النموذج الخاص بك لضبط المسافات بين هذين النوعين من النص تلقائيا. لتحقيق ذلك، يمكنك استخدام خصائص [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_addspacebetweenfareastandalpha/) و [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_addspacebetweenfareastanddigit/) لفئة `ParagraphFormat`.

يوضح مثال الكود التالي كيفية استخدام خصائص **AddSpaceBetweenFarEastAndAlpha** و **AddSpaceBetweenFarEastAndDigit**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cpp" >}}

## تعيين خيارات فاصل الأسطر

علامة التبويب الطباعة الآسيوية من مربع الحوار خصائص الفقرة في Microsoft Word لديها مجموعة فاصل الأسطر. يمكن تعيين خيارات هذه المجموعة باستخدام [FarEastLineBreakControl](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_fareastlinebreakcontrol/), [WordWrap](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_wordwrap/), [HangingPunctuation](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_hangingpunctuation/) خصائص فئة **ParagraphFormat**.

يوضح مثال التعليمات البرمجية التالية كيفية استخدام هذه الخصائص:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetAsianTypographyLinebreakGroupProp.cpp" >}}
