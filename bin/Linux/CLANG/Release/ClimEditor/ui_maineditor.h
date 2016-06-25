/********************************************************************************
** Form generated from reading UI file 'maineditor.ui'
**
** Created by: Qt User Interface Compiler version 5.4.2
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_MAINEDITOR_H
#define UI_MAINEDITOR_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QMenuBar>
#include <QtWidgets/QStatusBar>
#include <QtWidgets/QToolBar>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_MainEditor
{
public:
    QMenuBar *menuBar;
    QToolBar *mainToolBar;
    QWidget *centralWidget;
    QStatusBar *statusBar;

    void setupUi(QMainWindow *MainEditor)
    {
        if (MainEditor->objectName().isEmpty())
            MainEditor->setObjectName(QStringLiteral("MainEditor"));
        MainEditor->resize(400, 300);
        menuBar = new QMenuBar(MainEditor);
        menuBar->setObjectName(QStringLiteral("menuBar"));
        MainEditor->setMenuBar(menuBar);
        mainToolBar = new QToolBar(MainEditor);
        mainToolBar->setObjectName(QStringLiteral("mainToolBar"));
        MainEditor->addToolBar(mainToolBar);
        centralWidget = new QWidget(MainEditor);
        centralWidget->setObjectName(QStringLiteral("centralWidget"));
        MainEditor->setCentralWidget(centralWidget);
        statusBar = new QStatusBar(MainEditor);
        statusBar->setObjectName(QStringLiteral("statusBar"));
        MainEditor->setStatusBar(statusBar);

        retranslateUi(MainEditor);

        QMetaObject::connectSlotsByName(MainEditor);
    } // setupUi

    void retranslateUi(QMainWindow *MainEditor)
    {
        MainEditor->setWindowTitle(QApplication::translate("MainEditor", "MainEditor", 0));
    } // retranslateUi

};

namespace Ui {
    class MainEditor: public Ui_MainEditor {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MAINEDITOR_H
