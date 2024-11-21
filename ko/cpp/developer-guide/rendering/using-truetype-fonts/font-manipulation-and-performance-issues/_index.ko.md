---
title: 글꼴 조작 및 성능 문제 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 글꼴 조작 및 성능 문제
linktitle: 글꼴 조작 및 성능 문제
description: "Aspose.Words 에 대한 C++ 필요한 글꼴 데이터 또는 요청 된 글꼴에 적합한 교체를 찾기 위해 글꼴 전체 이름,가족 이름,버전,스타일을 사용합니다. FontSettings 당신은 문서의 로딩 속도를 높일 수 있습니다."
type: docs
weight: 11
url: /ko/cpp/font-manipulation-and-performance-issues/
timestamp: 2024-09-24-14-35-44
---

사용 가능한 모든 글꼴 조작 메커니즘은 [FontSettings](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_settings) 수업 이 클래스는 정의 된 글꼴 소스 내에서 글꼴을 가져 오기뿐만 아니라 아래에 설명 된대로 글꼴 대체 프로세스에 대한 책임이 있습니다.

## 해결된 글꼴 구문 분석

글꼴은 여러 단계로 구문 분석됩니다:

1. 사용 가능한 모든 글꼴에서 해결,글꼴에 대한 정보를 얻기.
1. 해결 된 글꼴을 구문 분석하여 사용 가능한 글리프 및 메트릭(가로 및 세로)을 가져옵니다.
1. 포함 및 하위 설정을 위해 해결 된 글꼴을 구문 분석합니다.

언제 Aspose.Words 문서의 글꼴을 처음 만나면 각 글꼴 소스에 있는 글꼴 파일에서 글꼴 전체 이름,가족 이름,버전,스타일과 같은 기본 글꼴 정보를 얻으려고 합니다. 모든 글꼴이 검색된 후, Aspose.Words 이러한 세부 정보를 사용하여 필요한 글꼴 데이터 또는 요청된 글꼴에 적합한 대체자를 찾습니다.

## 글꼴을 교체 할 때의 성능 문제

위에서 설명한 절차는 시간이 많이 걸리기 때문에 처음 시작할 때 응용 프로그램 성능에 부정적인 영향을 줄 수 있습니다. 그러나,각 인스턴스 **FontSettings** 후속 문서의 처리 시간을 줄일 수있는 자체 캐시가 있습니다. 예를 들어,다음과 같은 인스턴스를 공유할 수 있습니다 **FontSettings** 당신이 문서의 로딩 속도를 높일 수 있습니다 다른 문서 사이의 클래스. 다음 예제에서는 이를 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSettings-FontSettingsWithLoadOptions.cpp" >}}

이 경우 **FontSettings** 명시적으로 정의되지 않습니다., Aspose.Words 기본값을 사용합니다 **FontSettings** 인스턴스. 이 인스턴스는 문서 간에 자동으로 공유되며 다음과 같이 추출할 수 있습니다:

**C++**

{{< highlight cpp >}}
System::SharedPtr<FontSettings> fontSettings = System::MakeObject<FontSettings>()->get_DefaultInstance();
{{< /highlight >}}

## 기본값 사용 FontSettings 인스턴스

모든 처리 문서에 동일한 글꼴 설정이 필요한 경우 기본 설정을 설정하고 사용하는 것이 좋습니다 **FontSettings** 인스턴스. 모든 문서에 대해 동일한 글꼴 소스를 사용해야 한다고 가정합니다. 이 경우 다음과 같이 기본 인스턴스를 수정할 수 있습니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSettings-FontSettingsFontSource.cpp" >}}

{{% alert color="primary" %}}

관습 **FontSettings** 기본 인스턴스보다 우선 순위가 높습니다.

{{% /alert %}}
