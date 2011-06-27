//
//  BPOCUnitXMLReporter.m
//
//  Created by Jason Foreman on 10/24/09.
//
//  Copyright 2009 Jason Foreman. Some rights reserved.
//  This code is released under a Creative Commons license:
//  http://creativecommons.org/licenses/by-sa/3.0/
//


#import <Foundation/Foundation.h>
#import <SenTestingKit/SenTestingKit.h>
#import "XMLWriter.h"

@interface BPTestXunitXmlListener : NSObject
{
@private
    XMLWriter *document;
}

@property (retain) XMLWriter *document;

- (void)writeResultFile;

@end


static BPTestXunitXmlListener *instance = nil;

static void __attribute__ ((constructor)) BPTestXunitXmlListenerStart(void)
{
    instance = [BPTestXunitXmlListener new];
}

static void __attribute__ ((destructor)) BPTestXunitXmlListenerStop(void)
{
    [instance writeResultFile];
}


@implementation BPTestXunitXmlListener

@synthesize document;


- (id)init;
{
    if ((self = [super init]))
    {
        NSNotificationCenter *center = [NSNotificationCenter defaultCenter];
        [center addObserver:self selector:@selector(testSuiteStarted:) name:SenTestSuiteDidStartNotification object:nil];
        [center addObserver:self selector:@selector(testSuiteStopped:) name:SenTestSuiteDidStopNotification object:nil];
        [center addObserver:self selector:@selector(testCaseStarted:) name:SenTestCaseDidStartNotification object:nil];
        [center addObserver:self selector:@selector(testCaseStopped:) name:SenTestCaseDidStopNotification object:nil];
        [center addObserver:self selector:@selector(testCaseFailed:) name:SenTestCaseDidFailNotification object:nil];

        self.document = [[XMLWriter alloc] init];
        [self.document writeStartElement:@"testsuites"];
    }
    return self;
}

- (void)dealloc;
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    self.document = nil;
    [super dealloc];
}

- (void)writeResultFile;
{
    if (self.document) {
        [self.document writeEndElement:@"testsuites"];
        [[self.document toData] writeToFile:@"ocunit.xml" atomically:NO];
    }
}


#pragma mark Notification Callbacks

- (void)testSuiteStarted:(NSNotification*)notification;
{
    SenTest *test = [notification test];
    [self.document writeStartElement:@"testsuite"];
    [self.document writeAttribute:@"name" value:[test name]];
}

- (void)testSuiteStopped:(NSNotification*)notification;
{
    [self.document writeEndElement:@"testsuite"];
}

- (void)testCaseStarted:(NSNotification*)notification;
{
    SenTest *test = [notification test];
    [self.document writeStartElement:@"testcase"];
    [self.document writeAttribute:@"name" value:[test name]];
}

- (void)testCaseStopped:(NSNotification*)notification;
{
    [self.document writeEndElement:@"testcase"];
}

- (void)testCaseFailed:(NSNotification*)notification;
{
    [self.document writeStartElement:@"failure"];
    [self.document writeCharacters:[[notification exception] description]];
    [self.document writeEndElement:@"failure"];
}

@end
