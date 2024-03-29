//===----------------------------------------------------------------------===//
//
// This source file is part of the Swift.org open source project
//
// Copyright (c) 2014 - 2024 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://swift.org/LICENSE.txt for license information
// See https://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
//
//===----------------------------------------------------------------------===//

import Foundation

/// An abstraction for sanitized values on a token.
public struct Identifier {
  /// The sanitized `text` of a token.
  public let name: String

  public init(_ token: TokenSyntax) {
    let text = token.text

    self.name =
      if text.contains("`") {
        text.trimmingCharacters(in: CharacterSet(charactersIn: "`"))
      } else {
        text
      }
  }
}
