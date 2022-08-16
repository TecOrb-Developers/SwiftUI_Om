//
//  Copyright (c) 2016 Daniel Rhodes <rhodes.daniel@gmail.com>
//
//  Permission is hereby granted, free of charge, to any person obtaining a
//  copy of this software and associated documentation files (the "Software"),
//  to deal in the Software without restriction, including without limitation
//  the rights to use, copy, modify, merge, publish, distribute, sublicense,
//  and/or sell copies of the Software, and to permit persons to whom the
//  Software is furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
//  EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
//  OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
//  IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
//  DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
//  OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE
//  USE OR OTHER DEALINGS IN THE SOFTWARE.
//

import Foundation
import Accelerate

internal let ActionCableSerialQueue = DispatchQueue(label: "com.ActionCableClient.SerialQueue", attributes: []);
internal let ActionCableConcurrentQueue = DispatchQueue(label: "com.ActionCableClient.Conccurent", attributes: DispatchQueue.Attributes.concurrent)

internal enum Command {
    case subscribe
    case unsubscribe
    case message
    
    var string : String {
        switch self {
        case .subscribe: return "subscribe"
        case .unsubscribe: return "unsubscribe"
        case .message: return "message"
        }
    }
}

internal enum MessageType {
    case confirmSubscription
    case rejectSubscription
    case cancelSubscription
    case hibernateSubscription
    case ping
    case message
    case welcome
    case unrecognized
    
    var string: String {
        switch self {
            case .confirmSubscription: return "confirm_subscription"
            case .rejectSubscription: return "reject_subscription"
            case .ping: return "ping"
            case .welcome: return "welcome"
            case .message: return "message" // STUB!
            case .cancelSubscription: return "cancel_subscription" // STUB!
            case .hibernateSubscription: return "hibernate_subscription" //STUB!
            case .unrecognized: return "___unrecognized"
        }
    }
    
    init(string: String) {
        switch(string) {
            case MessageType.welcome.string:
                self = MessageType.welcome
            case MessageType.ping.string:
                self = MessageType.ping
            case MessageType.confirmSubscription.string:
                self = MessageType.confirmSubscription
            case MessageType.rejectSubscription.string:
                self = MessageType.rejectSubscription
            case MessageType.cancelSubscription.string:
                self = MessageType.cancelSubscription
            case MessageType.hibernateSubscription.string:
                self = MessageType.hibernateSubscription
            default:
                self = MessageType.unrecognized
        }
    }
}

internal struct Message {
    var channelName : String?
    var actionName : String?
    var messageType : MessageType
    var data : Any?
    var error: Swift.Error?
  
    static func simple(_ channel: Channel, messageType: MessageType) -> Message {
        return Message(channelName: channel.name,
                        actionName: nil,
                       messageType: messageType,
                              data: nil,
                             error: nil)
    }
}

internal struct Action {
    var name : String
    var params: Dictionary<String, Any>?
}

func exp2(_ x: [Double]) -> [Double] {
  var results = [Double](repeating: 0.0, count: x.count)
  vvexp2(&results, x, [Int32(x.count)])
  
  return results
}


func clamp<T: Comparable>(_ value: T, lower: T, upper: T) -> T {
    return min(max(value, lower), upper)
}
