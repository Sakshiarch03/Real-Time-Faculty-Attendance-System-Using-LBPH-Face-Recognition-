import cv2
import os
import time
face_cascade = cv2.CascadeClassifier(cv2.data.haarcascades + 'haarcascade_frontalface_default.xml')
cap = cv2.VideoCapture(0)
name = "Arya"  # change for different users

os.makedirs(f"faces/{name}", exist_ok=True)
count = 0

while True:
    ret, frame = cap.read()
    gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)

    faces = face_cascade.detectMultiScale(gray, 1.3, 5)
    for (x,y,w,h) in faces:
        face = gray[y:y+h, x:x+w]
        cv2.imwrite(f"faces/{name}/{count}.jpg", face)
        count += 1
        cv2.rectangle(frame, (x,y), (x+w,y+h), (255,0,0), 2)

    cv2.imshow("Collecting Faces", frame)
    time.sleep(0.05)
    if cv2.waitKey(1) & 0xFF == ord('q') or count >= 100:
        break

cap.release()
cv2.destroyAllWindows()
