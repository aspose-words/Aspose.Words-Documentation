---
title: Java의 테이블 위치
second_title: Aspose.WordsJava
articleTitle: 테이블 위치 지정
linktitle: 테이블 위치 지정
description: "Java에서 테이블 위치를 지정합니다. 테이블 정렬을 가져오고Java을 사용하여 부동 테이블 위치를 가져오고 설정합니다."
type: docs
weight: 50
url: /ko/java/position-a-table/
timestamp: 2024-01-27-14-07-04
---

부동 테이블과 인라인 테이블이 있습니다:

* **Inline tables**은 텍스트와 동일한 레이어에 배치되며 위와 아래의 표만 둘러싸는 텍스트 흐름에 배치됩니다. 인라인 테이블은 항상 당신이 그들을 배치 단락 사이에 나타납니다.
* **Floating tables**은 텍스트 위에 계층화되어 있으며,단락에 대한 테이블의 위치는 테이블 앵커에 의해 결정됩니다. 이 때문에 문서에서 부동 테이블의 위치는 수직 및 수평 위치 설정의 영향을받습니다.

때때로 당신은 특정 방법으로 문서에 테이블을 배치해야합니다. 이렇게 하려면 정렬 도구를 사용하여 테이블과 주변 텍스트 사이의 들여쓰기를 설정해야 합니다.

이 기사에서는Aspose.Words이 포지셔닝을 위해 제공하는 옵션에 대해 설명합니다.

## 인라인 테이블 위치 지정

Aspose.WordsAPI및[Alignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getAlignment)속성을 사용하여 인라인 테이블의 위치를 설정할 수 있습니다. 따라서 문서 페이지를 기준으로 테이블의 정렬을 조정할 수 있습니다.

다음 코드 예제에서는 인라인 테이블의 위치를 설정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "inline-table-position.java" >}}

## 플로팅 테이블 정렬 가져오기

테이블 텍스트 줄 바꿈이**Around**로 설정된 경우[RelativeHorizontalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeHorizontalAlignment)및[RelativeVerticalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeVerticalAlignment)속성을 사용하여 테이블의 가로 및 세로 정렬을 가져올 수 있습니다.

**other types of text wrapping**을 사용하면**Alignment**속성을 사용하여 인라인 테이블 정렬을 얻을 수 있습니다.

다음 코드 예제에서는 테이블의 정렬을 가져오는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "get-table-position.java" >}}

## 플로팅 테이블 위치 얻기

 부동 테이블의 위치는 다음 속성을 사용하여 결정됩니다:

* [HorizontalAnchor](https://reference.aspose.com/words/java/com.aspose.words/table/#getHorizontalAnchor)-부동 테이블의 수평 위치를 계산하는 객체
* [VerticalAnchor](https://reference.aspose.com/words/java/com.aspose.words/table/#getVerticalAnchor)-부동 테이블의 수직 위치를 계산하는 객체
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/java/com.aspose.words/table/#getAbsoluteHorizontalDistance)–절대 수평 부동 테이블 위치
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/java/com.aspose.words/table/#getAbsoluteVerticalDistance)-절대 수직 부동 테이블 위치
* [AllowOverlap](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowOverlap)-다른 부동 개체와 중복을 활성화/비활성화하는 옵션
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeHorizontalAlignment)-부동 테이블 상대 수평 정렬.
* [RelativeVerticalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeVerticalAlignment)-부동 테이블 상대 수직 정렬.

다음 코드 예제에서는 부동 테이블의 위치를 가져오는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "get-floating-table-position.java" >}}

## 플로팅 테이블 위치 설정

얻는 것과 마찬가지로 동일한Aspose.WordsAPI을 사용하여 부동 테이블의 위치를 설정할 수 있습니다.

정렬 및 수평 및 수직 거리가 결합 된 속성이며 하나는 다른 하나를 재설정 할 수 있음을 아는 것이 중요합니다. 예를 들어**RelativeHorizontalAlignment**을 설정하면**AbsoluteHorizontalDistance**이 기본값으로 재설정되고 그 반대의 경우도 마찬가지입니다. 수직 배열도 마찬가지입니다.

다음 코드 예제에서는 부동 테이블의 위치를 설정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "floating-table-position.java" >}}

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "relative-horizontal-or-vertical-position.java" >}}

## 표와 주변 텍스트 사이의 거리 얻기

Aspose.Words또한 테이블과 주변 텍스트 사이의 거리를 찾을 수있는 기회를 제공합니다:

- [DistanceTop](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceTop)-위의 거리 값
- [DistanceBottom](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceBottom)–지각 거리의 값
- [DistanceRight](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceRight)–오른쪽 거리 값
- [DistanceLeft](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceLeft)–왼쪽의 거리 값

다음 코드 예제에서는 테이블과 주변 텍스트 사이의 거리를 구하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "distance-between-table-surrounding-text.java" >}}
