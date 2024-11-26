---
title: Python의 테이블 위치
second_title: Python용 Aspose.Words
articleTitle: 테이블 배치
linktitle: 테이블 배치
description: "Python에서 테이블 위치를 지정합니다. 테이블 정렬을 가져오고 Python를 사용하여 부동 테이블 위치를 가져오고 설정합니다."
type: docs
weight: 50
url: /ko/python-net/position-a-table/
timestamp: 2024-01-27-14-07-04
---

플로팅 테이블과 인라인 테이블이 있습니다

* **인라인 테이블**는 텍스트와 동일한 레이어에 배치되며, 위와 아래의 표만 둘러싸는 텍스트 흐름으로 배치됩니다. 인라인 표는 배치한 단락 사이에 항상 표시됩니다.
* **플로팅 테이블**는 텍스트 위에 겹쳐져 있으며 단락을 기준으로 한 표의 위치는 표 앵커에 의해 결정됩니다. 이로 인해 문서에서 부동 표의 위치는 세로 및 가로 위치 지정 설정의 영향을 받습니다.

문서에서 특정 방식으로 표를 배치해야 하는 경우가 있습니다. 이렇게 하려면 정렬 도구를 사용하여 표와 주변 텍스트 사이에 들여쓰기를 설정해야 합니다.

이 기사에서는 Aspose.Words가 포지셔닝을 위해 제공하는 옵션에 대해 설명합니다.

## 인라인 테이블 위치 지정

Aspose.Words API 및 [Alignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/alignment/) 속성을 사용하여 인라인 테이블의 위치를 설정할 수 있습니다. 따라서 문서 페이지를 기준으로 테이블 정렬을 조정할 수 있습니다.

다음 코드 예제에서는 인라인 테이블의 위치를 설정하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "inline-table-position.py" >}}

## 부동 테이블 정렬 가져오기

테이블 텍스트 줄바꿈이 **Around**로 설정된 경우 [RelativeHorizontalAlignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/relative_horizontal_alignment/) 및 [RelativeVerticalAlignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/relative_vertical_alignment/) 속성을 사용하여 테이블의 가로 및 세로 정렬을 가져올 수 있습니다.

**다른 유형의 텍스트 배치**를 사용하면 [Alignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/alignment/) 속성을 사용하여 인라인 테이블 정렬을 얻을 수 있습니다.

다음 코드 예제에서는 테이블 정렬을 가져오는 방법을 보여줍니다

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "get-table-position.py" >}}

## 부동 테이블 위치 가져오기

 부동 테이블의 위치는 다음 속성을 사용하여 결정됩니다

* [HorizontalAnchor](https://reference.aspose.com/words/python-net/aspose.words.tables/table/horizontal_anchor/) – 플로팅 테이블의 수평 위치 계산을 위한 객체
* [VerticalAnchor](https://reference.aspose.com/words/python-net/aspose.words.tables/table/vertical_anchor/) – 플로팅 테이블의 수직 위치 계산을 위한 객체
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/python-net/aspose.words.tables/table/absolute_horizontal_distance/) – 절대 수평 부동 테이블 위치
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/python-net/aspose.words.tables/table/absolute_vertical_distance/) – 절대 수직 부동 테이블 위치
* [AllowOverlap](https://reference.aspose.com/words/python-net/aspose.words.tables/table/allow_overlap/) – 다른 플로팅 개체와의 오버랩을 활성화/비활성화하는 옵션
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/relative_horizontal_alignment/) – 부동 테이블 상대 수평 정렬.
* [RelativeVerticalAlignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/relative_vertical_alignment/) – 부동 테이블 상대 수직 정렬.

다음 코드 예제에서는 부동 테이블의 위치를 가져오는 방법을 보여줍니다

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "get-floating-table-position.py" >}}

## 부동 테이블 위치 설정

가져오기와 마찬가지로 동일한 Aspose.Words API를 사용하여 플로팅 테이블의 위치를 설정할 수 있습니다.

정렬과 수평 및 수직 거리는 결합된 속성이며 다른 속성을 재설정할 수 있다는 점을 아는 것이 중요합니다. 예를 들어 **RelativeHorizontalAlignment**를 설정하면 **AbsoluteHorizontalDistance**가 기본값으로 재설정되고 그 반대의 경우도 마찬가지입니다. 세로 배열의 true도 마찬가지입니다.

다음 코드 예제에서는 부동 테이블의 위치를 설정하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "floating-table-position.py" >}}

## 표와 주변 텍스트 사이의 거리 얻기

Aspose.Words는 또한 테이블과 주변 텍스트 사이의 거리를 알아낼 수 있는 기회를 제공합니다

- [DistanceTop](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_top/) – 위에서의 거리 값
- [DistanceBottom](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_bottom/) – 인식 거리의 가치
- [DistanceRight](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_right/) – 오른쪽의 거리 값
- [DistanceLeft](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_left/) – 왼쪽의 거리 값

다음 코드 예제에서는 테이블과 주변 텍스트 사이의 거리를 확인하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "distance-between-table-surrounding-text.py" >}}
