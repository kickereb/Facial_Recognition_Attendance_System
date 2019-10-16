import cv2 as cv
import argparse

def detectAndDisplay(frame):
    frame_gray = cv.cvtColor(frame, cv.COLOR_BGR2GRAY)
    frame_gray = cv.equalizeHist(frame_gray)

    faces = face_cascade.detectMultiScale(frame_gray)

    for (x, y, w, h) in faces:
        frame = cv.rectangle(frame, (x,y), (x+w , y+h), (0, 255, 0), 2)

    cv.imshow('Capture - Face detection', frame)

parser = argparse.ArgumentParser()
parser.add_argument('--face_cascade', help='Path to face cascade', default='D:\Face detection\haarcascade_frontalface_default.xml')
parser.add_argument('--camera', type=int, default = 0)
args = parser.parse_args()

face_cascade_path = args.face_cascade
face_cascade = cv.CascadeClassifier()

if not face_cascade.load(cv.samples.findFile(face_cascade_path)):
    print('Error loading face cascade')
    exit(0)

camera_device = args.camera
cap = cv.VideoCapture(camera_device)

if not cap.isOpened:
    print('Error opening web-camera')
    exit(0)

while True:
    ret, frame = cap.read()
    if frame is None:
        print('No captured frame')
        break

    detectAndDisplay(frame)

    if cv.waitKey(10) == 27:
        break
