#include "../../../include/utility/vfs_windows.h"

int createDirectory(const char *filesystem){
  return CreateDirectory((LPCWSTR)filesystem,NULL);
}

//DIR *openDirectory(const char *name);
int removeDirectory(const char *pathname){
  return RemoveDirectory((LPCWSTR)pathname);
}

//int closeDirectoy(DIR *dirp);
char *getCWD(char *buf, size_t size);
