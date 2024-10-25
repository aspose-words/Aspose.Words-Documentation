---
title: Cấu hình sản phẩm trong Visual Studio
second_title: Aspose.Words cho C++
articleTitle: Cấu hình Aspose.Words cho C++ trong Visual Studio
linktitle: Cấu hình Aspose.Words cho C++ trong Visual Studio
description: "Cấu hình thủ công Aspose.Words cho C++ trong Visual Studio."
type: docs
weight: 90
url: /vi/cpp/configure-aspose-words-for-cpp-in-visual-studio/
---

Aspose.Words cho C++ API hoạt động với Visual Studio 2022 trở lên. Để làm việc với Visual Studio, bạn có thể cần phải cài đặt Visual C++ Redistributable có sẵn trên [Microsoft trang web chính thức](https://docs.microsoft.com/en-US/cpp/windows/latest-supported-vc-redist?view=msvc-170).

## Cấu hình với MSBuild.Mục Tiêu Tập Tin

Làm theo các bước sau để định cấu hình dự án của bạn với [MSBuild .mục tiêu tập tin](https://docs.microsoft.com/en-us/visualstudio/msbuild/msbuild-dot-targets-files):

**Thêm thẻ Nhập khẩu với Aspose.Words cho C++ nhắm mục tiêu các tệp vào tệp vcxproj của bạn**
1. Mở tệp dự án `*.vcxproj` của bạn trong trình soạn thảo văn bản
2. Tìm `<ImportGroup Label="ExtensionTargets"></ImportGroup>` ở cuối tệp
3. Thêm các thẻ `Import` sau bên trong `ImportGroup`:
    {{< highlight xml >}}
    <ImportGroup Label="ExtensionTargets">
        <Import Project="<path-to>\CodePorting.Translator.Cs2Cpp.Framework_<version>\CodePorting.Translator.Cs2Cpp.Framework.targets" Condition="Exists('<path-to>\CodePorting.Translator.Cs2Cpp.Framework_<version>\CodePorting.Translator.Cs2Cpp.Framework.targets')" />
        <Import Project="<path-to>\Aspose.Words.Cpp\aspose.words.cpp.targets" Condition="Exists('<path-to>\Aspose.Words.Cpp\aspose.words.cpp.targets')" />
    </ImportGroup>
    </Project>
    {{< /highlight >}}

## Cấu Hình Thủ Công

Làm theo các bước sau để cấu hình thủ công Aspose.Words cho C++ trong Visual Studio:

**Thêm Các Thư Mục Bao gồm Bổ Sung:**

1. Mở Tài Sản Dự Án
2. Đi Tới C/C++ → Chung
3. Thêm Phần Bổ Sung Sau Đây Bao Gồm Các Thư Mục:
`Aspose.Words.Cpp\include`
`CodePorting.Translator.Cs2Cpp.Framework_<version>\include`

**Thêm Các Phụ Thuộc Bổ Sung:**

1. Mở Tài Sản Dự Án
2. Chọn Cấu Hình → Tất Cả Các Cấu Hình Và Nền Tảng → Tất Cả Các Nền Tảng
2. Chuyển đến Trình Liên Kết → Đầu Vào
* Đối Với Cấu Hình Phát Hành:
`Aspose.Words.Cpp\lib\x64\Release\Aspose.Words.Cpp_vc14x64.lib`
`CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64.lib`
* Đối Với Cấu Hình Gỡ Lỗi:
`Aspose.Words.Cpp\lib\x64\Debug\Aspose.Words.Cpp_vc14x64d.lib`
`CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64d.lib`

**Thêm Các Lệnh:**

1. Mở Tài Sản Dự Án
2. Đi Tới Xây Dựng Sự Kiện → Sự Kiện Sau Xây Dựng
3. Thêm Các Lệnh sau:
* Đối Với Cấu Hình Phát Hành:
    {{< highlight bash >}}
    xcopy /y /d  "$(ProjectDir)Aspose.Words.Cpp\lib\x64\$(Configuration)\Aspose.Words.Cpp_vc14x64.dll" "$(OutDir)"
    xcopy /y /d  "$(ProjectDir)CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64.dll" "$(OutDir)"
    {{< /highlight >}}
* Đối Với Cấu Hình Gỡ Lỗi:
    {{< highlight bash >}}
    xcopy /y /d  "$(ProjectDir)Aspose.Words.Cpp\lib\x64\$(Configuration)\Aspose.Words.Cpp_vc14x64d.dll" "$(OutDir)"
    xcopy /y /d  "$(ProjectDir)CodePorting.Translator.Cs2Cpp.Framework_<version>\lib\codeporting.translator.cs2cpp.framework_vc14x64d.dll" "$(OutDir)"
    {{< /highlight >}}
