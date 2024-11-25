---
title: تحويل بين وحدات القياس في Java
second_title: Aspose.Words ل Java
articleTitle: التحويل بين وحدات القياس
linktitle: التحويل بين وحدات القياس
description: "Aspose.Words ل Java يمكن أن تساعدك مع كيفية تحويل بين وحدات القياس، على سبيل المثال، بوصة إلى نقطة ونقطة إلى بوصة، بكسل إلى نقطة، يشير إلى بكسل."
type: docs
weight: 20
url: /ar/java/convert-between-measurement-units/
timestamp: 2024-01-27-14-07-04
---

معظم خصائص الكائن المقدمة في Aspose.Words API التي تمثل بعض القياس، مثل العرض أو الارتفاع والهوامش والمسافات المختلفة، تقبل القيم بالنقاط، حيث يساوي 1 بوصة 72 نقطة. في بعض الأحيان لا يكون هذا مناسبا ويجب تحويل النقاط إلى وحدات أخرى.

Aspose.Words يوفر فئة [ConvertUtil](https://reference.aspose.com/words/java/com.aspose.words/convertutil/) التي توفر وظائف مساعد للتحويل بين وحدات القياس المختلفة. إنه يتيح تحويل البوصات والبكسل والمليمترات إلى نقاط، والنقاط إلى البوصات والبكسل، وتحويل وحدات البكسل من دقة إلى أخرى.يمكن إجراء تحويل وحدات البكسل إلى نقاط والعكس بالعكس بدقة 96 نقطة في البوصة (نقطة في البوصة) أو دقة نقطة في البوصة المحددة.

تعتبر فئة **ConvertUtil** مفيدة بشكل خاص عند تعيين خصائص صفحة مختلفة لأن البوصات، على سبيل المثال، هي وحدات قياس أكثر شيوعا من النقاط.

يوضح مثال التعليمات البرمجية التالية كيفية تحديد خصائص الصفحة بالبوصة:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ConvertBetweenMeasurementUnits-ConvertBetweenMeasurementUnits.java" >}}
