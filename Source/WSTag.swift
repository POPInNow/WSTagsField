//
//  WSTag.swift
//  Whitesmith
//
//  Created by Ricardo Pereira on 12/05/16.
//  Copyright © 2016 Whitesmith. All rights reserved.
//

import Foundation

public struct WSTag: Hashable {

    public let text: String
    public let phoneNumber: String?
    public let email: String?
    public let metadata: Any?

    public init(_ text: String) {
        self.text = text
        self.phoneNumber = nil
        self.email = nil
        self.metadata = nil
    }

    public init(text: String, phoneNumber: String?, email: String?, metadata: Any?) {
        self.text = text
        self.phoneNumber = phoneNumber
        self.email = email
        self.metadata = metadata
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.text)
        hasher.combine(self.phoneNumber)
        hasher.combine(self.email)
    }

    public func equals(_ other: WSTag) -> Bool {
        return self.text == other.text && self.phoneNumber == other.phoneNumber && self.email == other.email
    }

}

public func == (lhs: WSTag, rhs: WSTag) -> Bool {
    return lhs.equals(rhs)
}
