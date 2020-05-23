#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <BS_API.h>
#include <BS_Deprecated.h>
#include <BS_Errno.h>

#include <QDebug>

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    void* context = NULL;
    context = BS2_AllocateContext();
    if (context != NULL) {
        int result = BS2_Initialize(context);
        if (result == BS_SDK_SUCCESS) {
            // do something
            qDebug() << "Success";
        }
    } else {
        qDebug() << "Error found";
    }
}

MainWindow::~MainWindow()
{
    delete ui;
}

