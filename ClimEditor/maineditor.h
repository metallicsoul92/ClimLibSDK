#ifndef MAINEDITOR_H
#define MAINEDITOR_H

#include <QMainWindow>

namespace Ui {
  class MainEditor;
}

class MainEditor : public QMainWindow
{
  Q_OBJECT

public:
  explicit MainEditor(QWidget *parent = 0);
  ~MainEditor();

private:
  Ui::MainEditor *ui;
};

#endif // MAINEDITOR_H
