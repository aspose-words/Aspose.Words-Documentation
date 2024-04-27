---
title: Smart로 일하기 예술 콜드 렌더링 Java
second_title: Aspose.Words 제품정보 Java
articleTitle: Smart로 일하기 예술 찬 연출
linktitle: Smart로 일하기 예술 찬 연출
type: docs
description: "Aspose.Words 제품정보 Java Smart 수행 Art Cold Rendering은 SmartArt 도면이 누락되거나 잘못된 경우 SmartArt 개체를 제거하고 렌더링한다는 것을 의미합니다."
weight: 330
url: /ko/java/working-with-smartart-cold-rendering/
---

SmartArt 그래픽은 빠르고 쉽게 정보를 표현하는 데 사용됩니다. 당신은 단순히 당신의 상황에 맞는 많은 레이아웃에서 선택합니다. 이 사용의 용이는 SmartArt 그래픽을 일부 목적으로 매우 인기가 있습니다.

Microsoft Word 생성 및 저장 사전 렌더링 그림과 함께 `SmartArt` 이름 * 대부분의 경우, 사전 렌더링 된 그림은 잘 렌더링됩니다. Aspose.Words 그리고 추가 작업이 필요하지 않습니다. 그러나 문서가 다른 응용 프로그램에 의해 저장되면, 사전 렌더링 된 SmartArt 그림은 누락되거나 잘못 될 수 있습니다. 이 경우, `SmartArt` 객체 자체가 놓치고 렌더링되어야 합니다. Aspose.Words· 우리는이 과정을 호출 `SmartArt` 찬 연출.

## Smart 사용 예술 찬 연출

Aspose.Words 사전 렌더링 된 도면을 사용하거나 감기 렌더링을 수행 할 수 있습니다:

* 이름 사전 렌더링 된 그림이 사용할 수 있다면, Aspose.Words 그것을 사용하여 렌더링 `SmartArt` 이름 *
* 이름 사전 렌더링 된 그림이 누락되면, Aspose.Words implicitly performs 찬 연출 에 렌더링 `SmartArt` 이름 *
* 이름 사전 렌더링 된 그림이 존재하지만 잘못된 경우, 호출하여 SmartArt 감기 렌더링을 명시적으로 수행해야합니다 [UpdateSmartArtDrawing](https://reference.aspose.com/words/java/com.aspose.words/shape/#updateSmartArtDrawing) 방법.

다음 코드 예제는 문서의 모든 다이어그램에 대한 도면을 업데이트하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-UpdateSmartArtDrawing.java" >}}

## 표준 SmartArt 레이아웃 지원

현재 표준의 제한된 수만 Microsoft Word SmartArt 레이아웃이 지원됩니다. 또한, 이러한 레이아웃의 일부는 부분적으로 지원되지만, 다이어그램의 중요한 노드와 모양이 렌더링되는 것을 의미하지만, 차이점이 있을 수 있습니다. Microsoft Word · Aspose.Words 도표 배치.

아래 표는 완전하고 부분적으로 지원된 레이아웃을 나열합니다

|  제품정보 예술 배치 Group |  완전히 지원된 배치 |  부분적으로 지원되는 배치 |
|  ----------------------  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `List`  |  <ul><li>기본 블록 목록</li><li>공급 업체</li><li>수직 탄알 목록</li><li>수직 상자 명부</li><li>Varying 폭 명부</li><li>수평한 탄알 명부</li><li>Grouped 목록</li><li>수직 구획 명부</li><li>수직 Chevron 명부</li><li>수직 화살표 목록</li><li>Trapezoid 목록</li><li>표 목록</li><li>피라미드</li><li>대상 목록</li></ul> |  <ul><li>연락처</li><li>수직 부류 명부</li><li>탭 목록</li><li>작업 목록</li><li>수직 악센트 목록</li><li>수직 원형 명부</li></ul> |
|  `Process`  |  <ul><li>기본공정</li><li>Accent 과정</li><li>연속 블록 공정</li><li>Arrow 프로세스를 증가</li><li>연락처</li><li>기본 시간표</li><li>기초 Chevron 과정</li><li>Chevron 악센트 과정</li><li>닫히는 Chevron 과정</li><li>Chevron 목록</li><li>수직 공정</li><li>Staggered 과정</li><li>프로세스 목록</li><li>기초 구부리는 과정</li><li>구부리는 과정 반복</li><li>연락처</li><li>관련 기사</li><li>Descending 과정</li><li>연락처</li></ul> |  <ul><li>단계 과정</li><li>단계 아래로 과정</li><li>공급 업체</li><li>회사 소개</li><li>Pie 과정</li><li>연결 구획 과정</li><li>프로세스 화살표</li><li>원형 악센트 타임라인</li><li>원형공정</li><li>단계 과정</li><li>단계별 과정</li><li>무작위로 Result Process</li><li>원형 화살표 과정</li></ul> |
|  `Cycle`  |  –                                                             |  <ul><li>세그먼트 주기</li><li>육각형 레이디얼</li></ul> |
|  `Hierarchy`  |  –                                                             |  <ul><li>테이블 Hierarchy</li><li>건축 배치</li></ul> |
|  `Relationship`  |  <ul><li>(주)</li><li>팟캐스트</li><li>제품정보</li><li>더하기 및 Minus</li><li>회사 소개</li><li>카운터밸런스 화살표</li><li>관련 기사</li><li>연락처</li><li>기본 목표</li><li>기본 Pie</li><li>기본 Venn</li><li>공급 업체</li><li>연결 링</li></ul> |  <ul><li>서클 관계</li><li>반대 아이디어</li><li>관련 기사</li><li>수직 Equation</li><li>선형 Venn</li></ul> |
|  `Matrix`  |  <ul><li>기본 Matrix</li><li>제목 매트릭스</li><li>격자 모체</li><li>주기 모체</li></ul> |  –                                                             |
|  `Pyramid`  |  –                                                             |  <ul><li>연락처</li></ul> |

## SmartArt Rendering의 비교 Aspose.Words · Microsoft

아래 표는 예의 그림 Aspose.Words 냉각 장치 몇 가지 표준 레이아웃 렌더링 Microsoft Word 산출:

|                                 |   **Aspose.Words**                                              |   **Microsoft Word**                                            |
|  -----------------------------  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|   **Basic Process**              |   <img src="/words/java/working-with-smartart-cold-rendering/basic-process-aspose.png" alt="basic_process_aspose"/>  |   <img src="/words/java/working-with-smartart-cold-rendering/basic-process-word.png" alt="basic_process_word"/>  |
|   **Circular Bending Process**   |   <img src="/words/java/working-with-smartart-cold-rendering/circular-bending-process-aspose.png" alt="circular_bending_process_aspose"/>  |   <img src="/words/java/working-with-smartart-cold-rendering/circular-bending-process-word.png" alt="circular_bending_process_word"/>  |
|   **Repeating Bending Process**  |   <img src="/words/java/working-with-smartart-cold-rendering/repearing-bending-process-aspose.png" alt="repearing_bending_process_aspose"/>  |   <img src="/words/java/working-with-smartart-cold-rendering/repearing-bending-process-word.png" alt="repearing_bending_process_word"/>  |
|   **Trapezoid List**             |   <img src="/words/java/working-with-smartart-cold-rendering/trapezoid-list-aspose.png" alt="trapezoid_list_aspose"/>  |   <img src="/words/java/working-with-smartart-cold-rendering/trapezoid-list-word.png" alt="trapezoid_list_word"/>  |
