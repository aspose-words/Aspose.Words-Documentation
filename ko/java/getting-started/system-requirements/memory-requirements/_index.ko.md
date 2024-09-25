---
title: 메모리 요구 사항
second_title: Aspose.Words 제품정보 Java
articleTitle: 메모리 요구 사항
linktitle: 메모리 요구 사항
description: "얼마나 많은 메모리가 Aspose.Words 제품정보 Java 문서와 함께 일할 필요? 자주 묻는 질문"
type: docs
weight: 10
url: /ko/java/memory-requirements/
---

Aspose.Words 다양한 형식의 문서로 작업할 수 있는 다양한 기능을 제공합니다. 문서 파일의 최대 크기에 제한이 없다는 점에 중요합니다. Aspose.Words 프로세스 또는 렌더링 할 수 있습니다. 유일한 제한은 당신의 측에 유효한 렘 (memory)의 양입니다.

## 얼마나 많은 메모리 Aspose.Words 이름 *

(주) Aspose.Words 문서 크기보다 몇 번 더 많은 메모리를 필요로하여 메모리에 문서의 모델을 구축하십시오. 예를 들어, 문서 크기가 1MB인 경우 Aspose.Words RAM의 10-20 MB가 필요합니다. Document Object Model (주)DOM) 기억에. multiplier는 몇몇 체재가 다른 사람 보다는 더 조밀하기 때문에 체재에 달려 있습니다. 예를 들어, DOCX는 DOC 및 RTF보다 더 작고, DOC는 RTF보다 더 작습니다.

많은 메모리를 추정하는 정확한 방법이 없습니다. Aspose.Words 특정 문서 파일을 처리하는 동안 실제로 소비합니다. 당신은 알 수 있습니다 Java 클래스의 데이터를 저장, 각 클래스 인스턴스는 JVM의 일부 메모리를 사용합니다 (주)Java 가상 기계) 내부 목적. 그래서 어떤 단락 또는 포맷 된 텍스트 (하나의 문자로 구성)는 로딩 후 몇 가지 추가 메모리가 걸립니다. DOM· 또한, Java 쓰레기 수집기 엔진은 복잡한 알고리즘을 사용하여 메모리 수집을 수행하고 실제 메모리 소비를 결정하기가 어렵습니다.

## 메모리의 금액 계산 방법

두 문서를 고려하자:

1. DOCX "A" 문서 - 0.35 MB 크기 (2 천 페이지), 텍스트 만
2. DOCX "B" 문서 - 0.35 MB 크기 (단 1 페이지), PNG 이미지 내부

아시다시피, DOCX, ODT 등과 같은 많은 현대 형식이 단순 ZIP 아카이브입니다. 그래서, 우리는 다음과 같은 계산 알고리즘을 얻을:
1. 압축. 문서 "A"에는 20 MB 크기, 문서 "B"가 0.4 MB 크기가 있습니다
2. 명세 문서를 모델로 로딩 (구축) Document Object Model - - - DOM):
* 만들기 DOM 첫번째 문서의 "A"는 49 MB 크기를 요구합니다
* 만들기 DOM 두 번째 문서의 "B" 단지 2 MB 크기를 요구합니다.
3. 명세 이 문서를 PDF로 렌더링하기 위해 필요한 메모리를 측정합니다. 이 가동을 위해, Aspose.Words 요구 사항:
  * 문서 "A"의 294 MB
  * 7 MB 문서 "B"

그래서, 볼 수 있듯이, 입력 문서 크기에 선형 의존이 없습니다. 필요한 RAM 크기에 영향을 줄 수있는 많은 요인이 있습니다. 문서 형식, 복잡성 및 구조, 이미지 및 형식의 수 및 기타 많은 요인.

## Memory Multiplier를 정확하게 계산하는 방법

수천 개의 실제 문서와 Experiments는 일반적으로 보여줍니다. Aspose.Words 대용량 문서 크기보다 몇 번 더 많은 메모리를 필요로하여 문서 모델을 메모리에 구축하고 흐름 형식의 변환과 같은 간단한 작업을 수행 할 수 있습니다. mail merge, 파, 대체, 등. 때때로 우리는 2의 승자에 대해 이야기하고, 때로는 20.

렌더링과 같은 더 복잡한 작업 (설정 페이지 형식을 변환), 업데이 트 필드, 분할 페이지, 그리고 다른 사람, 일부 문서에로드 문서에 의해 할당 된 메모리보다 20 배 더 리소스가 필요합니다 Aspose.Words DOM·

당신의 프로파일링 결과가 가능한 메모리 문제를 나타냅니다. Aspose.Words, 자주 묻는 질문 [기술 지원](/words/ko/java/technical-support/) 그리고 모든 진단 정보를 포함합니다.

## 더 보기

* [이름 *](/words/ko/java/rendering/)
* [Mail Merge 및 보고](/words/java/mail-merge-and-reporting/)
* [현장 작업](/words/ko/java/working-with-fields/)