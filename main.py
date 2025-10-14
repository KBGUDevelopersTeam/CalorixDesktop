import sys
from PyQt6.QtGui import QGuiApplication
from PyQt6.QtQml import QQmlApplicationEngine


def main():
    # Создаем приложение
    app = QGuiApplication(sys.argv)

    # Создаем QML движок
    engine = QQmlApplicationEngine()

    # Загружаем QML файл
    engine.load('Main.qml')

    # Проверяем успешность загрузки
    if not engine.rootObjects():
        print("Ошибка загрузки QML файла!")
        sys.exit(-1)

    # Запускаем приложение
    sys.exit(app.exec())


if __name__ == '__main__':
    main()