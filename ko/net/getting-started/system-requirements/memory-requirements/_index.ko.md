---
title: 메모리 요구 사항
second_title: .NET용 Aspose.Words
articleTitle: 메모리 요구 사항
linktitle: 메모리 요구 사항
description: "문서 작업을 위해 Aspose.Words for .NET에 얼마나 많은 메모리가 필요합니까? 세부 사항을 알아보세요."
type: docs
weight: 10
url: /ko/net/memory-requirements/
timestamp: 2024-09-25-11-08-55
---

Aspose.Words는 다양한 형식의 문서 작업에 필요한 다양한 기능을 제공합니다. Aspose.Words가 처리하거나 렌더링할 수 있는 문서 파일의 최대 크기에는 제한이 없다는 점에 유의하는 것이 중요합니다. 유일한 제한은 사용 가능한 RAM(메모리)의 양입니다.

## Aspose.Words에 필요한 메모리 양

일반적으로 Aspose.Words는 메모리에 문서의 모델을 구축하기 위해 문서 크기보다 몇 배 더 많은 메모리가 필요합니다. 예를 들어 문서 크기가 1MB인 경우 Aspose.Words는 메모리에 Document Object Model(DOM)을 작성하기 위해 10-20MB의 RAM이 필요합니다. 일부 형식은 다른 형식보다 더 컴팩트하므로 승수는 형식에 따라 달라집니다. 예를 들어 DOCX는 DOC 및 RTF보다 더 컴팩트하고 DOC는 RTF보다 더 컴팩트합니다.

특정 문서 파일을 처리하는 동안 Aspose.Words가 실제로 소비하는 메모리 양을 추정할 수 있는 정확한 방법은 없습니다. .NET가 클래스에 데이터를 저장한다는 것을 알고 있듯이 각 클래스 인스턴스는 CLR 내부 목적으로 일부 메모리를 사용합니다. 따라서 모든 단락이나 서식이 지정된 텍스트(한 문자로 구성되어 있어도)는 DOM로 로드한 후 추가 메모리를 차지합니다. 더욱이 .NET 가비지 수집기 엔진은 복잡한 알고리즘을 사용하여 메모리 수집을 수행하기에 가장 좋은 시간을 결정하므로 실제 메모리 소비를 결정하기가 어렵습니다.

## 메모리 양을 계산하는 방법

두 가지 문서를 고려해 보겠습니다

1. DOCX "A" 문서 – 0.35MB 크기(2,000페이지), 텍스트만
2. DOCX "B" 문서 – 0.35MB 크기(1페이지), 내부에 PNG 이미지 포함

아시다시피 DOCX, ODT 등과 같은 최신 형식은 대부분 간단한 ZIP 아카이브입니다. 따라서 다음 계산 알고리즘을 얻습니다
1. 압축을 푼다. 압축이 풀린 문서 "A"의 크기는 20MB이고, 문서 "B"의 크기는 0.4MB입니다
2. 모델에 문서 로드(Document Object Model – DOM 작성):
* 첫 번째 문서 "A"의 DOM를 생성하려면 49MB 크기가 필요합니다
* 두 번째 문서 "B"의 DOM를 생성하려면 2MB 크기만 필요합니다.
3. 이러한 문서를 PDF로 렌더링하는 데 필요한 메모리 양을 측정합니다. 이 작업을 위해 Aspose.Words에는 다음이 필요합니다
  * 문서 "A"의 경우 294MB
  * 문서 "B"의 경우 7MB

따라서 보시다시피 입력 문서 크기에 대한 선형 의존성은 없습니다. 필요한 RAM 크기에 영향을 미칠 수 있는 요소는 문서 형식, 복잡성과 구조, 이미지 수와 형식, 기타 여러 요소 등이 있습니다.

## 메모리 승수를 가장 정확하게 계산하는 방법

수천 개의 실제 문서를 대상으로 한 실험에서는 일반적으로 Aspose.Words가 메모리에 문서 모델을 구축하고 흐름 형식 간 변환, mail merge, 구문 분석, 교체 등과 같은 간단한 작업을 수행하기 위해 평균 문서 크기보다 몇 배 더 많은 메모리가 필요하다는 것을 보여줍니다. 때로는 2의 승수에 대해 이야기하고 때로는 20의 승수에 대해 이야기합니다.

일부 문서의 경우 렌더링(고정 페이지 형식으로 변환), 필드 업데이트, 페이지 분할 등과 같은 더 복잡한 작업에는 Aspose.Words DOM에 로드된 문서에 할당된 메모리보다 20배 더 많은 리소스가 필요합니다.

프로파일링 결과가 Aspose.Words의 메모리 문제 가능성을 나타내는 경우 [기술적 지원](/words/ko/net/technical-support/)에 문의하여 모든 진단 정보를 포함시키십시오.

## 또한보십시오

* [Visual Studio(C#, Visual Basic, C++, F#)에서 메모리 사용량 측정](https://learn.microsoft.com/en-us/visualstudio/profiling/memory-usage?view=vs-2022)
* [표현](/words/ko/net/rendering/)
* [Mail Merge 및 보고](/words/net/mail-merge-and-reporting/)
* [필드 작업](/words/ko/net/working-with-fields/)
