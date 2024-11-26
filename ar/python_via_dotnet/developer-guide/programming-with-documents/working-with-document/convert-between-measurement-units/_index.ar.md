---
title: التحويل بين وحدات القياس
second_title: Aspose.Words لـ Python via .NET
articleTitle: التحويل بين وحدات القياس
linktitle: التحويل بين وحدات القياس
description: "يمكن أن يساعدك Aspose.Words for Python via .NET في كيفية التحويل بين وحدات القياس، على سبيل المثال، البوصات إلى نقاط والنقاط إلى بوصات، والبكسل إلى نقاط، والنقاط إلى بكسل."
type: docs
weight: 20
url: /ar/python-net/convert-between-measurement-units/
timestamp: 2024-01-27-14-07-04
---

معظم خصائص الكائن المتوفرة في Aspose.Words API والتي تمثل بعض القياسات، مثل العرض أو الارتفاع والهوامش والمسافات المختلفة، تقبل القيم بالنقاط، حيث 1 بوصة تساوي 72 نقطة. في بعض الأحيان لا يكون هذا مناسبًا ويجب تحويل النقاط إلى وحدات أخرى.

يوفر Aspose.Words فئة [ConvertUtil](https://reference.aspose.com/words/python-net/aspose.words/convertutil/) التي توفر وظائف مساعدة للتحويل بين وحدات القياس المختلفة. فهو يتيح تحويل البوصات والبكسلات والمليمترات إلى نقاط، والنقاط إلى بوصات وبكسلات، وتحويل البكسلات من دقة إلى أخرى. يمكن إجراء تحويل وحدات البكسل إلى نقاط والعكس بدقة 96 نقطة في البوصة (نقطة في البوصة) أو دقة نقطة في البوصة المحددة.

تعتبر فئة [ConvertUtil](https://reference.aspose.com/words/python-net/aspose.words/convertutil/) مفيدة بشكل خاص عند تعيين خصائص الصفحة المختلفة، على سبيل المثال، البوصة هي وحدات قياس أكثر شيوعًا من النقاط.

يوضح مثال التعليمات البرمجية التالي كيفية تحديد خصائص الصفحة بالبوصة:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-ConvertBetweenMeasurementUnits.py" >}}
