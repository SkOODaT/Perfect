// swift-tools-version:5.2
//
//  Package.swift
//  PerfectLib
//
//  Created by Kyle Jessup on 3/22/16.
//	Copyright (C) 2016 PerfectlySoft, Inc.
//
//===----------------------------------------------------------------------===//
//
// This source file is part of the Perfect.org open source project
//
// Copyright (c) 2015 - 2016 PerfectlySoft Inc. and the Perfect project authors
// Licensed under Apache License v2.0
//
// See http://perfect.org/licensing.html for license information
//
//===----------------------------------------------------------------------===//
//

import PackageDescription

#if os(Linux)
let package = Package(
	name: "PerfectLib",
	products: [
		.library(name: "PerfectLib", targets: ["PerfectLib"])
	],
    dependencies: [.package(name: "LinuxBridge", url: "https://github.com/SkOODaT/Perfect-LinuxBridge.git", .branch("SKOODAT"))],
	targets: [
		.target(name: "PerfectLib", dependencies: ["LinuxBridge"]),
		.testTarget(name: "PerfectLibTests", dependencies: ["PerfectLib"])
	]
)
#else
let package = Package(
	name: "PerfectLib",
	platforms: [
		.macOS(.v10_15)
	],
	products: [
		.library(name: "PerfectLib", targets: ["PerfectLib"])
	],
	dependencies: [],
	targets: [
		.target(name: "PerfectLib", dependencies: []),
		.testTarget(name: "PerfectLibTests", dependencies: ["PerfectLib"])
	]
)
#endif
