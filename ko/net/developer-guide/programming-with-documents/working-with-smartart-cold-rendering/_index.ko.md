---
title: C#에서 SmartArt 콜드 렌더링 작업
second_title: .NET용 Aspose.Words
articleTitle: SmartArt 콜드 렌더링 작업
linktitle: SmartArt 콜드 렌더링 작업
description: "C#를 사용한 SmartArt 도형 소개"
type: docs
description: ".NET용 Aspose.Words는 SmartArt 콜드 렌더링을 수행합니다. 즉, 사전 렌더링된 SmartArt 드로잉이 누락되거나 C#을 사용하여 올바르지 않은 경우 SmartArt 개체를 배치하고 렌더링합니다."
weight: 330
url: /ko/net/working-with-smartart-cold-rendering/
timestamp: 2024-01-27-14-07-04
---

SmartArt 그래픽은 정보의 시각적 표현을 빠르고 쉽게 만드는 데 사용됩니다. 상황에 가장 적합한 다양한 레이아웃 중에서 선택하기만 하면 됩니다. 이러한 사용 편의성으로 인해 SmartArt 그래픽은 어떤 목적으로든 매우 인기가 있습니다.

Microsoft Word는 `SmartArt` 객체와 함께 사전 렌더링된 도면을 생성하고 저장합니다. 대부분의 경우 사전 렌더링된 도면은 Aspose.Words로 잘 렌더링되므로 추가 작업이 필요하지 않습니다. 그러나 다른 응용 프로그램에서 문서를 저장한 경우 미리 렌더링된 SmartArt 그림이 누락되거나 정확하지 않을 수 있습니다. 이 경우 `SmartArt` 개체 자체는 Aspose.Words을 사용하여 레이아웃되고 렌더링되어야 합니다. 우리는 이 프로세스를 `SmartArt` 콜드 렌더링이라고 부릅니다.

## SmartArt 콜드 렌더링 사용

Aspose.Words를 사용하면 사전 렌더링된 도면을 사용하거나 콜드 렌더링을 수행할 수 있습니다

* 사전 렌더링된 도면을 사용할 수 있는 경우 Aspose.Words는 이를 사용하여 `SmartArt` 객체를 렌더링합니다.
* 사전 렌더링된 도면이 누락된 경우 Aspose.Words는 `SmartArt` 객체를 렌더링하기 위해 암시적으로 콜드 렌더링을 수행합니다.
* 사전 렌더링된 도면이 있지만 잘못된 경우 [UpdateSmartArtDrawing](https://reference.aspose.com/words/net/aspose.words.drawing/shape/updatesmartartdrawing/) 메서드를 호출하여 명시적으로 SmartArt 콜드 렌더링을 수행해야 합니다.

다음 코드 예제에서는 문서의 모든 다이어그램에 대한 그림을 업데이트하는 방법을 보여줍니다

**.NET**
{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-UpdateSmartArtDrawing.cs" >}}

## 표준 SmartArt 레이아웃 지원

현재는 제한된 수의 표준 Microsoft Word SmartArt 레이아웃만 지원됩니다. 또한 이러한 레이아웃 중 일부는 부분적으로 지원됩니다. 즉, 다이어그램의 중요한 노드와 모양이 렌더링되지만 Microsoft Word 및 Aspose.Words 다이어그램 레이아웃 간에는 차이가 있을 수 있습니다.

아래 표에는 완전히 지원되는 레이아웃과 부분적으로 지원되는 레이아웃이 나열되어 있습니다

|  SmartArt 레이아웃 Group |  완전히 지원되는 레이아웃 |  부분적으로 지원되는 레이아웃 |
|  ----------------------  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `List`  |  <ul><li>기본 차단 목록</li><li>교대로 육각형</li><li>세로 글머리 기호 목록</li><li>수직 상자 목록</li><li>가변 너비 목록</li><li>수평 글머리 기호 목록</li><li>Group 처리된 목록</li><li>수직 차단 목록</li><li>수직형 목록</li><li>수직 화살표 목록</li><li>사다리꼴 목록</li><li>테이블 목록</li><li>피라미드 목록</li><li>대상 목록</li></ul> |  <ul><li>줄이 그어진 목록</li><li>수직 브래킷 목록</li><li>탭 목록</li><li>누적 목록</li><li>수직 악센트 목록</li><li>수직 원형 목록</li></ul> |
|  `Process`  |  <ul><li>기본 프로세스</li><li>악센트 과정</li><li>연속 블록 프로세스</li><li>화살표 프로세스 증가</li><li>텍스트 수렴</li><li>기본 타임라인</li><li>기본 쉐브론 프로세스</li><li>쉐브론 액센트 프로세스</li><li>폐쇄형 쉐브론 프로세스</li><li>쉐브론 목록</li><li>수직 프로세스</li><li>시차를 두는 프로세스</li><li>프로세스 목록</li><li>기본 굽힘 공정</li><li>굽힘 과정을 반복</li><li>세부 프로세스</li><li>위쪽 화살표</li><li>하강 과정</li><li>원형 굽힘 공정</li></ul> |  <ul><li>스텝업 프로세스</li><li>단계적 프로세스</li><li>교류 흐름</li><li>원 증가 과정</li><li>파이 프로세스</li><li>상호 연결된 블록 프로세스</li><li>프로세스 화살표</li><li>서클 액센트 타임라인</li><li>서클 프로세스</li><li>하위 단계 프로세스</li><li>단계별 프로세스</li><li>결과 프로세스에 무작위</li><li>원형 화살표 프로세스</li></ul> |
|  `Cycle`  |  –                                                             |  <ul><li>분할된 주기</li><li>육각형 방사형</li></ul> |
|  `Hierarchy`  |  –                                                             |  <ul><li>테이블 계층</li><li>아키텍처 레이아웃</li></ul> |
|  `Relationship`  |  <ul><li>균형</li><li>깔때기</li><li>기어</li><li>플러스와 마이너스</li><li>화살 리본</li><li>평형화살</li><li>반대 화살표</li><li>중첩된 대상</li><li>기본대상</li><li>기본 파이</li><li>기본 벤</li><li>쌓인 벤</li><li>상호 연결된 링</li></ul> |  <ul><li>서클 관계</li><li>반대 아이디어</li><li>방정식</li><li>수직 방정식</li><li>선형 벤</li></ul> |
|  `Matrix`  |  <ul><li>기본 매트릭스</li><li>제목이 붙은 매트릭스</li><li>그리드 매트릭스</li><li>사이클 매트릭스</li></ul> |  –                                                             |
|  `Pyramid`  |  –                                                             |  <ul><li>분할된 피라미드</li></ul> |

## Aspose.Words 및 Microsoft의 SmartArt 렌더링 비교

아래 표는 Microsoft Word 출력과 비교하여 일부 표준 레이아웃의 Aspose.Words 콜드 렌더링 예시 그림을 보여줍니다

|                                 |   **Aspose.Words**                                              |   **Microsoft Word**                                            |
|  -----------------------------  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|   **Basic Process**              |  <img src="/words/net/working-with-smartart-cold-rendering/basic-process-aspose.png" alt="basic_process_aspose"/> |  <img src="/words/net/working-with-smartart-cold-rendering/basic-process-word.png" alt="basic_process_word"/> |
|   **Circular Bending Process**   |  <img src="/words/net/working-with-smartart-cold-rendering/circular-bending-process-aspose.png" alt="Circular_bending_process_aspose"/> |  <img src="/words/net/working-with-smartart-cold-rendering/circular-bending-process-word.png" alt="Circular_bending_process_word"/> |
|   **Repeating Bending Process**  |  <img src="/words/net/working-with-smartart-cold-rendering/repearing-bending-process-aspose.png" alt="repearing_bending_process_aspose"/> |  <img src="/words/net/working-with-smartart-cold-rendering/repearing-bending-process-word.png" alt="repearing_bending_process_word"/> |
|   **Trapezoid List**             |  <img src="/words/net/working-with-smartart-cold-rendering/trapezoid-list-aspose.png" alt="사다리꼴_목록_aspose"/> |  <img src="/words/net/working-with-smartart-cold-rendering/trapezoid-list-word.png" alt="사다리꼴_목록_단어"/> |
