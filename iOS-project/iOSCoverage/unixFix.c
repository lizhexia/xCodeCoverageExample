//
//  unixFix.c
//  coverageTests
//
//  Created by Denis Lebedev on 23.08.12.
//  Copyright (c) 2012 Denis Lebedev. All rights reserved.
//

#include <stdio.h>

FILE* fopen$UNIX2003(const char* filename, const char* mode);
size_t fwrite$UNIX2003(const void* ptr, size_t size, size_t nitems, FILE* stream);

FILE* fopen$UNIX2003(const char* filename, const char* mode) {
    return fopen(filename, mode);
}

size_t fwrite$UNIX2003(const void* ptr, size_t size, size_t nitems, FILE* stream) {
    return fwrite(ptr, size, nitems, stream);
}

