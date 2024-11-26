---
title: C#에서 OpenType 기능 활성화
second_title: .NET용 Aspose.Words
articleTitle: OpenType 기능 활성화
linktitle: OpenType 기능 활성화
description: "C#를 사용한 고급 타이포그래피 기능."
type: docs
weight: 25
url: /ko/net/enable-opentype-features/
timestamp: 2024-07-10-14-38-57
---

OpenType은 PostScript 및 TrueType에 비해 국제 언어 및 쓰기 시스템에 대한 더 나은 지원을 제공하기 위해 도입된 글꼴 형식입니다. OpenType의 레이아웃 기능은 일반적으로 OpenType 기능으로 알려져 있습니다. Aspose.Words.Shaping.HarfBuzz 패키지는 HarfBuzz 텍스트 모양 엔진을 사용하여 Aspose.Words의 OpenType 기능에 대한 지원을 제공합니다.

Aspose.Words는 외부에서 제공되는 텍스트 셰이퍼 개체를 사용할 수 있습니다. 텍스트 셰이퍼는 글꼴을 나타내고 텍스트의 셰이핑 정보를 계산합니다. 문서는 일반적으로 여러 글꼴을 참조하므로 텍스트 셰이퍼 팩토리가 필요합니다. 이 패키지에는 Aspose.Words.Layout.LayoutOptions.TextShaperFactory 속성에서 활용하는 텍스트 셰이퍼 팩토리 구현이 포함되어 있습니다.

{{% alert color="primary" %}}

텍스트 모양은 PDF 또는 XPS 형식으로 내보낼 때만 수행됩니다.

{{% /alert %}}

일반적인 응용 프로그램에서는 텍스트 셰이퍼 팩토리의 단일 인스턴스가 모든 문서 인스턴스에서 공유됩니다. 텍스트 셰이퍼가 생성될 때마다 글꼴 파일에 액세스됩니다. 글꼴 파일을 구문 분석하는 것은 비용이 많이 드는 작업이므로 캐싱을 권장합니다. Aspose.Words는 텍스트 셰이퍼 팩토리 구현을 래핑하고 래핑된 팩토리에서 반환된 텍스트 셰이퍼 인스턴스를 캐시하는 BasicTextShaperCache 클래스를 구현합니다.

다음 코드 예제에서는 OpenType 기능 지원을 설정하는 방법을 보여줍니다.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-OpenType-OpenTypeFeatures-OpenTypeFeatures.cs" >}}
