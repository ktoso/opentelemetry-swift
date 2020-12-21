// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: opentelemetry/proto/collector/metrics/v1/metrics_service.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// Copyright 2019, OpenTelemetry Authors
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
private struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
    struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
    typealias Version = _2
}

struct Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// An array of ResourceMetrics.
    /// For data coming from a single resource this array will typically contain one
    /// element. Intermediary nodes (such as OpenTelemetry Collector) that receive
    /// data from multiple origins typically batch the data before forwarding further and
    /// in that case this array will contain multiple elements.
    var resourceMetrics: [Opentelemetry_Proto_Metrics_V1_ResourceMetrics] = []

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}
}

struct Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

private let _protobuf_package = "opentelemetry.proto.collector.metrics.v1"

extension Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = _protobuf_package + ".ExportMetricsServiceRequest"
    static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
        1: .standard(proto: "resource_metrics"),
    ]

    mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let fieldNumber = try decoder.nextFieldNumber() {
            // The use of inline closures is to circumvent an issue where the compiler
            // allocates stack space for every case branch when no optimizations are
            // enabled. https://github.com/apple/swift-protobuf/issues/1034
            switch fieldNumber {
            case 1: try { try decoder.decodeRepeatedMessageField(value: &self.resourceMetrics) }()
            default: break
            }
        }
    }

    func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        if !self.resourceMetrics.isEmpty {
            try visitor.visitRepeatedMessageField(value: self.resourceMetrics, fieldNumber: 1)
        }
        try self.unknownFields.traverse(visitor: &visitor)
    }

    static func == (lhs: Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest, rhs: Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest) -> Bool {
        if lhs.resourceMetrics != rhs.resourceMetrics { return false }
        if lhs.unknownFields != rhs.unknownFields { return false }
        return true
    }
}

extension Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
    static let protoMessageName: String = _protobuf_package + ".ExportMetricsServiceResponse"
    static let _protobuf_nameMap = SwiftProtobuf._NameMap()

    mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
        while let _ = try decoder.nextFieldNumber() {}
    }

    func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
        try self.unknownFields.traverse(visitor: &visitor)
    }

    static func == (lhs: Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse, rhs: Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse) -> Bool {
        if lhs.unknownFields != rhs.unknownFields { return false }
        return true
    }
}
