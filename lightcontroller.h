#ifndef LIGHTCONTROLLER_H
#define LIGHTCONTROLLER_H

#include <QObject>

class LightController : public QObject {
    Q_OBJECT
    Q_PROPERTY(bool lightOn READ isLightOn NOTIFY lightStateChanged)
public:
    explicit LightController(QObject* parent = nullptr);
    bool isLightOn() const;

public slots:
    void turnLightOn();
    void turnLightOff();

signals:
    void lightStateChanged();
private:
    bool m_lightOn;
};

#endif // LIGHTCONTROLLER_H
