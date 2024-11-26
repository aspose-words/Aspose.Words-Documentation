---
title: چگونه Group Shape را به یک سند ورد اضافه کنیم
second_title: Aspose.Words برای C++
articleTitle: کار با Group Shapes در اسناد ورد
linktitle: کار با Group Shapes در اسناد ورد
description: "گروه بندی و غیر گروه بندی اشکال با استفاده از C++."
type: docs
weight: 290
url: /fa/cpp/how-to-add-group-shape-into-a-word-document/
timestamp: 2024-01-27-14-07-04
---

گاهی اوقات شما نیاز به اضافه کردن یک group shape به یک سند ورد دارید. چنین group shape از اشکال مختلف تشکیل شده است.

در Microsoft Word، شما می توانید به سرعت یک group shape با استفاده از دستور/دکمه گروه اضافه کنید. شکل فردی در یک گروه را می توان به طور جداگانه جابجا کرد.

در Aspose.Words اضافه کردن group shape با استفاده از کلاس [GroupShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/groupshape/) بسیار آسان است. شکل به طور جداگانه با استفاده از کلاس [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) ایجاد می شود و سپس با استفاده از روش [AppendChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/appendchild/) به شی **GroupShape** اضافه می شود.

مثال کد زیر نشان می دهد که چگونه یک group shape را به یک سند ورد اضافه کنید:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-AddGroupShapeToDocument-AddGroupShapeToDocument.cpp" >}}

{{% alert color="primary" %}}

در زیر برخی از انواع `Shape` پشتیبانی شده در Aspose.Words آورده شده است. برای لیست کامل، لطفا به [ShapeType](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/)مراجعه کنید:

- مستطیل
- RoundRectangle
- RoundRectangle
- بیضوی
- الماس
- مثلث
- RightTriangle
- موازی
- ذوزنقه
- شش ضلعی
- هشت ضلعی

{{% /alert %}}
