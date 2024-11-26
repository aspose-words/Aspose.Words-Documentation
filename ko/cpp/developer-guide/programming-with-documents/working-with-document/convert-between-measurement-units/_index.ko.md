---
title: 에서 측정 단위 사이의 변환 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 측정 단위 간 변환
linktitle: 측정 단위 간 변환
description: "Aspose.Words 에 대한 C++ 예를 들어 인치에서 포인트로,포인트에서 인치로,픽셀에서 포인트로,포인트에서 픽셀로 측정 단위 사이를 변환하는 방법을 도울 수 있습니다."
type: docs
weight: 20
url: /ko/cpp/convert-between-measurement-units/
timestamp: 2024-01-27-14-07-04
---

에 제공된 대부분의 개체 속성 Aspose.Words API 너비 또는 높이,여백 및 다양한 거리와 같은 일부 측정을 나타내는 값은 점의 값을 수용합니다. 1 인치는 72 포인트와 같습니다. 때때로 이것은 편리하지 않으며 포인트를 다른 단위로 변환해야합니다.

Aspose.Words 제공 [ConvertUtil](https://reference.aspose.com/words/cpp/class/aspose.words.convert_util) 다양한 측정 단위 간의 변환을 위한 도우미 함수를 제공하는 클래스입니다. 인치,픽셀 및 밀리미터를 포인트로,포인트를 인치와 픽셀로 변환하고 픽셀을 한 해상도에서 다른 해상도로 변환 할 수 있습니다.픽셀을 포인트로 또는 그 반대로 변환하는 것은 96 인치 당 점(인치 당 점)해상도 또는 지정된 인치 당 점 해상도에서 수행 할 수 있습니다.

그 **ConvertUtil** 클래스는 예를 들어 인치가 포인트보다 더 일반적인 측정 단위이기 때문에 다양한 페이지 속성을 설정할 때 특히 유용합니다.

다음 코드 예제에서는 페이지 속성을 인치 단위로 지정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-ConvertUtil-UtilityClasses-ConvertBetweenMeasurementUnits.cpp" >}}

