---
title: C#의 측정 단위 간 변환
second_title: .NET용 Aspose.Words
articleTitle: 측정 단위 간 변환
linktitle: 측정 단위 간 변환
description: ".NET용 Aspose.Words는 C#을 사용하여 측정 단위(예: 인치에서 포인트로, 포인트에서 인치로, 픽셀에서 포인트로, 포인트에서 픽셀로)를 변환하는 방법에 도움을 줄 수 있습니다."
type: docs
weight: 20
url: /ko/net/convert-between-measurement-units/
timestamp: 2024-01-27-14-07-04
---

너비나 높이, 여백, 다양한 거리 등 일부 측정값을 나타내는 Aspose.Words API에서 제공되는 대부분의 개체 속성은 포인트 값을 허용합니다. 여기서 1인치는 72포인트와 같습니다. 때로는 이것이 편리하지 않아 포인트를 다른 단위로 변환해야 합니다.

Aspose.Words는 다양한 측정 단위 간 변환을 위한 도우미 기능을 제공하는 [ConvertUtil](https://reference.aspose.com/words/net/aspose.words/convertutil/) 클래스를 제공합니다. 다음을 변환할 수 있습니다

- 인치, 픽셀, 밀리미터를 포인트로
- 인치와 픽셀을 가리킵니다
- 한 해상도에서 다른 해상도로의 픽셀

픽셀을 포인트로 또는 그 반대로 변환하는 작업은 96dpi(인치당 도트 수) 해상도 또는 지정된 dpi 해상도에서 수행할 수 있습니다.

**ConvertUtil** 클래스는 다양한 페이지 속성을 설정할 때 특히 유용합니다. 예를 들어 인치는 포인트보다 더 일반적인 측정 단위이기 때문입니다.

다음 코드 예제에서는 페이지 속성을 인치 단위로 지정하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-ConvertUtil-UtilityClasses-ConvertBetweenMeasurementUnits.cs" >}}
