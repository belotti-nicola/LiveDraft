#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include "LiveDraftLib/sqlite3/sqlite3.h"


int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.loadFromModule("LiveDraft", "Main");

    sqlite3* DB;
    sqlite3_open("draft_database.sqlite",&DB);
    sqlite3_close(DB);

    return app.exec();
}
