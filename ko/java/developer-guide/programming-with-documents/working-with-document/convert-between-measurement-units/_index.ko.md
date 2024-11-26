---
title: Java의 측정 단위 간 변환
second_title: Aspose.WordsJava
articleTitle: 측정 단위 간 변환
linktitle: 측정 단위 간 변환
description: "Aspose.WordsJava의 경우 측정 단위(예:인치에서 포인트로,포인트에서 인치로,픽셀에서 포인트로,포인트에서 픽셀로)간에 변환하는 방법에 도움이 될 수 있습니다."
type: docs
weight: 20
url: /ko/java/convert-between-measurement-units/
timestamp: 2024-01-27-14-07-04
---

너비 또는 높이,여백 및 다양한 거리와 같은 일부 측정을 나타내는Aspose.WordsAPI에 제공된 대부분의 개체 속성은 1 인치가 72 점과 같은 점 값을 허용합니다. 때때로 이것은 편리하지 않으며 포인트를 다른 단위로 변환해야합니다.

Aspose.Words는 다양한 측정 단위 간의 변환을 위한 도우미 함수를 제공하는[ConvertUtil](https://reference.aspose.com/words/java/com.aspose.words/convertutil/)클래스를 제공합니다. 인치,픽셀 및 밀리미터를 포인트로,포인트를 인치와 픽셀로 변환하고 픽셀을 한 해상도에서 다른 해상도로 변환 할 수 있습니다.픽셀을 포인트로 또는 그 반대로 변환하는 것은 96 인치 당 점(인치 당 점)해상도 또는 지정된 인치 당 점 해상도에서 수행 할 수 있습니다.

**ConvertUtil**클래스는 예를 들어 인치가 포인트보다 더 일반적인 측정 단위이기 때문에 다양한 페이지 속성을 설정할 때 특히 유용합니다.

다음 코드 예제에서는 페이지 속성을 인치 단위로 지정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ConvertBetweenMeasurementUnits-ConvertBetweenMeasurementUnits.java" >}}
