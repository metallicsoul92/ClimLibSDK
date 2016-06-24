#ifndef VIRTUAL_FILESYSTEM_WINDOWS
#define VIRTUAL_FILESYSTEM_WINDOWS

#include <windows.h>

int createDirectory(const char *filesystem);
//DIR *openDirectory(const char *name);
int removeDirectory(const char *pathname);
//int closeDirectoy(DIR *dirp);
char *getCWD(char *buf, size_t size);

#endif
