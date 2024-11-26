---
title: Java에서OpenType기능 사용
second_title: Aspose.WordsJava
articleTitle: OpenType기능 사용
linktitle: OpenType기능 사용
description: "Java에 대한Aspose.Words의 고급 타이포그래피 기능."
type: docs
weight: 25
url: /ko/java/enable-opentype-features/
timestamp: 2024-01-27-14-07-04
---



OpenType은PostScript과TrueType에 비해 국제 언어와 문자 시스템을 더 잘 지원하기 위해 도입된 글꼴 형식입니다. OpenType의 레이아웃 기능은 일반적으로OpenType기능으로 알려져 있습니다. Aspose.Words.형성.HarfBuzz패키지는`HarfBuzz`텍스트 쉐이핑 엔진을 사용하여Aspose.Words의OpenType기능에 대한 지원을 제공합니다.

Aspose.Words는 외부에서 제공된 텍스트 셰이퍼 객체를 사용할 수 있습니다. 텍스트 셰이퍼는 글꼴을 나타내고 텍스트에 대한 셰이핑 정보를 계산합니다. 문서는 일반적으로 여러 글꼴을 참조하므로 텍스트 셰이퍼 팩토리가 필요합니다. 이 패키지에는 Aspose.Words.Layout.LayoutOptions.TextShaperFactory 속성에서 사용하는 텍스트 셰이퍼 팩토리 구현이 포함되어 있습니다.

{{% alert color="primary" %}}

텍스트 쉐이핑은PDF또는XPS형식으로 내보낼 때만 수행됩니다.

{{% /alert %}}

일반적인 응용 프로그램에서 텍스트 셰이퍼 팩토리의 단일 인스턴스는 모든 문서 인스턴스간에 공유됩니다. 텍스트 셰이퍼가 생성 될 때마다 글꼴 파일에 액세스 할 수 있습니다. 글꼴 파일을 구문 분석하는 것은 비용이 많이 드는 작업이므로 캐싱을 권장합니다. Aspose.Words텍스트 셰이퍼 팩토리 구현을 래핑하고 래핑 된 팩토리에서 반환 된 텍스트 셰이퍼 인스턴스를 캐시하는BasicTextShaperCache클래스를 구현합니다.

다음 코드 예제에서는OpenType기능의 지원을 설정하는 방법을 보여 줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-OpenTypeFeatures-OpenTypeFeatures.java" >}}
