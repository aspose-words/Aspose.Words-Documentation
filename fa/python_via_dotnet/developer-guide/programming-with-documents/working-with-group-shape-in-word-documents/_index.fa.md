---
title: نحوه اضافه کردن شکل Group به فایل Word
second_title: Aspose.Words برای Python via .NET
articleTitle: کار با Group Shape در اسناد Word
linktitle: کار با Group Shape در اسناد Word
description: "group shape را با استفاده از Python به سند اضافه کنید."
type: docs
weight: 290
url: /fa/python-net/how-to-add-group-shape-into-a-word-document/
timestamp: 2024-01-27-14-07-04
---

گاهی اوقات لازم است یک group shape را به یک سند Word اضافه کنید. چنین group shape از چندین شکل تشکیل شده است.

در Microsoft Word، می‌توانید با استفاده از دستور/دکمه Group به سرعت یک group shape اضافه کنید. یک شکل فردی در یک گروه را می توان به طور جداگانه منتقل کرد.

در Aspose.Words اضافه کردن group shape با استفاده از کلاس [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) بسیار آسان است. شکل به طور جداگانه با استفاده از کلاس [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) ایجاد می شود و سپس با استفاده از روش [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/) در شی [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) اضافه می شود.

مثال کد زیر نحوه اضافه کردن یک group shape را به یک سند Word نشان می دهد:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AddGroupShape.py" >}}

{{% alert color="primary" %}}

در زیر برخی از انواع `Shape` پشتیبانی شده در Aspose.Words آورده شده است. برای فهرست کامل، لطفاً به شمارش [aspose.words.drawing.ShapeType](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/) مراجعه کنید

- [Rectangle](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#rectangle)
- [RoundRectangle](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#round_rectangle)
- [Ellipse](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#ellipse)
- [Diamond](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#diamond)
- [Triangle](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#triangle)
- [RightTriangle](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#right_triangle)
- [Parallelogram](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#parallelogram)
- [Trapezoid](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#trapezoid)
- [Hexagon](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#hexagon)
- [Octagon](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#octagon)

{{% /alert %}}
