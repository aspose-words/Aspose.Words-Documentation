---
title: الطباعة الآسيوية في C#
second_title: Aspose.Words لـ .NET
articleTitle: العمل مع الطباعة الآسيوية
linktitle: العمل مع الطباعة الآسيوية
description: "العمل مع الطباعة الآسيوية باستخدام C#. ضبط المسافة بين النص الآسيوي واللاتيني في C#."
type: docs
weight: 240
url: /ar/net/working-with-asian-typography/
---

الطباعة الآسيوية عبارة عن مجموعة من الخيارات للفقرات النصية في المستندات المكتوبة باللغات الآسيوية.

يدعم Aspose.Words الطباعة الآسيوية باستخدام فئة [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) وبعض خصائصها.

## ضبط المسافة تلقائيًا بين النص أو الأرقام الآسيوية واللاتينية

إذا كنت تقوم بتصميم قالب باستخدام نص شرق آسيوي ونص لاتيني وتريد تحسين مظهر قالب النموذج الخاص بك عن طريق التحكم في المسافات بين كلا النوعين من النص، فيمكنك تكوين قالب النموذج الخاص بك لضبط المسافات بين هذين النوعين من النص تلقائياً. لتحقيق ذلك، يمكنك استخدام خصائص [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/net/aspose.words/paragraphformat/addspacebetweenfareastandalpha/) و[AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/net/aspose.words/paragraphformat/addspacebetweenfareastanddigit/) لفئة `ParagraphFormat`.

يوضح مثال التعليمات البرمجية التالي كيفية استخدام خصائص **AddSpaceBetweenFarEastAndAlpha** و**AddSpaceBetweenFarEastAndDigit**:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cs" >}}

## ضبط خيارات فاصل الأسطر

تحتوي علامة التبويب الطباعة الآسيوية في مربع حوار خصائص الفقرة في Microsoft Word على مجموعة فواصل الأسطر. يمكن تعيين خيارات هذه المجموعة باستخدام خصائص [FarEastLineBreakControl](https://reference.aspose.com/words/net/aspose.words/paragraphformat/fareastlinebreakcontrol/) و[WordWrap](https://reference.aspose.com/words/net/aspose.words/paragraphformat/wordwrap/) و[HangingPunctuation](https://reference.aspose.com/words/net/aspose.words/paragraphformat/hangingpunctuation/) لفئة **ParagraphFormat**.

يوضح مثال التعليمات البرمجية التالي كيفية استخدام هذه الخصائص:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetAsianTypographyLinebreakGroupProp.cs" >}}
