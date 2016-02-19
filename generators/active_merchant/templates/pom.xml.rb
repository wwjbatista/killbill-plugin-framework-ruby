<?xml version="1.0" encoding="UTF-8"?>
<!--
~ Copyright 2016 The Billing Project, LLC
~
~  The Billing Project licenses this file to you under the Apache License, version 2.0
~  (the "License"); you may not use this file except in compliance with the
~  License.  You may obtain a copy of the License at:
~
~     http://www.apache.org/licenses/LICENSE-2.0
~
~  Unless required by applicable law or agreed to in writing, software
~  distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
~  WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  See the
~  License for the specific language governing permissions and limitations
~  under the License.
-->

<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
    <parent>
        <groupId>org.sonatype.oss</groupId>
        <artifactId>oss-parent</artifactId>
        <version>5</version>
    </parent>
    <modelVersion>4.0.0</modelVersion>
    <groupId>org.kill-bill.billing.plugin.ruby</groupId>
    <artifactId><%= identifier %>-plugin</artifactId>
    <packaging>pom</packaging>
    <version>0.0.1</version>
    <name><%= identifier %>-plugin</name>
    <url>http://github.com/killbill/killbill-<%= identifier %>-plugin</url>
    <description>Plugin for accessing <%= class_name %> as a payment gateway</description>
    <licenses>
        <license>
            <name>Apache License 2.0</name>
            <url>http://www.apache.org/licenses/LICENSE-2.0.html</url>
            <distribution>repo</distribution>
        </license>
    </licenses>
    <scm>
        <connection>scm:git:git://github.com/killbill/killbill-<%= identifier %>-plugin.git</connection>
        <url>https://github.com/killbill/killbill-<%= identifier %>-plugin/</url>
        <developerConnection>scm:git:git@github.com:killbill/killbill-<%= identifier %>-plugin.git</developerConnection>
    </scm>
</project>
