#ifndef CLIMENGINE_GLOBAL_H
#define CLIMENGINE_GLOBAL_H

#include <QtCore/qglobal.h>

#if defined(CLIMENGINE_LIBRARY)
#  define CLIMENGINESHARED_EXPORT Q_DECL_EXPORT
#else
#  define CLIMENGINESHARED_EXPORT Q_DECL_IMPORT
#endif

#endif // CLIMENGINE_GLOBAL_H
