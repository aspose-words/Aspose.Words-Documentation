---
title: Trabalhando com macros VBA em C#
second_title: Aspose.Words para .NET
articleTitle: Trabalhando com macros VBA
linktitle: Trabalhando com macros VBA
description: "Trabalhando com projetos de documentos VBA usando C#."
type: docs
weight: 410
url: /pt/net/working-with-vba-macros/
timestamp: 2024-01-27-14-07-04
---

Visual Basic for Applications (VBA) para Microsoft Word é uma linguagem de programação simples, mas poderosa, que pode ser usada para estender a funcionalidade. Aspose.Words API fornece três classes para obter acesso ao código-fonte do projeto VBA:

- A classe [VBAProject](https://reference.aspose.com/words/net/aspose.words.vba/vbaproject/) fornece acesso às informações do projeto VBA
- A classe [VBAModuleCollection](https://reference.aspose.com/words/net/aspose.words.vba/vbamodulecollection/) retorna a coleção de módulos do projeto VBA
- A classe [VbaModule](https://reference.aspose.com/words/net/aspose.words.vba/vbamodule/) fornece acesso ao módulo do projeto VBA
- A enumeração [VbaModuleType](https://reference.aspose.com/words/net/aspose.words.vba/vbamoduletype/) define os tipos de modelo em um projeto VBA. O módulo pode ser um módulo processual, módulo de documento, módulo de classe ou módulo de designer

## Crie um projeto VBA

Aspose.Words API fornece a propriedade [VbaProject](https://reference.aspose.com/words/net/aspose.words/document/vbaproject/) para obter ou definir VbaProject no documento.

O exemplo de código a seguir demonstra como criar um projeto VBA e um módulo VBA junto com propriedades básicas, por exemplo, nome e tipo:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-CreateVbaProject.cs" >}}

## Ler macros

Aspose.Words também oferece aos usuários a capacidade de ler macros VBA.

O exemplo de código a seguir mostra como ler macros VBA do documento:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-ReadVbaMacros.cs" >}}

## Escreva ou modifique macros

Usando Aspose.Words, os usuários podem modificar macros VBA.

O exemplo de código a seguir mostra como modificar macros VBA usando a propriedade [SourceCode](https://reference.aspose.com/words/net/aspose.words.vba/vbamodule/sourcecode/):

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-ModifyVbaMacros.cs" >}}

## Clonar projeto VBA

Com Aspose.Words também é possível clonar projetos VBA.

O exemplo de código a seguir mostra como clonar o projeto VBA usando a propriedade [Clone](https://reference.aspose.com/words/net/aspose.words.vba/vbaproject/clone/) que cria uma cópia do projeto existente:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaProject.cs" >}}

## Clonar módulo VBA

Você também pode clonar módulos VBA, se necessário.

O exemplo de código a seguir mostra como clonar o módulo VBA usando a propriedade [Clone](https://reference.aspose.com/words/net/aspose.words.vba/vbamodule/clone/) que cria uma cópia do projeto existente:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaModule.cs" >}}

## Trabalhe com as referências do projeto VBA

Aspose.Words API fornece a classe [VbaReferenceCollection](https://reference.aspose.com/words/net/aspose.words.vba/vbareferencecollection/) para trabalhar com referências de projetos VBA que representam uma coleção de referências de projetos VBA.

O exemplo de código a seguir mostra como remover algumas referências da coleção de referências de um projeto VBA:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaReferenceCollection-RemoveReferenceFromCollectionOfReferences.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaReferenceCollection-GetLibIdAndReferencePath.cs" >}}
