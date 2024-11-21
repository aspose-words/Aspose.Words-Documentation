---
title: 함께 작업 SmartArt 콜드 렌더링 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 함께 작업 SmartArt 콜드 렌더링
linktitle: 함께 작업 SmartArt 콜드 렌더링
type: docs
description: "Aspose.Words 에 대한 C++ 수행 SmartArt 콜드 렌더링,즉 그것을 배치하고 렌더링합니다 SmartArt 사전 렌더링 된 경우 개체 SmartArt 도면이 없거나 잘못되었습니다."
weight: 330
url: /ko/cpp/working-with-smartart-cold-rendering/
timestamp: 2024-01-27-14-07-04
---

SmartArt 그래픽은 빠르고 쉽게 정보의 시각적 표현을 만드는 데 사용됩니다. 당신은 단순히 가장 상황에 맞는 레이아웃의 큰 숫자에서 선택합니다. 이 사용 편의성은 SmartArt 어떤 목적을 위해 꽤 인기있는 그래픽.

Microsoft Word 미리 렌더링된 도면을 생성하고 저장합니다. `SmartArt` 객체 대부분의 경우,미리 렌더링된 그림은 Aspose.Words 그리고 추가 조치가 필요하지 않습니다. 그러나 문서가 다른 응용 프로그램에 의해 저장되면 사전 렌더링 된 SmartArt 도면이 없거나 잘못되었을 수 있습니다. 이 경우, `SmartArt` 객체 자체는 다음을 사용하여 배치하고 렌더링해야합니다 Aspose.Words. 우리는 이 과정을 `SmartArt` 콜드 렌더링.

## 사용 SmartArt 콜드 렌더링

Aspose.Words 미리 렌더링된 도면을 사용하거나 콜드 렌더링을 수행할 수 있습니다:

* 미리 렌더링된 도면을 사용할 수 있는 경우, Aspose.Words 그것을 사용하여 `SmartArt` 객체
* 사전 렌더링 된 도면이 누락 된 경우, Aspose.Words 암시적으로 콜드 렌더링을 수행하여 `SmartArt` 객체
* 미리 렌더링된 도면이 있지만 잘못된 경우 다음을 수행해야 합니다 SmartArt 호출하여 명시 적으로 콜드 렌더링 [UpdateSmartArtDrawing](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/updatesmartartdrawing/) 방법

다음 코드 예제에서는 문서의 모든 다이어그램에 대한 도면을 업데이트하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-UpdateSmartArtDrawing.cpp" >}}

## 표준 지원 SmartArt 레이아웃

현재 제한된 수의 표준 Microsoft Word SmartArt 레이아웃이 지원됩니다. 또한 이러한 레이아웃 중 일부는 부분적으로 지원되므로 다이어그램의 중요한 노드와 모양이 렌더링되지만 다음과 같은 경우에 차이가 있을 수 있습니다 Microsoft Word 그리고 Aspose.Words 다이어그램 레이아웃.

아래 표에는 완전히 지원되는 레이아웃과 부분적으로 지원되는 레이아웃이 나열되어 있습니다:

| SmartArt 레이아웃 그룹 | 완벽하게 지원되는 레이아웃 | 부분적으로 지원되는 레이아웃 |
| ---------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `List` | <ul><li>기본 차단 목록</li><li>교대 육각형</li><li>수직 글머리 기호 목록</li><li>수직 상자 목록</li><li>다양한 폭 명부</li><li>수평 글머리 기호 목록</li><li>그룹화 된 목록</li><li>수직 차단 목록</li><li>수직 쉐브론 목록</li><li>세로 화살표 목록</li><li>사다리꼴 목록</li><li>표 목록</li><li>피라미드 목록</li><li>대상 목록</li></ul> | <ul><li>줄 지어 목록</li><li>수직 브래킷 목록</li><li>탭 목록</li><li>누적 목록</li><li>세로 악센트 목록</li><li>수직 원 목록</li></ul> |
| `Process` | <ul><li>기본 프로세스</li><li>악센트 과정</li><li>연속 블록 프로세스</li><li>화살표 프로세스 증가</li><li>수렴 텍스트</li><li>기본 시간표</li><li>기본 쉐브론 프로세스</li><li>쉐브론 억양 과정</li><li>닫힌 쉐브론 프로세스</li><li>쉐브론 목록</li><li>수직 공정</li><li>엇갈린 과정</li><li>프로세스 목록</li><li>기본적인 구부리는 과정</li><li>반복 굽힘 공정</li><li>자세한 프로세스</li><li>위쪽 화살표</li><li>내림차순 프로세스</li><li>원형 굽힘 공정</li></ul> | <ul><li>스텝 업 프로세스</li><li>스텝 다운 프로세스</li><li>교류 교류</li><li>서클 프로세스 증가</li><li>파이 프로세스</li><li>상호 연결된 블록 프로세스</li><li>프로세스 화살표</li><li>원 악센트 타임 라인</li><li>서클 프로세스</li><li>하위 단계 프로세스</li><li>단계적 프로세스</li><li>결과 프로세스에 무작위</li><li>원 화살표 프로세스</li></ul> |
| `Cycle` |  | <ul><li>세그먼트 사이클</li><li>육각형 방사형</li></ul> |
| `Hierarchy` |  | <ul><li>테이블 계층 구조</li><li>아키텍처 레이아웃</li></ul> |
| `Relationship` | <ul><li>균형</li><li>깔때기</li><li>기어</li><li>플러스와 마이너스</li><li>화살표 리본</li><li>카운터 밸런스 화살표</li><li>반대 화살표</li><li>중첩 대상</li><li>기본 목표</li><li>기본 파이</li><li>기본 벤</li><li>스택드 벤</li><li>상호 연결된 링</li></ul> | <ul><li>서클 관계</li><li>반대되는 아이디어</li><li>방정식</li><li>수직 방정식</li><li>선형 벤</li></ul> |
| `Matrix` | <ul><li>기본 매트릭스</li><li>제목 매트릭스</li><li>그리드 매트릭스</li><li>사이클 매트릭스</li></ul> |  |
| `Pyramid` |  | <ul><li>세그먼트 피라미드</li></ul> |

## 비교 SmartArt 렌더링 Aspose.Words 그리고 Microsoft

아래 표는 Aspose.Words 에 비해 일부 표준 레이아웃의 콜드 렌더링 Microsoft Word 출력:

|  | **Aspose.Words** | **Microsoft Word** |
| ----------------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Basic Process** | <img src="basic-process-aspose.png" alt="basic_process_aspose"/> | <img src="basic-process-word.png" alt="basic_process_word"/> |
| **Circular Bending Process** | <img src="circular-bending-process-aspose.png" alt="circular_bending_process_aspose"/> | <img src="circular-bending-process-word.png" alt="circular_bending_process_word"/> |
| **Repeating Bending Process** | <img src="repearing-bending-process-aspose.png" alt="repearing_bending_process_aspose"/> | <img src="repearing-bending-process-word.png" alt="repearing_bending_process_word"/> |
| **Trapezoid List** | <img src="trapezoid-list-aspose.png" alt="trapezoid_list_aspose"/> | <img src="trapezoid-list-word.png" alt="trapezoid_list_word"/> |
