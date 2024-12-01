#include "lightcontroller.h"

LightController::LightController(QObject* parent) : QObject{parent}, m_lightOn{false} {}

bool LightController::isLightOn() const {
    return m_lightOn;
}

void LightController::turnLightOn() {
    if(!m_lightOn) {
        m_lightOn = true;
        emit lightStateChanged();
    }
}


void LightController::turnLightOff() {
    if(m_lightOn) {
        m_lightOn = false;
        emit lightStateChanged();
    }
}
