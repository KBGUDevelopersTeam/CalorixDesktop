import sys
from PyQt6.QtWidgets import QApplication
from PyQt6.QtQml import QQmlApplicationEngine
import os


app = QApplication(sys.argv)
engine = QQmlApplicationEngine()
# engine.addImportPath(f"{os.getcwd()}/qml_widgets/")
engine.load("Main.qml")
sys.exit(app.exec())