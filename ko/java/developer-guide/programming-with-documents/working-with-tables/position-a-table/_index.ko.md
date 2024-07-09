---
title: 테이블 위치 Java
second_title: Aspose.Words 제품정보 Java
articleTitle: 테이블 위치
linktitle: 테이블 위치
description: "테이블 위치 지정 Java· 테이블 정렬을 얻고 부동 테이블 위치를 설정 Java·"
type: docs
weight: 50
url: /ko/java/position-a-table/
---

부동 테이블과 인라인 테이블이 있습니다:

* 이름 **Inline 테이블** 텍스트와 같은 레이어에 배치하고 위의 테이블을 둘러싸고있는 텍스트의 흐름에 배치됩니다. 인라인 테이블은 항상 그 자리에 놓은 단락 사이 나타납니다.
* 이름 **공급 업체** 텍스트 위에 층을 깔고, 단락과 관련된 테이블의 위치는 테이블 앵커에 의해 결정됩니다. 이 때문에 문서의 부동 테이블의 위치는 수직 및 수평 위치 설정에 의해 영향을받습니다.

때로는 특정 방법으로 문서에 테이블을 배치해야합니다. 이 작업을 수행하려면 정렬 도구를 사용하고 테이블과 주변 텍스트 사이의 indents를 설정합니다.

이 문서에서, 우리는 어떤 옵션을 논의 할 것이다 Aspose.Words 위치 설정

## Inline 테이블 위치 지정

인라인 테이블의 위치를 설정할 수 있습니다. Aspose.Words API 그리고 [Alignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getAlignment) 호텔 위치 따라서 문서 페이지에 상대 테이블의 정렬을 조정할 수 있습니다.

다음 코드 예제는 인라인 테이블의 위치를 설정하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "inline-table-position.java" >}}

## 플로팅 테이블 정렬

테이블 텍스트 래핑이 설정되면 **Around**, 테이블의 수평 및 수직 정렬을 얻을 수 있습니다. [RelativeHorizontalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeHorizontalAlignment) · [RelativeVerticalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeVerticalAlignment) 이름 *

이름 * **다른 유형의 텍스트 래핑**, 인라인 테이블 정렬을 얻을 수 있습니다. **Alignment** 호텔 위치

다음 코드 예제는 테이블의 정렬을 얻는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "get-table-position.java" >}}

## 지금 연락

 부동 테이블의 위치는 다음과 같은 속성을 사용하여 결정됩니다

* 이름 [HorizontalAnchor](https://reference.aspose.com/words/java/com.aspose.words/table/#getHorizontalAnchor) - 부동 테이블의 수평 위치 계산을위한 객체
* 이름 [VerticalAnchor](https://reference.aspose.com/words/java/com.aspose.words/table/#getVerticalAnchor) – 부동 테이블의 수직 포지셔닝을 계산하는 개체
* 이름 [AbsoluteHorizontalDistance](https://reference.aspose.com/words/java/com.aspose.words/table/#getAbsoluteHorizontalDistance) – 절대 수평 부동 테이블 위치
* 이름 [AbsoluteVerticalDistance](https://reference.aspose.com/words/java/com.aspose.words/table/#getAbsoluteVerticalDistance) – 절대 수직 부동 테이블 위치
* 이름 [AllowOverlap](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowOverlap) – 다른 부동물 개체와 /disable overlap를 활성화 할 수있는 옵션
* 이름 [RelativeHorizontalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeHorizontalAlignment) – 부동 테이블 상대 수평 정렬.
* 이름 [RelativeVerticalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeVerticalAlignment) – 부동 테이블 상대 수직 정렬.

다음 코드 예제는 플로팅 테이블의 위치를 얻는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "get-floating-table-position.java" >}}

## 고정 테이블 위치

그냥 얻고, 당신은 같은 부동 테이블의 위치를 설정할 수 있습니다 Aspose.Words API·

정렬 및 수평 및 수직 거리가 결합 된 속성과 하나가 다른 재설정 할 수 있다는 것을 아는 것이 중요합니다. 예를 들어, 설정 **RelativeHorizontalAlignment** 재설정 **AbsoluteHorizontalDistance** 기본 값과 vice versa에. 같은 것은 true 수직 배열을 위해.

다음 코드 예제는 플로팅 테이블의 위치를 설정하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "floating-table-position.java" >}}

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "relative-horizontal-or-vertical-position.java" >}}

## 테이블과 서라운드 텍스 사이의 거리

Aspose.Words 또한 테이블과 주변 텍스트 사이의 거리를 찾을 수있는 기회를 제공합니다:

- - - [DistanceTop](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceTop) – 위의 거리의 값
- - - [DistanceBottom](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceBottom) – 인식의 거리의 값
- - - [DistanceRight](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceRight) – 오른쪽의 거리 값
- - - [DistanceLeft](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceLeft) – 왼쪽의 거리 값

다음 코드 예제는 테이블과 주변 텍스트 사이의 거리를 얻는 방법을 보여줍니다

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "distance-between-table-surrounding-text.java" >}}
