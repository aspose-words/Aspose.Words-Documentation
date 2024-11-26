---
title: 테이블 위치 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 테이블 위치 지정
linktitle: 테이블 위치 지정
description: "테이블 위치 지정 C++. 테이블 정렬 가져오기,다음을 사용하여 부동 테이블 위치 가져오기 및 설정 C++."
type: docs
weight: 50
url: /ko/cpp/position-a-table/
timestamp: 2024-01-27-14-07-04
---

부동 테이블과 인라인 테이블이 있습니다:

* **Inline tables** 텍스트와 같은 레이어에 배치되며 위와 아래의 표만 둘러싸고 있는 텍스트 흐름에 배치됩니다. 인라인 테이블은 항상 당신이 그들을 배치 단락 사이에 나타납니다.
* **Floating tables** 텍스트 위에 층을 이루고,단락에 대한 테이블의 위치는 테이블 앵커에 의해 결정됩니다. 이 때문에 문서에서 부동 테이블의 위치는 수직 및 수평 위치 설정의 영향을받습니다.

때때로 당신은 특정 방법으로 문서에 테이블을 배치해야합니다. 이렇게 하려면 정렬 도구를 사용하여 테이블과 주변 텍스트 사이의 들여쓰기를 설정해야 합니다.

이 기사에서는 어떤 옵션에 대해 논의 할 것입니다 Aspose.Words 포지셔닝을 제공합니다.

## 인라인 테이블 위치 지정

다음을 사용하여 인라인 테이블의 위치를 설정할 수 있습니다 Aspose.Words API 그리고 [Alignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_alignment/) 재산. 따라서 문서 페이지를 기준으로 테이블의 정렬을 조정할 수 있습니다.

다음 코드 예제에서는 인라인 테이블의 위치를 설정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "inline-table-position.h" >}}

## 플로팅 테이블 정렬 가져오기

테이블 텍스트 줄 바꿈이 로 설정된 경우 **Around**,당신은 사용하여 테이블의 수평 및 수직 정렬을 얻을 수 있습니다 [RelativeHorizontalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativehorizontalalignment/) 그리고 [RelativeVerticalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativeverticalalignment/) 속성.

함께 **other types of text wrapping**,다음을 사용하여 인라인 테이블 정렬을 얻을 수 있습니다 [Alignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_alignment/) 재산.

다음 코드 예제에서는 테이블의 정렬을 가져오는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "get-table-position.h" >}}

## 플로팅 테이블 위치 얻기

 부동 테이블의 위치는 다음 속성을 사용하여 결정됩니다:

* [HorizontalAnchor](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_horizontalanchor/) -부동 테이블의 수평 위치를 계산하는 객체
* [VerticalAnchor](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_verticalanchor/) -부동 테이블의 수직 위치를 계산하는 객체
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_absolutehorizontaldistance/) -절대 수평 부동 테이블 위치
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_absoluteverticaldistance/) -절대 수직 플로팅 테이블 위치
* [AllowOverlap](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowoverlap/) -다른 부동 개체와 중복을 활성화/비활성화하는 옵션
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativehorizontalalignment/) -부동 테이블 상대 수평 정렬.
* [RelativeVerticalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativeverticalalignment/) -부동 테이블 상대 수직 정렬.

다음 코드 예제에서는 부동 테이블의 위치를 가져오는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "get-floating-table-position.h" >}}

## 플로팅 테이블 위치 설정

그냥 점점 같은,당신은 동일을 사용하여 부동 테이블의 위치를 설정할 수 있습니다 Aspose.Words API.

정렬 및 수평 및 수직 거리가 결합 된 속성이며 하나는 다른 하나를 재설정 할 수 있음을 아는 것이 중요합니다. 예를 들어,설정 **RelativeHorizontalAlignment** 다시 놓을 것입니다 **AbsoluteHorizontalDistance** 기본값으로 그리고 그 반대의 경우도 마찬가지입니다. 수직 배열도 마찬가지입니다.

다음 코드 예제에서는 부동 테이블의 위치를 설정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "floating-table-position.h" >}}

## 표와 주변 텍스트 사이의 거리 얻기

Aspose.Words 또한 테이블과 주변 텍스트 사이의 거리를 찾을 수있는 기회를 제공합니다:

- [DistanceTop](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distancetop/) -위의 거리 값
- [DistanceBottom](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distancebottom/) -지각 거리의 가치
- [DistanceRight](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distanceright/) -오른쪽 거리 값
- [DistanceLeft](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distanceleft/) -왼쪽의 거리 값

다음 코드 예제에서는 테이블과 주변 텍스트 사이의 거리를 구하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "distance-between-table-surrounding-text.h" >}}
